@interface UIPrintAppOptionsSection
- (UIPrintAppOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4 appOptionsViewController:(id)a5;
- (id)summaryString;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewDidChangeSize:(id)a3;
- (void)thumbnailsNeedUpdate:(id)a3;
@end

@implementation UIPrintAppOptionsSection

- (UIPrintAppOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4 appOptionsViewController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = UIPrintAppOptionsSection;
  v10 = [(UIPrintOptionSection *)&v20 initWithPrintInfo:v8 printPanelViewController:a4];
  v11 = v10;
  if (v10)
  {
    [(UIPrintAppOptionsSection *)v10 setAppOptionsViewController:v9];
    v12 = [(UIPrintAppOptionsSection *)v11 appOptionsViewController];
    [v12 setPrintInfo:v8];

    v13 = [v9 title];
    [(UIPrintOptionSection *)v11 setTitle:v13];

    v14 = [(UIPrintOptionSection *)v11 title];

    if (!v14)
    {
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      [(UIPrintOptionSection *)v11 setTitle:v16];
    }

    v17 = [(UIPrintAppOptionsSection *)v11 appOptionsViewController];
    [v17 addObserver:v11 forKeyPath:@"summary" options:0 context:0];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v11 selector:sel_thumbnailsNeedUpdate_ name:@"UIPrintThumbnailsNeedUpdateNotification" object:v9];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [v3 removeObserver:self forKeyPath:@"summary"];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintAppOptionsSection;
  [(UIPrintOptionSection *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"summary", a4, a5, a6}])
  {

    [(UIPrintOptionSection *)self updateSectionSummary];
  }
}

- (void)thumbnailsNeedUpdate:(id)a3
{
  v3 = [(UIPrintOptionSection *)self printPanelViewController];
  [v3 resetPreviewPages];
}

- (id)summaryString
{
  v2 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  v3 = [v2 summary];

  return v3;
}

- (void)didSelectPrintOptionSection
{
  v3 = [(UIPrintOptionSection *)self printPanelViewController];
  [v3 contentInsetForPreviewWithHeight:0.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [v12 setAdditionalSafeAreaInsets:{v5, v7, v9, v11}];

  v13 = [(UIPrintOptionSection *)self printPanelViewController];
  v14 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  v15 = [v14 navigationItem];
  [v13 addPrintShareButtonsToNavItem:v15];

  v18 = [(UIPrintOptionSection *)self printPanelViewController];
  v16 = [v18 printOptionsNavController];
  v17 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [v16 pushViewController:v17 animated:1];
}

- (void)previewDidChangeSize:(id)a3
{
  v4 = [a3 object];
  [v4 floatValue];
  v6 = v5;

  v16 = [(UIPrintOptionSection *)self printPanelViewController];
  [v16 contentInsetForPreviewWithHeight:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(UIPrintAppOptionsSection *)self appOptionsViewController];
  [v15 setAdditionalSafeAreaInsets:{v8, v10, v12, v14}];
}

@end