@interface NavigationToken
- (_TtC8Settings15NavigationToken)init;
- (_TtC8Settings15NavigationToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NavigationToken

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE15A24(v4);
}

- (_TtC8Settings15NavigationToken)initWithCoder:(id)a3
{
  v3 = a3;
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