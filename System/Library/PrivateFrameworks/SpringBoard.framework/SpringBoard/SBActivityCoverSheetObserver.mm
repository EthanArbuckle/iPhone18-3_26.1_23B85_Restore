@interface SBActivityCoverSheetObserver
- (BOOL)shouldHandleActivityItem:(id)a3;
- (SBActivityCoverSheetObserver)init;
- (void)_dismissAlertForItem:(id)a3;
- (void)activityDidDismiss:(id)a3;
- (void)activityDidExceedReducedPushBudget:(id)a3;
- (void)activityDidStart:(id)a3;
- (void)activityDidUpdate:(id)a3;
- (void)activityEnvironmentChanged:(int64_t)a3;
- (void)activityWasBlocked:(id)a3;
- (void)activityWasUnblocked:(id)a3;
- (void)dismissAlert:(id)a3;
- (void)presentAlert:(id)a3;
@end

@implementation SBActivityCoverSheetObserver

- (SBActivityCoverSheetObserver)init
{
  v8.receiver = self;
  v8.super_class = SBActivityCoverSheetObserver;
  v2 = [(SBActivityCoverSheetObserver *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D02B90] sharedInstance];
    activityManager = v2->_activityManager;
    v2->_activityManager = v3;

    v5 = objc_alloc_init(SBActivityModalPresentationController);
    modalPresentationController = v2->_modalPresentationController;
    v2->_modalPresentationController = v5;

    [(SBActivityModalPresentationController *)v2->_modalPresentationController setDelegate:v2];
    v2->_environment = 0;
  }

  return v2;
}

- (void)_dismissAlertForItem:(id)a3
{
  v4 = a3;
  v5 = [(SBActivityAlert *)self->_activeAlert item];
  v6 = [v5 identifier];

  v7 = [v4 identifier];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    [(SBActivityModalPresentationController *)self->_modalPresentationController dismissModalForActivityItem:v4];
    [(SBActivityAlert *)self->_activeAlert stopAlerting];
    activeAlert = self->_activeAlert;
    self->_activeAlert = 0;
  }

  else
  {
    v10 = SBLogActivity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBActivityCoverSheetObserver *)v4 _dismissAlertForItem:v10];
    }
  }
}

- (void)activityDidStart:(id)a3
{
  activityManager = self->_activityManager;
  v4 = [a3 contentUpdate];
  [(CSActivityManager *)activityManager addActivityWithContentUpdate:v4];
}

- (void)activityDidUpdate:(id)a3
{
  activityManager = self->_activityManager;
  v4 = [a3 contentUpdate];
  [(CSActivityManager *)activityManager updateActivityWithContentUpdate:v4];
}

- (void)activityDidDismiss:(id)a3
{
  activityManager = self->_activityManager;
  v6 = a3;
  v5 = [v6 contentUpdate];
  [(CSActivityManager *)activityManager removeActivityWithContentUpdate:v5];

  [(SBActivityCoverSheetObserver *)self _dismissAlertForItem:v6];
}

- (BOOL)shouldHandleActivityItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 descriptor];
  v4 = [v3 presentationOptions];
  v5 = [v4 destinations];
  v6 = [v5 bs_containsObjectPassingTest:&__block_literal_global_113];

  v7 = +[SBLiveActivityDomain rootSettings];
  v8 = [v7 hideActivitiesInLockScreen];

  v9 = (v8 ^ 1) & v6;
  return v9;
}

- (void)activityWasBlocked:(id)a3
{
  activityManager = self->_activityManager;
  v4 = [a3 identifier];
  [(CSActivityManager *)activityManager setActivityHidden:1 forIdentifier:v4];
}

- (void)activityWasUnblocked:(id)a3
{
  activityManager = self->_activityManager;
  v4 = [a3 identifier];
  [(CSActivityManager *)activityManager setActivityHidden:0 forIdentifier:v4];
}

- (void)activityDidExceedReducedPushBudget:(id)a3
{
  activityManager = self->_activityManager;
  v4 = [a3 identifier];
  [(CSActivityManager *)activityManager handleActivityExceedingReducedPushBudgetForIdentifier:v4];
}

- (void)presentAlert:(id)a3
{
  v10 = a3;
  if ([v10 canPresentInEnvironment:self->_environment alertType:4])
  {
    v5 = +[SBWorkspace mainWorkspace];
    v6 = [v5 transientOverlayPresentationManager];
    v7 = [v6 hasActivePresentation];

    if (v7)
    {
      v8 = +[SBActivityManager sharedInstance];
      [v8 alertPresentationFailed:v10];
    }

    else
    {
      [v10 alertWithScreenOn:1 playSound:1];
      objc_storeStrong(&self->_activeAlert, a3);
      modalPresentationController = self->_modalPresentationController;
      v8 = [v10 item];
      [(SBActivityModalPresentationController *)modalPresentationController presentModalForActivityItem:v8 completion:0];
    }
  }
}

- (void)dismissAlert:(id)a3
{
  v4 = [a3 item];
  [(SBActivityCoverSheetObserver *)self _dismissAlertForItem:v4];
}

- (void)activityEnvironmentChanged:(int64_t)a3
{
  if (self->_environment != a3)
  {
    self->_environment = a3;
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