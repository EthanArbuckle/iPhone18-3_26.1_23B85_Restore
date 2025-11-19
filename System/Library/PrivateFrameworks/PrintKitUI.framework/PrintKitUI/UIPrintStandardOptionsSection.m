@interface UIPrintStandardOptionsSection
- (BOOL)updatePrintOptionsList;
- (UIPrintStandardOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setShowContactingPrinter:(BOOL)a3;
@end

@implementation UIPrintStandardOptionsSection

- (UIPrintStandardOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIPrintStandardOptionsSection;
  v8 = [(UIPrintOptionSection *)&v14 initWithPrintInfo:v6 printPanelViewController:v7];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setTitle:&stru_2871AE610];
    v10 = [[UIPrinterSelectionOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintStandardOptionsSection *)v9 setPrinterSelectionOption:v10];

    v11 = [[UIPrintPresetsOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintStandardOptionsSection *)v9 setPresetsOption:v11];

    [(UIPrintStandardOptionsSection *)v9 updatePrintOptionsList];
    v12 = [(UIPrintStandardOptionsSection *)v9 presetsOption];
    [v12 addObserver:v9 forKeyPath:@"shouldShow" options:0 context:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(UIPrintStandardOptionsSection *)self presetsOption];
  [v3 removeObserver:self forKeyPath:@"shouldShow"];

  v4.receiver = self;
  v4.super_class = UIPrintStandardOptionsSection;
  [(UIPrintOptionSection *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__UIPrintStandardOptionsSection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v4 = [(UIPrintStandardOptionsSection *)self printerSelectionOption];
  [v3 addObject:v4];

  v5 = [(UIPrintStandardOptionsSection *)self presetsOption];
  v6 = [v5 shouldShow];

  if (v6)
  {
    v7 = [(UIPrintStandardOptionsSection *)self presetsOption];
    [v3 addObject:v7];
  }

  v8 = [(UIPrintOptionSection *)self printOptions];
  v9 = [v8 isEqualToArray:v3];

  if ((v9 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
  }

  return v9 ^ 1;
}

- (void)setShowContactingPrinter:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPrintStandardOptionsSection *)self printerSelectionOption];
  [v4 setShowContactingPrinter:v3];
}

@end