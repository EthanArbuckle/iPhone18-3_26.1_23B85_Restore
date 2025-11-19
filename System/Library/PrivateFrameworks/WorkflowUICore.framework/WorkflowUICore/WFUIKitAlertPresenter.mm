@interface WFUIKitAlertPresenter
+ (void)presentAlert:(id)a3 withUserInterface:(id)a4;
@end

@implementation WFUIKitAlertPresenter

+ (void)presentAlert:(id)a3 withUserInterface:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__WFUIKitAlertPresenter_presentAlert_withUserInterface___block_invoke;
  v9[3] = &unk_279EF51A0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
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