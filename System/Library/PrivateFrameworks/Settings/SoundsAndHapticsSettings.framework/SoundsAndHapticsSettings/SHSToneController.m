@interface SHSToneController
- (SHSToneController)init;
- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)a3 topic:(id)a4;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3;
- (void)_insertTonePickerView;
- (void)_updateReloadSpecifierInParentController;
- (void)dealloc;
- (void)setSpecifier:(id)a3;
- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4;
- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation SHSToneController

- (SHSToneController)init
{
  v5.receiver = self;
  v5.super_class = SHSToneController;
  v2 = [(SHSToneController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleAlertOverridePolicyDidChangeNotification_ name:*MEMORY[0x277D72080] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D72080] object:0];
  v4 = [(SHSToneController *)self tonePickerViewController];
  [v4 willMoveToParentViewController:0];
  if ([v4 isViewLoaded])
  {
    v5 = [v4 view];
    [v5 removeFromSuperview];
  }

  [v4 removeFromParentViewController];
  [v4 setDelegate:0];

  v6.receiver = self;
  v6.super_class = SHSToneController;
  [(SHSToneController *)&v6 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SHSToneController;
  [(SHSToneController *)&v17 setSpecifier:v4];
  v5 = [v4 name];
  [(SHSToneController *)self setTitle:v5];

  v6 = [v4 propertyForKey:@"alertType"];
  if (v6)
  {
    v7 = [(SHSToneController *)self tonePickerViewController];

    if (!v7)
    {
      v8 = TLAlertTypeFromString();
      v9 = [(SHSToneController *)self view];
      v10 = PSShouldInsetListView();

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = [objc_alloc(MEMORY[0x277D71F40]) _initWithAlertType:v8 tableViewStyle:v11];
      v13 = [v4 propertyForKey:@"accountIdentifier"];
      if (v13)
      {
        [v12 setTopic:v13];
      }

      if (v8 == 1)
      {
        [v12 setShowsNone:0];
      }

      else
      {
        [v12 setShowsNone:1];
        [v12 setNoneAtTop:1];
      }

      v14 = [(SHSToneController *)self _defaultToneIdentifierForTonePickerWithAlertType:v8 topic:v13];
      [v12 setDefaultToneIdentifier:v14];

      v15 = [MEMORY[0x277D71F78] sharedToneManager];
      v16 = [v15 currentToneIdentifierForAlertType:v8 topic:v13];
      [v12 setSelectedToneIdentifier:v16];

      [v12 setShowsVibrations:1];
      [v12 setDelegate:self];
      [(SHSToneController *)self setTonePickerViewController:v12];
      [(SHSToneController *)self addChildViewController:v12];
      if ([(SHSToneController *)self isViewLoaded])
      {
        [(SHSToneController *)self _insertTonePickerView];
      }

      [v12 didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SHSToneController;
  [(SHSToneController *)&v5 viewDidLoad];
  v3 = [(SHSToneController *)self specifier];
  v4 = [v3 name];
  [(SHSToneController *)self setTitle:v4];

  [(SHSToneController *)self _insertTonePickerView];
}

- (void)_insertTonePickerView
{
  v11 = [(SHSToneController *)self view];
  v3 = [(SHSToneController *)self tonePickerViewController];
  v4 = [v3 view];
  [v11 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPad];

  if (v6)
  {
    PSTableViewSideInset();
    v8 = v7;
    v9 = *MEMORY[0x277D76F30];
    v10 = [v3 tableView];
    [v10 _setSectionContentInset:{v9, v8, v9, v8}];
  }

  [v11 addSubview:v4];
}

- (void)_updateReloadSpecifierInParentController
{
  v5 = [(SHSToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    v4 = [(SHSToneController *)self specifier];
    [v3 reloadSpecifier:v4];
  }
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  v6 = MEMORY[0x277D71F78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedToneManager];
  v10 = [v8 alertType];
  v11 = [v8 topic];

  [v9 setCurrentToneIdentifier:v7 forAlertType:v10 topic:v11];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4
{
  v10 = a4;
  v6 = a3;
  [v10 setShowsDefault:0];
  [v10 setShowsUserGenerated:1];
  [v10 setShowsNone:1];
  [v10 setShowsEditButtonInNavigationBar:1];
  v7 = [v6 alertType];
  v8 = [v6 topic];

  v9 = [(SHSToneController *)self _defaultVibrationIdentifierForVibrationPickerWithAlertType:v7 topic:v8];
  [v10 setDefaultVibrationIdentifier:v9];

  [v10 setAllowsDeletingDefaultVibration:1];
  [v10 setDelegate:self];
  [(SHSToneController *)self setVibrationPickerViewController:v10];
}

- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4
{
  [a4 setDelegate:0];

  [(SHSToneController *)self setVibrationPickerViewController:0];
}

- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4
{
  v6 = MEMORY[0x277D71F88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedVibrationManager];
  v10 = [v8 alertType];
  v11 = [v8 topic];

  [v9 setCurrentVibrationIdentifier:v7 forAlertType:v10 topic:v11];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SHSToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke;
  block[3] = &unk_279BA66D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__SHSToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) tonePickerViewController];
  v2 = [v9 alertType];
  v3 = [v9 topic];
  v4 = [*(a1 + 32) _defaultToneIdentifierForTonePickerWithAlertType:v2 topic:v3];
  [v9 setDefaultToneIdentifier:v4];

  v5 = [MEMORY[0x277D71F78] sharedToneManager];
  v6 = [v5 currentToneIdentifierForAlertType:v2 topic:v3];
  [v9 setSelectedToneIdentifier:v6];

  if (v3)
  {
    v7 = [*(a1 + 32) vibrationPickerViewController];
    v8 = [*(a1 + 32) _defaultVibrationIdentifierForVibrationPickerWithAlertType:v2 topic:v3];
    [v7 setDefaultVibrationIdentifier:v8];
  }
}

- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [v6 defaultToneIdentifierForAlertType:a3];

  if (v5)
  {
    v8 = [MEMORY[0x277D71F78] sharedToneManager];
    v9 = [v8 hasSpecificDefaultToneIdentifierForAlertType:a3 topic:v5];

    v10 = [MEMORY[0x277D71F78] sharedToneManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultToneIdentifierForAlertType:a3 topic:v5];
    }

    else
    {
      [v10 currentToneIdentifierForAlertType:a3];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v7 = [v6 defaultVibrationIdentifierForAlertType:a3];

  if (v5)
  {
    v8 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v9 = [v8 hasSpecificDefaultVibrationIdentifierForAlertType:a3 topic:v5];

    v10 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultVibrationIdentifierForAlertType:a3 topic:v5];
    }

    else
    {
      [v10 currentVibrationIdentifierForAlertType:a3];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (void)viewDidAppear:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 specifier];
  v5 = 136315394;
  v6 = "[SHSToneController viewDidAppear:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_265896000, a2, OS_LOG_TYPE_ERROR, "%s shs_localizedPathComponentForTonePickerSpecifier returned nil for specifier: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end