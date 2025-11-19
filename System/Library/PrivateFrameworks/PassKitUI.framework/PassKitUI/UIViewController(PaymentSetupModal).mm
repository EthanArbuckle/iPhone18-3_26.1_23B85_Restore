@interface UIViewController(PaymentSetupModal)
- (void)presentModalViewController:()PaymentSetupModal withPaymentSetupContext:;
@end

@implementation UIViewController(PaymentSetupModal)

- (void)presentModalViewController:()PaymentSetupModal withPaymentSetupContext:
{
  v6 = a3;
  PKPaymentSetupApplyContextAppearance(a4, v6);
  if ([a1 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v6 setModalPresentationStyle:3];
    [a1 presentViewController:v6 withTransition:8 completion:0];
  }

  else
  {
    [a1 presentViewController:v6 animated:1 completion:0];
  }
}

@end