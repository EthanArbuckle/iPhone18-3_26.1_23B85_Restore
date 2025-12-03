@interface SEState
- (_TtC9SEService7SEState)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SEState.encode(with:)(coderCopy);
}

- (_TtC9SEService7SEState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end