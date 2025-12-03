@interface ProvisioningCarPerformPairingViewController
- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonPressed;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProvisioningCarPerformPairingViewController

- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  v5 = [v3 initWithBarButtonSystemItem:1 target:selfCopy action:sel_cancelButtonPressed];
  navigationItem = [(ProvisioningCarPerformPairingViewController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem:v5 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD7E1B84(appear);
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD7E1C84();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ProvisioningCarPerformPairingViewController *)&v15 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = *&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView];
    v5 = view;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v4 setFrame_];
  }
}

- (void)cancelButtonPressed
{
  selfCopy = self;
  sub_1BD7E26E4();
}

- (_TtC9PassKitUI43ProvisioningCarPerformPairingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end