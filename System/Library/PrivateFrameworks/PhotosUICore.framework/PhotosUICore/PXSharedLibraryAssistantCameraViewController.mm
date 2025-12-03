@interface PXSharedLibraryAssistantCameraViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantCameraViewController)init;
- (void)_completeWithAutoSharedEnabled:(BOOL)enabled;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantCameraViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)_completeWithAutoSharedEnabled:(BOOL)enabled
{
  PXPreferencesSetCameraAutoShareEnabled(enabled);
  PXPreferencesSetCameraSharingPreferencesState(1);
  completionHandler = [(PXSharedLibraryAssistantCameraViewController *)self completionHandler];
  v5 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler);
  }

  else
  {
    assistantViewControllerDelegate = [(PXSharedLibraryAssistantCameraViewController *)self assistantViewControllerDelegate];
    if (!assistantViewControllerDelegate)
    {
      PXAssertGetLog();
    }

    [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
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
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = PXSharedLibraryAssistantCameraViewController;
  [(OBBaseWelcomeController *)&v34 viewDidLoad];
  v3 = objc_alloc_init(PXSharedLibraryAssistantCameraHeaderView);
  [(PXSharedLibraryAssistantCameraHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXSharedLibraryAssistantCameraHeaderView *)v3 setClipsToBounds:1];
  contentView = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  contentView2 = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  [contentView2 setBackgroundColor:secondarySystemBackgroundColor];

  contentView3 = [(PXSharedLibraryAssistantCameraViewController *)self contentView];
  [contentView3 addSubview:v3];

  v27 = MEMORY[0x1E696ACD8];
  topAnchor = [(PXSharedLibraryAssistantCameraHeaderView *)v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v29;
  leadingAnchor = [(PXSharedLibraryAssistantCameraHeaderView *)v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[1] = v9;
  v33 = v3;
  trailingAnchor = [(PXSharedLibraryAssistantCameraHeaderView *)v3 trailingAnchor];
  v32 = contentView;
  trailingAnchor2 = [contentView trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[2] = v12;
  bottomAnchor = [(PXSharedLibraryAssistantCameraHeaderView *)v3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  [v27 activateConstraints:v16];

  accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
  v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [accessoryButton setTitle:v18 forState:0];

  [accessoryButton addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  headerView = [(PXSharedLibraryAssistantCameraViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v21 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_ButtonTitle_ShareAutomatically");
  [boldButton setTitle:v21 forState:0];

  [boldButton addTarget:self action:sel_primaryButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantCameraViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v23 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_primaryButtonTapped_];
  [(PXSharedLibraryAssistantCameraViewController *)self addKeyCommand:v23];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v25 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_CameraRules_ButtonTitle_ShareManually");
  [linkButton setTitle:v25 forState:0];

  [linkButton addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantCameraViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
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