@interface SBAlwaysOnDomain
+ (id)rootSettings;
@end

@implementation SBAlwaysOnDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBAlwaysOnDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end