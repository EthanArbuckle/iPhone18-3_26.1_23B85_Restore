@interface PKAccountAutomaticPaymentsViewController
- (PKAccountAutomaticPaymentsViewController)initWithCoder:(id)coder;
- (PKAccountAutomaticPaymentsViewController)initWithController:(id)controller showSetupPrompt:(BOOL)prompt;
- (PKAccountAutomaticPaymentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountAutomaticPaymentsViewController

- (PKAccountAutomaticPaymentsViewController)initWithController:(id)controller showSetupPrompt:(BOOL)prompt
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC) = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  controllerCopy = controller;
  AccountAutomaticPaymentsModel.init(controller:)(controllerCopy);
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model) = v9;
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt) = prompt;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(PKAccountAutomaticPaymentsViewController *)&v12 initWithNibName:0 bundle:0];

  return v10;
}

- (PKAccountAutomaticPaymentsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  AccountAutomaticPaymentsViewController.loadView()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  AccountAutomaticPaymentsViewController.viewWillLayoutSubviews()();
}

- (PKAccountAutomaticPaymentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end