@interface POCurve25519Verify
- (BOOL)verifyKey:(__SecKey *)key;
- (_TtC15PlatformSSOCore18POCurve25519Verify)init;
@end

@implementation POCurve25519Verify

- (BOOL)verifyKey:(__SecKey *)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = _s15PlatformSSOCore18POCurve25519VerifyC9verifyKeyySbSo03SecF3RefaF_0(keyCopy);

  return v6 & 1;
}

- (_TtC15PlatformSSOCore18POCurve25519Verify)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(POCurve25519Verify *)&v3 init];
}

@end