@interface PKApplePayUserEducationInstructionsViewController
- (PKApplePayUserEducationInstructionsViewController)initWithContext:(int64_t)context;
- (void)applicationWillAddDeactivationReasonWithNotification:(id)notification;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PKApplePayUserEducationInstructionsViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD1EEF14();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD1EF4A0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD1EFBDC(disappear);
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD1F19B0();
}

- (void)applicationWillAddDeactivationReasonWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1BD1F080C(notificationCopy);
}

- (PKApplePayUserEducationInstructionsViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  _s9PassKitUI47ApplePayUserEducationInstructionsViewControllerC011explanationiJ15DidSelectCancelyySo013PKExplanationiJ0CF_0();
}

@end