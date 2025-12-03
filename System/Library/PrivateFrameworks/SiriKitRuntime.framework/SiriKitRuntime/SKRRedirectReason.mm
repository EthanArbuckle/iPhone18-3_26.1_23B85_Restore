@interface SKRRedirectReason
- (SKRRedirectReason)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRRedirectReason

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  RedirectReasonXPC.encode(with:)(coderCopy);
}

- (SKRRedirectReason)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end