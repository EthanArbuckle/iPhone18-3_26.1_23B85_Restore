@interface NSUserDefaults(MTUnitTesting)
+ (void)setAppUserDefaultsForUnitTesting:()MTUnitTesting;
+ (void)setGroupUserDefaultsForUnitTesting:()MTUnitTesting;
@end

@implementation NSUserDefaults(MTUnitTesting)

+ (void)setAppUserDefaultsForUnitTesting:()MTUnitTesting
{
  v4 = a3;
  if (NSClassFromString(&cfstr_Xctestcase.isa))
  {
    objc_storeStrong(&sAppUserDefaultsForUnitTesting, a3);
  }
}

+ (void)setGroupUserDefaultsForUnitTesting:()MTUnitTesting
{
  v4 = a3;
  if (NSClassFromString(&cfstr_Xctestcase.isa))
  {
    objc_storeStrong(&sGroupUserDefaultsForUnitTesting, a3);
  }
}

@end