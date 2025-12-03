@interface PXSharedLibraryLegacyDevicesFallbackViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryLegacyDevicesFallbackViewController)initWithDevices:(id)devices;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)continueButtonTapped:(id)tapped;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryLegacyDevicesFallbackViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)learnMoreButtonTapped:(id)tapped
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht213247?cid=mc-ols-icloud-article_ht213247-photosappui-04262022"];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)continueButtonTapped:(id)tapped
{
  v5 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v8 = [view dequeueReusableCellWithIdentifier:@"PXSharedLibraryLegacyDevicesFallbackTableViewCellIdentifier"];
  if (v8)
  {
    v9 = v8;
    contentConfiguration = [v8 contentConfiguration];
    if (contentConfiguration)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        backgroundConfiguration = [v9 backgroundConfiguration];
        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = objc_opt_class();
      v38 = NSStringFromClass(v39);
      px_descriptionForAssertionMessage = [contentConfiguration px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell.contentConfiguration", v38, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell.contentConfiguration", v38}];
    }

    goto LABEL_4;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXSharedLibraryLegacyDevicesFallbackTableViewCellIdentifier"];
  contentConfiguration = [v9 defaultContentConfiguration];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  textProperties = [contentConfiguration textProperties];
  [textProperties setFont:v12];

  textProperties2 = [contentConfiguration textProperties];
  [textProperties2 setAdjustsFontForContentSizeCategory:1];

  [contentConfiguration setImageToTextPadding:14.0];
  [contentConfiguration setTextToSecondaryTextVerticalPadding:2.0];
  imageProperties = [contentConfiguration imageProperties];
  [imageProperties setMaximumSize:{40.0, 40.0}];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  secondaryTextProperties = [contentConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v16];

  secondaryTextProperties2 = [contentConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setAdjustsFontForContentSizeCategory:1];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties3 = [contentConfiguration secondaryTextProperties];
  [secondaryTextProperties3 setColor:secondaryLabelColor];

  secondaryTextProperties4 = [contentConfiguration secondaryTextProperties];
  [secondaryTextProperties4 setNumberOfLines:0];

  backgroundConfiguration = [v9 defaultBackgroundConfiguration];

LABEL_6:
  traitCollection = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v24 = 88.0;
  if (horizontalSizeClass != 2)
  {
    v24 = 34.0;
  }

  [contentConfiguration setDirectionalLayoutMargins:{0.0, v24, 26.0, v24}];
  [contentConfiguration setAxesPreservingSuperviewLayoutMargins:0];
  devices = self->_devices;
  item = [pathCopy item];

  v27 = [(NSArray *)devices objectAtIndexedSubscript:item];
  v28 = MEMORY[0x1E69DCAB8];
  iconData = [v27 iconData];
  v30 = [v28 imageWithData:iconData];

  if (!v30)
  {
    v31 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v27;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevice: Failed to create icon image for legacy device: %@", buf, 0xCu);
    }
  }

  [contentConfiguration setImage:v30];
  name = [v27 name];
  [contentConfiguration setText:name];

  instructions = [v27 instructions];
  [contentConfiguration setSecondaryText:instructions];

  [v9 setContentConfiguration:contentConfiguration];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [backgroundConfiguration setBackgroundColor:systemBackgroundColor];

  [v9 setBackgroundConfiguration:backgroundConfiguration];

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryLegacyDevicesFallbackViewController;
  changeCopy = change;
  [(PXSharedLibraryLegacyDevicesFallbackViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self traitCollection:v10.receiver];
  horizontalSizeClass = [v5 horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [tableView reloadSections:v9 withRowAnimation:100];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PXSharedLibraryLegacyDevicesFallbackViewController;
  [(OBTableWelcomeController *)&v13 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:0];
  [v4 setSeparatorStyle:0];
  [(OBTableWelcomeController *)self setTableView:v4];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_ButtonTitle");
  [boldButton setTitle:v7 forState:0];

  [boldButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryLegacyDevicesFallbackViewController *)self addKeyCommand:v9];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [linkButton setTitle:v11 forState:0];

  [linkButton addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (PXSharedLibraryLegacyDevicesFallbackViewController)initWithDevices:(id)devices
{
  devicesCopy = devices;
  if (![devicesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"devices.count"}];
  }

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_Title");
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_Body");
  v13.receiver = self;
  v13.super_class = PXSharedLibraryLegacyDevicesFallbackViewController;
  v8 = [(OBTableWelcomeController *)&v13 initWithTitle:v6 detailText:v7 icon:0 adoptTableViewScrollView:1];
  if (v8)
  {
    v9 = [devicesCopy copy];
    devices = v8->_devices;
    v8->_devices = v9;
  }

  return v8;
}

@end