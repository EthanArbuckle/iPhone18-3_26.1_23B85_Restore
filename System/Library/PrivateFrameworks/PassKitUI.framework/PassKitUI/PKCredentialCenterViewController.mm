@interface PKCredentialCenterViewController
- (PKCredentialCenterViewController)initWithCoder:(id)coder;
- (PKCredentialCenterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCredentialCenterViewController

- (PKCredentialCenterViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD9E339C();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for CredentialCenterViewController();
  v2 = v15.receiver;
  [(PKCredentialCenterViewController *)&v15 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
    swift_beginAccess();
    view2 = [*&v2[v13] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (PKCredentialCenterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end