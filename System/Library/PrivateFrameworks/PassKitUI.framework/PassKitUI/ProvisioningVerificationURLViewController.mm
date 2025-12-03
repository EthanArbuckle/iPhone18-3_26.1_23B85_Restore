@interface ProvisioningVerificationURLViewController
- (_TtC9PassKitUI41ProvisioningVerificationURLViewController)initWithContext:(int64_t)context;
- (void)_changeMethodButtonPressed;
- (void)_skipButtonPressed;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ProvisioningVerificationURLViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD37DCC0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD37E664();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProvisioningVerificationURLViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter] reportViewAppeared];
}

- (void)_skipButtonPressed
{
  selfCopy = self;
  sub_1BD37EC0C();
}

- (void)_changeMethodButtonPressed
{
  selfCopy = self;
  sub_1BD37ED34();
}

- (_TtC9PassKitUI41ProvisioningVerificationURLViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  selfCopy = self;
  sub_1BD37EF44();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  selfCopy = self;
  sub_1BD37FE84(i);
}

@end