@interface _SFXPCError
- (_SFXPCError)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFXPCError

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _SFXPCError.encode(with:)(v4);
}

- (_SFXPCError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end