@interface KTStaticKeyMockError
+ (id)mockStaticKeyWithNotificationCenter:(id)center;
@end

@implementation KTStaticKeyMockError

+ (id)mockStaticKeyWithNotificationCenter:(id)center
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___KTStaticKeyMockError;
  v3 = objc_msgSendSuper2(&v5, sel_mockStaticKeyWithNotificationCenter_, center);
  [v3 setCodeFailure:1];

  return v3;
}

@end