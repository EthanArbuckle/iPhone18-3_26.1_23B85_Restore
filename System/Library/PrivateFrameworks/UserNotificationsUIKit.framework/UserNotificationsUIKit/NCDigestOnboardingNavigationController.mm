@interface NCDigestOnboardingNavigationController
+ (id)navigationControllerWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4;
+ (id)navigationControllerWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4 previousBundleIdentifiersSelection:(id)a5 previousDeliveryTimesSelection:(id)a6;
- (id)_initWithWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4 previousBundleIdentifiersSelection:(id)a5 previousDeliveryTimesSelection:(id)a6 entrySource:(int)a7;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_pushToAppPicker;
- (void)_saveStateOfOnboardingViewController:(id)a3;
- (void)onboardingViewControllerDidDeferSetup:(id)a3;
- (void)onboardingViewControllerNextButtonTapped:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NCDigestOnboardingNavigationController

+ (id)navigationControllerWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NCDigestOnboardingNavigationController alloc] _initWithWithOnboardingDelegate:v6 deferButtonText:v5 previousBundleIdentifiersSelection:0 previousDeliveryTimesSelection:0 entrySource:1];

  return v7;
}

+ (id)navigationControllerWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4 previousBundleIdentifiersSelection:(id)a5 previousDeliveryTimesSelection:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NCDigestOnboardingNavigationController alloc] _initWithWithOnboardingDelegate:v12 deferButtonText:v11 previousBundleIdentifiersSelection:v10 previousDeliveryTimesSelection:v9 entrySource:0];

  return v13;
}

- (id)_initWithWithOnboardingDelegate:(id)a3 deferButtonText:(id)a4 previousBundleIdentifiersSelection:(id)a5 previousDeliveryTimesSelection:(id)a6 entrySource:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [NCDigestOnboardingIntroductionViewController introductionViewControllerWithDeferButtonText:v13];
  v31.receiver = self;
  v31.super_class = NCDigestOnboardingNavigationController;
  v17 = [(NCDigestOnboardingNavigationController *)&v31 initWithRootViewController:v16];
  v18 = v17;
  if (v17)
  {
    v26 = v15;
    [(NCModalNavigationController *)v17 setPresenterDelegate:v12];
    v19 = NCUserNotificationsUIKitFrameworkBundle();
    v20 = [v19 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_NEXT_BUTTON" value:&stru_282FE84F8 table:0];
    [v16 setNextButtonText:v20];

    [v16 setDelegate:v18];
    objc_storeStrong(&v18->_deliveryTimes, a6);
    objc_storeStrong(&v18->_appBundleIdentifiers, a5);
    v18->_entrySource = a7;
    shownAppBundleIdentifiers = v18->_shownAppBundleIdentifiers;
    v18->_shownAppBundleIdentifiers = 0;

    v18->_appPickerShowMoreButtonWasPressed = 0;
    v18->_userDeferredOnboarding = 0;
    v18->_finalUIShown = 0;
    v18->_userFinishedOnboarding = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    startTime = v18->_startTime;
    v18->_startTime = v22;

    v18->_waitingToPresentAppPicker = 0;
    v18->_deliveryTimesMutated = 0;
    v18->_appBundleIdentifiersMutated = 0;
    objc_initWeak(&location, v18);
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:14];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __168__NCDigestOnboardingNavigationController__initWithWithOnboardingDelegate_deferButtonText_previousBundleIdentifiersSelection_previousDeliveryTimesSelection_entrySource___block_invoke;
    v27[3] = &unk_278372CF0;
    objc_copyWeak(&v29, &location);
    v28 = v18;
    [NCAppPickerContentProvider providerWithPreviousBundleIdentifiersSelection:v14 numDaysForAverageNotificationCount:v24 onMainQueue:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    v15 = v26;
  }

  return v18;
}

