@interface UIPrintPageRangeOption
- (BOOL)shouldShow;
- (UIPrintPageRangeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)printOptionDetailView;
- (id)summary;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintPageRangeOption

- (UIPrintPageRangeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIPrintPageRangeOption;
  v4 = [(UIPrintOption *)&v9 initWithPrintInfo:a3 printPanelViewController:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"RANGE_SHEET_TITLE" value:@"Page Range" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    v7 = [(UIPrintOption *)v4 printInfo];
    [v7 addObserver:v4 forKeyPath:0x2871AF1B0 options:0 context:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF1B0];

  v4.receiver = self;
  v4.super_class = UIPrintPageRangeOption;
  [(UIPrintPageRangeOption *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v2 = [(UIPrintOption *)self printPanelViewController];
  v3 = [v2 shouldShowPageRange];

  return v3;
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintOption *)self tableViewCell];
  v9 = [v3 contentConfiguration];

  v4 = [(UIPrintPageRangeOption *)self summary];
  [v9 setSecondaryText:v4];

  v5 = [(UIPrintOption *)self tableViewCell];
  [v5 setContentConfiguration:v9];

  v6 = [(UIPrintOption *)self printInfo];
  v7 = [v6 pageCount] > 1;
  v8 = [(UIPrintOption *)self tableViewCell];
  [v8 setEnabled:v7];
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionViewCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Range" value:@"Range" table:@"Localizable"];
  [v6 setText:v8];

  v9 = [(UIPrintPageRangeOption *)self summary];
  [v6 setSecondaryText:v9];

  v10 = [v6 secondaryTextProperties];
  [v10 setNumberOfLines:0];

  [v5 setContentConfiguration:v6];
  [v5 setOptionViewDelegate:self];
  v11 = [(UIPrintOption *)self printInfo];
  [v5 setEnabled:{objc_msgSend(v11, "pageCount") > 1}];

  return v5;
}

- (id)printOptionDetailView
{
  v3 = [UIPrintRangeView alloc];
  v4 = [(UIPrintOption *)self printInfo];
  v5 = [(UIPrintRangeView *)v3 initWithFrame:v4 printInfo:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(UIPrintPageRangeOption *)self setPageRangeView:v5];

  return [(UIPrintPageRangeOption *)self pageRangeView];
}

- (id)summary
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 pageRanges];
  v4 = SummaryForRange(v3);

  return v4;
}

- (void)didSelectPrintOption
{
  v2 = [(UIPrintOption *)self tableViewCell];
  [v2 printOptionCellTapped];
}

@end