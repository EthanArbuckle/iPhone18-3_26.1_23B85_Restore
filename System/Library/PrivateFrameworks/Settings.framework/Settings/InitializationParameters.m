@interface InitializationParameters
- (NSString)description;
- (_TtC8Settings24InitializationParameters)init;
- (_TtC8Settings24InitializationParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation InitializationParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE1878C(v4);
}

- (_TtC8Settings24InitializationParameters)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE1F1D0(v3);

  return v4;
}

- (NSString)description
{
  v2 = self;
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