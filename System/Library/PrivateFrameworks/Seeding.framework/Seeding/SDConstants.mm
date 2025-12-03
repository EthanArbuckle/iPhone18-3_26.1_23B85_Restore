@interface SDConstants
+ (void)initialize;
@end

@implementation SDConstants

+ (void)initialize
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"DisableBuildFiltering"];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults registerDefaults:dictionary];
}

@end