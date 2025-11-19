@interface KTStaticKeyMockDelay
+ (id)mockStaticKeyWithNotificationCenter:(id)a3;
@end

@implementation KTStaticKeyMockDelay

+ (id)mockStaticKeyWithNotificationCenter:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___KTStaticKeyMockDelay;
  v3 = objc_msgSendSuper2(&v5, sel_mockStaticKeyWithNotificationCenter_, a3);
  [v3 setDelayCode:1];

  return v3;
}

@end