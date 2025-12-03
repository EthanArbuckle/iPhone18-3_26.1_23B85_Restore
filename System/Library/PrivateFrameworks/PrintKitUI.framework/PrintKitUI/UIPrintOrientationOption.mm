@interface UIPrintOrientationOption
- (UIPrintOrientationOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeOrientation:(id)orientation;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintOrientationOption

- (UIPrintOrientationOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = UIPrintOrientationOption;
  v4 = [(UIPrintOption *)&v9 initWithPrintInfo:info printPanelViewController:controller];
  v5 = v4;
  if (v4)
  {
    printPanelViewController = [(UIPrintOption *)v4 printPanelViewController];
    -[UIPrintOption setShouldShow:](v5, "setShouldShow:", [printPanelViewController shouldShowOrientation]);

    printInfo = [(UIPrintOption *)v5 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF0D0 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF0D0];

  v4.receiver = self;
  v4.super_class = UIPrintOrientationOption;
  [(UIPrintOrientationOption *)&v4 dealloc];
}

- (id)createPrintOptionTableViewCell
{
  v24[2] = *MEMORY[0x277D85DE8];
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [v5 setSelectionStyle:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Orientation" value:@"Orientation" table:@"Localizable"];
  textLabel = [v5 textLabel];
  [textLabel setText:v7];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Orientation" value:@"Orientation" table:@"Localizable"];
  [valueCellConfiguration setText:v11];

  summary = [(UIPrintOrientationOption *)self summary];
  [valueCellConfiguration setSecondaryText:summary];

  [v5 setContentConfiguration:valueCellConfiguration];
  v13 = objc_alloc(MEMORY[0x277D75A08]);
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.and.person.rectangle.portrait"];
  v24[0] = v14;
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.and.person.rectangle.turn.right"];
  v24[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v17 = [v13 initWithItems:v16];
  [(UIPrintOrientationOption *)self setOrientationSegmentedControl:v17];

  printInfo = [(UIPrintOption *)self printInfo];
  v19 = [printInfo orientation] != 0;
  orientationSegmentedControl = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [orientationSegmentedControl setSelectedSegmentIndex:v19];

  orientationSegmentedControl2 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [orientationSegmentedControl2 addTarget:self action:sel_changeOrientation_ forControlEvents:4096];

  orientationSegmentedControl3 = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [v5 setAccessoryView:orientationSegmentedControl3];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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
  printInfo = [(UIPrintOption *)self printInfo];
  v4 = [printInfo orientation] != 0;
  orientationSegmentedControl = [(UIPrintOrientationOption *)self orientationSegmentedControl];
  [orientationSegmentedControl setSelectedSegmentIndex:v4];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  contentConfiguration = [tableViewCell contentConfiguration];

  summary = [(UIPrintOrientationOption *)self summary];
  [contentConfiguration setSecondaryText:summary];

  tableViewCell2 = [(UIPrintOption *)self tableViewCell];
  [tableViewCell2 setContentConfiguration:contentConfiguration];
}

- (void)changeOrientation:(id)orientation
{
  v4 = [orientation selectedSegmentIndex] != 0;
  printInfo = [(UIPrintOption *)self printInfo];
  printPaper = [printInfo printPaper];
  [printPaper setPaperOrientation:v4];

  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printInteractionController = [printPanelViewController printInteractionController];
  paper = [printInteractionController paper];
  [paper setPaperOrientation:v4];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 setOrientation:v4];
}

- (id)summary
{
  printInfo = [(UIPrintOption *)self printInfo];
  orientation = [printInfo orientation];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (orientation)
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