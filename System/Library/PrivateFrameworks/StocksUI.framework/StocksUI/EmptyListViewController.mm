@interface EmptyListViewController
- (_TtC8StocksUI23EmptyListViewController)initWithCoder:(id)coder;
- (_TtC8StocksUI23EmptyListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EmptyListViewController

- (_TtC8StocksUI23EmptyListViewController)initWithCoder:(id)coder
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220839428();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_220839514();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(EmptyListViewController *)&v7 traitCollectionDidChange:changeCopy];
  swift_getObjectType();
  traitCollection = [v5 traitCollection];
  sub_22088D31C();

  sub_220839514();
}

- (_TtC8StocksUI23EmptyListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end