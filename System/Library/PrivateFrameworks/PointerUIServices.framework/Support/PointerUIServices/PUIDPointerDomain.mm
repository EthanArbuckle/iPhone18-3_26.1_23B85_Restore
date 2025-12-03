@interface PUIDPointerDomain
+ (id)rootSettings;
@end

@implementation PUIDPointerDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PUIDPointerDomain;
  v2 = objc_msgSendSuper2(&v4, "rootSettings");

  return v2;
}

@end