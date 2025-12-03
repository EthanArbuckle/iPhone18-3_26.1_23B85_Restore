@interface PKAutoFillCardsViewController
- (PKAutoFillCardsViewController)initWithCoder:(id)coder;
- (PKAutoFillCardsViewController)initWithDescriptors:(id)descriptors authentication:(id)authentication context:(int64_t)context settingsController:(id)controller groupsController:(id)groupsController;
- (PKAutoFillCardsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAutoFillCardsViewController

- (PKAutoFillCardsViewController)initWithDescriptors:(id)descriptors authentication:(id)authentication context:(int64_t)context settingsController:(id)controller groupsController:(id)groupsController
{
  sub_1BD0E5E8C(0, &qword_1EBD420C0);
  v11 = sub_1BE052744();
  authenticationCopy = authentication;
  controllerCopy = controller;
  groupsControllerCopy = groupsController;
  v15 = sub_1BE04AAC4();
  v17 = v16;

  return AutoFillCardsViewController.init(descriptors:authentication:context:settingsController:groupsController:)(v11, v15, v17, context, controller, groupsController);
}

- (PKAutoFillCardsViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD8A8674();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for AutoFillCardsViewController();
  v2 = v15.receiver;
  [(PKAutoFillCardsViewController *)&v15 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
    swift_beginAccess();
    view2 = [*&v2[v13] view];
    [view2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (PKAutoFillCardsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end