@interface EmptyListViewController
- (_TtC8StocksUI23EmptyListViewController)initWithCoder:(id)a3;
- (_TtC8StocksUI23EmptyListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EmptyListViewController

- (_TtC8StocksUI23EmptyListViewController)initWithCoder:(id)a3
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220839428();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_220839514();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(EmptyListViewController *)&v7 traitCollectionDidChange:v4];
  swift_getObjectType();
  v6 = [v5 traitCollection];
  sub_22088D31C();

  sub_220839514();
}

- (_TtC8StocksUI23EmptyListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end