@interface ContextKeys
- (_TtC8TipsCore11ContextKeys)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextKeys

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ContextKeys.encode(with:)(coderCopy);
}

- (_TtC8TipsCore11ContextKeys)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end