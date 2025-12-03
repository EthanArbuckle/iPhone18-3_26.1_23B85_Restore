@interface UIPrintTwoSidedOption
- (BOOL)shouldShow;
- (UIPrintTwoSidedOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeDuplex:(int64_t)duplex;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintTwoSidedOption

- (UIPrintTwoSidedOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v37[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  controllerCopy = controller;
  v36.receiver = self;
  v36.super_class = UIPrintTwoSidedOption;
  v8 = [(UIPrintOption *)&v36 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
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

    duplexOffAction = [(UIPrintTwoSidedOption *)v8 duplexOffAction];
    v37[0] = duplexOffAction;
    duplexOnAction = [(UIPrintTwoSidedOption *)v8 duplexOnAction];
    v37[1] = duplexOnAction;
    duplexOnShortEdgeAction = [(UIPrintTwoSidedOption *)v8 duplexOnShortEdgeAction];
    v37[2] = duplexOnShortEdgeAction;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [(UIPrintTwoSidedOption *)v8 setDuplexActions:v24];

    printInfo = [(UIPrintOption *)v8 printInfo];
    [printInfo addObserver:v8 forKeyPath:0x2871AF0F0 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v8 printInfo];
    [printInfo2 addObserver:v8 forKeyPath:0x2871AF110 options:0 context:0];

    printInfo3 = [(UIPrintOption *)v8 printInfo];
    [printInfo3 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

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
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF0F0];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF110];

  printInfo3 = [(UIPrintOption *)self printInfo];
  [printInfo3 removeObserver:self forKeyPath:0x2871AF150];

  v6.receiver = self;
  v6.super_class = UIPrintTwoSidedOption;
  [(UIPrintTwoSidedOption *)&v6 dealloc];
}

- (BOOL)shouldShow
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  if ([printPanelViewController shouldShowDuplex])
  {
    printInfo = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo currentPrinter];
    supportsDuplex = [currentPrinter supportsDuplex];
  }

  else
  {
    supportsDuplex = 0;
  }

  return supportsDuplex;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Double-sided" value:@"Double-sided" table:@"Localizable"];
  textLabel = [v5 textLabel];
  [textLabel setText:v7];

  [v5 setSelectionStyle:0];
  [(UIPrintTwoSidedOption *)self updateFromPrintInfo];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{0x2871AF150, object, change, context}])
  {
    printInfo = [(UIPrintOption *)self printInfo];
    if (([printInfo outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [(UIPrintOption *)self setShouldShow:0];
    }

    else
    {
      printInfo2 = [(UIPrintOption *)self printInfo];
      currentPrinter = [printInfo2 currentPrinter];
      -[UIPrintOption setShouldShow:](self, "setShouldShow:", [currentPrinter supportsDuplex]);
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
  printInfo = [(UIPrintOption *)self printInfo];
  duplex = [printInfo duplex];

  switch(duplex)
  {
    case 2:
      duplexOnShortEdgeAction = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
      goto LABEL_7;
    case 1:
      duplexOnShortEdgeAction = [(UIPrintTwoSidedOption *)self duplexOnAction];
      goto LABEL_7;
    case 0:
      duplexOnShortEdgeAction = [(UIPrintTwoSidedOption *)self duplexOffAction];
LABEL_7:
      v6 = duplexOnShortEdgeAction;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  duplexOffAction = [(UIPrintTwoSidedOption *)self duplexOffAction];
  duplexOffAction2 = [(UIPrintTwoSidedOption *)self duplexOffAction];
  [duplexOffAction2 setState:v6 == duplexOffAction];

  duplexOnAction = [(UIPrintTwoSidedOption *)self duplexOnAction];
  duplexOnAction2 = [(UIPrintTwoSidedOption *)self duplexOnAction];
  [duplexOnAction2 setState:v6 == duplexOnAction];

  duplexOnShortEdgeAction2 = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
  duplexOnShortEdgeAction3 = [(UIPrintTwoSidedOption *)self duplexOnShortEdgeAction];
  [duplexOnShortEdgeAction3 setState:v6 == duplexOnShortEdgeAction2];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    duplexActions = [(UIPrintTwoSidedOption *)self duplexActions];
    v17[0] = duplexActions;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [tableViewCell setPopupActions:v15];

    printInfo2 = [(UIPrintOption *)self printInfo];
    [tableViewCell setEnabled:{objc_msgSend(printInfo2, "pageCount") > 1}];
  }
}

- (void)changeDuplex:(int64_t)duplex
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setDuplex:duplex];
}

- (id)summary
{
  printInfo = [(UIPrintOption *)self printInfo];
  duplex = [printInfo duplex];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (duplex)
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