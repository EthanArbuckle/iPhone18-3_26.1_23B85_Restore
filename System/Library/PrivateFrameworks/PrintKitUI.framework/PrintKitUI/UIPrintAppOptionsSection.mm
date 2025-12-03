@interface UIPrintAppOptionsSection
- (UIPrintAppOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller appOptionsViewController:(id)viewController;
- (id)summaryString;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewDidChangeSize:(id)size;
- (void)thumbnailsNeedUpdate:(id)update;
@end

@implementation UIPrintAppOptionsSection

- (UIPrintAppOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller appOptionsViewController:(id)viewController
{
  infoCopy = info;
  viewControllerCopy = viewController;
  v20.receiver = self;
  v20.super_class = UIPrintAppOptionsSection;
  v10 = [(UIPrintOptionSection *)&v20 initWithPrintInfo:infoCopy printPanelViewController:controller];
  v11 = v10;
  if (v10)
  {
    [(UIPrintAppOptionsSection *)v10 setAppOptionsViewController:viewControllerCopy];
    appOptionsViewController = [(UIPrintAppOptionsSection *)v11 appOptionsViewController];
    [appOptionsViewController setPrintInfo:infoCopy];

    title = [viewControllerCopy title];
    [(UIPrintOptionSection *)v11 setTitle:title];

    title2 = [(UIPrintOptionSection *)v11 title];

    if (!title2)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      [(UIPrintOptionSection *)v11 setTitle:v16];
    }

    appOptionsViewController2 = [(UIPrintAppOptionsSection *)v11 appOptionsViewController];
    [appOptionsViewController2 addObserver:v11 forKeyPath:@"summary" options:0 context:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_thumbnailsNeedUpdate_ name:@"UIPrintThumbnailsNeedUpdateNotification" object:viewControllerCopy];
  }

  return v11;
}

- (void)dealloc
{
  appOptionsViewController = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [appOptionsViewController removeObserver:self forKeyPath:@"summary"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintAppOptionsSection;
  [(UIPrintOptionSection *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"summary", object, change, context}])
  {

    [(UIPrintOptionSection *)self updateSectionSummary];
  }
}

- (void)thumbnailsNeedUpdate:(id)update
{
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  [printPanelViewController resetPreviewPages];
}

- (id)summaryString
{
  appOptionsViewController = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  summary = [appOptionsViewController summary];

  return summary;
}

- (void)didSelectPrintOptionSection
{
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  [printPanelViewController contentInsetForPreviewWithHeight:0.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  appOptionsViewController = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [appOptionsViewController setAdditionalSafeAreaInsets:{v5, v7, v9, v11}];

  printPanelViewController2 = [(UIPrintOptionSection *)self printPanelViewController];
  appOptionsViewController2 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  navigationItem = [appOptionsViewController2 navigationItem];
  [printPanelViewController2 addPrintShareButtonsToNavItem:navigationItem];

  printPanelViewController3 = [(UIPrintOptionSection *)self printPanelViewController];
  printOptionsNavController = [printPanelViewController3 printOptionsNavController];
  appOptionsViewController3 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [printOptionsNavController pushViewController:appOptionsViewController3 animated:1];
}

- (void)previewDidChangeSize:(id)size
{
  object = [size object];
  [object floatValue];
  v6 = v5;

  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  [printPanelViewController contentInsetForPreviewWithHeight:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  appOptionsViewController = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [appOptionsViewController setAdditionalSafeAreaInsets:{v8, v10, v12, v14}];
}

@end