@interface NCNotificationManagementViewController
+ (id)notificationManagementAlertControllerForNotificationRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate;
- (CGSize)preferredContentSize;
- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate;
- (NCNotificationManagementViewController)initWithRequest:(id)request;
- (id)_newManagementView;
- (id)_sectionSettingsForSectionIdentifier:(id)identifier;
- (id)_systemSettings;
- (void)_deliveryButtonTapped:(id)tapped;
- (void)_onOffToggleButtonTapped:(id)tapped;
- (void)_setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)_setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)_setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)_setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)_setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)_setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCNotificationManagementViewController

+ (id)notificationManagementAlertControllerForNotificationRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate
{
  delegateCopy = delegate;
  requestCopy = request;
  topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
  v9 = [[NCNotificationManagementViewController alloc] initWithRequest:requestCopy];

  [(NCNotificationManagementViewController *)v9 setSettingsDelegate:delegateCopy];
  v10 = objc_alloc_init(NCNotificationManagementAlertController);
  [(NCNotificationManagementAlertController *)v10 setContentViewController:v9];
  v11 = MEMORY[0x277D750F8];
  v12 = NCUserNotificationsUIKitFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SETTINGS" value:&stru_282FE84F8 table:0];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __138__NCNotificationManagementViewController_notificationManagementAlertControllerForNotificationRequest_withPresentingView_settingsDelegate___block_invoke;
  v25 = &unk_2783728A8;
  v26 = v9;
  v27 = topLevelSectionIdentifier;
  v14 = topLevelSectionIdentifier;
  v15 = v9;
  v16 = [v11 _actionWithTitle:v13 image:0 style:0 handler:0 shouldDismissHandler:&v22];

  [(NCNotificationManagementAlertController *)v10 addAction:v16, v22, v23, v24, v25];
  v17 = MEMORY[0x277D750F8];
  v18 = NCUserNotificationsUIKitFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];
  [(NCNotificationManagementAlertController *)v10 addAction:v20];

  return v10;
}

uint64_t __138__NCNotificationManagementViewController_notificationManagementAlertControllerForNotificationRequest_withPresentingView_settingsDelegate___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __138__NCNotificationManagementViewController_notificationManagementAlertControllerForNotificationRequest_withPresentingView_settingsDelegate___block_invoke_2;
  v4[3] = &unk_27836F560;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  dispatch_async(v2, v4);

  return 1;
}

void __138__NCNotificationManagementViewController_notificationManagementAlertControllerForNotificationRequest_withPresentingView_settingsDelegate___block_invoke_2(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [*(a1 + 32) settingsURL];
  v4 = *MEMORY[0x277D0AC58];
  v20[0] = *MEMORY[0x277D0AC70];
  v20[1] = v4;
  v21[0] = MEMORY[0x277CBEC38];
  v21[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v13 = 0;
  [v2 openSensitiveURL:v3 withOptions:v5 error:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v10 = a1 + 32;
      v8 = *(a1 + 32);
      v9 = *(v10 + 8);
      v11 = v7;
      v12 = [v8 settingsURL];
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_21E77E000, v11, OS_LOG_TYPE_ERROR, "Error opening Settings for %{public}@, %{public}@, %{public}@", buf, 0x20u);
    }
  }
}

