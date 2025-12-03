@interface _SFXPCError
- (_SFXPCError)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFXPCError

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _SFXPCError.encode(with:)(coderCopy);
}

- (_SFXPCError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end