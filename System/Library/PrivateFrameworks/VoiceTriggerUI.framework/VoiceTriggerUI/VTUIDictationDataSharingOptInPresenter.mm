@interface VTUIDictationDataSharingOptInPresenter
- (VTUIDictationDataSharingOptInPresentationDelegate)presentationDelegate;
- (id)dataSharingOptInAlertController;
- (id)dataSharingOptInView;
- (id)dataSharingReminderAlertController;
- (id)dictationDataSharingOptInAlertViewModel;
- (void)_learnMoreButtonTapped;
- (void)_optInButtonTapped;
- (void)_optOutButtonTapped;
- (void)_userTappedDetailLinkText;
@end

@implementation VTUIDictationDataSharingOptInPresenter

- (id)dataSharingOptInView
{
  v3 = [[VTUISiriDataSharingOptInViewController alloc] initWithViewStyle:2];
  v4 = +[MGWrapper sharedMGWrapper];
  isGMDevice = [v4 isGMDevice];

  v6 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v6 isDeviceIPad];

  if (isGMDevice)
  {
    v8 = @"DATA_SHARING_DETAIL_IPAD_GM";
  }

  else
  {
    v8 = @"DATA_SHARING_DETAIL_IPAD";
  }

  if ((isDeviceIPad & 1) == 0)
  {
    if (isGMDevice)
    {
      v9 = @"DATA_SHARING_DETAIL_IPHONE_GM";
    }

    else
    {
      v9 = @"DATA_SHARING_DETAIL_IPHONE";
    }

    v10 = +[MGWrapper sharedMGWrapper];
    isDeviceVision = [v10 isDeviceVision];

    if (isDeviceVision)
    {
      v8 = @"DATA_SHARING_DETAIL_VISION";
    }

    else
    {
      v8 = v9;
    }
  }

  headerView = [(VTUISiriDataSharingOptInViewController *)v3 headerView];
  v13 = +[VTUIStringsHelper sharedStringsHelper];
  v14 = [v13 uiLocalizedStringForKey:v8];
  [headerView setDetailText:v14];

  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v16 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v16 uiLocalizedStringForKey:@"DATA_SHARING_DETAIL_LINK"];
  [accessoryButton setTitle:v17 forState:0];

  [accessoryButton addTarget:self action:sel__userTappedDetailLinkText forControlEvents:64];
  headerView2 = [(VTUISiriDataSharingOptInViewController *)v3 headerView];
  [headerView2 addAccessoryButton:accessoryButton];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v20 = +[VTUIStringsHelper sharedStringsHelper];
  v21 = [v20 uiLocalizedStringForKey:@"DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  [boldButton setTitle:v21 forState:0];

  [boldButton addTarget:self action:sel__optInButtonTapped forControlEvents:64];
  buttonTray = [(VTUISiriDataSharingOptInViewController *)v3 buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v24 = +[VTUIStringsHelper sharedStringsHelper];
  v25 = [v24 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  [linkButton setTitle:v25 forState:0];

  [linkButton addTarget:self action:sel__optOutButtonTapped forControlEvents:64];
  buttonTray2 = [(VTUISiriDataSharingOptInViewController *)v3 buttonTray];
  [buttonTray2 addButton:linkButton];

  currentWelcomeController = self->_currentWelcomeController;
  self->_currentWelcomeController = &v3->super;
  v28 = v3;

  view = [(VTUISiriDataSharingOptInViewController *)v28 view];

  return view;
}

- (id)dataSharingOptInAlertController
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[VTUIDictationDataSharingOptInPresenter dataSharingOptInAlertController]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Creating dataSharingOptInAlert for dictation", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  v5 = +[VTUIStringsHelper sharedStringsHelper];
  v6 = [v5 uiLocalizedStringForKey:@"DATA_SHARING_TITLE_DICTATION"];
  v7 = +[VTUIStringsHelper sharedStringsHelper];
  v8 = [v7 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_DETAIL_ALERT"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  objc_initWeak(buf, self);
  v10 = MEMORY[0x277D750F8];
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  v12 = [v11 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke;
  v28[3] = &unk_279E54858;
  objc_copyWeak(&v29, buf);
  v13 = [v10 actionWithTitle:v12 style:0 handler:v28];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = +[VTUIStringsHelper sharedStringsHelper];
  v16 = [v15 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_LEARN_MORE_BUTTON_TITLE"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke_2;
  v26[3] = &unk_279E54858;
  objc_copyWeak(&v27, buf);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v26];
  [v9 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = +[VTUIStringsHelper sharedStringsHelper];
  v20 = [v19 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke_3;
  v24[3] = &unk_279E54858;
  objc_copyWeak(&v25, buf);
  v21 = [v18 actionWithTitle:v20 style:0 handler:v24];
  [v9 addAction:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

void __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _optInButtonTapped];
}

void __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _learnMoreButtonTapped];
}

void __73__VTUIDictationDataSharingOptInPresenter_dataSharingOptInAlertController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _optOutButtonTapped];
}

- (id)dataSharingReminderAlertController
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[VTUIDictationDataSharingOptInPresenter dataSharingReminderAlertController]";
    _os_log_impl(&dword_2728BC000, v2, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Creating dataSharingReminderAlert for dictation", &v15, 0xCu);
  }

  v3 = MEMORY[0x277D75110];
  v4 = +[VTUIStringsHelper sharedStringsHelper];
  v5 = [v4 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_REMINDER_ALERT_TITLE"];
  v6 = +[VTUIStringsHelper sharedStringsHelper];
  v7 = [v6 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_REMINDER_ALERT_DETAIL"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = +[VTUIStringsHelper sharedStringsHelper];
  v11 = [v10 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_REMINDER_ALERT_DISMISS"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dictationDataSharingOptInAlertViewModel
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[VTUIDictationDataSharingOptInPresenter dictationDataSharingOptInAlertViewModel]";
    _os_log_impl(&dword_2728BC000, v2, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Creating dataSharingOptInAlertViewModel for dictation", &v16, 0xCu);
  }

  v3 = objc_alloc_init(VTUIDictationDataSharingOptInAlertViewModel);
  v4 = +[VTUIStringsHelper sharedStringsHelper];
  v5 = [v4 uiLocalizedStringForKey:@"DATA_SHARING_TITLE_DICTATION"];
  [(VTUIDictationDataSharingOptInAlertViewModel *)v3 setTitle:v5];

  v6 = +[VTUIStringsHelper sharedStringsHelper];
  v7 = [v6 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_DETAIL_ALERT"];
  [(VTUIDictationDataSharingOptInAlertViewModel *)v3 setMessage:v7];

  v8 = +[VTUIStringsHelper sharedStringsHelper];
  v9 = [v8 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  [(VTUIDictationDataSharingOptInAlertViewModel *)v3 setOptInButtonTitle:v9];

  v10 = +[VTUIStringsHelper sharedStringsHelper];
  v11 = [v10 uiLocalizedStringForKey:@"DICTATION_DATA_SHARING_LEARN_MORE_BUTTON_TITLE"];
  [(VTUIDictationDataSharingOptInAlertViewModel *)v3 setLearnMoreButtonTitle:v11];

  v12 = +[VTUIStringsHelper sharedStringsHelper];
  v13 = [v12 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  [(VTUIDictationDataSharingOptInAlertViewModel *)v3 setOptOutButtonTitle:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_userTappedDetailLinkText
{
  if (self->_currentWelcomeController)
  {
    v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvesiridictation"];
    [v3 setPresentingViewController:self->_currentWelcomeController];
    [v3 present];
  }
}

- (void)_optInButtonTapped
{
  presentationDelegate = [(VTUIDictationDataSharingOptInPresenter *)self presentationDelegate];
  [presentationDelegate optInButtonPressedForPresenter:self];
}

- (void)_learnMoreButtonTapped
{
  presentationDelegate = [(VTUIDictationDataSharingOptInPresenter *)self presentationDelegate];
  [presentationDelegate learnMoreButtonPressedForPresenter:self];
}

- (void)_optOutButtonTapped
{
  presentationDelegate = [(VTUIDictationDataSharingOptInPresenter *)self presentationDelegate];
  [presentationDelegate optOutButtonPressedForPresenter:self];
}

- (VTUIDictationDataSharingOptInPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end