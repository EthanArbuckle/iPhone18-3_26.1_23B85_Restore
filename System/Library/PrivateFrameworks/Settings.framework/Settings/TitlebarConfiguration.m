@interface TitlebarConfiguration
- (_TtC8Settings21TitlebarConfiguration)init;
- (_TtC8Settings21TitlebarConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TitlebarConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE37220(v4);
}

- (_TtC8Settings21TitlebarConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE37D68(v3);

  return v4;
}

- (_TtC8Settings21TitlebarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end