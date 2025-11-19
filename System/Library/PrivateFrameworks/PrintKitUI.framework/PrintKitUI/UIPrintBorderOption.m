@interface UIPrintBorderOption
- (UIPrintBorderOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintBorderOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF310];

  v4.receiver = self;
  v4.super_class = UIPrintBorderOption;
  [(UIPrintBorderOption *)&v4 dealloc];
}

- (UIPrintBorderOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v50[5] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = UIPrintBorderOption;
  v36 = a3;
  v37 = a4;
  v5 = [(UIPrintOption *)&v49 initWithPrintInfo:v36 printPanelViewController:?];
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

    v28 = [(UIPrintBorderOption *)v5 noBorderAction];
    v50[0] = v28;
    v29 = [(UIPrintBorderOption *)v5 singleHairlineAction];
    v50[1] = v29;
    v30 = [(UIPrintBorderOption *)v5 singleThinlineAction];
    v50[2] = v30;
    v31 = [(UIPrintBorderOption *)v5 doubleHairlineAction];
    v50[3] = v31;
    v32 = [(UIPrintBorderOption *)v5 doubleThinlineAction];
    v50[4] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
    [(UIPrintBorderOption *)v5 setBorderActions:v33];

    v34 = [(UIPrintOption *)v5 printInfo];
    [v34 addObserver:v5 forKeyPath:0x2871AF310 options:0 context:0];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v3 = [(UIPrintBorderOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v3];

  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 borderType];

  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v7 = [(UIPrintBorderOption *)self singleHairlineAction];
    }

    else
    {
      v7 = [(UIPrintBorderOption *)self noBorderAction];
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v7 = [(UIPrintBorderOption *)self singleThinlineAction];
        break;
      case 3:
        v7 = [(UIPrintBorderOption *)self doubleHairlineAction];
        break;
      case 4:
        v7 = [(UIPrintBorderOption *)self doubleThinlineAction];
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v7;
LABEL_13:
  v8 = [(UIPrintBorderOption *)self noBorderAction];
  v9 = [(UIPrintBorderOption *)self noBorderAction];
  [v9 setState:v6 == v8];

  v10 = [(UIPrintBorderOption *)self singleHairlineAction];
  v11 = [(UIPrintBorderOption *)self singleHairlineAction];
  [v11 setState:v6 == v10];

  v12 = [(UIPrintBorderOption *)self singleThinlineAction];
  v13 = [(UIPrintBorderOption *)self singleThinlineAction];
  [v13 setState:v6 == v12];

  v14 = [(UIPrintBorderOption *)self doubleHairlineAction];
  v15 = [(UIPrintBorderOption *)self doubleHairlineAction];
  [v15 setState:v6 == v14];

  v16 = [(UIPrintBorderOption *)self doubleThinlineAction];
  v17 = [(UIPrintBorderOption *)self doubleThinlineAction];
  [v17 setState:v6 == v16];

  v18 = [(UIPrintOption *)self tableViewCell];
  if (v18)
  {
    v19 = [(UIPrintBorderOption *)self borderActions];
    v21[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v18 setPopupActions:v20];
  }
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  v6 = [(UIPrintOption *)self title];
  v7 = [v5 textLabel];
  [v7 setText:v6];

  [v5 setSelectionStyle:0];
  [(UIPrintBorderOption *)self updateFromPrintInfo];

  return v5;
}

- (id)summaryString
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 borderType];

  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"Double Hairline Border";
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"Double Thin Line Border";
    }
  }

  else if (v3 == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"Single Hairline Border";
  }

  else
  {
    if (v3 != 2)
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