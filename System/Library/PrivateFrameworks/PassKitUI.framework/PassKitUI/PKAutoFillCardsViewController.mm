@interface PKAutoFillCardsViewController
- (PKAutoFillCardsViewController)initWithCoder:(id)a3;
- (PKAutoFillCardsViewController)initWithDescriptors:(id)a3 authentication:(id)a4 context:(int64_t)a5 settingsController:(id)a6 groupsController:(id)a7;
- (PKAutoFillCardsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAutoFillCardsViewController

- (PKAutoFillCardsViewController)initWithDescriptors:(id)a3 authentication:(id)a4 context:(int64_t)a5 settingsController:(id)a6 groupsController:(id)a7
{
  sub_1BD0E5E8C(0, &qword_1EBD420C0);
  v11 = sub_1BE052744();
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = sub_1BE04AAC4();
  v17 = v16;

  return AutoFillCardsViewController.init(descriptors:authentication:context:settingsController:groupsController:)(v11, v15, v17, a5, a6, a7);
}

- (PKAutoFillCardsViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD8A8674();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for AutoFillCardsViewController();
  v2 = v15.receiver;
  [(PKAutoFillCardsViewController *)&v15 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
    swift_beginAccess();
    v14 = [*&v2[v13] view];
    [v14 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (PKAutoFillCardsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end