@interface ProvisioningVerificationURLViewController
- (_TtC9PassKitUI41ProvisioningVerificationURLViewController)initWithContext:(int64_t)a3;
- (void)_changeMethodButtonPressed;
- (void)_skipButtonPressed;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ProvisioningVerificationURLViewController

- (void)loadView
{
  v2 = self;
  sub_1BD37DCC0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD37E664();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProvisioningVerificationURLViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter] reportViewAppeared];
}

- (void)_skipButtonPressed
{
  v2 = self;
  sub_1BD37EC0C();
}

- (void)_changeMethodButtonPressed
{
  v2 = self;
  sub_1BD37ED34();
}

- (_TtC9PassKitUI41ProvisioningVerificationURLViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v3 = self;
  sub_1BD37EF44();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_1BD37FE84(a3);
}

@end