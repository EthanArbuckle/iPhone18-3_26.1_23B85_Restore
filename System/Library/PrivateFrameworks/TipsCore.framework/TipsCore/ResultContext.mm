@interface ResultContext
- (_TtC8TipsCore13ResultContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResultContext

- (_TtC8TipsCore13ResultContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ResultContext.encode(with:)(coderCopy);
}

@end