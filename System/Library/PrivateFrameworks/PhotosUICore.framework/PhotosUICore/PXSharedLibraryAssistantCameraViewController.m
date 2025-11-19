@interface PXSharedLibraryAssistantCameraViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantCameraViewController)init;
- (void)_completeWithAutoSharedEnabled:(BOOL)a3;
- (void)learnMoreButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantCameraViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)_completeWithAutoSharedEnabled:(BOOL)a3
{
  PXPreferencesSetCameraAutoShareEnabled(a3);
  PXPreferencesSetCameraSharingPreferencesState(1);
  v4 = [(PXSharedLibraryAssistantCameraViewController *)self completionHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  else
  {
    v6 = [(PXSharedLibraryAssistantCameraViewController *)self assistantViewControllerDelegate];
    if (!v6)
    {
      PXAssertGetLog();
    }

    [v6 stepForwardInAssistantForAssistantViewController:self];
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
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = PXSharedLibraryAssistantCameraViewController;
  [(OBBaseWelcomeController *)&v34 viewDidLoad];
  v3 = objc_alloc_init(PXSharedLibraryAssistantCameraHeaderView);
  [(PXSharedLibraryAssistantCameraHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXSharedLibraryAssistantCameraHeaderView *)v3 setClipsToBounds:1];
  v4 = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v6 = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  [v6 setBackgroundColor:v5];

  v7 = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  [v7 addSubview:v3];

  v27 = MEMORY[0x1E696ACD8];
  v31 = [(PXSharedLibraryAssistantCameraHeaderView *)v3 topAnchor];
  v30 = [v4 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v35[0] = v29;
  v28 = [(PXSharedLibraryAssistantCameraHeaderView *)v3 leadingAnchor];
  v8 = [v4 leadingAnchor];
  v9 = [v28 constraintEqualToAnchor:v8];
  v35[1] = v9;
  v33 = v3;
  v10 = [(PXSharedLibraryAssistantCameraHeaderView *)v3 trailingAnchor];
  v32 = v4;
  v11 = [v4 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v35[2] = v12;
  v13 = [(PXSharedLibraryAssistantCameraHeaderView *)v3 bottomAnchor];
  v14 = [v4 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v35[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  [v27 activateConstraints:v16];

  v17 = [MEMORY[0x1E69B7D20] accessoryButton];
  v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [v17 setTitle:v18 forState:0];

  [v17 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  v19 = [(PXSharedLibraryAssistantCameraViewController *)self headerView];
  [v19 addAccessoryButton:v17];

  v20 = [MEMORY[0x1E69B7D00] boldButton];
  v21 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_ButtonTitle_ShareAutomatically");
  [v20 setTitle:v21 forState:0];

  [v20 addTarget:self action:sel_primaryButtonTapped_ forControlEvents:0x2000];
  v22 = [(PXSharedLibraryAssistantCameraViewController *)self buttonTray];
  [v22 addButton:v20];

  v23 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_primaryButtonTapped_];
  [(PXSharedLibraryAssistantCameraViewController *)self addKeyCommand:v23];

  v24 = [MEMORY[0x1E69B7D38] linkButton];
  v25 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_ButtonTitle_ShareManually");
  [v24 setTitle:v25 forState:0];

  [v24 addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:0x2000];
  v26 = [(PXSharedLibraryAssistantCameraViewController *)self buttonTray];
  [v26 addButton:v24];
}

- (PXSharedLibraryAssistantCameraViewController)init
{
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_Title");
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_Description");
  v7.receiver = self;
  v7.super_class = PXSharedLibraryAssistantCameraViewController;
  v5 = [(PXSharedLibraryAssistantCameraViewController *)&v7 initWithTitle:v3 detailText:v4 icon:0 contentLayout:1];

  return v5;
}

@end