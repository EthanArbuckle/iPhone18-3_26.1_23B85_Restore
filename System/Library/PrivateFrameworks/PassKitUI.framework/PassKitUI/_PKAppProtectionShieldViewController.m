@interface _PKAppProtectionShieldViewController
- (_PKAppProtectionShieldViewController)initWithCoder:(id)a3;
- (_PKAppProtectionShieldViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation _PKAppProtectionShieldViewController

- (_PKAppProtectionShieldViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD650BFC();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppProtectionShieldViewController();
  v2 = v14.receiver;
  [(_PKAppProtectionShieldViewController *)&v14 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [*&v2[OBJC_IVAR____PKAppProtectionShieldViewController_appProtectionShieldVC] view];
    [v13 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_PKAppProtectionShieldViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end