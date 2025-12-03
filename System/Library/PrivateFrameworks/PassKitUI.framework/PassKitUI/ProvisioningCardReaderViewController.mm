@interface ProvisioningCardReaderViewController
- (BOOL)isComplete;
- (void)fieldTextValueDidChangeForField:(id)field;
- (void)loadView;
- (void)manualEntryButtonPressed;
- (void)verifyLaterButtonPressed;
@end

@implementation ProvisioningCardReaderViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BDA168F4();
}

- (void)manualEntryButtonPressed
{
  selfCopy = self;
  sub_1BDA18F9C();
}

- (void)verifyLaterButtonPressed
{
  selfCopy = self;
  sub_1BDA1911C();
}

- (void)fieldTextValueDidChangeForField:(id)field
{
  selfCopy = self;
  [(PKPaymentSetupFieldsViewController *)selfCopy _setPrimaryButtonEnabled:sub_1BDA1A068(0) & 1];
  v3 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton);
  if (v3)
  {
    v4 = v3;
    [v4 setEnabled_];
  }
}

- (BOOL)isComplete
{
  selfCopy = self;
  v3 = sub_1BDA1A068(0);

  return v3 & 1;
}

@end