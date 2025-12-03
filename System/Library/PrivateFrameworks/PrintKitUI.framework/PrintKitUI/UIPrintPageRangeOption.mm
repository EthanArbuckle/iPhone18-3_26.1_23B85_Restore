@interface UIPrintPageRangeOption
- (BOOL)shouldShow;
- (UIPrintPageRangeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)printOptionDetailView;
- (id)summary;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintPageRangeOption

- (UIPrintPageRangeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = UIPrintPageRangeOption;
  v4 = [(UIPrintOption *)&v9 initWithPrintInfo:info printPanelViewController:controller];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"RANGE_SHEET_TITLE" value:@"Page Range" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v4 forKeyPath:0x2871AF1B0 options:0 context:0];
  }

  return v4;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF1B0];

  v4.receiver = self;
  v4.super_class = UIPrintPageRangeOption;
  [(UIPrintPageRangeOption *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__UIPrintPageRangeOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)shouldShow
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  shouldShowPageRange = [printPanelViewController shouldShowPageRange];

  return shouldShowPageRange;
}

- (void)updateFromPrintInfo
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  contentConfiguration = [tableViewCell contentConfiguration];

  summary = [(UIPrintPageRangeOption *)self summary];
  [contentConfiguration setSecondaryText:summary];

  tableViewCell2 = [(UIPrintOption *)self tableViewCell];
  [tableViewCell2 setContentConfiguration:contentConfiguration];

  printInfo = [(UIPrintOption *)self printInfo];
  v7 = [printInfo pageCount] > 1;
  tableViewCell3 = [(UIPrintOption *)self tableViewCell];
  [tableViewCell3 setEnabled:v7];
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionViewCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Range" value:@"Range" table:@"Localizable"];
  [valueCellConfiguration setText:v8];

  summary = [(UIPrintPageRangeOption *)self summary];
  [valueCellConfiguration setSecondaryText:summary];

  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setNumberOfLines:0];

  [v5 setContentConfiguration:valueCellConfiguration];
  [v5 setOptionViewDelegate:self];
  printInfo = [(UIPrintOption *)self printInfo];
  [v5 setEnabled:{objc_msgSend(printInfo, "pageCount") > 1}];

  return v5;
}

- (id)printOptionDetailView
{
  v3 = [UIPrintRangeView alloc];
  printInfo = [(UIPrintOption *)self printInfo];
  v5 = [(UIPrintRangeView *)v3 initWithFrame:printInfo printInfo:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(UIPrintPageRangeOption *)self setPageRangeView:v5];

  return [(UIPrintPageRangeOption *)self pageRangeView];
}

- (id)summary
{
  printInfo = [(UIPrintOption *)self printInfo];
  pageRanges = [printInfo pageRanges];
  v4 = SummaryForRange(pageRanges);

  return v4;
}

- (void)didSelectPrintOption
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  [tableViewCell printOptionCellTapped];
}

@end