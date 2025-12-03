@interface NavigationToken
- (_TtC8Settings15NavigationToken)init;
- (_TtC8Settings15NavigationToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NavigationToken

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE15A24(coderCopy);
}

- (_TtC8Settings15NavigationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE16568();

  return v4;
}

- (_TtC8Settings15NavigationToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end