- (NCNotificationManagementViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = NCNotificationManagementViewController;
  v6 = [(NCNotificationManagementViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (id)_newManagementView
{
  parentSectionIdentifier = [(NCNotificationRequest *)self->_request parentSectionIdentifier];
  v4 = parentSectionIdentifier;
  if (parentSectionIdentifier)
  {
    sectionIdentifier = parentSectionIdentifier;
  }

  else
  {
    sectionIdentifier = [(NCNotificationRequest *)self->_request sectionIdentifier];
  }

  v6 = sectionIdentifier;

  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v8 = [settingsDelegate notificationManagementController:self sectionSettingsForSectionIdentifier:v6];

  displayName = [v8 displayName];
  isCriticalAlert = [(NCNotificationRequest *)self->_request isCriticalAlert];
  v11 = NCUserNotificationsUIKitFrameworkBundle();
  v12 = v11;
  if (isCriticalAlert)
  {
    v13 = @"NOTIFICATION_MANAGEMENT_SUBTITLE_CRITICAL_ALERTS";
  }

  else
  {
    v13 = @"NOTIFICATION_MANAGEMENT_SUBTITLE_DEFAULT";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_282FE84F8 table:0];

  self->_isDeliveredQuietly = [v8 isDeliveredQuietly];
  v15 = [MEMORY[0x277CBEBC0] nc_notificationSettingsURLForSectionIdentifier:v6 isAppClip:{objc_msgSend(v8, "isAppClip")}];
  settingsURL = self->_settingsURL;
  self->_settingsURL = v15;

  settingsIcon = [v8 settingsIcon];
  if (!settingsIcon)
  {
    traitCollection = [(NCNotificationManagementViewController *)self traitCollection];
    settingsIcon = NCIconImageForApplicationIdentifierWithFormat(v6, 17, [traitCollection userInterfaceStyle]);
  }

  v19 = [[NCNotificationManagementView alloc] initWithIcon:settingsIcon title:displayName subtitle:v14 sectionSettings:v8 criticalAlert:[(NCNotificationRequest *)self->_request isCriticalAlert]];

  return v19;
}

- (void)loadView
{
  _newManagementView = [(NCNotificationManagementViewController *)self _newManagementView];
  platterView = self->_platterView;
  self->_platterView = _newManagementView;

  v5 = self->_platterView;

  [(NCNotificationManagementViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v5 viewDidLoad];
  deliveryButton = [(NCNotificationManagementView *)self->_platterView deliveryButton];
  [deliveryButton addTarget:self action:sel__deliveryButtonTapped_ forControlEvents:64];

  onOffToggleButton = [(NCNotificationManagementView *)self->_platterView onOffToggleButton];
  [onOffToggleButton addTarget:self action:sel__onOffToggleButtonTapped_ forControlEvents:64];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v4 viewWillAppear:appear];
  [(NCNotificationManagementViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v4 viewWillDisappear:disappear];
  [(NCNotificationManagementViewController *)self resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v5 viewDidDisappear:disappear];
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  if (objc_opt_respondsToSelector())
  {
    [settingsDelegate notificationManagementControllerDidDismissManagementView:self];
  }
}

- (CGSize)preferredContentSize
{
  v18.receiver = self;
  v18.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v18 preferredContentSize];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v8 = v7;

    if (v8 > 355.0)
    {
      v8 = 355.0;
    }

    view = [(NCNotificationManagementViewController *)self view];
    [view sizeThatFits:{v8, 1.79769313e308}];
    v11 = v10;
    v13 = v12;

    v17.receiver = self;
    v17.super_class = NCNotificationManagementViewController;
    [(NCNotificationManagementViewController *)&v17 setPreferredContentSize:v11, v13];
  }

  v16.receiver = self;
  v16.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v16 preferredContentSize];
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_deliveryButtonTapped:(id)tapped
{
  isDeliveredQuietly = self->_isDeliveredQuietly;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NCNotificationManagementViewController__deliveryButtonTapped___block_invoke;
  v7[3] = &unk_278371F30;
  v8 = settingsDelegate;
  selfCopy = self;
  v10 = isDeliveredQuietly;
  v6 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __64__NCNotificationManagementViewController__deliveryButtonTapped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = [v3 request];
  v5 = [*(a1 + 40) request];
  v6 = [v5 sectionIdentifier];
  [v2 notificationManagementController:v3 setDeliverQuietly:(v4 & 1) == 0 forNotificationRequest:v7 withSectionIdentifier:v6];
}

- (void)_onOffToggleButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = objc_alloc_init(NCNotificationManagementViewPresenter);
  viewPresenter = self->_viewPresenter;
  self->_viewPresenter = v5;

  [(NCNotificationManagementViewPresenter *)self->_viewPresenter setDelegate:self];
  v7 = self->_viewPresenter;
  request = [(NCNotificationManagementViewController *)self request];
  [(NCNotificationManagementViewPresenter *)v7 presentNotificationManagementViewType:3 forNotificationRequest:request withPresentingViewController:self withPresentingView:tappedCopy];
}

- (id)_sectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v6 = [settingsDelegate notificationManagementController:self sectionSettingsForSectionIdentifier:identifierCopy];

  return v6;
}

- (id)_systemSettings
{
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [settingsDelegate notificationManagementControllerRequestsSystemSettings:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NCNotificationManagementViewController__setAllowsNotifications_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = settingsDelegate;
  selfCopy = self;
  notificationsCopy = notifications;
  v17 = requestCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  v13 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__NCNotificationManagementViewController__setDeliverQuietly_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = settingsDelegate;
  selfCopy = self;
  quietlyCopy = quietly;
  v17 = requestCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  v13 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__NCNotificationManagementViewController__setAllowsCriticalAlerts_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = settingsDelegate;
  selfCopy = self;
  alertsCopy = alerts;
  v17 = requestCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  v13 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NCNotificationManagementViewController__setAllowsTimeSensitive_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = settingsDelegate;
  selfCopy = self;
  sensitiveCopy = sensitive;
  v17 = requestCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  v13 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  dateCopy = date;
  requestCopy = request;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__NCNotificationManagementViewController__setMuted_untilDate_forNotificationRequest_withSectionIdentifier_threadIdentifier___block_invoke;
  v22[3] = &unk_2783728F8;
  v23 = settingsDelegate;
  selfCopy = self;
  mutedCopy = muted;
  v25 = dateCopy;
  v26 = requestCopy;
  v27 = identifierCopy;
  v28 = threadIdentifierCopy;
  v17 = threadIdentifierCopy;
  v18 = identifierCopy;
  v19 = requestCopy;
  v20 = dateCopy;
  v21 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v22];
}

- (void)_setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  settingsDelegate = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__NCNotificationManagementViewController__setScheduledDelivery_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = settingsDelegate;
  selfCopy = self;
  deliveryCopy = delivery;
  v17 = requestCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  v13 = settingsDelegate;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

@end