@interface UIViewController(PaymentSetupModal)
- (void)presentModalViewController:()PaymentSetupModal withPaymentSetupContext:;
@end

@implementation UIViewController(PaymentSetupModal)

- (void)presentModalViewController:()PaymentSetupModal withPaymentSetupContext:
{
  v6 = a3;
  PKPaymentSetupApplyContextAppearance(a4, v6);
  if ([self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v6 setModalPresentationStyle:3];
    [self presentViewController:v6 withTransition:8 completion:0];
  }

  else
  {
    [self presentViewController:v6 animated:1 completion:0];
  }
}

@end