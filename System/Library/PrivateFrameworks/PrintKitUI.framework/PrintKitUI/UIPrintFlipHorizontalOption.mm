@interface UIPrintFlipHorizontalOption
- (UIPrintFlipHorizontalOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)flipHorizontalSelected:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFlipHorizontalOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF350];

  v4.receiver = self;
  v4.super_class = UIPrintFlipHorizontalOption;
  [(UIPrintFlipHorizontalOption *)&v4 dealloc];
}

- (UIPrintFlipHorizontalOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIPrintFlipHorizontalOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printInfo];
    [v6 addObserver:v5 forKeyPath:0x2871AF350 options:0 context:0];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [v5 setSelectionStyle:0];
  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Flip Horizontally" value:@"Flip Horizontally" table:@"Localizable"];
  [v6 setText:v8];

  [v5 setContentConfiguration:v6];
  v9 = objc_alloc(MEMORY[0x277D75AE8]);
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintFlipHorizontalOption *)self setFlipHorizontalSwitch:v10];

  v11 = [(UIPrintOption *)self printPanelViewController];
  v12 = [v11 controlTintColor];
  v13 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v13 setOnTintColor:v12];

  v14 = [(UIPrintOption *)self printInfo];
  v15 = [v14 flipHorizontal];
  v16 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v16 setOn:v15];

  v17 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v17 addTarget:self action:sel_flipHorizontalSelected_ forControlEvents:4096];

  v18 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v5 setAccessoryView:v18];

  [(UIPrintOption *)self setTableViewCell:v5];
  v19 = [(UIPrintFlipHorizontalOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v19];

  return v5;
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 flipHorizontal];
  v5 = [(UIPrintFlipHorizontalOption *)self flipHorizontalSwitch];
  [v5 setOn:v4];

  v6 = [(UIPrintFlipHorizontalOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v6];
}

- (void)flipHorizontalSelected:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(UIPrintOption *)self printInfo];
  [v5 setFlipHorizontal:v4];
}

- (id)summaryString
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 flipHorizontal];

  if (v3)
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