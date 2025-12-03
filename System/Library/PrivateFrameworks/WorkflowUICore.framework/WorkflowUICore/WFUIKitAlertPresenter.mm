@interface WFUIKitAlertPresenter
+ (void)presentAlert:(id)alert withUserInterface:(id)interface;
@end

@implementation WFUIKitAlertPresenter

+ (void)presentAlert:(id)alert withUserInterface:(id)interface
{
  alertCopy = alert;
  interfaceCopy = interface;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__WFUIKitAlertPresenter_presentAlert_withUserInterface___block_invoke;
  v9[3] = &unk_279EF51A0;
  v10 = alertCopy;
  v11 = interfaceCopy;
  v7 = interfaceCopy;
  v8 = alertCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __56__WFUIKitAlertPresenter_presentAlert_withUserInterface___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSource];

  if (!v2)
  {
    v3 = [*(a1 + 40) view];
    v4 = [WFAlertPresentationSource sourceWithView:v3];
    [*(a1 + 32) setPresentationSource:v4];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [WFUIAlertControllerAlertPresenter presentAlert:v5 withUserInterface:v6];
}

@end