@interface TitlebarConfiguration
- (_TtC8Settings21TitlebarConfiguration)init;
- (_TtC8Settings21TitlebarConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TitlebarConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE37220(coderCopy);
}

- (_TtC8Settings21TitlebarConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE37D68(coderCopy);

  return v4;
}

- (_TtC8Settings21TitlebarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end