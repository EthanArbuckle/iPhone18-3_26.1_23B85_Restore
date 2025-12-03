@interface SBActionHardwareButtonDomain
+ (id)rootSettings;
@end

@implementation SBActionHardwareButtonDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBActionHardwareButtonDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end