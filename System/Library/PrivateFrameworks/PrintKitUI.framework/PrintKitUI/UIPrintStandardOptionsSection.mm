@interface UIPrintStandardOptionsSection
- (BOOL)updatePrintOptionsList;
- (UIPrintStandardOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setShowContactingPrinter:(BOOL)printer;
@end

@implementation UIPrintStandardOptionsSection

- (UIPrintStandardOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = UIPrintStandardOptionsSection;
  v8 = [(UIPrintOptionSection *)&v14 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setTitle:&stru_2871AE610];
    v10 = [[UIPrinterSelectionOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintStandardOptionsSection *)v9 setPrinterSelectionOption:v10];

    v11 = [[UIPrintPresetsOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintStandardOptionsSection *)v9 setPresetsOption:v11];

    [(UIPrintStandardOptionsSection *)v9 updatePrintOptionsList];
    presetsOption = [(UIPrintStandardOptionsSection *)v9 presetsOption];
    [presetsOption addObserver:v9 forKeyPath:@"shouldShow" options:0 context:0];
  }

  return v9;
}

- (void)dealloc
{
  presetsOption = [(UIPrintStandardOptionsSection *)self presetsOption];
  [presetsOption removeObserver:self forKeyPath:@"shouldShow"];

  v4.receiver = self;
  v4.super_class = UIPrintStandardOptionsSection;
  [(UIPrintOptionSection *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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
  printerSelectionOption = [(UIPrintStandardOptionsSection *)self printerSelectionOption];
  [v3 addObject:printerSelectionOption];

  presetsOption = [(UIPrintStandardOptionsSection *)self presetsOption];
  shouldShow = [presetsOption shouldShow];

  if (shouldShow)
  {
    presetsOption2 = [(UIPrintStandardOptionsSection *)self presetsOption];
    [v3 addObject:presetsOption2];
  }

  printOptions = [(UIPrintOptionSection *)self printOptions];
  v9 = [printOptions isEqualToArray:v3];

  if ((v9 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
  }

  return v9 ^ 1;
}

- (void)setShowContactingPrinter:(BOOL)printer
{
  printerCopy = printer;
  printerSelectionOption = [(UIPrintStandardOptionsSection *)self printerSelectionOption];
  [printerSelectionOption setShowContactingPrinter:printerCopy];
}

@end