@interface SBFWakeAnimationDomain
+ (id)rootSettings;
@end

@implementation SBFWakeAnimationDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBFWakeAnimationDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end