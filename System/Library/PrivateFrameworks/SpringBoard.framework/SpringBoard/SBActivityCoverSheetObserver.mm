@interface SBActivityCoverSheetObserver
- (BOOL)shouldHandleActivityItem:(id)item;
- (SBActivityCoverSheetObserver)init;
- (void)_dismissAlertForItem:(id)item;
- (void)activityDidDismiss:(id)dismiss;
- (void)activityDidExceedReducedPushBudget:(id)budget;
- (void)activityDidStart:(id)start;
- (void)activityDidUpdate:(id)update;
- (void)activityEnvironmentChanged:(int64_t)changed;
- (void)activityWasBlocked:(id)blocked;
- (void)activityWasUnblocked:(id)unblocked;
- (void)dismissAlert:(id)alert;
- (void)presentAlert:(id)alert;
@end

@implementation SBActivityCoverSheetObserver

- (SBActivityCoverSheetObserver)init
{
  v8.receiver = self;
  v8.super_class = SBActivityCoverSheetObserver;
  v2 = [(SBActivityCoverSheetObserver *)&v8 init];
  if (v2)
  {
    mEMORY[0x277D02B90] = [MEMORY[0x277D02B90] sharedInstance];
    activityManager = v2->_activityManager;
    v2->_activityManager = mEMORY[0x277D02B90];

    v5 = objc_alloc_init(SBActivityModalPresentationController);
    modalPresentationController = v2->_modalPresentationController;
    v2->_modalPresentationController = v5;

    [(SBActivityModalPresentationController *)v2->_modalPresentationController setDelegate:v2];
    v2->_environment = 0;
  }

  return v2;
}

- (void)_dismissAlertForItem:(id)item
{
  itemCopy = item;
  item = [(SBActivityAlert *)self->_activeAlert item];
  identifier = [item identifier];

  identifier2 = [itemCopy identifier];
  v8 = [identifier2 isEqualToString:identifier];

  if (v8)
  {
    [(SBActivityModalPresentationController *)self->_modalPresentationController dismissModalForActivityItem:itemCopy];
    [(SBActivityAlert *)self->_activeAlert stopAlerting];
    activeAlert = self->_activeAlert;
    self->_activeAlert = 0;
  }

  else
  {
    v10 = SBLogActivity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBActivityCoverSheetObserver *)itemCopy _dismissAlertForItem:v10];
    }
  }
}

- (void)activityDidStart:(id)start
{
  activityManager = self->_activityManager;
  contentUpdate = [start contentUpdate];
  [(CSActivityManager *)activityManager addActivityWithContentUpdate:contentUpdate];
}

- (void)activityDidUpdate:(id)update
{
  activityManager = self->_activityManager;
  contentUpdate = [update contentUpdate];
  [(CSActivityManager *)activityManager updateActivityWithContentUpdate:contentUpdate];
}

- (void)activityDidDismiss:(id)dismiss
{
  activityManager = self->_activityManager;
  dismissCopy = dismiss;
  contentUpdate = [dismissCopy contentUpdate];
  [(CSActivityManager *)activityManager removeActivityWithContentUpdate:contentUpdate];

  [(SBActivityCoverSheetObserver *)self _dismissAlertForItem:dismissCopy];
}

- (BOOL)shouldHandleActivityItem:(id)item
{
  if (!item)
  {
    return 0;
  }

  descriptor = [item descriptor];
  presentationOptions = [descriptor presentationOptions];
  destinations = [presentationOptions destinations];
  v6 = [destinations bs_containsObjectPassingTest:&__block_literal_global_113];

  v7 = +[SBLiveActivityDomain rootSettings];
  hideActivitiesInLockScreen = [v7 hideActivitiesInLockScreen];

  v9 = (hideActivitiesInLockScreen ^ 1) & v6;
  return v9;
}

- (void)activityWasBlocked:(id)blocked
{
  activityManager = self->_activityManager;
  identifier = [blocked identifier];
  [(CSActivityManager *)activityManager setActivityHidden:1 forIdentifier:identifier];
}

- (void)activityWasUnblocked:(id)unblocked
{
  activityManager = self->_activityManager;
  identifier = [unblocked identifier];
  [(CSActivityManager *)activityManager setActivityHidden:0 forIdentifier:identifier];
}

- (void)activityDidExceedReducedPushBudget:(id)budget
{
  activityManager = self->_activityManager;
  identifier = [budget identifier];
  [(CSActivityManager *)activityManager handleActivityExceedingReducedPushBudgetForIdentifier:identifier];
}

- (void)presentAlert:(id)alert
{
  alertCopy = alert;
  if ([alertCopy canPresentInEnvironment:self->_environment alertType:4])
  {
    v5 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v5 transientOverlayPresentationManager];
    hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

    if (hasActivePresentation)
    {
      item = +[SBActivityManager sharedInstance];
      [item alertPresentationFailed:alertCopy];
    }

    else
    {
      [alertCopy alertWithScreenOn:1 playSound:1];
      objc_storeStrong(&self->_activeAlert, alert);
      modalPresentationController = self->_modalPresentationController;
      item = [alertCopy item];
      [(SBActivityModalPresentationController *)modalPresentationController presentModalForActivityItem:item completion:0];
    }
  }
}

- (void)dismissAlert:(id)alert
{
  item = [alert item];
  [(SBActivityCoverSheetObserver *)self _dismissAlertForItem:item];
}

- (void)activityEnvironmentChanged:(int64_t)changed
{
  if (self->_environment != changed)
  {
    self->_environment = changed;
  }
}

- (void)_dismissAlertForItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[ActivityID: %{public}@] Could not dismiss alert because it is not active", &v4, 0xCu);
}

@end