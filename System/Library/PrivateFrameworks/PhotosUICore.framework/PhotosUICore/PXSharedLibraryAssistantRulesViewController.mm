@interface PXSharedLibraryAssistantRulesViewController
- (NSString)footerText;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantRulesViewController)initWithViewModel:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_continueWithPhotosPicker;
- (void)_continueWithPolicy:(int64_t)a3;
- (void)continueAndSkipMovingItems;
- (void)continueWithSelectedRuleType;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantRulesViewController

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__PXSharedLibraryAssistantRulesViewController_Internal_PHPickerViewControllerDelegate__picker_didFinishPicking___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 dismissViewControllerAnimated:1 completion:v8];
}

- (void)_continueWithPhotosPicker
{
  v3 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v4 = [v3 sourceLibraryInfo];
  v10 = [v4 pickerConfiguration];

  [v10 setSelectionLimit:0];
  v5 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v6 = [v5 assetLocalIdentifiers];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [v10 setPreselectedAssetIdentifiers:v8];

  [v10 setDisabledCapabilities:16];
  [v10 _setDisabledPrivateCapabilities:7];
  v9 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v10];
  [v9 setDelegate:self];
  [(PXSharedLibraryAssistantRulesViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_continueWithPolicy:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXSharedLibraryAssistantRulesViewController_Internal___continueWithPolicy___block_invoke;
  v7[3] = &__block_descriptor_40_e52_v16__0___PXSharedLibraryAssistantMutableViewModel__8l;
  v7[4] = a3;
  [v5 performChanges:v7];

  v6 = [(PXSharedLibraryAssistantRulesViewController *)self assistantViewControllerDelegate];
  if (!v6)
  {
    PXAssertGetLog();
  }

  [v6 stepForwardInAssistantForAssistantViewController:self];
}

- (NSString)footerText
{
  v2 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v3 = [v2 selectedRuleType];

  if ((v3 - 1) >= 2)
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
  v9 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  v4 = [v9 selectedRuleType];
  v5 = v4;
  v6 = 0;
  if (v4 <= 1)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantRulesViewController+Internal.m" lineNumber:44 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      goto LABEL_9;
    }

    v7 = &__block_literal_global_195_60181;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v7 = &__block_literal_global_197;
LABEL_8:
    [v9 performChanges:v7];
    v6 = v5;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
    [v9 performChanges:&__block_literal_global_199_60180];
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
  v3 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  [v3 performChanges:&__block_literal_global_60188];

  [(PXSharedLibraryAssistantRulesViewController *)self _continueWithPolicy:0];
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 cellForRowAtIndexPath:v5];

  [v7 setAccessoryType:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  continueButton = self->_continueButton;
  v6 = a4;
  [(OBBoldTrayButton *)continueButton setEnabled:1];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_listViewItems, "objectAtIndexedSubscript:", [v6 row]);
  viewModel = self->_viewModel;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PXSharedLibraryAssistantRulesViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7749B98;
  v14 = v7;
  v9 = v7;
  [(PXSharedLibraryAssistantViewModel *)viewModel performChanges:v13];
  v10 = [(OBTableWelcomeController *)self tableView];
  v11 = [v10 cellForRowAtIndexPath:v6];

  [v11 setAccessoryType:3];
  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 reloadData];
}

void __81__PXSharedLibraryAssistantRulesViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSelectedRuleType:{objc_msgSend(v2, "tag")}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"PXSharedLibraryRulesTableViewCellReuseIdentifier"];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 contentConfiguration];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXSharedLibraryRulesTableViewCellReuseIdentifier"];
    v10 = [v9 defaultContentConfiguration];
    v11 = [v10 textProperties];
    [v11 setAdjustsFontForContentSizeCategory:1];

    v12 = [v10 secondaryTextProperties];
    [v12 setAdjustsFontForContentSizeCategory:1];

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [v10 secondaryTextProperties];
    [v14 setColor:v13];

    v15 = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
    v16 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v9 setBackgroundConfiguration:v15];
  }

  v17 = -[NSArray objectAtIndexedSubscript:](self->_listViewItems, "objectAtIndexedSubscript:", [v7 row]);
  v18 = [v17 systemImageName];
  v19 = PXSharedLibraryCellSystemImageNamed(v18);
  [v10 setImage:v19];

  v20 = [v17 title];
  [v10 setText:v20];

  [v9 setContentConfiguration:v10];
  v21 = [v17 tag];
  if (v21 == [(PXSharedLibraryAssistantViewModel *)self->_viewModel selectedRuleType])
  {
    [v9 setAccessoryType:3];
    if (([v9 isSelected] & 1) == 0)
    {
      [v6 selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
    }
  }

  else
  {
    [v9 setAccessoryType:0];
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantRulesViewController;
  v4 = a3;
  [(PXSharedLibraryAssistantRulesViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryAssistantRulesViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
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
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:1];
  [v4 setAllowsMultipleSelection:0];
  [(OBTableWelcomeController *)self setTableView:v4];
  v6 = [MEMORY[0x1E69B7D00] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v6;

  v8 = self->_continueButton;
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v8 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  v10 = [(PXSharedLibraryAssistantRulesViewController *)self viewModel];
  -[OBBoldTrayButton setEnabled:](self->_continueButton, "setEnabled:", [v10 selectedRuleType] != 0);

  v11 = [(PXSharedLibraryAssistantRulesViewController *)self buttonTray];
  [v11 addButton:self->_continueButton];

  v12 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantRulesViewController *)self addKeyCommand:v12];

  v13 = [MEMORY[0x1E69B7D38] linkButton];
  v14 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_MoveLater");
  [v13 setTitle:v14 forState:0];

  [v13 addTarget:self action:sel_addLaterButtonTapped_ forControlEvents:0x2000];
  v15 = [(PXSharedLibraryAssistantRulesViewController *)self buttonTray];
  [v15 addButton:v13];
}

- (PXSharedLibraryAssistantRulesViewController)initWithViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantRulesViewController+iOS.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_Title");
  v8 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_Subtitle");
  v15.receiver = self;
  v15.super_class = PXSharedLibraryAssistantRulesViewController;
  v9 = [(OBTableWelcomeController *)&v15 initWithTitle:v7 detailText:v8 icon:0 adoptTableViewScrollView:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    v11 = PXSharedLibraryAssistantRulesListViewItems([(PXSharedLibraryAssistantViewModel *)v10->_viewModel shouldShowPeopleState]== 1);
    listViewItems = v10->_listViewItems;
    v10->_listViewItems = v11;
  }

  return v10;
}

@end