@interface SBPIPSettingsDomain
+ (id)rootSettings;
@end

@implementation SBPIPSettingsDomain

+ (id)rootSettings
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SBPIPSettingsDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end