@interface WCOnboardingPresenter
+ (void)presentGesturesOverviewFromViewController:(id)controller withObserver:(id)observer;
+ (void)presentOnboardingFromViewController:(id)controller withObserver:(id)observer;
@end

@implementation WCOnboardingPresenter

+ (void)presentOnboardingFromViewController:(id)controller withObserver:(id)observer
{
  observerCopy = observer;
  controllerCopy = controller;
  v7 = objc_opt_new();
  [v7 setOnboardingObserver:observerCopy];

  [controllerCopy presentViewController:v7 animated:1 completion:0];
}

+ (void)presentGesturesOverviewFromViewController:(id)controller withObserver:(id)observer
{
  controllerCopy = controller;
  observerCopy = observer;
  v6 = +[WCGesturesOverviewViewController_iOS createGesturesOverviewViewController];
  [v6 setOnboardingObserver:observerCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = [controllerCopy navigationController];
    [navigationController pushViewController:v6 animated:1];
  }

  else
  {
    navigationController = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v6];
    [controllerCopy presentViewController:navigationController animated:1 completion:0];
  }
}

@end