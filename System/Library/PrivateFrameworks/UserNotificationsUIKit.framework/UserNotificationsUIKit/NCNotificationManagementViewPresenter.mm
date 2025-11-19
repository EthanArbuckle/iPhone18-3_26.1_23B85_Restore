@interface NCNotificationManagementViewPresenter
- (BOOL)dismissManagementViewIfPresentedAnimated:(BOOL)a3;
- (NCNotificationManagementViewPresenterDelegate)delegate;
- (id)notificationManagementController:(id)a3 sectionSettingsForSectionIdentifier:(id)a4;
- (id)notificationManagementControllerRequestsSystemSettings:(id)a3;
- (void)notificationManagementController:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementController:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementController:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementController:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementController:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8;
- (void)notificationManagementController:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementControllerDidDismissManagementView:(id)a3;
- (void)presentNotificationManagementViewType:(unint64_t)a3 forNotificationRequest:(id)a4 withPresentingViewController:(id)a5 withPresentingView:(id)a6;
@end

@implementation NCNotificationManagementViewPresenter

- (void)presentNotificationManagementViewType:(unint64_t)a3 forNotificationRequest:(id)a4 withPresentingViewController:(id)a5 withPresentingView:(id)a6
{
  v21 = a4;
  v10 = a5;
  v11 = a6;
  v12 = 0;
  v13 = 1;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v14 = NCNotificationManagementMuteAppAlertController;
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_20;
        }

        v14 = NCNotificationManagementMuteThreadAlertController;
      }
    }

    else if (a3 == 4)
    {
      v14 = NCNotificationManagementTimeSensitiveKeepAlertController;
    }

    else
    {
      v14 = NCNotificationManagementTimeSensitiveTurnOffAlertController;
    }

    goto LABEL_18;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      v12 = [[NCNotificationManagementDemotionAlertController alloc] initWithRequest:v21 withPresentingView:v11 settingsDelegate:self includeExplanation:1];
      v13 = 0;
      goto LABEL_20;
    }

    v14 = NCNotificationManagementDemotionAlertController;
    goto LABEL_18;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_20;
    }

    v14 = NCNotificationManagementPromotionAlertController;
LABEL_18:
    v15 = [[v14 alloc] initWithRequest:v21 withPresentingView:v11 settingsDelegate:self];
    goto LABEL_19;
  }

  v15 = [NCNotificationManagementViewController notificationManagementAlertControllerForNotificationRequest:v21 withPresentingView:v11 settingsDelegate:self];
LABEL_19:
  v12 = v15;
LABEL_20:
  v16 = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v16 notificationManagementViewPresenterWillPresentManagementView:self];
  }

  if (v12)
  {
    if (v13)
    {
      [(NCNotificationManagementDemotionAlertController *)v12 setModalPresentationStyle:7];
      v17 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [v17 setSourceView:v11];

      v18 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [v11 bounds];
      [v18 setSourceRect:?];

      v19 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [v19 setPermittedArrowDirections:3];

      v20 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [v20 setCanOverlapSourceViewRect:1];
    }

    else
    {
      [(NCNotificationManagementDemotionAlertController *)v12 setModalPresentationStyle:6];
    }

    [(NCNotificationManagementViewPresenter *)self setNotificationManagementAlertViewController:v12];
    [v10 presentViewController:v12 animated:1 completion:0];
  }
}

- (BOOL)dismissManagementViewIfPresentedAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIAlertController *)self->_notificationManagementAlertViewController presentingViewController];
  v6 = v5;
  if (v5)
  {
    [v5 dismissViewControllerAnimated:v3 completion:0];
    notificationManagementAlertViewController = [(NCNotificationManagementViewPresenter *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [notificationManagementAlertViewController notificationManagementViewPresenterDidDismissManagementView:self];
    }
  }

  else
  {
    notificationManagementAlertViewController = self->_notificationManagementAlertViewController;
    self->_notificationManagementAlertViewController = 0;
  }

  return v6 != 0;
}

- (id)notificationManagementController:(id)a3 sectionSettingsForSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationManagementViewPresenter *)self delegate];
  v7 = [v6 notificationManagementViewPresenter:self sectionSettingsForSectionIdentifier:v5];

  return v7;
}

- (id)notificationManagementControllerRequestsSystemSettings:(id)a3
{
  v4 = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 notificationManagementViewPresenterRequestsSystemSettings:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationManagementController:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationManagementViewPresenter *)self delegate];
  [v11 notificationManagementViewPresenter:self setAllowsNotifications:v7 forNotificationRequest:v10 withSectionIdentifier:v9];
}

- (void)notificationManagementController:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationManagementViewPresenter *)self delegate];
  [v11 notificationManagementViewPresenter:self setDeliverQuietly:v7 forNotificationRequest:v10 withSectionIdentifier:v9];
}

- (void)notificationManagementController:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationManagementViewPresenter *)self delegate];
  [v11 notificationManagementViewPresenter:self setAllowsCriticalAlerts:v7 forNotificationRequest:v10 withSectionIdentifier:v9];
}

- (void)notificationManagementControllerDidDismissManagementView:(id)a3
{
  v4 = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationManagementViewPresenterDidDismissManagementView:self];
  }
}

- (void)notificationManagementController:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationManagementViewPresenter *)self delegate];
  [v11 notificationManagementViewPresenter:self setAllowsTimeSensitive:v7 forNotificationRequest:v10 withSectionIdentifier:v9];
}

- (void)notificationManagementController:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8
{
  v11 = a4;
  v17 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v16 notificationManagementViewPresenter:self setMuted:v11 untilDate:v17 forNotificationRequest:v13 withSectionIdentifier:v14 threadIdentifier:v15];
  }
}

- (void)notificationManagementController:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v11 = a5;
  v9 = a6;
  v10 = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 notificationManagementViewPresenter:self setScheduledDelivery:v7 forNotificationRequest:v11 withSectionIdentifier:v9];
  }
}

- (NCNotificationManagementViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end