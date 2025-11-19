@interface UIPrintQualityOption
- (BOOL)shouldShow;
- (UIPrintQualityOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)printQualities;
- (id)summaryString;
- (void)changeQuality:(int64_t)a3;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintQualityOption

- (UIPrintQualityOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v38[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = UIPrintQualityOption;
  v8 = [(UIPrintOption *)&v37 initWithPrintInfo:v6 printPanelViewController:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Print Quality" value:@"Print Quality" table:@"Localizable"];
    [(UIPrintOption *)v8 setTitle:v10];

    objc_initWeak(&location, v8);
    v11 = MEMORY[0x277D750C8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Draft" value:@"Draft" table:@"Localizable"];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke;
    v34[3] = &unk_279A9C688;
    objc_copyWeak(&v35, &location);
    v14 = [v11 actionWithTitle:v13 image:0 identifier:0 handler:v34];
    [(UIPrintQualityOption *)v8 setDraftQualityAction:v14];

    v15 = MEMORY[0x277D750C8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"Normal" value:@"Normal" table:@"Localizable"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke_2;
    v32[3] = &unk_279A9C688;
    objc_copyWeak(&v33, &location);
    v18 = [v15 actionWithTitle:v17 image:0 identifier:0 handler:v32];
    [(UIPrintQualityOption *)v8 setNormalQualityAction:v18];

    v19 = MEMORY[0x277D750C8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"Best" value:@"Best" table:@"Localizable"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke_3;
    v30[3] = &unk_279A9C688;
    objc_copyWeak(&v31, &location);
    v22 = [v19 actionWithTitle:v21 image:0 identifier:0 handler:v30];
    [(UIPrintQualityOption *)v8 setBestQualityAction:v22];

    v23 = [(UIPrintQualityOption *)v8 draftQualityAction];
    v38[0] = v23;
    v24 = [(UIPrintQualityOption *)v8 normalQualityAction];
    v38[1] = v24;
    v25 = [(UIPrintQualityOption *)v8 bestQualityAction];
    v38[2] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    [(UIPrintQualityOption *)v8 setQualityActions:v26];

    v27 = [(UIPrintOption *)v8 printInfo];
    [v27 addObserver:v8 forKeyPath:0x2871AF270 options:0 context:0];

    v28 = [(UIPrintOption *)v8 printInfo];
    [v28 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeQuality:3];
}

void __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeQuality:4];
}

void __67__UIPrintQualityOption_initWithPrintInfo_printPanelViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeQuality:5];
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF270];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintQualityOption;
  [(UIPrintQualityOption *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintQualityOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __71__UIPrintQualityOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:0x2871AF150];
  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 currentPrinterChanged];
  }

  else
  {

    return [v3 updateFromPrintInfo];
  }
}

- (id)printQualities
{
  if (!self->_qualities)
  {
    v3 = [(UIPrintOption *)self printInfo];
    v4 = [v3 currentPrinter];
    v5 = [v4 printerInfoDict];

    if (v5)
    {
      v6 = [(UIPrintOption *)self printInfo];
      v7 = [v6 currentPrinter];
      v8 = [v7 supportedQualities];
      qualities = self->_qualities;
      self->_qualities = v8;
    }
  }

  v10 = self->_qualities;

  return v10;
}

- (void)currentPrinterChanged
{
  [(UIPrintQualityOption *)self setQualities:0];

  [(UIPrintQualityOption *)self updateFromPrintInfo];
}

- (BOOL)shouldShow
{
  v2 = [(UIPrintQualityOption *)self printQualities];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)changeQuality:(int64_t)a3
{
  v4 = [(UIPrintOption *)self printInfo];
  [v4 setQuality:a3];
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  v6 = [(UIPrintOption *)self title];
  v7 = [v5 textLabel];
  [v7 setText:v6];

  [v5 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v5];
  [(UIPrintQualityOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintQualityOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v3];

  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 quality];

  switch(v5)
  {
    case 5:
      v6 = [(UIPrintQualityOption *)self bestQualityAction];
      goto LABEL_7;
    case 4:
      v6 = [(UIPrintQualityOption *)self normalQualityAction];
      goto LABEL_7;
    case 3:
      v6 = [(UIPrintQualityOption *)self draftQualityAction];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = [(UIPrintQualityOption *)self draftQualityAction];
  v9 = [(UIPrintQualityOption *)self draftQualityAction];
  [v9 setState:v7 == v8];

  v10 = [(UIPrintQualityOption *)self normalQualityAction];
  v11 = [(UIPrintQualityOption *)self normalQualityAction];
  [v11 setState:v7 == v10];

  v12 = [(UIPrintQualityOption *)self bestQualityAction];
  v13 = [(UIPrintQualityOption *)self bestQualityAction];
  [v13 setState:v7 == v12];

  v14 = [(UIPrintOption *)self tableViewCell];
  if (v14)
  {
    v15 = [(UIPrintQualityOption *)self qualityActions];
    v17[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v14 setPopupActions:v16];
  }
}

- (id)summaryString
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 quality];

  if (v4 == 3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"Draft";
  }

  else
  {
    v8 = [(UIPrintOption *)self printInfo];
    v9 = [v8 quality];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v9 == 5)
    {
      v7 = @"Best";
    }

    else
    {
      v7 = @"Normal";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"%@ Quality" value:@"%@ Quality" table:@"Localizable"];
  v14 = [v11 stringWithFormat:v13, v10];

  return v14;
}

@end