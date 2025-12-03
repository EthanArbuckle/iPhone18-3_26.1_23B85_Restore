@interface UIPrintFlipHorizontalOption
- (UIPrintFlipHorizontalOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)flipHorizontalSelected:(id)selected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFlipHorizontalOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF350];

  v4.receiver = self;
  v4.super_class = UIPrintFlipHorizontalOption;
  [(UIPrintFlipHorizontalOption *)&v4 dealloc];
}

- (UIPrintFlipHorizontalOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = UIPrintFlipHorizontalOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:info printPanelViewController:controller];
  v5 = v4;
  if (v4)
  {
    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF350 options:0 context:0];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__UIPrintFlipHorizontalOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [v5 setSelectionStyle:0];
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Flip Horizontally" value:@"Flip Horizontally" table:@"Localizable"];
  [valueCellConfiguration setText:v8];

  [v5 setContentConfiguration:valueCellConfiguration];
  v9 = objc_alloc(MEMORY[0x277D75AE8]);
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintFlipHorizontalOption *)self setFlipHorizontalSwitch:v10];

  printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
  controlTintColor = [printPanelViewController2 controlTintColor];
  flipHorizontalSwitch = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [flipHorizontalSwitch setOnTintColor:controlTintColor];

  printInfo = [(UIPrintOption *)self printInfo];
  flipHorizontal = [printInfo flipHorizontal];
  flipHorizontalSwitch2 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [flipHorizontalSwitch2 setOn:flipHorizontal];

  flipHorizontalSwitch3 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [flipHorizontalSwitch3 addTarget:self action:sel_flipHorizontalSelected_ forControlEvents:4096];

  flipHorizontalSwitch4 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v5 setAccessoryView:flipHorizontalSwitch4];

  [(UIPrintOption *)self setTableViewCell:v5];
  summaryString = [(UIPrintFlipHorizontalOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];

  return v5;
}

- (void)updateFromPrintInfo
{
  printInfo = [(UIPrintOption *)self printInfo];
  flipHorizontal = [printInfo flipHorizontal];
  flipHorizontalSwitch = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [flipHorizontalSwitch setOn:flipHorizontal];

  summaryString = [(UIPrintFlipHorizontalOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];
}

- (void)flipHorizontalSelected:(id)selected
{
  isOn = [selected isOn];
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setFlipHorizontal:isOn];
}

- (id)summaryString
{
  printInfo = [(UIPrintOption *)self printInfo];
  flipHorizontal = [printInfo flipHorizontal];

  if (flipHorizontal)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Flipped Horizontally" value:@"Flipped Horizontally" table:@"Localizable"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end