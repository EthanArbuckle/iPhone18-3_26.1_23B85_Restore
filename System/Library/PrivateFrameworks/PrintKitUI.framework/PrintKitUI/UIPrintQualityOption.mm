@interface UIPrintQualityOption
- (BOOL)shouldShow;
- (UIPrintQualityOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)printQualities;
- (id)summaryString;
- (void)changeQuality:(int64_t)quality;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintQualityOption

- (UIPrintQualityOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v38[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  controllerCopy = controller;
  v37.receiver = self;
  v37.super_class = UIPrintQualityOption;
  v8 = [(UIPrintOption *)&v37 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
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

    draftQualityAction = [(UIPrintQualityOption *)v8 draftQualityAction];
    v38[0] = draftQualityAction;
    normalQualityAction = [(UIPrintQualityOption *)v8 normalQualityAction];
    v38[1] = normalQualityAction;
    bestQualityAction = [(UIPrintQualityOption *)v8 bestQualityAction];
    v38[2] = bestQualityAction;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    [(UIPrintQualityOption *)v8 setQualityActions:v26];

    printInfo = [(UIPrintOption *)v8 printInfo];
    [printInfo addObserver:v8 forKeyPath:0x2871AF270 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v8 printInfo];
    [printInfo2 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

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
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF270];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintQualityOption;
  [(UIPrintQualityOption *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintQualityOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
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
    printInfo = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo currentPrinter];
    printerInfoDict = [currentPrinter printerInfoDict];

    if (printerInfoDict)
    {
      printInfo2 = [(UIPrintOption *)self printInfo];
      currentPrinter2 = [printInfo2 currentPrinter];
      supportedQualities = [currentPrinter2 supportedQualities];
      qualities = self->_qualities;
      self->_qualities = supportedQualities;
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
  printQualities = [(UIPrintQualityOption *)self printQualities];
  v3 = [printQualities count] > 1;

  return v3;
}

- (void)changeQuality:(int64_t)quality
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setQuality:quality];
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  title = [(UIPrintOption *)self title];
  textLabel = [v5 textLabel];
  [textLabel setText:title];

  [v5 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v5];
  [(UIPrintQualityOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  v17[1] = *MEMORY[0x277D85DE8];
  summaryString = [(UIPrintQualityOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];

  printInfo = [(UIPrintOption *)self printInfo];
  quality = [printInfo quality];

  switch(quality)
  {
    case 5:
      bestQualityAction = [(UIPrintQualityOption *)self bestQualityAction];
      goto LABEL_7;
    case 4:
      bestQualityAction = [(UIPrintQualityOption *)self normalQualityAction];
      goto LABEL_7;
    case 3:
      bestQualityAction = [(UIPrintQualityOption *)self draftQualityAction];
LABEL_7:
      v7 = bestQualityAction;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  draftQualityAction = [(UIPrintQualityOption *)self draftQualityAction];
  draftQualityAction2 = [(UIPrintQualityOption *)self draftQualityAction];
  [draftQualityAction2 setState:v7 == draftQualityAction];

  normalQualityAction = [(UIPrintQualityOption *)self normalQualityAction];
  normalQualityAction2 = [(UIPrintQualityOption *)self normalQualityAction];
  [normalQualityAction2 setState:v7 == normalQualityAction];

  bestQualityAction2 = [(UIPrintQualityOption *)self bestQualityAction];
  bestQualityAction3 = [(UIPrintQualityOption *)self bestQualityAction];
  [bestQualityAction3 setState:v7 == bestQualityAction2];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    qualityActions = [(UIPrintQualityOption *)self qualityActions];
    v17[0] = qualityActions;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [tableViewCell setPopupActions:v16];
  }
}

- (id)summaryString
{
  printInfo = [(UIPrintOption *)self printInfo];
  quality = [printInfo quality];

  if (quality == 3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"Draft";
  }

  else
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    quality2 = [printInfo2 quality];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (quality2 == 5)
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