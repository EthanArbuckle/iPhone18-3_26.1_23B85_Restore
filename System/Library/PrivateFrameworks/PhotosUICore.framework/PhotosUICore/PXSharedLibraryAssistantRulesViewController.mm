@interface PXSharedLibraryAssistantRulesViewController
- (NSString)footerText;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantRulesViewController)initWithViewModel:(id)model;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_continueWithPhotosPicker;
- (void)_continueWithPolicy:(int64_t)policy;
- (void)continueAndSkipMovingItems;
- (void)continueWithSelectedRuleType;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantRulesViewController

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__PXSharedLibraryAssistantRulesViewController_Internal_PHPickerViewControllerDelegate__picker_didFinishPicking___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = pickingCopy;
  v7 = pickingCopy;
  [picker dismissViewControllerAnimated:1 completion:v8];
}

- (void)_continueWithPhotosPicker
{
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];
  pickerConfiguration = [sourceLibraryInfo pickerConfiguration];

  [pickerConfiguration setSelectionLimit:0];
  viewModel2 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  assetLocalIdentifiers = [viewModel2 assetLocalIdentifiers];
  v7 = assetLocalIdentifiers;
  if (assetLocalIdentifiers)
  {
    v8 = assetLocalIdentifiers;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [pickerConfiguration setPreselectedAssetIdentifiers:v8];

  [pickerConfiguration setDisabledCapabilities:16];
  [pickerConfiguration _setDisabledPrivateCapabilities:7];
  v9 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:pickerConfiguration];
  [v9 setDelegate:self];
  [(PXSharedLibraryAssistantRulesViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_continueWithPolicy:(int64_t)policy
{
  v8 = *MEMORY[0x1E69E9840];
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXSharedLibraryAssistantRulesViewController_Internal___continueWithPolicy___block_invoke;
  v7[3] = &__block_descriptor_40_e52_v16__0___PXSharedLibraryAssistantMutableViewModel__8l;
  v7[4] = policy;
  [viewModel performChanges:v7];

  assistantViewControllerDelegate = [(PXSharedLibraryAssistantRulesViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (NSString)footerText
{
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  selectedRuleType = [viewModel selectedRuleType];

  if ((selectedRuleType - 1) >= 2)
  {
    v4 = @"PXSharedLibraryAssistant_Rules_Footer_PreviewBefore";
  }

  else
  {
    v4 = @"PXSharedLibraryAssistant_Rules_Footer_AlbumsNotIncluded_And_PreviewBefore";
  }

  v5 = PXLocalizedSharedLibraryString(v4);

  return v5;
}

- (void)continueWithSelectedRuleType
{
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  selectedRuleType = [viewModel selectedRuleType];
  v5 = selectedRuleType;
  v6 = 0;
  if (selectedRuleType <= 1)
  {
    if (selectedRuleType != 1)
    {
      if (!selectedRuleType)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantRulesViewController+Internal.m" lineNumber:44 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      goto LABEL_9;
    }

    v7 = &__block_literal_global_195_60181;
    goto LABEL_8;
  }

  if (selectedRuleType == 2)
  {
    v7 = &__block_literal_global_197;
LABEL_8:
    [viewModel performChanges:v7];
    v6 = v5;
    goto LABEL_9;
  }

  if (selectedRuleType == 3)
  {
    [viewModel performChanges:&__block_literal_global_199_60180];
    [(PXSharedLibraryAssistantRulesViewController *)self _continueWithPhotosPicker];
    goto LABEL_10;
  }

LABEL_9:
  [(PXSharedLibraryAssistantRulesViewController *)self _continueWithPolicy:v6];
LABEL_10:
}

void __85__PXSharedLibraryAssistantRulesViewController_Internal__continueWithSelectedRuleType__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setStartDate:0];
  v2 = MEMORY[0x1E695E0F0];
  [v3 setPersonUUIDs:MEMORY[0x1E695E0F0]];
  [v3 setAssetLocalIdentifiers:v2];
}

void __85__PXSharedLibraryAssistantRulesViewController_Internal__continueWithSelectedRuleType__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStartDate:0];
  [v2 setPersonUUIDs:MEMORY[0x1E695E0F0]];
}

- (void)continueAndSkipMovingItems
{
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_60188];

  [(PXSharedLibraryAssistantRulesViewController *)self _continueWithPolicy:0];
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v7 = [tableView cellForRowAtIndexPath:pathCopy];

  [v7 setAccessoryType:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  continueButton = self->_continueButton;
  pathCopy = path;
  [(OBBoldTrayButton *)continueButton setEnabled:1];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_listViewItems, "objectAtIndexedSubscript:", [pathCopy row]);
  viewModel = self->_viewModel;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PXSharedLibraryAssistantRulesViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7749B98;
  v14 = v7;
  v9 = v7;
  [(PXSharedLibraryAssistantViewModel *)viewModel performChanges:v13];
  tableView = [(OBTableWelcomeController *)self tableView];
  v11 = [tableView cellForRowAtIndexPath:pathCopy];

  [v11 setAccessoryType:3];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 reloadData];
}

void __81__PXSharedLibraryAssistantRulesViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSelectedRuleType:{objc_msgSend(v2, "tag")}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PXSharedLibraryRulesTableViewCellReuseIdentifier"];
  if (v8)
  {
    v9 = v8;
    contentConfiguration = [v8 contentConfiguration];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXSharedLibraryRulesTableViewCellReuseIdentifier"];
    contentConfiguration = [v9 defaultContentConfiguration];
    textProperties = [contentConfiguration textProperties];
    [textProperties setAdjustsFontForContentSizeCategory:1];

    secondaryTextProperties = [contentConfiguration secondaryTextProperties];
    [secondaryTextProperties setAdjustsFontForContentSizeCategory:1];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    secondaryTextProperties2 = [contentConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setColor:secondaryLabelColor];

    listPlainCellConfiguration = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [listPlainCellConfiguration setBackgroundColor:secondarySystemBackgroundColor];

    [v9 setBackgroundConfiguration:listPlainCellConfiguration];
  }

  v17 = -[NSArray objectAtIndexedSubscript:](self->_listViewItems, "objectAtIndexedSubscript:", [pathCopy row]);
  systemImageName = [v17 systemImageName];
  v19 = PXSharedLibraryCellSystemImageNamed(systemImageName);
  [contentConfiguration setImage:v19];

  title = [v17 title];
  [contentConfiguration setText:title];

  [v9 setContentConfiguration:contentConfiguration];
  v21 = [v17 tag];
  if (v21 == [(PXSharedLibraryAssistantViewModel *)self->_viewModel selectedRuleType])
  {
    [v9 setAccessoryType:3];
    if (([v9 isSelected] & 1) == 0)
    {
      [viewCopy selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
    }
  }

  else
  {
    [v9 setAccessoryType:0];
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantRulesViewController;
  changeCopy = change;
  [(PXSharedLibraryAssistantRulesViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryAssistantRulesViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXSharedLibraryAssistantRulesViewController *)self _updateIcon];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXSharedLibraryAssistantRulesViewController;
  [(OBTableWelcomeController *)&v16 viewDidLoad];
  [(PXSharedLibraryAssistantRulesViewController *)self _updateIcon];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:1];
  [v4 setAllowsMultipleSelection:0];
  [(OBTableWelcomeController *)self setTableView:v4];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v8 = self->_continueButton;
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v8 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  viewModel = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  -[OBBoldTrayButton setEnabled:](self->_continueButton, "setEnabled:", [viewModel selectedRuleType] != 0);

  buttonTray = [(PXSharedLibraryAssistantRulesViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v12 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantRulesViewController *)self addKeyCommand:v12];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v14 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_MoveLater");
  [linkButton setTitle:v14 forState:0];

  [linkButton addTarget:self action:sel_addLaterButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantRulesViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (PXSharedLibraryAssistantRulesViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantRulesViewController+iOS.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_Title");
  v8 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_Subtitle");
  v15.receiver = self;
  v15.super_class = PXSharedLibraryAssistantRulesViewController;
  v9 = [(OBTableWelcomeController *)&v15 initWithTitle:v7 detailText:v8 icon:0 adoptTableViewScrollView:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    v11 = PXSharedLibraryAssistantRulesListViewItems([(PXSharedLibraryAssistantViewModel *)v10->_viewModel shouldShowPeopleState]== 1);
    listViewItems = v10->_listViewItems;
    v10->_listViewItems = v11;
  }

  return v10;
}

@end