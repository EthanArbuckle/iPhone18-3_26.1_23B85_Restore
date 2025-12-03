@interface SBSystemActionDomain
+ (id)rootSettings;
@end

@implementation SBSystemActionDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBSystemActionDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end