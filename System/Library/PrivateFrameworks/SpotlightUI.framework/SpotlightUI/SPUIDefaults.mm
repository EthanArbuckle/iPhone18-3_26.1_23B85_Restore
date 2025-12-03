@interface SPUIDefaults
+ (BOOL)isPhone;
@end

@implementation SPUIDefaults

+ (BOOL)isPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

@end