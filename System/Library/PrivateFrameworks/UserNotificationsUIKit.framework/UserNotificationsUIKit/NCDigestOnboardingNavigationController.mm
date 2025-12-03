@interface NCDigestOnboardingNavigationController
+ (id)navigationControllerWithOnboardingDelegate:(id)delegate deferButtonText:(id)text;
+ (id)navigationControllerWithOnboardingDelegate:(id)delegate deferButtonText:(id)text previousBundleIdentifiersSelection:(id)selection previousDeliveryTimesSelection:(id)timesSelection;
- (id)_initWithWithOnboardingDelegate:(id)delegate deferButtonText:(id)text previousBundleIdentifiersSelection:(id)selection previousDeliveryTimesSelection:(id)timesSelection entrySource:(int)source;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_pushToAppPicker;
- (void)_saveStateOfOnboardingViewController:(id)controller;
- (void)onboardingViewControllerDidDeferSetup:(id)setup;
- (void)onboardingViewControllerNextButtonTapped:(id)tapped;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCDigestOnboardingNavigationController

+ (id)navigationControllerWithOnboardingDelegate:(id)delegate deferButtonText:(id)text
{
  textCopy = text;
  delegateCopy = delegate;
  v7 = [[NCDigestOnboardingNavigationController alloc] _initWithWithOnboardingDelegate:delegateCopy deferButtonText:textCopy previousBundleIdentifiersSelection:0 previousDeliveryTimesSelection:0 entrySource:1];

  return v7;
}

+ (id)navigationControllerWithOnboardingDelegate:(id)delegate deferButtonText:(id)text previousBundleIdentifiersSelection:(id)selection previousDeliveryTimesSelection:(id)timesSelection
{
  timesSelectionCopy = timesSelection;
  selectionCopy = selection;
  textCopy = text;
  delegateCopy = delegate;
  v13 = [[NCDigestOnboardingNavigationController alloc] _initWithWithOnboardingDelegate:delegateCopy deferButtonText:textCopy previousBundleIdentifiersSelection:selectionCopy previousDeliveryTimesSelection:timesSelectionCopy entrySource:0];

  return v13;
}

- (id)_initWithWithOnboardingDelegate:(id)delegate deferButtonText:(id)text previousBundleIdentifiersSelection:(id)selection previousDeliveryTimesSelection:(id)timesSelection entrySource:(int)source
{
  delegateCopy = delegate;
  textCopy = text;
  selectionCopy = selection;
  timesSelectionCopy = timesSelection;
  v16 = [NCDigestOnboardingIntroductionViewController introductionViewControllerWithDeferButtonText:textCopy];
  v31.receiver = self;
  v31.super_class = NCDigestOnboardingNavigationController;
  v17 = [(NCDigestOnboardingNavigationController *)&v31 initWithRootViewController:v16];
  v18 = v17;
  if (v17)
  {
    v26 = timesSelectionCopy;
    [(NCModalNavigationController *)v17 setPresenterDelegate:delegateCopy];
    v19 = NCUserNotificationsUIKitFrameworkBundle();
    v20 = [v19 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_NEXT_BUTTON" value:&stru_282FE84F8 table:0];
    [v16 setNextButtonText:v20];

    [v16 setDelegate:v18];
    objc_storeStrong(&v18->_deliveryTimes, timesSelection);
    objc_storeStrong(&v18->_appBundleIdentifiers, selection);
    v18->_entrySource = source;
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
    [NCAppPickerContentProvider providerWithPreviousBundleIdentifiersSelection:selectionCopy numDaysForAverageNotificationCount:v24 onMainQueue:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    timesSelectionCopy = v26;
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

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = NCDigestOnboardingNavigationController;
  [(NCDigestOnboardingNavigationController *)&v7 pushViewController:controller animated:animated];
  navigationBar = [(NCDigestOnboardingNavigationController *)self navigationBar];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [navigationBar setBackgroundColor:systemBackgroundColor];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(NCDigestOnboardingNavigationController *)self viewControllers];
  lastObject = [viewControllers lastObject];
  [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:lastObject];

  v9.receiver = self;
  v9.super_class = NCDigestOnboardingNavigationController;
  v7 = [(NCDigestOnboardingNavigationController *)&v9 popViewControllerAnimated:animatedCopy];

  return v7;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = NCDigestOnboardingNavigationController;
  [(NCDigestOnboardingNavigationController *)&v7 viewWillDisappear:disappear];
  presenterDelegate = [(NCModalNavigationController *)self presenterDelegate];
  if (!self->_userFinishedOnboarding && (objc_opt_respondsToSelector() & 1) != 0)
  {
    viewControllers = [(NCDigestOnboardingNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
    [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:lastObject];

    [presenterDelegate digestOnboardingNavigationController:self didChangeDeliveryTimesActiveSelection:self->_deliveryTimes appBundleIdentifiersActiveSelection:self->_appBundleIdentifiers];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v17.receiver = self;
  v17.super_class = NCDigestOnboardingNavigationController;
  [(NCModalNavigationController *)&v17 viewDidDisappear:disappear];
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

- (void)onboardingViewControllerNextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(NCDigestOnboardingNavigationController *)self _saveStateOfOnboardingViewController:tappedCopy];
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
      presenterDelegate = [NCSchedulerViewController schedulerWithDeliveryTimes:self->_deliveryTimes];
      [presenterDelegate setDelegate:self];
      [(NCDigestOnboardingNavigationController *)self pushViewController:presenterDelegate animated:1];
    }

    else
    {
      self->_userFinishedOnboarding = 1;
      presenterDelegate = [(NCModalNavigationController *)self presenterDelegate];
      if (objc_opt_respondsToSelector())
      {
        [presenterDelegate digestOnboardingNavigationController:self didScheduleDigestDeliveryTimes:self->_deliveryTimes forAppBundleIdentifiers:self->_appBundleIdentifiers];
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

- (void)onboardingViewControllerDidDeferSetup:(id)setup
{
  self->_userDeferredOnboarding = 1;
  presenterDelegate = [(NCModalNavigationController *)self presenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [presenterDelegate digestOnboardingNavigationControllerDidDeferSetup:self];
  }
}

- (void)_saveStateOfOnboardingViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deliveryTimes = [controllerCopy deliveryTimes];
    deliveryTimes = self->_deliveryTimes;
    self->_deliveryTimes = deliveryTimes;

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

    selectedBundleIdentifiers = [controllerCopy selectedBundleIdentifiers];
    appBundleIdentifiers = self->_appBundleIdentifiers;
    self->_appBundleIdentifiers = selectedBundleIdentifiers;

    v6 = 1;
    self->_appBundleIdentifiersMutated = 1;
    shownBundleIdentifiers = [controllerCopy shownBundleIdentifiers];
    shownAppBundleIdentifiers = self->_shownAppBundleIdentifiers;
    self->_shownAppBundleIdentifiers = shownBundleIdentifiers;

    self->_appPickerShowMoreButtonWasPressed = [controllerCopy showMoreButtonWasPressed];
  }

  self->_finalUIShown = v6;
LABEL_6:
}

@end