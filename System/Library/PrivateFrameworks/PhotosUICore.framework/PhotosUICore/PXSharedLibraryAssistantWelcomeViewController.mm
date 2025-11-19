@interface PXSharedLibraryAssistantWelcomeViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantWelcomeViewController)initWithLegacyDevicesFallbackMonitor:(id)a3 legacyDevicesRemoteController:(id)a4;
- (void)_checkLegacyDeviceMonitorAndAttemptStepForward;
- (void)_forceStepForward;
- (void)_legacyDevicesFallbackMonitorChangedState;
- (void)_legacyDevicesRemoteControllerChangedState;
- (void)cancelButtonTapped:(id)a3;
- (void)learnMoreButtonTapped:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)startButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantWelcomeViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXSharedLibraryAssistantWelcomeViewController *)self _legacyDevicesFallbackMonitorChangedState];
    goto LABEL_7;
  }

  if (PXSharedLibraryLegacyDevicesRemoteControllerObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantWelcomeViewController.m" lineNumber:204 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXSharedLibraryAssistantWelcomeViewController *)self _legacyDevicesRemoteControllerChangedState];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (void)_legacyDevicesRemoteControllerChangedState
{
  v3 = [(PXSharedLibraryLegacyDevicesRemoteController *)self->_legacyDevicesRemoteController state];
  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_11:
      startButton = self->_startButton;

      [(OBBoldTrayButton *)startButton hidesBusyIndicator];
      return;
    }

    if (v3 == 1)
    {
      v4 = self->_startButton;

      [(OBBoldTrayButton *)v4 showsBusyIndicator];
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        [(OBBoldTrayButton *)self->_startButton hidesBusyIndicator];

        [(PXSharedLibraryAssistantWelcomeViewController *)self _checkLegacyDeviceMonitorAndAttemptStepForward];
        break;
      case 3:
        [(OBBoldTrayButton *)self->_startButton hidesBusyIndicator];

        [(PXSharedLibraryAssistantWelcomeViewController *)self _forceStepForward];
        break;
      case 2:
        goto LABEL_11;
      default:
        return;
    }
  }
}

- (void)_legacyDevicesFallbackMonitorChangedState
{
  if ([(PXSharedLibraryAssistantWelcomeViewController *)self _isLegacyDevicesFallbackMonitorEnabledAndReady]&& self->_wantsToStepForward)
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Finished waiting for legacy devices discovery [Sender Setup]", v4, 2u);
    }

    [(OBBoldTrayButton *)self->_startButton hidesBusyIndicator];
    [(PXSharedLibraryAssistantWelcomeViewController *)self _forceStepForward];
  }
}

- (void)_forceStepForward
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibraryAssistantWelcomeViewController *)self assistantViewControllerDelegate];
  if (!v3)
  {
    PXAssertGetLog();
  }

  [v3 stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:self];
}

- (void)_checkLegacyDeviceMonitorAndAttemptStepForward
{
  if ([(PXSharedLibraryAssistantWelcomeViewController *)self _isLegacyDevicesFallbackMonitorEnabledAndReady])
  {

    [(PXSharedLibraryAssistantWelcomeViewController *)self _forceStepForward];
  }

  else
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Begin waiting for legacy devices discovery... [Sender Setup]", v4, 2u);
    }

    self->_wantsToStepForward = 1;
    [(OBBoldTrayButton *)self->_startButton showsBusyIndicator];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [(PXSharedLibraryAssistantWelcomeViewController *)self assistantViewControllerDelegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 cancelAssistantForAssistantViewController:self];
}

- (void)startButtonTapped:(id)a3
{
  legacyDevicesRemoteController = self->_legacyDevicesRemoteController;
  if (legacyDevicesRemoteController)
  {
    [(PXSharedLibraryLegacyDevicesRemoteController *)legacyDevicesRemoteController beginRemoteUIRequestWithPresenter:self];
  }

  else
  {
    [(PXSharedLibraryAssistantWelcomeViewController *)self _checkLegacyDeviceMonitorAndAttemptStepForward];
  }
}

