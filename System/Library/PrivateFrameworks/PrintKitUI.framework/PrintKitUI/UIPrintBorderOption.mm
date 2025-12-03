@interface UIPrintBorderOption
- (UIPrintBorderOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintBorderOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF310];

  v4.receiver = self;
  v4.super_class = UIPrintBorderOption;
  [(UIPrintBorderOption *)&v4 dealloc];
}

- (UIPrintBorderOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v50[5] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = UIPrintBorderOption;
  infoCopy = info;
  controllerCopy = controller;
  v5 = [(UIPrintOption *)&v49 initWithPrintInfo:infoCopy printPanelViewController:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Border" value:@"Border" table:@"Localizable"];
    [(UIPrintOption *)v5 setTitle:v7];

    objc_initWeak(&location, v5);
    v8 = MEMORY[0x277D750C8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"No Layout Border" value:@"No Layout Border" table:@"Localizable"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke;
    v46[3] = &unk_279A9C688;
    objc_copyWeak(&v47, &location);
    v11 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v46];
    [(UIPrintBorderOption *)v5 setNoBorderAction:v11];

    v12 = MEMORY[0x277D750C8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"Single Hairline" value:@"Single Hairline" table:@"Localizable"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_2;
    v44[3] = &unk_279A9C688;
    objc_copyWeak(&v45, &location);
    v15 = [v12 actionWithTitle:v14 image:0 identifier:0 handler:v44];
    [(UIPrintBorderOption *)v5 setSingleHairlineAction:v15];

    v16 = MEMORY[0x277D750C8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"Single Thin Line" value:@"Single Thin Line" table:@"Localizable"];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_3;
    v42[3] = &unk_279A9C688;
    objc_copyWeak(&v43, &location);
    v19 = [v16 actionWithTitle:v18 image:0 identifier:0 handler:v42];
    [(UIPrintBorderOption *)v5 setSingleThinlineAction:v19];

    v20 = MEMORY[0x277D750C8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"Double Hairline" value:@"Double Hairline" table:@"Localizable"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_4;
    v40[3] = &unk_279A9C688;
    objc_copyWeak(&v41, &location);
    v23 = [v20 actionWithTitle:v22 image:0 identifier:0 handler:v40];
    [(UIPrintBorderOption *)v5 setDoubleHairlineAction:v23];

    v24 = MEMORY[0x277D750C8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"Double Thin Line" value:@"Double Thin Line" table:@"Localizable"];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_5;
    v38[3] = &unk_279A9C688;
    objc_copyWeak(&v39, &location);
    v27 = [v24 actionWithTitle:v26 image:0 identifier:0 handler:v38];
    [(UIPrintBorderOption *)v5 setDoubleThinlineAction:v27];

    noBorderAction = [(UIPrintBorderOption *)v5 noBorderAction];
    v50[0] = noBorderAction;
    singleHairlineAction = [(UIPrintBorderOption *)v5 singleHairlineAction];
    v50[1] = singleHairlineAction;
    singleThinlineAction = [(UIPrintBorderOption *)v5 singleThinlineAction];
    v50[2] = singleThinlineAction;
    doubleHairlineAction = [(UIPrintBorderOption *)v5 doubleHairlineAction];
    v50[3] = doubleHairlineAction;
    doubleThinlineAction = [(UIPrintBorderOption *)v5 doubleThinlineAction];
    v50[4] = doubleThinlineAction;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
    [(UIPrintBorderOption *)v5 setBorderActions:v33];

    printInfo = [(UIPrintOption *)v5 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF310 options:0 context:0];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setBorderType:0];
}

void __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setBorderType:1];
}

void __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setBorderType:2];
}

void __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setBorderType:3];
}

void __66__UIPrintBorderOption_initWithPrintInfo_printPanelViewController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setBorderType:4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__UIPrintBorderOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  v21[1] = *MEMORY[0x277D85DE8];
  summaryString = [(UIPrintBorderOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];

  printInfo = [(UIPrintOption *)self printInfo];
  borderType = [printInfo borderType];

  v6 = 0;
  if (borderType <= 1)
  {
    if (borderType)
    {
      if (borderType != 1)
      {
        goto LABEL_13;
      }

      singleHairlineAction = [(UIPrintBorderOption *)self singleHairlineAction];
    }

    else
    {
      singleHairlineAction = [(UIPrintBorderOption *)self noBorderAction];
    }
  }

  else
  {
    switch(borderType)
    {
      case 2:
        singleHairlineAction = [(UIPrintBorderOption *)self singleThinlineAction];
        break;
      case 3:
        singleHairlineAction = [(UIPrintBorderOption *)self doubleHairlineAction];
        break;
      case 4:
        singleHairlineAction = [(UIPrintBorderOption *)self doubleThinlineAction];
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = singleHairlineAction;
LABEL_13:
  noBorderAction = [(UIPrintBorderOption *)self noBorderAction];
  noBorderAction2 = [(UIPrintBorderOption *)self noBorderAction];
  [noBorderAction2 setState:v6 == noBorderAction];

  singleHairlineAction2 = [(UIPrintBorderOption *)self singleHairlineAction];
  singleHairlineAction3 = [(UIPrintBorderOption *)self singleHairlineAction];
  [singleHairlineAction3 setState:v6 == singleHairlineAction2];

  singleThinlineAction = [(UIPrintBorderOption *)self singleThinlineAction];
  singleThinlineAction2 = [(UIPrintBorderOption *)self singleThinlineAction];
  [singleThinlineAction2 setState:v6 == singleThinlineAction];

  doubleHairlineAction = [(UIPrintBorderOption *)self doubleHairlineAction];
  doubleHairlineAction2 = [(UIPrintBorderOption *)self doubleHairlineAction];
  [doubleHairlineAction2 setState:v6 == doubleHairlineAction];

  doubleThinlineAction = [(UIPrintBorderOption *)self doubleThinlineAction];
  doubleThinlineAction2 = [(UIPrintBorderOption *)self doubleThinlineAction];
  [doubleThinlineAction2 setState:v6 == doubleThinlineAction];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    borderActions = [(UIPrintBorderOption *)self borderActions];
    v21[0] = borderActions;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [tableViewCell setPopupActions:v20];
  }
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  title = [(UIPrintOption *)self title];
  textLabel = [v5 textLabel];
  [textLabel setText:title];

  [v5 setSelectionStyle:0];
  [(UIPrintBorderOption *)self updateFromPrintInfo];

  return v5;
}

- (id)summaryString
{
  printInfo = [(UIPrintOption *)self printInfo];
  borderType = [printInfo borderType];

  v4 = 0;
  if (borderType > 2)
  {
    if (borderType == 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"Double Hairline Border";
    }

    else
    {
      if (borderType != 4)
      {
        goto LABEL_11;
      }

      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"Double Thin Line Border";
    }
  }

  else if (borderType == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"Single Hairline Border";
  }

  else
  {
    if (borderType != 2)
    {
      goto LABEL_11;
    }

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"Single Thin Line Border";
  }

  v4 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];

LABEL_11:

  return v4;
}

@end