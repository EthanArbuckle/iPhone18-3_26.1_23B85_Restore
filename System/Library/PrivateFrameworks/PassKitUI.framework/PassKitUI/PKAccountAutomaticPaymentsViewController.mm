@interface PKAccountAutomaticPaymentsViewController
- (PKAccountAutomaticPaymentsViewController)initWithCoder:(id)a3;
- (PKAccountAutomaticPaymentsViewController)initWithController:(id)a3 showSetupPrompt:(BOOL)a4;
- (PKAccountAutomaticPaymentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountAutomaticPaymentsViewController

- (PKAccountAutomaticPaymentsViewController)initWithController:(id)a3 showSetupPrompt:(BOOL)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC) = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  v8 = a3;
  AccountAutomaticPaymentsModel.init(controller:)(v8);
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model) = v9;
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt) = a4;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(PKAccountAutomaticPaymentsViewController *)&v12 initWithNibName:0 bundle:0];

  return v10;
}

- (PKAccountAutomaticPaymentsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  AccountAutomaticPaymentsViewController.loadView()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  AccountAutomaticPaymentsViewController.viewWillLayoutSubviews()();
}

- (PKAccountAutomaticPaymentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end