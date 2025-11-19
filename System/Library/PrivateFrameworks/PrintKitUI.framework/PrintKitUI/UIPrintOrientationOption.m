@interface UIPrintOrientationOption
- (UIPrintOrientationOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeOrientation:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintOrientationOption

- (UIPrintOrientationOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIPrintOrientationOption;
  v4 = [(UIPrintOption *)&v9 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printPanelViewController];
    -[UIPrintOption setShouldShow:](v5, "setShouldShow:", [v6 shouldShowOrientation]);

    v7 = [(UIPrintOption *)v5 printInfo];
    [v7 addObserver:v5 forKeyPath:0x2871AF0D0 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF0D0];

  v4.receiver = self;
  v4.super_class = UIPrintOrientationOption;
  [(UIPrintOrientationOption *)&v4 dealloc];
}

- (id)createPrintOptionTableViewCell
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [v5 setSelectionStyle:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Orientation" value:@"Orientation" table:@"Localizable"];
  v8 = [v5 textLabel];
  [v8 setText:v7];

  v9 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Orientation" value:@"Orientation" table:@"Localizable"];
  [v9 setText:v11];

  v12 = [(UIPrintOrientationOption *)self summary];
  [v9 setSecondaryText:v12];

  [v5 setContentConfiguration:v9];
  v13 = objc_alloc(MEMORY[0x277D75A08]);
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.and.person.rectangle.portrait"];
  v24[0] = v14;
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.and.person.rectangle.turn.right"];
  v24[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v17 = [v13 initWithItems:v16];
  [(UIPrintOrientationOption *)self setOrientationSegmentedControl:v17];

  v18 = [(UIPrintOption *)self printInfo];
  v19 = [v18 orientation] != 0;
  v20 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [v20 setSelectedSegmentIndex:v19];

  v21 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [v21 addTarget:self action:sel_changeOrientation_ forControlEvents:4096];

  v22 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [v5 setAccessoryView:v22];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UIPrintOrientationOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 orientation] != 0;
  v5 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [v5 setSelectedSegmentIndex:v4];

  v6 = [(UIPrintOption *)self tableViewCell];
  v9 = [v6 contentConfiguration];

  v7 = [(UIPrintOrientationOption *)self summary];
  [v9 setSecondaryText:v7];

  v8 = [(UIPrintOption *)self tableViewCell];
  [v8 setContentConfiguration:v9];
}

- (void)changeOrientation:(id)a3
{
  v4 = [a3 selectedSegmentIndex] != 0;
  v5 = [(UIPrintOption *)self printInfo];
  v6 = [v5 printPaper];
  [v6 setPaperOrientation:v4];

  v7 = [(UIPrintOption *)self printPanelViewController];
  v8 = [v7 printInteractionController];
  v9 = [v8 paper];
  [v9 setPaperOrientation:v4];

  v10 = [(UIPrintOption *)self printInfo];
  [v10 setOrientation:v4];
}

- (id)summary
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 orientation];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"Landscape";
  }

  else
  {
    v6 = @"Portrait";
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  return v7;
}

@end