void __168__NCDigestOnboardingNavigationController__initWithWithOnboardingDelegate_deferButtonText_previousBundleIdentifiersSelection_previousDeliveryTimesSelection_entrySource___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 194, a2);
    if (v5[1560] == 1 && ([*(a1 + 32) isBeingDismissed] & 1) == 0)
    {
      [*(a1 + 32) _pushToAppPicker];
      v5[1560] = 0;
    }
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = NCDigestOnboardingNavigationController;
  [(NCDigestOnboardingNavigationController *)&v7 pushViewController:a3 animated:a4];
  v5 = [(NCDigestOnboardingNavigationController *)self navigationBar];
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v5 setBackgroundColor:v6];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCDigestOnboardingNavigationController *)self viewControllers];
  v6 = [v5 lastObject];
  [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:v6];

  v9.receiver = self;
  v9.super_class = NCDigestOnboardingNavigationController;
  v7 = [(NCDigestOnboardingNavigationController *)&v9 popViewControllerAnimated:v3];

  return v7;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NCDigestOnboardingNavigationController;
  [(NCDigestOnboardingNavigationController *)&v7 viewWillDisappear:a3];
  v4 = [(NCModalNavigationController *)self presenterDelegate];
  if (!self->_userFinishedOnboarding && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(NCDigestOnboardingNavigationController *)self viewControllers];
    v6 = [v5 lastObject];
    [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:v6];

    [v4 digestOnboardingNavigationController:self didChangeDeliveryTimesActiveSelection:self->_deliveryTimes appBundleIdentifiersActiveSelection:self->_appBundleIdentifiers];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = NCDigestOnboardingNavigationController;
  [(NCModalNavigationController *)&v17 viewDidDisappear:a3];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSinceDate:self->_startTime];
  v6 = v5;
  if (self->_userFinishedOnboarding)
  {
    userDeferredOnboarding = 2;
  }

  else
  {
    userDeferredOnboarding = self->_userDeferredOnboarding;
  }

  shownAppBundleIdentifiers = self->_shownAppBundleIdentifiers;
  if (shownAppBundleIdentifiers)
  {
    v9 = shownAppBundleIdentifiers;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v10 = v9;
  if (self->_appBundleIdentifiers && self->_appBundleIdentifiersMutated)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_appBundleIdentifiers];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v12 = v11;
  if (self->_deliveryTimesMutated)
  {
    deliveryTimes = self->_deliveryTimes;
  }

  else
  {
    deliveryTimes = 0;
  }

  v14 = MEMORY[0x277CEB498];
  v15 = deliveryTimes;
  v16 = objc_alloc_init(v14);
  [v16 logDigestOnboardingWithEntrySource:self->_entrySource digestSetupOutcome:userDeferredOnboarding finalUIShown:self->_finalUIShown timeTaken:self->_appPickerShowMoreButtonWasPressed didSelectShowMore:14 numDaysForAverageNotificationCount:v10 shownApps:v6 appsAddedToDigest:v12 deliveryTimes:v15];
}

- (void)onboardingViewControllerNextButtonTapped:(id)a3
{
  v5 = a3;
  [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_contentProvider)
    {
      [(NCDigestOnboardingNavigationController *)self _pushToAppPicker];
    }

    else
    {
      self->_waitingToPresentAppPicker = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [NCSchedulerViewController schedulerWithDeliveryTimes:self->_deliveryTimes];
      [v4 setDelegate:self];
      [(NCDigestOnboardingNavigationController *)self pushViewController:v4 animated:1];
    }

    else
    {
      self->_userFinishedOnboarding = 1;
      v4 = [(NCModalNavigationController *)self presenterDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v4 digestOnboardingNavigationController:self didScheduleDigestDeliveryTimes:self->_deliveryTimes forAppBundleIdentifiers:self->_appBundleIdentifiers];
      }

      [(NCDigestOnboardingNavigationController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_pushToAppPicker
{
  v3 = [NCAppPickerViewController appPickerViewControllerWithContentProvider:self->_contentProvider];
  [v3 setDelegate:self];
  [(NCDigestOnboardingNavigationController *)self pushViewController:v3 animated:1];
}

- (void)onboardingViewControllerDidDeferSetup:(id)a3
{
  self->_userDeferredOnboarding = 1;
  v4 = [(NCModalNavigationController *)self presenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 digestOnboardingNavigationControllerDidDeferSetup:self];
  }
}

- (void)_saveStateOfOnboardingViewController:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v11 deliveryTimes];
    deliveryTimes = self->_deliveryTimes;
    self->_deliveryTimes = v4;

    self->_deliveryTimesMutated = 1;
    v6 = 2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [v11 selectedBundleIdentifiers];
    appBundleIdentifiers = self->_appBundleIdentifiers;
    self->_appBundleIdentifiers = v7;

    v6 = 1;
    self->_appBundleIdentifiersMutated = 1;
    v9 = [v11 shownBundleIdentifiers];
    shownAppBundleIdentifiers = self->_shownAppBundleIdentifiers;
    self->_shownAppBundleIdentifiers = v9;

    self->_appPickerShowMoreButtonWasPressed = [v11 showMoreButtonWasPressed];
  }

  self->_finalUIShown = v6;
LABEL_6:
}

@end