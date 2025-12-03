@interface ProxiedRequestContext
- (_TtC14SiriKitRuntime21ProxiedRequestContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ProxiedRequestContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ProxiedRequestContext.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime21ProxiedRequestContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end