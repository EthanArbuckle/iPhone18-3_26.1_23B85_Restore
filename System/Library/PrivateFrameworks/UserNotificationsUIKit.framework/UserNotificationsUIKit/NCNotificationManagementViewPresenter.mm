@interface NCNotificationManagementViewPresenter
- (BOOL)dismissManagementViewIfPresentedAnimated:(BOOL)animated;
- (NCNotificationManagementViewPresenterDelegate)delegate;
- (id)notificationManagementController:(id)controller sectionSettingsForSectionIdentifier:(id)identifier;
- (id)notificationManagementControllerRequestsSystemSettings:(id)settings;
- (void)notificationManagementController:(id)controller setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementController:(id)controller setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementController:(id)controller setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementController:(id)controller setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementController:(id)controller setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationManagementController:(id)controller setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementControllerDidDismissManagementView:(id)view;
- (void)presentNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingViewController:(id)controller withPresentingView:(id)view;
@end

@implementation NCNotificationManagementViewPresenter

- (void)presentNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingViewController:(id)controller withPresentingView:(id)view
{
  requestCopy = request;
  controllerCopy = controller;
  viewCopy = view;
  v12 = 0;
  v13 = 1;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v14 = NCNotificationManagementMuteAppAlertController;
      }

      else
      {
        if (type != 7)
        {
          goto LABEL_20;
        }

        v14 = NCNotificationManagementMuteThreadAlertController;
      }
    }

    else if (type == 4)
    {
      v14 = NCNotificationManagementTimeSensitiveKeepAlertController;
    }

    else
    {
      v14 = NCNotificationManagementTimeSensitiveTurnOffAlertController;
    }

    goto LABEL_18;
  }

  if (type > 1)
  {
    if (type != 2)
    {
      v12 = [[NCNotificationManagementDemotionAlertController alloc] initWithRequest:requestCopy withPresentingView:viewCopy settingsDelegate:self includeExplanation:1];
      v13 = 0;
      goto LABEL_20;
    }

    v14 = NCNotificationManagementDemotionAlertController;
    goto LABEL_18;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_20;
    }

    v14 = NCNotificationManagementPromotionAlertController;
LABEL_18:
    v15 = [[v14 alloc] initWithRequest:requestCopy withPresentingView:viewCopy settingsDelegate:self];
    goto LABEL_19;
  }

  v15 = [NCNotificationManagementViewController notificationManagementAlertControllerForNotificationRequest:requestCopy withPresentingView:viewCopy settingsDelegate:self];
LABEL_19:
  v12 = v15;
LABEL_20:
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationManagementViewPresenterWillPresentManagementView:self];
  }

  if (v12)
  {
    if (v13)
    {
      [(NCNotificationManagementDemotionAlertController *)v12 setModalPresentationStyle:7];
      popoverPresentationController = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [popoverPresentationController setSourceView:viewCopy];

      popoverPresentationController2 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [viewCopy bounds];
      [popoverPresentationController2 setSourceRect:?];

      popoverPresentationController3 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [popoverPresentationController3 setPermittedArrowDirections:3];

      popoverPresentationController4 = [(NCNotificationManagementDemotionAlertController *)v12 popoverPresentationController];
      [popoverPresentationController4 setCanOverlapSourceViewRect:1];
    }

    else
    {
      [(NCNotificationManagementDemotionAlertController *)v12 setModalPresentationStyle:6];
    }

    [(NCNotificationManagementViewPresenter *)self setNotificationManagementAlertViewController:v12];
    [controllerCopy presentViewController:v12 animated:1 completion:0];
  }
}

- (BOOL)dismissManagementViewIfPresentedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentingViewController = [(UIAlertController *)self->_notificationManagementAlertViewController presentingViewController];
  v6 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
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

- (id)notificationManagementController:(id)controller sectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  v7 = [delegate notificationManagementViewPresenter:self sectionSettingsForSectionIdentifier:identifierCopy];

  return v7;
}

- (id)notificationManagementControllerRequestsSystemSettings:(id)settings
{
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate notificationManagementViewPresenterRequestsSystemSettings:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationManagementController:(id)controller setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  [delegate notificationManagementViewPresenter:self setAllowsNotifications:notificationsCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy];
}

- (void)notificationManagementController:(id)controller setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  [delegate notificationManagementViewPresenter:self setDeliverQuietly:quietlyCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy];
}

- (void)notificationManagementController:(id)controller setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  [delegate notificationManagementViewPresenter:self setAllowsCriticalAlerts:alertsCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy];
}

- (void)notificationManagementControllerDidDismissManagementView:(id)view
{
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationManagementViewPresenterDidDismissManagementView:self];
  }
}

- (void)notificationManagementController:(id)controller setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  [delegate notificationManagementViewPresenter:self setAllowsTimeSensitive:sensitiveCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy];
}

- (void)notificationManagementController:(id)controller setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  dateCopy = date;
  requestCopy = request;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationManagementViewPresenter:self setMuted:mutedCopy untilDate:dateCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)notificationManagementController:(id)controller setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  requestCopy = request;
  identifierCopy = identifier;
  delegate = [(NCNotificationManagementViewPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationManagementViewPresenter:self setScheduledDelivery:deliveryCopy forNotificationRequest:requestCopy withSectionIdentifier:identifierCopy];
  }
}

- (NCNotificationManagementViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end