- (void)learnMoreButtonTapped:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  IsIPad = PLPhysicalDeviceIsIPad();
  v5 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ios_ui-05052022";
  if (IsIPad)
  {
    v5 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ipados_ui-05052022";
  }

  v6 = v5;
  v8 = [v3 URLWithString:v6];

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  [v7 openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)viewDidLoad
{
  v41[3] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = PXSharedLibraryAssistantWelcomeViewController;
  [(OBBaseWelcomeController *)&v40 viewDidLoad];
  v3 = [(PXSharedLibraryAssistantWelcomeViewController *)self headerView];
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Welcome_Title");
  v39 = v3;
  [v3 setTitle:v4];

  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Welcome_Body");
  [v3 setDetailText:v5];

  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E696AAE8] px_sharedLibraryBundle];
  v9 = [v7 px_imageNamed:@"SharedLibrarySetup" bundle:v8];
  v10 = [v6 initWithImage:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(PXSharedLibraryAssistantWelcomeViewController *)self contentView];
  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = v10;
  [v11 addSubview:v10];
  v36 = MEMORY[0x1E696ACD8];
  v14 = [v10 centerXAnchor];
  v38 = v11;
  v15 = [v11 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v41[0] = v16;
  v37 = v10;
  v17 = [v10 bottomAnchor];
  v18 = [v11 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v41[1] = v19;
  v20 = [v11 heightAnchor];
  [v13 bounds];
  v22 = [v20 constraintEqualToConstant:v21];
  v41[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v36 activateConstraints:v23];

  v24 = [MEMORY[0x1E69B7D20] accessoryButton];
  v25 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [v24 setTitle:v25 forState:0];

  [v24 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  v26 = [(PXSharedLibraryAssistantWelcomeViewController *)self headerView];
  [v26 addAccessoryButton:v24];

  v27 = [MEMORY[0x1E69B7D00] boldButton];
  startButton = self->_startButton;
  self->_startButton = v27;

  v29 = self->_startButton;
  v30 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Start");
  [(OBBoldTrayButton *)v29 setTitle:v30 forState:0];

  [(OBBoldTrayButton *)self->_startButton addTarget:self action:sel_startButtonTapped_ forControlEvents:0x2000];
  v31 = [(PXSharedLibraryAssistantWelcomeViewController *)self buttonTray];
  [v31 addButton:self->_startButton];

  v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_startButtonTapped_];
  [(PXSharedLibraryAssistantWelcomeViewController *)self addKeyCommand:v32];

  v33 = [MEMORY[0x1E69B7D38] linkButton];
  v34 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_NotNow");
  [v33 setTitle:v34 forState:0];

  [v33 addTarget:self action:sel_cancelButtonTapped_ forControlEvents:0x2000];
  v35 = [(PXSharedLibraryAssistantWelcomeViewController *)self buttonTray];
  [v35 addButton:v33];
}

- (PXSharedLibraryAssistantWelcomeViewController)initWithLegacyDevicesFallbackMonitor:(id)a3 legacyDevicesRemoteController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryAssistantWelcomeViewController;
  v9 = [(PXSharedLibraryAssistantWelcomeViewController *)&v12 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyDevicesFallbackMonitor, a3);
    [(PXSharedLibraryLegacyDevicesFallbackMonitor *)v10->_legacyDevicesFallbackMonitor registerChangeObserver:v10 context:PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext];
    objc_storeStrong(&v10->_legacyDevicesRemoteController, a4);
    [(PXSharedLibraryLegacyDevicesRemoteController *)v10->_legacyDevicesRemoteController registerChangeObserver:v10 context:PXSharedLibraryLegacyDevicesRemoteControllerObservationContext];
  }

  return v10;
}

@end