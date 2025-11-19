@interface HiddenCardViewController
- (_TtC8StocksUI24HiddenCardViewController)init;
- (_TtC8StocksUI24HiddenCardViewController)initWithCoder:(id)a3;
- (_TtC8StocksUI24HiddenCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation HiddenCardViewController

- (_TtC8StocksUI24HiddenCardViewController)init
{
  ObjectType = swift_getObjectType();
  sub_22088B9AC();
  sub_22088B3FC();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HiddenCardViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC8StocksUI24HiddenCardViewController)initWithCoder:(id)a3
{
  sub_22088B9AC();
  sub_22088B3FC();
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (_TtC8StocksUI24HiddenCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end