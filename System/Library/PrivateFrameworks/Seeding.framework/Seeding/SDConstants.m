@interface SDConstants
+ (void)initialize;
@end

@implementation SDConstants

+ (void)initialize
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:MEMORY[0x277CBEC28] forKey:@"DisableBuildFiltering"];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 registerDefaults:v3];
}

@end