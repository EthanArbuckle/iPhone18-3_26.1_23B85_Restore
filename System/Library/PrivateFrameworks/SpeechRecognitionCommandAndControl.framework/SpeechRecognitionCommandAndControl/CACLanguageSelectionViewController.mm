@interface CACLanguageSelectionViewController
+ (id)defaultControllerWithStyle:(unint64_t)style;
- (CACLanguageSelectionViewController)init;
- (void)cacLanguageDownloadStartDownload:(id)download;
- (void)cacLanguageDownloadStopDownload:(id)download;
- (void)dealloc;
- (void)handleDownloadProgressChange;
- (void)handleErrorOccured:(id)occured;
- (void)languageDidChange;
- (void)selectedLanguageWithIdentifier:(id)identifier;
- (void)updateDownloadProgress;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CACLanguageSelectionViewController

+ (id)defaultControllerWithStyle:(unint64_t)style
{
  v4 = objc_alloc_init(CACLanguageSelectionViewController);
  [(CACLanguageSelectionViewController *)v4 setControllerStyle:style];

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
    userSelectableLocaleIdentifiers = [v3 userSelectableLocaleIdentifiers];
    availableLocales = v2->_availableLocales;
    v2->_availableLocales = userSelectableLocaleIdentifiers;

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
    installationStatus = [v11 installationStatus];

    [(CACUILanguageViewBridgeController *)v2->_languageViewBridgeController updateInstallationStatus:installationStatus];
    v13 = v2->_languageViewBridgeController;
    v14 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v14 bestLocaleIdentifier];
    [(CACUILanguageViewBridgeController *)v13 setSelectedLanguageIdentifier:bestLocaleIdentifier];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleDownloadProgressChange name:@"CACNotificationAssetDownloadProgressChanged" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_handleErrorOccured_ name:@"CACNotificationAssetDownloadErrorOccured" object:0];

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
  view = [(CACLanguageSelectionViewController *)self view];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  languageViewController = [(CACLanguageSelectionViewController *)self languageViewController];
  [(CACLanguageSelectionViewController *)self addChildViewController:languageViewController];

  view2 = [(CACLanguageSelectionViewController *)self view];
  languageViewController2 = [(CACLanguageSelectionViewController *)self languageViewController];
  view3 = [languageViewController2 view];
  [view2 addSubview:view3];

  languageViewController3 = [(CACLanguageSelectionViewController *)self languageViewController];
  [languageViewController3 didMoveToParentViewController:self];

  languageViewController4 = [(CACLanguageSelectionViewController *)self languageViewController];
  view4 = [languageViewController4 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(CACLanguageSelectionViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];

  v29 = MEMORY[0x277CCAAD0];
  languageViewController5 = [(CACLanguageSelectionViewController *)self languageViewController];
  view6 = [languageViewController5 view];
  topAnchor = [view6 topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[0] = v34;
  languageViewController6 = [(CACLanguageSelectionViewController *)self languageViewController];
  view7 = [languageViewController6 view];
  bottomAnchor = [view7 bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[1] = v28;
  languageViewController7 = [(CACLanguageSelectionViewController *)self languageViewController];
  view8 = [languageViewController7 view];
  leadingAnchor = [view8 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[2] = v16;
  languageViewController8 = [(CACLanguageSelectionViewController *)self languageViewController];
  view9 = [languageViewController8 view];
  trailingAnchor = [view9 trailingAnchor];
  v39 = safeAreaLayoutGuide;
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v29 activateConstraints:v22];

  v23 = [CACLocaleUtilities localizedUIStringForKey:@"LanguageSelection.Title"];
  [(CACLanguageSelectionViewController *)self setTitle:v23];

  if (![(CACLanguageSelectionViewController *)self controllerStyle])
  {
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
    navigationItem = [(CACLanguageSelectionViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v24];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v5 viewWillAppear:appear];
  languageViewBridgeController = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [languageViewBridgeController updateInstallationStatus:MEMORY[0x277CBEC10]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CACLanguageSelectionViewController;
  [(CACLanguageSelectionViewController *)&v3 viewDidAppear:appear];
}

- (void)selectedLanguageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CACPreferences sharedPreferences];
  [v4 setLocaleIdentifier:identifierCopy];
}

- (void)languageDidChange
{
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];

  languageViewBridgeController = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [languageViewBridgeController setSelectedLanguageIdentifier:bestLocaleIdentifier];
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
  downloadProgress = [v3 downloadProgress];

  languageViewBridgeController = [(CACLanguageSelectionViewController *)self languageViewBridgeController];
  [languageViewBridgeController updateDownloadStatus:downloadProgress];
}

- (void)handleErrorOccured:(id)occured
{
  object = [occured object];
  v5 = CACLogAssetDownload();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CACLanguageSelectionViewController *)object handleErrorOccured:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CACLanguageSelectionViewController_handleErrorOccured___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cacLanguageDownloadStartDownload:(id)download
{
  v7 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  v4 = CACLogAssetDownload();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = downloadCopy;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Start download for language %@", &v5, 0xCu);
  }
}

- (void)cacLanguageDownloadStopDownload:(id)download
{
  v7 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  v4 = CACLogAssetDownload();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = downloadCopy;
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