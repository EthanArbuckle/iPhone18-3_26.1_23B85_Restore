@interface POCurve25519Verify
- (BOOL)verifyKey:(__SecKey *)a3;
- (_TtC15PlatformSSOCore18POCurve25519Verify)init;
@end

@implementation POCurve25519Verify

- (BOOL)verifyKey:(__SecKey *)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s15PlatformSSOCore18POCurve25519VerifyC9verifyKeyySbSo03SecF3RefaF_0(v4);

  return v6 & 1;
}

- (_TtC15PlatformSSOCore18POCurve25519Verify)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(POCurve25519Verify *)&v3 init];
}

@end