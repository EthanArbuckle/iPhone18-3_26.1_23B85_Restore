@interface PKApplePayUserEducationInstructionsViewController
- (PKApplePayUserEducationInstructionsViewController)initWithContext:(int64_t)a3;
- (void)applicationWillAddDeactivationReasonWithNotification:(id)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKApplePayUserEducationInstructionsViewController

- (void)loadView
{
  v2 = self;
  sub_1BD1EEF14();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD1EF4A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD1EFBDC(a3);
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD1F19B0();
}

- (void)applicationWillAddDeactivationReasonWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD1F080C(v4);
}

- (PKApplePayUserEducationInstructionsViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9PassKitUI47ApplePayUserEducationInstructionsViewControllerC011explanationiJ15DidSelectCancelyySo013PKExplanationiJ0CF_0();
}

@end