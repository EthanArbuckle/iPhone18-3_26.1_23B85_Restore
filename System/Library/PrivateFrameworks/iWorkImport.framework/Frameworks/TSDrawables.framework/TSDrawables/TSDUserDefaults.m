@interface TSDUserDefaults
+ (void)registerUserDefaults;
@end

@implementation TSDUserDefaults

+ (void)registerUserDefaults
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"TSDMovieCompatibilityOptimizeForOlderMachinesOnInsert";
  v8[0] = MEMORY[0x277CBEC28];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v8, &v7, 1);
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4);
  objc_msgSend_registerDefaults_(v5, v6, v2);
}

@end