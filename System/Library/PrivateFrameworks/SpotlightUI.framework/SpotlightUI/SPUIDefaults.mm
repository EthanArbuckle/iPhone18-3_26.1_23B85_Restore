@interface SPUIDefaults
+ (BOOL)isPhone;
@end

@implementation SPUIDefaults

+ (BOOL)isPhone
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

@end