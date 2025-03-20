# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# VCOVs robust to spatial correlation, a la Conley (1999) (Conley VCOV) Use vcov_conley (fixest) With (In) R Software
install.packages("fixest")
library("fixest")
vcov_conley = read.csv("https://raw.githubusercontent.com/timbulwidodostp/vcov_conley/main/vcov_conley/vcov_conley.csv",sep = ";")
# Estimation VCOVs robust to spatial correlation, a la Conley (1999) (Conley VCOV) Use vcov_conley (fixest) With (In) R Software
feols <- feols(depth ~ mag, vcov_conley, conley(100))
est = feols(depth ~ mag, vcov_conley)
vcov_conley <- vcov_conley(est, cutoff = 100)
vcov_conley
# VCOVs robust to spatial correlation, a la Conley (1999) (Conley VCOV) Use vcov_conley (fixest) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished