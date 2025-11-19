@interface PXSharedLibraryLegacyDevicesFallbackViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryLegacyDevicesFallbackViewController)initWithDevices:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)continueButtonTapped:(id)a3;
- (void)learnMoreButtonTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryLegacyDevicesFallbackViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)learnMoreButtonTapped:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht213247?cid=mc-ols-icloud-article_ht213247-photosappui-04262022"];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)continueButtonTapped:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self assistantViewControllerDelegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 stepForwardInAssistantForAssistantViewController:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 dequeueReusableCellWithIdentifier:@"PXSharedLibraryLegacyDevicesFallbackTableViewCellIdentifier"];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 contentConfiguration];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v11 = [v9 backgroundConfiguration];
        goto LABEL_6;
      }

      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = objc_opt_class();
      v38 = NSStringFromClass(v39);
      v40 = [v10 px_descriptionForAssertionMessage];
      [v36 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell.contentConfiguration", v38, v40}];
    }

    else
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      [v36 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell.contentConfiguration", v38}];
    }

    goto LABEL_4;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXSharedLibraryLegacyDevicesFallbackTableViewCellIdentifier"];
  v10 = [v9 defaultContentConfiguration];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v13 = [v10 textProperties];
  [v13 setFont:v12];

  v14 = [v10 textProperties];
  [v14 setAdjustsFontForContentSizeCategory:1];

  [v10 setImageToTextPadding:14.0];
  [v10 setTextToSecondaryTextVerticalPadding:2.0];
  v15 = [v10 imageProperties];
  [v15 setMaximumSize:{40.0, 40.0}];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v17 = [v10 secondaryTextProperties];
  [v17 setFont:v16];

  v18 = [v10 secondaryTextProperties];
  [v18 setAdjustsFontForContentSizeCategory:1];

  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20 = [v10 secondaryTextProperties];
  [v20 setColor:v19];

  v21 = [v10 secondaryTextProperties];
  [v21 setNumberOfLines:0];

  v11 = [v9 defaultBackgroundConfiguration];

LABEL_6:
  v22 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self traitCollection];
  v23 = [v22 horizontalSizeClass];

  v24 = 88.0;
  if (v23 != 2)
  {
    v24 = 34.0;
  }

  [v10 setDirectionalLayoutMargins:{0.0, v24, 26.0, v24}];
  [v10 setAxesPreservingSuperviewLayoutMargins:0];
  devices = self->_devices;
  v26 = [v7 item];

  v27 = [(NSArray *)devices objectAtIndexedSubscript:v26];
  v28 = MEMORY[0x1E69DCAB8];
  v29 = [v27 iconData];
  v30 = [v28 imageWithData:v29];

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

  [v10 setImage:v30];
  v32 = [v27 name];
  [v10 setText:v32];

  v33 = [v27 instructions];
  [v10 setSecondaryText:v33];

  [v9 setContentConfiguration:v10];
  v34 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v11 setBackgroundColor:v34];

  [v9 setBackgroundConfiguration:v11];

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryLegacyDevicesFallbackViewController;
  v4 = a3;
  [(PXSharedLibraryLegacyDevicesFallbackViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self traitCollection:v10.receiver];
  v6 = [v5 horizontalSizeClass];
  v7 = [v4 horizontalSizeClass];

  if (v6 != v7)
  {
    v8 = [(OBTableWelcomeController *)self tableView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v8 reloadSections:v9 withRowAnimation:100];
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
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:0];
  [v4 setSeparatorStyle:0];
  [(OBTableWelcomeController *)self setTableView:v4];
  v6 = [MEMORY[0x1E69B7D00] boldButton];
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_ButtonTitle");
  [v6 setTitle:v7 forState:0];

  [v6 addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  v8 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self buttonTray];
  [v8 addButton:v6];

  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryLegacyDevicesFallbackViewController *)self addKeyCommand:v9];

  v10 = [MEMORY[0x1E69B7D38] linkButton];
  v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_Description_LearnMore_ButtonTitle");
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:0x2000];
  v12 = [(PXSharedLibraryLegacyDevicesFallbackViewController *)self buttonTray];
  [v12 addButton:v10];
}

- (PXSharedLibraryLegacyDevicesFallbackViewController)initWithDevices:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackViewController+iOS.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"devices.count"}];
  }

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_Title");
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_LegacyDevices_Body");
  v13.receiver = self;
  v13.super_class = PXSharedLibraryLegacyDevicesFallbackViewController;
  v8 = [(OBTableWelcomeController *)&v13 initWithTitle:v6 detailText:v7 icon:0 adoptTableViewScrollView:1];
  if (v8)
  {
    v9 = [v5 copy];
    devices = v8->_devices;
    v8->_devices = v9;
  }

  return v8;
}

@end