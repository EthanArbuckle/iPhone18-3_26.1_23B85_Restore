@interface PXSharedLibraryReplyAssistantViewController
- (BOOL)_canStepForward;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryReplyAssistantViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (PXSharedLibraryReplyAssistantViewController)initWithViewModel:(id)model legacyDevicesFallbackMonitor:(id)monitor;
- (void)_setIsWaitingToStepForward:(BOOL)forward;
- (void)_stepForward;
- (void)_updateImage;
- (void)_updateSubtitle;
- (void)acceptAndContinue;
- (void)declineInvitation;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)legacyDevicesFallbackMonitorChangedState;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryReplyAssistantViewController

- (void)legacyDevicesFallbackMonitorChangedState
{
  if ([(PXSharedLibraryReplyAssistantViewController *)self _canStepForward]&& [(PXSharedLibraryReplyAssistantViewController *)self wantsToStepForward])
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Finished waiting for legacy devices discovery [Receiver Setup]", v4, 2u);
    }

    [(PXSharedLibraryReplyAssistantViewController *)self _setIsWaitingToStepForward:0];
    [(PXSharedLibraryReplyAssistantViewController *)self _stepForward];
  }
}

- (void)declineInvitation
{
  viewModel = [(PXSharedLibraryReplyAssistantViewController *)self viewModel];
  sharedLibrary = [viewModel sharedLibrary];

  v6 = [off_1E7721960 defaultPresenterWithViewController:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXSharedLibraryReplyAssistantViewController_Internal__declineInvitation__block_invoke;
  v7[3] = &unk_1E7741CE0;
  v7[4] = self;
  v7[5] = a2;
  PXSharedLibraryDeclineInvitation(sharedLibrary, v6, @"Assistant", v7);
}

void __74__PXSharedLibraryReplyAssistantViewController_Internal__declineInvitation__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) assistantViewControllerDelegate];
    if (!v3)
    {
      PXAssertGetLog();
    }

    [v3 completeAssistantForAssistantViewController:*(a1 + 32)];
  }
}

- (void)acceptAndContinue
{
  if ([(PXSharedLibraryReplyAssistantViewController *)self _canStepForward])
  {

    [(PXSharedLibraryReplyAssistantViewController *)self _stepForward];
  }

  else
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Begin waiting for legacy devices discovery... [Receiver Setup]", v4, 2u);
    }

    [(PXSharedLibraryReplyAssistantViewController *)self _setIsWaitingToStepForward:1];
  }
}

- (void)_stepForward
{
  v4 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryReplyAssistantViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (BOOL)_canStepForward
{
  legacyDevicesFallbackMonitor = [(PXSharedLibraryReplyAssistantViewController *)self legacyDevicesFallbackMonitor];
  v3 = legacyDevicesFallbackMonitor;
  if (legacyDevicesFallbackMonitor)
  {
    v4 = [legacyDevicesFallbackMonitor state] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_setIsWaitingToStepForward:(BOOL)forward
{
  forwardCopy = forward;
  [(PXSharedLibraryReplyAssistantViewController *)self setWantsToStepForward:?];
  setupButton = [(PXSharedLibraryReplyAssistantViewController *)self setupButton];
  v6 = setupButton;
  if (forwardCopy)
  {
    [setupButton showsBusyIndicator];
  }

  else
  {
    [setupButton hidesBusyIndicator];
  }
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext_239941 == context)
  {
    [(PXSharedLibraryReplyAssistantViewController *)self legacyDevicesFallbackMonitorChangedState];
  }
}

- (void)_updateImage
{
  viewIfLoaded = [(PXSharedLibraryReplyAssistantViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
    owner = [sharedLibrary owner];

    traitCollection = [(PXSharedLibraryReplyAssistantViewController *)self traitCollection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PXSharedLibraryReplyAssistantViewController__updateImage__block_invoke;
    v7[3] = &unk_1E7749C60;
    v7[4] = self;
    v7[5] = owner;
    PXSharedLibraryRequestInvitationImageForOwner(owner, traitCollection, v7);
  }
}

void __59__PXSharedLibraryReplyAssistantViewController__updateImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) headerView];
    [v7 setIcon:v5 accessibilityLabel:0];
  }

  else
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Error getting image of owner %@ (%@)", &v9, 0x16u);
    }
  }
}

- (void)_updateSubtitle
{
  v23[3] = *MEMORY[0x1E69E9840];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v3 = [defaultParagraphStyle mutableCopy];

  [v3 setAlignment:4];
  v4 = *MEMORY[0x1E69DB688];
  v23[0] = v3;
  v5 = *MEMORY[0x1E69DB650];
  v21[0] = v4;
  v21[1] = v5;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v23[1] = secondaryLabelColor;
  v22 = *MEMORY[0x1E69DB648];
  v7 = v22;
  v8 = *MEMORY[0x1E69DDD80];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v23[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v21 count:3];

  v20[0] = v3;
  v19[0] = v4;
  v19[1] = v5;
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20[1] = secondaryLabelColor2;
  v19[2] = v7;
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v8 addingSymbolicTraits:0 weight:*MEMORY[0x1E69DB958]];
  v20[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  owner = [sharedLibrary owner];
  v16 = PXSharedLibraryReplyAssistantAttributedSubtitle(owner, v10, v13);
  headerView = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [headerView setAttributedDetailText:v16];
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

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryReplyAssistantViewController;
  changeCopy = change;
  [(PXSharedLibraryReplyAssistantViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryReplyAssistantViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXSharedLibraryReplyAssistantViewController *)self _updateImage];
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXSharedLibraryReplyAssistantViewController;
  [(OBBaseWelcomeController *)&v15 viewDidLoad];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_Title");
  headerView = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [headerView setTitle:v3];

  [(PXSharedLibraryReplyAssistantViewController *)self _updateSubtitle];
  [(PXSharedLibraryReplyAssistantViewController *)self _updateImage];
  accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [accessoryButton setTitle:v6 forState:0];

  [accessoryButton addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  headerView2 = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [headerView2 addAccessoryButton:accessoryButton];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ButtonTitle_Start");
  [boldButton setTitle:v9 forState:0];

  [boldButton addTarget:self action:sel_setupButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryReplyAssistantViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  [(PXSharedLibraryReplyAssistantViewController *)self setSetupButton:boldButton];
  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_setupButtonTapped_];
  [(PXSharedLibraryReplyAssistantViewController *)self addKeyCommand:v11];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ButtonTitle_Decline");
  [linkButton setTitle:v13 forState:0];

  [linkButton addTarget:self action:sel_declineButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryReplyAssistantViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (PXSharedLibraryReplyAssistantViewController)initWithViewModel:(id)model legacyDevicesFallbackMonitor:(id)monitor
{
  modelCopy = model;
  monitorCopy = monitor;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantViewController+iOS.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v14.receiver = self;
  v14.super_class = PXSharedLibraryReplyAssistantViewController;
  v10 = [(PXSharedLibraryReplyAssistantViewController *)&v14 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:2];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, model);
    objc_storeStrong(&v11->_legacyDevicesFallbackMonitor, monitor);
    [(PXSharedLibraryLegacyDevicesFallbackMonitor *)v11->_legacyDevicesFallbackMonitor registerChangeObserver:v11 context:PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext_239941];
  }

  return v11;
}

- (PXSharedLibraryReplyAssistantViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantViewController+iOS.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXSharedLibraryReplyAssistantViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

@end