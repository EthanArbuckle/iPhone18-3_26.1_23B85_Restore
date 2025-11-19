@interface SUCoreConnectConstants
+ (id)defaultClasses;
@end

@implementation SUCoreConnectConstants

+ (id)defaultClasses
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v5[12] = objc_opt_class();
  v5[13] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:14];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end