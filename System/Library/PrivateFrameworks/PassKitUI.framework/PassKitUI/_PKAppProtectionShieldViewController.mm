@interface _PKAppProtectionShieldViewController
- (_PKAppProtectionShieldViewController)initWithCoder:(id)coder;
- (_PKAppProtectionShieldViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation _PKAppProtectionShieldViewController

- (_PKAppProtectionShieldViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD650BFC();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for AppProtectionShieldViewController();
  v2 = v14.receiver;
  [(_PKAppProtectionShieldViewController *)&v14 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    view2 = [*&v2[OBJC_IVAR____PKAppProtectionShieldViewController_appProtectionShieldVC] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_PKAppProtectionShieldViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end