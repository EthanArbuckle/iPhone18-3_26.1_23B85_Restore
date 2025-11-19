@interface SKRRedirectReason
- (SKRRedirectReason)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRRedirectReason

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  RedirectReasonXPC.encode(with:)(v4);
}

- (SKRRedirectReason)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end