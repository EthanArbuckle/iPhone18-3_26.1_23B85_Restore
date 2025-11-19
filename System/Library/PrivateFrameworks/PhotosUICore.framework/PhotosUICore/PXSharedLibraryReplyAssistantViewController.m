@interface PXSharedLibraryReplyAssistantViewController
- (BOOL)_canStepForward;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryReplyAssistantViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (PXSharedLibraryReplyAssistantViewController)initWithViewModel:(id)a3 legacyDevicesFallbackMonitor:(id)a4;
- (void)_setIsWaitingToStepForward:(BOOL)a3;
- (void)_stepForward;
- (void)_updateImage;
- (void)_updateSubtitle;
- (void)acceptAndContinue;
- (void)declineInvitation;
- (void)learnMoreButtonTapped:(id)a3;
- (void)legacyDevicesFallbackMonitorChangedState;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)traitCollectionDidChange:(id)a3;
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
  v4 = [(PXSharedLibraryReplyAssistantViewController *)self viewModel];
  v5 = [v4 sharedLibrary];

  v6 = [off_1E7721960 defaultPresenterWithViewController:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXSharedLibraryReplyAssistantViewController_Internal__declineInvitation__block_invoke;
  v7[3] = &unk_1E7741CE0;
  v7[4] = self;
  v7[5] = a2;
  PXSharedLibraryDeclineInvitation(v5, v6, @"Assistant", v7);
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
  v3 = [(PXSharedLibraryReplyAssistantViewController *)self assistantViewControllerDelegate];
  if (!v3)
  {
    PXAssertGetLog();
  }

  [v3 stepForwardInAssistantForAssistantViewController:self];
}

- (BOOL)_canStepForward
{
  v2 = [(PXSharedLibraryReplyAssistantViewController *)self legacyDevicesFallbackMonitor];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 state] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_setIsWaitingToStepForward:(BOOL)a3
{
  v3 = a3;
  [(PXSharedLibraryReplyAssistantViewController *)self setWantsToStepForward:?];
  v5 = [(PXSharedLibraryReplyAssistantViewController *)self setupButton];
  v6 = v5;
  if (v3)
  {
    [v5 showsBusyIndicator];
  }

  else
  {
    [v5 hidesBusyIndicator];
  }
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext_239941 == a5)
  {
    [(PXSharedLibraryReplyAssistantViewController *)self legacyDevicesFallbackMonitorChangedState];
  }
}

- (void)_updateImage
{
  v3 = [(PXSharedLibraryReplyAssistantViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
    v5 = [v4 owner];

    v6 = [(PXSharedLibraryReplyAssistantViewController *)self traitCollection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PXSharedLibraryReplyAssistantViewController__updateImage__block_invoke;
    v7[3] = &unk_1E7749C60;
    v7[4] = self;
    v7[5] = v5;
    PXSharedLibraryRequestInvitationImageForOwner(v5, v6, v7);
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
  v2 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

  [v3 setAlignment:4];
  v4 = *MEMORY[0x1E69DB688];
  v23[0] = v3;
  v5 = *MEMORY[0x1E69DB650];
  v21[0] = v4;
  v21[1] = v5;
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v23[1] = v6;
  v22 = *MEMORY[0x1E69DB648];
  v7 = v22;
  v8 = *MEMORY[0x1E69DDD80];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v23[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v21 count:3];

  v20[0] = v3;
  v19[0] = v4;
  v19[1] = v5;
  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20[1] = v11;
  v19[2] = v7;
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v8 addingSymbolicTraits:0 weight:*MEMORY[0x1E69DB958]];
  v20[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v14 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  v15 = [v14 owner];
  v16 = PXSharedLibraryReplyAssistantAttributedSubtitle(v15, v10, v13);
  v17 = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [v17 setAttributedDetailText:v16];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryReplyAssistantViewController;
  v4 = a3;
  [(PXSharedLibraryReplyAssistantViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryReplyAssistantViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
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
  v4 = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [v4 setTitle:v3];

  [(PXSharedLibraryReplyAssistantViewController *)self _updateSubtitle];
  [(PXSharedLibraryReplyAssistantViewController *)self _updateImage];
  v5 = [MEMORY[0x1E69B7D20] accessoryButton];
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [v5 setTitle:v6 forState:0];

  [v5 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  v7 = [(PXSharedLibraryReplyAssistantViewController *)self headerView];
  [v7 addAccessoryButton:v5];

  v8 = [MEMORY[0x1E69B7D00] boldButton];
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ButtonTitle_Start");
  [v8 setTitle:v9 forState:0];

  [v8 addTarget:self action:sel_setupButtonTapped_ forControlEvents:0x2000];
  v10 = [(PXSharedLibraryReplyAssistantViewController *)self buttonTray];
  [v10 addButton:v8];

  [(PXSharedLibraryReplyAssistantViewController *)self setSetupButton:v8];
  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_setupButtonTapped_];
  [(PXSharedLibraryReplyAssistantViewController *)self addKeyCommand:v11];

  v12 = [MEMORY[0x1E69B7D38] linkButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ButtonTitle_Decline");
  [v12 setTitle:v13 forState:0];

  [v12 addTarget:self action:sel_declineButtonTapped_ forControlEvents:0x2000];
  v14 = [(PXSharedLibraryReplyAssistantViewController *)self buttonTray];
  [v14 addButton:v12];
}

- (PXSharedLibraryReplyAssistantViewController)initWithViewModel:(id)a3 legacyDevicesFallbackMonitor:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantViewController+iOS.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v14.receiver = self;
  v14.super_class = PXSharedLibraryReplyAssistantViewController;
  v10 = [(PXSharedLibraryReplyAssistantViewController *)&v14 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:2];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, a3);
    objc_storeStrong(&v11->_legacyDevicesFallbackMonitor, a4);
    [(PXSharedLibraryLegacyDevicesFallbackMonitor *)v11->_legacyDevicesFallbackMonitor registerChangeObserver:v11 context:PXSharedLibraryLegacyDevicesFallbackMonitorObservationContext_239941];
  }

  return v11;
}

- (PXSharedLibraryReplyAssistantViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantViewController+iOS.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXSharedLibraryReplyAssistantViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

@end