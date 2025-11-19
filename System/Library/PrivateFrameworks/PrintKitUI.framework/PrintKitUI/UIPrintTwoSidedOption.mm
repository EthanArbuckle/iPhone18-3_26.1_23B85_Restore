@interface UIPrintTwoSidedOption
- (BOOL)shouldShow;
- (UIPrintTwoSidedOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeDuplex:(int64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintTwoSidedOption

- (UIPrintTwoSidedOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = UIPrintTwoSidedOption;
  v8 = [(UIPrintOption *)&v36 initWithPrintInfo:v6 printPanelViewController:v7];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x277D750C8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Off" value:@"Off" table:@"Localizable"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke;
    v33[3] = &unk_279A9C688;
    objc_copyWeak(&v34, &location);
    v12 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v33];
    [(UIPrintTwoSidedOption *)v8 setDuplexOffAction:v12];

    v13 = MEMORY[0x277D750C8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"On" value:@"On" table:@"Localizable"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke_2;
    v31[3] = &unk_279A9C688;
    objc_copyWeak(&v32, &location);
    v16 = [v13 actionWithTitle:v15 image:0 identifier:0 handler:v31];
    [(UIPrintTwoSidedOption *)v8 setDuplexOnAction:v16];

    v17 = MEMORY[0x277D750C8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"On (Short Edge)" value:@"On (Short Edge)" table:@"Localizable"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke_3;
    v29[3] = &unk_279A9C688;
    objc_copyWeak(&v30, &location);
    v20 = [v17 actionWithTitle:v19 image:0 identifier:0 handler:v29];
    [(UIPrintTwoSidedOption *)v8 setDuplexOnShortEdgeAction:v20];

    v21 = [(UIPrintTwoSidedOption *)v8 duplexOffAction];
    v37[0] = v21;
    v22 = [(UIPrintTwoSidedOption *)v8 duplexOnAction];
    v37[1] = v22;
    v23 = [(UIPrintTwoSidedOption *)v8 duplexOnShortEdgeAction];
    v37[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [(UIPrintTwoSidedOption *)v8 setDuplexActions:v24];

    v25 = [(UIPrintOption *)v8 printInfo];
    [v25 addObserver:v8 forKeyPath:0x2871AF0F0 options:0 context:0];

    v26 = [(UIPrintOption *)v8 printInfo];
    [v26 addObserver:v8 forKeyPath:0x2871AF110 options:0 context:0];

    v27 = [(UIPrintOption *)v8 printInfo];
    [v27 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeDuplex:0];
}

void __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeDuplex:1];
}

void __68__UIPrintTwoSidedOption_initWithPrintInfo_printPanelViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeDuplex:2];
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF0F0];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF110];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF150];

  v6.receiver = self;
  v6.super_class = UIPrintTwoSidedOption;
  [(UIPrintTwoSidedOption *)&v6 dealloc];
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  if ([v3 shouldShowDuplex])
  {
    v4 = [(UIPrintOption *)self printInfo];
    v5 = [v4 currentPrinter];
    v6 = [v5 supportsDuplex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Double-sided" value:@"Double-sided" table:@"Localizable"];
  v8 = [v5 textLabel];
  [v8 setText:v7];

  [v5 setSelectionStyle:0];
  [(UIPrintTwoSidedOption *)self updateFromPrintInfo];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{0x2871AF150, a4, a5, a6}])
  {
    v7 = [(UIPrintOption *)self printInfo];
    if (([v7 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [(UIPrintOption *)self setShouldShow:0];
    }

    else
    {
      v8 = [(UIPrintOption *)self printInfo];
      v9 = [v8 currentPrinter];
      -[UIPrintOption setShouldShow:](self, "setShouldShow:", [v9 supportsDuplex]);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__UIPrintTwoSidedOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 duplex];

  switch(v4)
  {
    case 2:
      v5 = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
      goto LABEL_7;
    case 1:
      v5 = [(UIPrintTwoSidedOption *)self duplexOnAction];
      goto LABEL_7;
    case 0:
      v5 = [(UIPrintTwoSidedOption *)self duplexOffAction];
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  v7 = [(UIPrintTwoSidedOption *)self duplexOffAction];
  v8 = [(UIPrintTwoSidedOption *)self duplexOffAction];
  [v8 setState:v6 == v7];

  v9 = [(UIPrintTwoSidedOption *)self duplexOnAction];
  v10 = [(UIPrintTwoSidedOption *)self duplexOnAction];
  [v10 setState:v6 == v9];

  v11 = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
  v12 = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
  [v12 setState:v6 == v11];

  v13 = [(UIPrintOption *)self tableViewCell];
  if (v13)
  {
    v14 = [(UIPrintTwoSidedOption *)self duplexActions];
    v17[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v13 setPopupActions:v15];

    v16 = [(UIPrintOption *)self printInfo];
    [v13 setEnabled:{objc_msgSend(v16, "pageCount") > 1}];
  }
}

- (void)changeDuplex:(int64_t)a3
{
  v4 = [(UIPrintOption *)self printInfo];
  [v4 setDuplex:a3];
}

- (id)summary
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 duplex];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"Double-sided";
  }

  else
  {
    v6 = @"Single-sided";
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  return v7;
}

@end