@interface _PKAccountSavingsDetailsViewController
- (_PKAccountSavingsDetailsViewController)initWithCoder:(id)coder;
- (_PKAccountSavingsDetailsViewController)initWithConfiguration:(id)configuration setNavigationIconVisible:(id)visible;
- (_PKAccountSavingsDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation _PKAccountSavingsDetailsViewController

- (_PKAccountSavingsDetailsViewController)initWithConfiguration:(id)configuration setNavigationIconVisible:(id)visible
{
  v5 = _Block_copy(visible);
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

  return AccountSavingsDetailsViewController.init(withConfiguration:setNavigationIconVisible:)(configuration, v5, v6);
}

- (_PKAccountSavingsDetailsViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD1A5D34();
}

- (_PKAccountSavingsDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end