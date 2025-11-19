@interface ProvisioningCarPerformPairingViewController
- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonPressed;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProvisioningCarPerformPairingViewController

- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(PKProvisioningProgressView) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v4 = self;
  v5 = [v3 initWithBarButtonSystemItem:1 target:v4 action:sel_cancelButtonPressed];
  v6 = [(ProvisioningCarPerformPairingViewController *)v4 navigationItem];
  [v6 setRightBarButtonItem:v5 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD7E1B84(a3);
}

- (void)loadView
{
  v2 = self;
  sub_1BD7E1C84();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ProvisioningCarPerformPairingViewController *)&v15 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView];
    v5 = v3;
    v6 = [v3 safeAreaLayoutGuide];
    [v6 layoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v4 setFrame_];
  }
}

- (void)cancelButtonPressed
{
  v2 = self;
  sub_1BD7E26E4();
}

- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end