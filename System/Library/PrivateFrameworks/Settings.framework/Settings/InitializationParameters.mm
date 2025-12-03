@interface InitializationParameters
- (NSString)description;
- (_TtC8Settings24InitializationParameters)init;
- (_TtC8Settings24InitializationParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InitializationParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE1878C(coderCopy);
}

- (_TtC8Settings24InitializationParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE1F1D0(coderCopy);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_21CE18BFC();

  v3 = sub_21CE6CC20();

  return v3;
}

- (_TtC8Settings24InitializationParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end