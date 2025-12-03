@interface SHSToneController
- (SHSToneController)init;
- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification;
- (void)_insertTonePickerView;
- (void)_updateReloadSpecifierInParentController;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAlertOverridePolicyDidChangeNotification_ name:*MEMORY[0x277D72080] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D72080] object:0];
  tonePickerViewController = [(SHSToneController *)self tonePickerViewController];
  [tonePickerViewController willMoveToParentViewController:0];
  if ([tonePickerViewController isViewLoaded])
  {
    view = [tonePickerViewController view];
    [view removeFromSuperview];
  }

  [tonePickerViewController removeFromParentViewController];
  [tonePickerViewController setDelegate:0];

  v6.receiver = self;
  v6.super_class = SHSToneController;
  [(SHSToneController *)&v6 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = SHSToneController;
  [(SHSToneController *)&v17 setSpecifier:specifierCopy];
  name = [specifierCopy name];
  [(SHSToneController *)self setTitle:name];

  v6 = [specifierCopy propertyForKey:@"alertType"];
  if (v6)
  {
    tonePickerViewController = [(SHSToneController *)self tonePickerViewController];

    if (!tonePickerViewController)
    {
      v8 = TLAlertTypeFromString();
      view = [(SHSToneController *)self view];
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
      v13 = [specifierCopy propertyForKey:@"accountIdentifier"];
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

      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      v16 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:v8 topic:v13];
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
  specifier = [(SHSToneController *)self specifier];
  name = [specifier name];
  [(SHSToneController *)self setTitle:name];

  [(SHSToneController *)self _insertTonePickerView];
}

- (void)_insertTonePickerView
{
  view = [(SHSToneController *)self view];
  tonePickerViewController = [(SHSToneController *)self tonePickerViewController];
  view2 = [tonePickerViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    PSTableViewSideInset();
    v8 = v7;
    v9 = *MEMORY[0x277D76F30];
    tableView = [tonePickerViewController tableView];
    [tableView _setSectionContentInset:{v9, v8, v9, v8}];
  }

  [view addSubview:view2];
}

- (void)_updateReloadSpecifierInParentController
{
  parentController = [(SHSToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentController;
    specifier = [(SHSToneController *)self specifier];
    [v3 reloadSpecifier:specifier];
  }
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D71F78];
  identifierCopy = identifier;
  controllerCopy = controller;
  sharedToneManager = [v6 sharedToneManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [sharedToneManager setCurrentToneIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy setShowsDefault:0];
  [viewControllerCopy setShowsUserGenerated:1];
  [viewControllerCopy setShowsNone:1];
  [viewControllerCopy setShowsEditButtonInNavigationBar:1];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  v9 = [(SHSToneController *)self _defaultVibrationIdentifierForVibrationPickerWithAlertType:alertType topic:topic];
  [viewControllerCopy setDefaultVibrationIdentifier:v9];

  [viewControllerCopy setAllowsDeletingDefaultVibration:1];
  [viewControllerCopy setDelegate:self];
  [(SHSToneController *)self setVibrationPickerViewController:viewControllerCopy];
}

- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController
{
  [viewController setDelegate:0];

  [(SHSToneController *)self setVibrationPickerViewController:0];
}

- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D71F88];
  identifierCopy = identifier;
  controllerCopy = controller;
  sharedVibrationManager = [v6 sharedVibrationManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [sharedVibrationManager setCurrentVibrationIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification
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

- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [mEMORY[0x277D71F78] defaultToneIdentifierForAlertType:type];

  if (topicCopy)
  {
    mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
    v9 = [mEMORY[0x277D71F78]2 hasSpecificDefaultToneIdentifierForAlertType:type topic:topicCopy];

    mEMORY[0x277D71F78]3 = [MEMORY[0x277D71F78] sharedToneManager];
    v11 = mEMORY[0x277D71F78]3;
    if (v9)
    {
      [mEMORY[0x277D71F78]3 defaultToneIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [mEMORY[0x277D71F78]3 currentToneIdentifierForAlertType:type];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v7 = [mEMORY[0x277D71F88] defaultVibrationIdentifierForAlertType:type];

  if (topicCopy)
  {
    mEMORY[0x277D71F88]2 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v9 = [mEMORY[0x277D71F88]2 hasSpecificDefaultVibrationIdentifierForAlertType:type topic:topicCopy];

    mEMORY[0x277D71F88]3 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v11 = mEMORY[0x277D71F88]3;
    if (v9)
    {
      [mEMORY[0x277D71F88]3 defaultVibrationIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [mEMORY[0x277D71F88]3 currentVibrationIdentifierForAlertType:type];
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