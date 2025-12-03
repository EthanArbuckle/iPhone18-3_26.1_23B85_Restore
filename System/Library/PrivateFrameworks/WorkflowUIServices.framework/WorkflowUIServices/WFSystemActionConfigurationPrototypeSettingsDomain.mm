@interface WFSystemActionConfigurationPrototypeSettingsDomain
+ (id)rootSettings;
@end

@implementation WFSystemActionConfigurationPrototypeSettingsDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___WFSystemActionConfigurationPrototypeSettingsDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end