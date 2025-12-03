@interface UVPrototypeDomain
+ (id)rootSettings;
@end

@implementation UVPrototypeDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___UVPrototypeDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end