@interface PXSharedLibraryAssistantWelcomeViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantWelcomeViewController)initWithLegacyDevicesFallbackMonitor:(id)monitor legacyDevicesRemoteController:(id)controller;
- (void)_checkLegacyDeviceMonitorAndAttemptStepForward;
- (void)_forceStepForward;
- (void)_legacyDevicesFallbackMonitorChangedState;
- (void)_legacyDevicesRemoteControllerChangedState;
- (void)cancelButtonTapped:(id)tapped;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)startButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantWelcomeViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = observableCopy;
    [(PXSharedLibraryAssistantWelcomeViewController *)self _legacyDevicesFallbackMonitorChangedState];
    goto LABEL_7;
  }

  if (PXSharedLibraryLegacyDevicesRemoteControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantWelcomeViewController.m" lineNumber:204 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXSharedLibraryAssistantWelcomeViewController *)self _legacyDevicesRemoteControllerChangedState];
LABEL_7:
    observableCopy = v11;
  }

LABEL_8:
}

- (void)_legacyDevicesRemoteControllerChangedState
{
  state = [(PXSharedLibraryLegacyDevicesRemoteController *)self->_legacyDevicesRemoteController state];
  if (state <= 1)
  {
    if (!state)
    {
LABEL_11:
      startButton = self->_startButton;

      [(OBBoldTrayButton *)startButton hidesBusyIndicator];
      return;
    }

    if (state == 1)
    {
      v4 = self->_startButton;

      [(OBBoldTrayButton *)v4 showsBusyIndicator];
    }
  }

  else
  {
    switch(state)
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
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantWelcomeViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewControllerAsCurrentViewController:self];
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

- (void)cancelButtonTapped:(id)tapped
{
  v5 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantWelcomeViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate cancelAssistantForAssistantViewController:self];
}

- (void)startButtonTapped:(id)tapped
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

- (void)learnMoreButtonTapped:(id)tapped
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

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)viewDidLoad
{
  v41[3] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = PXSharedLibraryAssistantWelcomeViewController;
  [(OBBaseWelcomeController *)&v40 viewDidLoad];
  headerView = [(PXSharedLibraryAssistantWelcomeViewController *)self headerView];
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Welcome_Title");
  v39 = headerView;
  [headerView setTitle:v4];

  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Welcome_Body");
  [headerView setDetailText:v5];

  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v7 = MEMORY[0x1E69DCAB8];
  px_sharedLibraryBundle = [MEMORY[0x1E696AAE8] px_sharedLibraryBundle];
  v9 = [v7 px_imageNamed:@"SharedLibrarySetup" bundle:px_sharedLibraryBundle];
  v10 = [v6 initWithImage:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PXSharedLibraryAssistantWelcomeViewController *)self contentView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [contentView setBackgroundColor:systemBackgroundColor];

  v13 = v10;
  [contentView addSubview:v10];
  v36 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v10 centerXAnchor];
  v38 = contentView;
  centerXAnchor2 = [contentView centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v41[0] = v16;
  v37 = v10;
  bottomAnchor = [v10 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[1] = v19;
  heightAnchor = [contentView heightAnchor];
  [v13 bounds];
  v22 = [heightAnchor constraintEqualToConstant:v21];
  v41[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v36 activateConstraints:v23];

  accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
  v25 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [accessoryButton setTitle:v25 forState:0];

  [accessoryButton addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  headerView2 = [(PXSharedLibraryAssistantWelcomeViewController *)self headerView];
  [headerView2 addAccessoryButton:accessoryButton];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  startButton = self->_startButton;
  self->_startButton = boldButton;

  v29 = self->_startButton;
  v30 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Start");
  [(OBBoldTrayButton *)v29 setTitle:v30 forState:0];

  [(OBBoldTrayButton *)self->_startButton addTarget:self action:sel_startButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantWelcomeViewController *)self buttonTray];
  [buttonTray addButton:self->_startButton];

  v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_startButtonTapped_];
  [(PXSharedLibraryAssistantWelcomeViewController *)self addKeyCommand:v32];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v34 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_NotNow");
  [linkButton setTitle:v34 forState:0];

  [linkButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantWelcomeViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (PXSharedLibraryAssistantWelcomeViewController)initWithLegacyDevicesFallbackMonitor:(id)monitor legacyDevicesRemoteController:(id)controller
{
  monitorCopy = monitor;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryAssistantWelcomeViewController;
  v9 = [(PXSharedLibraryAssistantWelcomeViewController *)&v12 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyDevicesFallbackMonitor, monitor);
    [(PXSharedLibraryLegacyDevicesFallbackMonitor *)v10->_legacyDevicesFallbackMonitor registerChangeObserver:v10 context:PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext];
    objc_storeStrong(&v10->_legacyDevicesRemoteController, controller);
    [(PXSharedLibraryLegacyDevicesRemoteController *)v10->_legacyDevicesRemoteController registerChangeObserver:v10 context:PXSharedLibraryLegacyDevicesRemoteControllerObservationContext];
  }

  return v10;
}

@end