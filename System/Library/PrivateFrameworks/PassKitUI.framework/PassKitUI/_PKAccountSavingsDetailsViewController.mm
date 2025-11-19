@interface _PKAccountSavingsDetailsViewController
- (_PKAccountSavingsDetailsViewController)initWithCoder:(id)a3;
- (_PKAccountSavingsDetailsViewController)initWithConfiguration:(id)a3 setNavigationIconVisible:(id)a4;
- (_PKAccountSavingsDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation _PKAccountSavingsDetailsViewController

- (_PKAccountSavingsDetailsViewController)initWithConfiguration:(id)a3 setNavigationIconVisible:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1BD1B6FEC;
  }

  else
  {
    v6 = 0;
  }

  return AccountSavingsDetailsViewController.init(withConfiguration:setNavigationIconVisible:)(a3, v5, v6);
}

- (_PKAccountSavingsDetailsViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD1A5D34();
}

- (_PKAccountSavingsDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end