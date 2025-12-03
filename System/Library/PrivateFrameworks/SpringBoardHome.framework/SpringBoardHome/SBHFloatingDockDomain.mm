@interface SBHFloatingDockDomain
+ (id)rootSettings;
@end

@implementation SBHFloatingDockDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBHFloatingDockDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end