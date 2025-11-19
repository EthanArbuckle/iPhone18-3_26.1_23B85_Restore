@interface NCNotificationManagementViewController
+ (id)notificationManagementAlertControllerForNotificationRequest:(id)a3 withPresentingView:(id)a4 settingsDelegate:(id)a5;
- (CGSize)preferredContentSize;
- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate;
- (NCNotificationManagementViewController)initWithRequest:(id)a3;
- (id)_newManagementView;
- (id)_sectionSettingsForSectionIdentifier:(id)a3;
- (id)_systemSettings;
- (void)_deliveryButtonTapped:(id)a3;
- (void)_onOffToggleButtonTapped:(id)a3;
- (void)_setAllowsCriticalAlerts:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)_setAllowsNotifications:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)_setAllowsTimeSensitive:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)_setDeliverQuietly:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)_setMuted:(BOOL)a3 untilDate:(id)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)_setScheduledDelivery:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NCNotificationManagementViewController

+ (id)notificationManagementAlertControllerForNotificationRequest:(id)a3 withPresentingView:(id)a4 settingsDelegate:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [v7 topLevelSectionIdentifier];
  v9 = [[NCNotificationManagementViewController alloc] initWithRequest:v7];

  [(NCNotificationManagementViewController *)v9 setSettingsDelegate:v6];
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
  v27 = v8;
  v14 = v8;
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

- (NCNotificationManagementViewController)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationManagementViewController;
  v6 = [(NCNotificationManagementViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (id)_newManagementView
{
  v3 = [(NCNotificationRequest *)self->_request parentSectionIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NCNotificationRequest *)self->_request sectionIdentifier];
  }

  v6 = v5;

  v7 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v8 = [v7 notificationManagementController:self sectionSettingsForSectionIdentifier:v6];

  v9 = [v8 displayName];
  v10 = [(NCNotificationRequest *)self->_request isCriticalAlert];
  v11 = NCUserNotificationsUIKitFrameworkBundle();
  v12 = v11;
  if (v10)
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

  v17 = [v8 settingsIcon];
  if (!v17)
  {
    v18 = [(NCNotificationManagementViewController *)self traitCollection];
    v17 = NCIconImageForApplicationIdentifierWithFormat(v6, 17, [v18 userInterfaceStyle]);
  }

  v19 = [[NCNotificationManagementView alloc] initWithIcon:v17 title:v9 subtitle:v14 sectionSettings:v8 criticalAlert:[(NCNotificationRequest *)self->_request isCriticalAlert]];

  return v19;
}

- (void)loadView
{
  v3 = [(NCNotificationManagementViewController *)self _newManagementView];
  platterView = self->_platterView;
  self->_platterView = v3;

  v5 = self->_platterView;

  [(NCNotificationManagementViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v5 viewDidLoad];
  v3 = [(NCNotificationManagementView *)self->_platterView deliveryButton];
  [v3 addTarget:self action:sel__deliveryButtonTapped_ forControlEvents:64];

  v4 = [(NCNotificationManagementView *)self->_platterView onOffToggleButton];
  [v4 addTarget:self action:sel__onOffToggleButtonTapped_ forControlEvents:64];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v4 viewWillAppear:a3];
  [(NCNotificationManagementViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v4 viewWillDisappear:a3];
  [(NCNotificationManagementViewController *)self resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v5 viewDidDisappear:a3];
  v4 = [(NCNotificationManagementViewController *)self settingsDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationManagementControllerDidDismissManagementView:self];
  }
}

- (CGSize)preferredContentSize
{
  v18.receiver = self;
  v18.super_class = NCNotificationManagementViewController;
  [(NCNotificationManagementViewController *)&v18 preferredContentSize];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 _referenceBounds];
    v8 = v7;

    if (v8 > 355.0)
    {
      v8 = 355.0;
    }

    v9 = [(NCNotificationManagementViewController *)self view];
    [v9 sizeThatFits:{v8, 1.79769313e308}];
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

- (void)_deliveryButtonTapped:(id)a3
{
  isDeliveredQuietly = self->_isDeliveredQuietly;
  v5 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NCNotificationManagementViewController__deliveryButtonTapped___block_invoke;
  v7[3] = &unk_278371F30;
  v8 = v5;
  v9 = self;
  v10 = isDeliveredQuietly;
  v6 = v5;
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

- (void)_onOffToggleButtonTapped:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NCNotificationManagementViewPresenter);
  viewPresenter = self->_viewPresenter;
  self->_viewPresenter = v5;

  [(NCNotificationManagementViewPresenter *)self->_viewPresenter setDelegate:self];
  v7 = self->_viewPresenter;
  v8 = [(NCNotificationManagementViewController *)self request];
  [(NCNotificationManagementViewPresenter *)v7 presentNotificationManagementViewType:3 forNotificationRequest:v8 withPresentingViewController:self withPresentingView:v4];
}

- (id)_sectionSettingsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v6 = [v5 notificationManagementController:self sectionSettingsForSectionIdentifier:v4];

  return v6;
}

- (id)_systemSettings
{
  v3 = [(NCNotificationManagementViewController *)self settingsDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 notificationManagementControllerRequestsSystemSettings:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setAllowsNotifications:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NCNotificationManagementViewController__setAllowsNotifications_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = v10;
  v16 = self;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setDeliverQuietly:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__NCNotificationManagementViewController__setDeliverQuietly_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = v10;
  v16 = self;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setAllowsCriticalAlerts:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__NCNotificationManagementViewController__setAllowsCriticalAlerts_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = v10;
  v16 = self;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setAllowsTimeSensitive:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NCNotificationManagementViewController__setAllowsTimeSensitive_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = v10;
  v16 = self;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (void)_setMuted:(BOOL)a3 untilDate:(id)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__NCNotificationManagementViewController__setMuted_untilDate_forNotificationRequest_withSectionIdentifier_threadIdentifier___block_invoke;
  v22[3] = &unk_2783728F8;
  v23 = v16;
  v24 = self;
  v29 = a3;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v22];
}

- (void)_setScheduledDelivery:(BOOL)a3 forNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NCNotificationManagementViewController *)self settingsDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__NCNotificationManagementViewController__setScheduledDelivery_forNotificationRequest_withSectionIdentifier___block_invoke;
  v14[3] = &unk_2783728D0;
  v15 = v10;
  v16 = self;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NCNotificationManagementViewController *)self dismissViewControllerAnimated:1 completion:v14];
}

- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

@end