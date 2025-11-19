@interface ProvisioningCardReaderViewController
- (BOOL)isComplete;
- (void)fieldTextValueDidChangeForField:(id)a3;
- (void)loadView;
- (void)manualEntryButtonPressed;
- (void)verifyLaterButtonPressed;
@end

@implementation ProvisioningCardReaderViewController

- (void)loadView
{
  v2 = self;
  sub_1BDA168F4();
}

- (void)manualEntryButtonPressed
{
  v2 = self;
  sub_1BDA18F9C();
}

- (void)verifyLaterButtonPressed
{
  v2 = self;
  sub_1BDA1911C();
}

- (void)fieldTextValueDidChangeForField:(id)a3
{
  v5 = self;
  [(PKPaymentSetupFieldsViewController *)v5 _setPrimaryButtonEnabled:sub_1BDA1A068(0) & 1];
  v3 = *(&v5->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton);
  if (v3)
  {
    v4 = v3;
    [v4 setEnabled_];
  }
}

- (BOOL)isComplete
{
  v2 = self;
  v3 = sub_1BDA1A068(0);

  return v3 & 1;
}

@end