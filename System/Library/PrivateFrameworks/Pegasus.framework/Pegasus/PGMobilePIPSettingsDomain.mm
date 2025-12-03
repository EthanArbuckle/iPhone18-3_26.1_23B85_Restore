@interface PGMobilePIPSettingsDomain
+ (id)rootSettings;
@end

@implementation PGMobilePIPSettingsDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PGMobilePIPSettingsDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end