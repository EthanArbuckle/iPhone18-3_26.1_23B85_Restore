@interface PKCredentialCenterViewController
- (PKCredentialCenterViewController)initWithCoder:(id)a3;
- (PKCredentialCenterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCredentialCenterViewController

- (PKCredentialCenterViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD9E339C();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for CredentialCenterViewController();
  v2 = v15.receiver;
  [(PKCredentialCenterViewController *)&v15 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
    swift_beginAccess();
    v14 = [*&v2[v13] view];
    [v14 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (PKCredentialCenterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end