@interface CACLanguageSelectionViewController
+ (id)defaultControllerWithStyle:(unint64_t)a3;
- (CACLanguageSelectionViewController)init;
- (void)cacLanguageDownloadStartDownload:(id)a3;
- (void)cacLanguageDownloadStopDownload:(id)a3;
- (void)dealloc;
- (void)handleDownloadProgressChange;
- (void)handleErrorOccured:(id)a3;
- (void)languageDidChange;
- (void)selectedLanguageWithIdentifier:(id)a3;
- (void)updateDownloadProgress;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CACLanguageSelectionViewController

+ (id)defaultControllerWithStyle:(unint64_t)a3
{
  v4 = objc_alloc_init(CACLanguageSelectionViewController);
  [(CACLanguageSelectionViewController *)v4 setControllerStyle:a3];

  return v4;
}

- (CACLanguageSelectionViewController)init
{
  v20.receiver = self;
  v20.super_class = CACLanguageSelectionViewController;
  v2 = [(CACLanguageSelectionViewController *)&v20 init];
  if (v2)
  {
    v3 = +[CACPreferences sharedPreferences];
    v4 = [v3 userSelectableLocaleIdentifiers];
    availableLocales = v2->_availableLocales;
    v2->_availableLocales = v4;

    v6 = +[CACLanguageAssetManager sharedManager];
    [v6 registerForCallback];

    v7 = objc_opt_new();
    languageViewBridgeController = v2->_languageViewBridgeController;
    v2->_languageViewBridgeController = v7;

    [(CACUILanguageViewBridgeController *)v2->_languageViewBridgeController setDelegate:v2];
    v9 = [(CACUILanguageViewBridgeController *)v2->_languageViewBridgeController createLanguageViewControllerWithLocales:v2->_availableLocales];
    languageViewController = v2->_languageViewController;
    v2->_languageViewController = v9;

    v11 = +[CACLanguageAssetManager sharedManager];
    v12 = [v11 installationStatus];

    [(CACUILanguageViewBridgeController *)v2->_languageViewBridgeController updateInstallationStatus:v12];
    v13 = v2->_languageViewBridgeController;
    v14 = +[CACPreferences sharedPreferences];
    v15 = [v14 bestLocaleIdentifier];
    [(CACUILanguageViewBridgeController *)v13 setSelectedLanguageIdentifier:v15];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v2 selector:sel_handleDownloadProgressChange name:@"CACNotificationAssetDownloadProgressChanged" object:0];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v2 selector:sel_handleErrorOccured_ name:@"CACNotificationAssetDownloadErrorOccured" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _languageChanged, @"CACNotificationLanguageChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationLanguageChanged", 0);
  v4.receiver = self;
  v4.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v40 viewDidLoad];
  v3 = [(CACLanguageSelectionViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(CACLanguageSelectionViewController *)self languageViewController];
  [(CACLanguageSelectionViewController *)self addChildViewController:v5];

  v6 = [(CACLanguageSelectionViewController *)self view];
  v7 = [(CACLanguageSelectionViewController *)self languageViewController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(CACLanguageSelectionViewController *)self languageViewController];
  [v9 didMoveToParentViewController:self];

  v10 = [(CACLanguageSelectionViewController *)self languageViewController];
  v11 = [v10 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CACLanguageSelectionViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];

  v29 = MEMORY[0x277CCAAD0];
  v38 = [(CACLanguageSelectionViewController *)self languageViewController];
  v37 = [v38 view];
  v36 = [v37 topAnchor];
  v35 = [v13 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(CACLanguageSelectionViewController *)self languageViewController];
  v32 = [v33 view];
  v31 = [v32 bottomAnchor];
  v30 = [v13 bottomAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v41[1] = v28;
  v27 = [(CACLanguageSelectionViewController *)self languageViewController];
  v26 = [v27 view];
  v14 = [v26 leadingAnchor];
  v15 = [v13 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v41[2] = v16;
  v17 = [(CACLanguageSelectionViewController *)self languageViewController];
  v18 = [v17 view];
  v19 = [v18 trailingAnchor];
  v39 = v13;
  v20 = [v13 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v41[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v29 activateConstraints:v22];

  v23 = [CACLocaleUtilities localizedUIStringForKey:@"LanguageSelection.Title"];
  [(CACLanguageSelectionViewController *)self setTitle:v23];

  if (![(CACLanguageSelectionViewController *)self controllerStyle])
  {
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
    v25 = [(CACLanguageSelectionViewController *)self navigationItem];
    [v25 setRightBarButtonItem:v24];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v5 viewWillAppear:a3];
  v4 = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [v4 updateInstallationStatus:MEMORY[0x277CBEC10]];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v3 viewDidAppear:a3];
}

- (void)selectedLanguageWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CACPreferences sharedPreferences];
  [v4 setLocaleIdentifier:v3];
}

- (void)languageDidChange
{
  v3 = +[CACPreferences sharedPreferences];
  v5 = [v3 bestLocaleIdentifier];

  v4 = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [v4 setSelectedLanguageIdentifier:v5];
}

- (void)handleDownloadProgressChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CACLanguageSelectionViewController_handleDownloadProgressChange__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateDownloadProgress
{
  v3 = +[CACLanguageAssetManager sharedManager];
  v5 = [v3 downloadProgress];

  v4 = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [v4 updateDownloadStatus:v5];
}

- (void)handleErrorOccured:(id)a3
{
  v4 = [a3 object];
  v5 = CACLogAssetDownload();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CACLanguageSelectionViewController *)v4 handleErrorOccured:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CACLanguageSelectionViewController_handleErrorOccured___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cacLanguageDownloadStartDownload:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CACLogAssetDownload();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Start download for language %@", &v5, 0xCu);
  }
}

- (void)cacLanguageDownloadStopDownload:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CACLogAssetDownload();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Stop download for language %@", &v5, 0xCu);
  }
}

- (void)handleErrorOccured:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Error occured in language download for %@", &v2, 0xCu);
}

@end