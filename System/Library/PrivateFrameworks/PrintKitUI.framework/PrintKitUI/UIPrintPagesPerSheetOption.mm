@interface UIPrintPagesPerSheetOption
- (UIPrintPagesPerSheetOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)itemNameForNumber:(int64_t)number;
- (id)summaryString;
- (void)actionSelectedForNumRows:(int64_t)rows numColumns:(int64_t)columns booklet:(BOOL)booklet;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintPagesPerSheetOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF290];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF330];

  printInfo3 = [(UIPrintOption *)self printInfo];
  [printInfo3 removeObserver:self forKeyPath:0x2871AF150];

  v6.receiver = self;
  v6.super_class = UIPrintPagesPerSheetOption;
  [(UIPrintPagesPerSheetOption *)&v6 dealloc];
}

- (UIPrintPagesPerSheetOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v59[6] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = UIPrintPagesPerSheetOption;
  infoCopy = info;
  controllerCopy = controller;
  v5 = [(UIPrintOption *)&v58 initWithPrintInfo:infoCopy printPanelViewController:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Pages per Sheet" value:@"Pages per Sheet" table:@"Localizable"];
    [(UIPrintOption *)v5 setTitle:v7];

    objc_initWeak(&location, v5);
    v8 = MEMORY[0x277D750C8];
    v9 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:1];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke;
    v55[3] = &unk_279A9C688;
    objc_copyWeak(&v56, &location);
    v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v55];
    [(UIPrintPagesPerSheetOption *)v5 setOneUpAction:v10];

    v11 = MEMORY[0x277D750C8];
    v12 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:2];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_2;
    v53[3] = &unk_279A9C688;
    objc_copyWeak(&v54, &location);
    v13 = [v11 actionWithTitle:v12 image:0 identifier:0 handler:v53];
    [(UIPrintPagesPerSheetOption *)v5 setTwoUpAction:v13];

    v14 = MEMORY[0x277D750C8];
    v15 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:4];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_3;
    v51[3] = &unk_279A9C688;
    objc_copyWeak(&v52, &location);
    v16 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:v51];
    [(UIPrintPagesPerSheetOption *)v5 setFourUpAction:v16];

    v17 = MEMORY[0x277D750C8];
    v18 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:6];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_4;
    v49[3] = &unk_279A9C688;
    objc_copyWeak(&v50, &location);
    v19 = [v17 actionWithTitle:v18 image:0 identifier:0 handler:v49];
    [(UIPrintPagesPerSheetOption *)v5 setSixUpAction:v19];

    v20 = MEMORY[0x277D750C8];
    v21 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:9];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_5;
    v47[3] = &unk_279A9C688;
    objc_copyWeak(&v48, &location);
    v22 = [v20 actionWithTitle:v21 image:0 identifier:0 handler:v47];
    [(UIPrintPagesPerSheetOption *)v5 setNineUpAction:v22];

    v23 = MEMORY[0x277D750C8];
    v24 = [(UIPrintPagesPerSheetOption *)v5 itemNameForNumber:16];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_6;
    v45[3] = &unk_279A9C688;
    objc_copyWeak(&v46, &location);
    v25 = [v23 actionWithTitle:v24 image:0 identifier:0 handler:v45];
    [(UIPrintPagesPerSheetOption *)v5 setSixteenUpAction:v25];

    v26 = MEMORY[0x277D750C8];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"Print as Booklet" value:@"Print as Booklet" table:@"Localizable"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_7;
    v43[3] = &unk_279A9C688;
    objc_copyWeak(&v44, &location);
    v29 = [v26 actionWithTitle:v28 image:0 identifier:0 handler:v43];
    [(UIPrintPagesPerSheetOption *)v5 setBookletAction:v29];

    oneUpAction = [(UIPrintPagesPerSheetOption *)v5 oneUpAction];
    v59[0] = oneUpAction;
    twoUpAction = [(UIPrintPagesPerSheetOption *)v5 twoUpAction];
    v59[1] = twoUpAction;
    fourUpAction = [(UIPrintPagesPerSheetOption *)v5 fourUpAction];
    v59[2] = fourUpAction;
    sixUpAction = [(UIPrintPagesPerSheetOption *)v5 sixUpAction];
    v59[3] = sixUpAction;
    nineUpAction = [(UIPrintPagesPerSheetOption *)v5 nineUpAction];
    v59[4] = nineUpAction;
    sixteenUpAction = [(UIPrintPagesPerSheetOption *)v5 sixteenUpAction];
    v59[5] = sixteenUpAction;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:6];
    [(UIPrintPagesPerSheetOption *)v5 setNUpActions:v36];

    printInfo = [(UIPrintOption *)v5 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF290 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v5 printInfo];
    [printInfo2 addObserver:v5 forKeyPath:0x2871AF330 options:0 context:0];

    printInfo3 = [(UIPrintOption *)v5 printInfo];
    [printInfo3 addObserver:v5 forKeyPath:0x2871AF150 options:0 context:0];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:1 numColumns:1 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:2 numColumns:1 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:2 numColumns:2 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:3 numColumns:2 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:3 numColumns:3 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:4 numColumns:4 booklet:0];
}

void __73__UIPrintPagesPerSheetOption_initWithPrintInfo_printPanelViewController___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionSelectedForNumRows:2 numColumns:1 booklet:1];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__UIPrintPagesPerSheetOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __77__UIPrintPagesPerSheetOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:0x2871AF150])
  {
    v2 = [*(a1 + 40) printInfo];
    v3 = [v2 currentPrinter];
    if ([v3 supportsDuplex])
    {
LABEL_5:

      return [*(a1 + 40) updateFromPrintInfo];
    }

    v4 = [*(a1 + 40) printInfo];
    v5 = [v4 bookletStyle];

    if (v5)
    {
      v6 = [*(a1 + 40) printInfo];
      [v6 setBookletStyle:0];

      v2 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v10[0] = v2;
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v10[1] = v3;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      v8 = [*(a1 + 40) printInfo];
      [v8 setNUpRowsColumns:v7];

      goto LABEL_5;
    }
  }

  return [*(a1 + 40) updateFromPrintInfo];
}

- (void)updateFromPrintInfo
{
  v39[2] = *MEMORY[0x277D85DE8];
  summaryString = [(UIPrintPagesPerSheetOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];

  printInfo = [(UIPrintOption *)self printInfo];
  bookletStyle = [printInfo bookletStyle];

  if (bookletStyle)
  {
    bookletAction = [(UIPrintPagesPerSheetOption *)self bookletAction];
    goto LABEL_3;
  }

  printInfo2 = [(UIPrintOption *)self printInfo];
  numNUpRows = [printInfo2 numNUpRows];
  printInfo3 = [(UIPrintOption *)self printInfo];
  v34 = [printInfo3 numNUpColumns] * numNUpRows;

  if (v34 <= 5)
  {
    if (v34 == 2)
    {
      bookletAction = [(UIPrintPagesPerSheetOption *)self twoUpAction];
      goto LABEL_3;
    }

    if (v34 == 4)
    {
      bookletAction = [(UIPrintPagesPerSheetOption *)self fourUpAction];
      goto LABEL_3;
    }
  }

  else
  {
    switch(v34)
    {
      case 6:
        bookletAction = [(UIPrintPagesPerSheetOption *)self sixUpAction];
        goto LABEL_3;
      case 9:
        bookletAction = [(UIPrintPagesPerSheetOption *)self nineUpAction];
        goto LABEL_3;
      case 16:
        bookletAction = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
        goto LABEL_3;
    }
  }

  bookletAction = [(UIPrintPagesPerSheetOption *)self oneUpAction];
LABEL_3:
  v7 = bookletAction;
  oneUpAction = [(UIPrintPagesPerSheetOption *)self oneUpAction];
  oneUpAction2 = [(UIPrintPagesPerSheetOption *)self oneUpAction];
  [oneUpAction2 setState:v7 == oneUpAction];

  twoUpAction = [(UIPrintPagesPerSheetOption *)self twoUpAction];
  twoUpAction2 = [(UIPrintPagesPerSheetOption *)self twoUpAction];
  [twoUpAction2 setState:v7 == twoUpAction];

  fourUpAction = [(UIPrintPagesPerSheetOption *)self fourUpAction];
  fourUpAction2 = [(UIPrintPagesPerSheetOption *)self fourUpAction];
  [fourUpAction2 setState:v7 == fourUpAction];

  sixUpAction = [(UIPrintPagesPerSheetOption *)self sixUpAction];
  sixUpAction2 = [(UIPrintPagesPerSheetOption *)self sixUpAction];
  [sixUpAction2 setState:v7 == sixUpAction];

  nineUpAction = [(UIPrintPagesPerSheetOption *)self nineUpAction];
  nineUpAction2 = [(UIPrintPagesPerSheetOption *)self nineUpAction];
  [nineUpAction2 setState:v7 == nineUpAction];

  sixteenUpAction = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
  sixteenUpAction2 = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
  [sixteenUpAction2 setState:v7 == sixteenUpAction];

  bookletAction2 = [(UIPrintPagesPerSheetOption *)self bookletAction];
  bookletAction3 = [(UIPrintPagesPerSheetOption *)self bookletAction];
  [bookletAction3 setState:v7 == bookletAction2];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    printInfo4 = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo4 currentPrinter];
    if (currentPrinter)
    {
      v25 = currentPrinter;
      printInfo5 = [(UIPrintOption *)self printInfo];
      currentPrinter2 = [printInfo5 currentPrinter];
      supportsDuplex = [currentPrinter2 supportsDuplex];

      if (!supportsDuplex)
      {
        nUpActions = [(UIPrintPagesPerSheetOption *)self nUpActions];
        v37 = nUpActions;
        bookletAction4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [tableViewCell setPopupActions:bookletAction4];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    nUpActions = [(UIPrintPagesPerSheetOption *)self nUpActions];
    v39[0] = nUpActions;
    bookletAction4 = [(UIPrintPagesPerSheetOption *)self bookletAction];
    v38 = bookletAction4;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v39[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    [tableViewCell setPopupActions:v36];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)actionSelectedForNumRows:(int64_t)rows numColumns:(int64_t)columns booklet:(BOOL)booklet
{
  bookletCopy = booklet;
  v16[2] = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintOption *)self printInfo];
  bookletStyle = [printInfo bookletStyle];

  if (bookletStyle != bookletCopy)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    [printInfo2 setBookletStyle:bookletCopy];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:rows];
  v16[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:columns];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  printInfo3 = [(UIPrintOption *)self printInfo];
  [printInfo3 setNUpRowsColumns:v14];
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
  [(UIPrintPagesPerSheetOption *)self updateFromPrintInfo];

  return v5;
}

- (id)itemNameForNumber:(int64_t)number
{
  v3 = MEMORY[0x277CCABB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:number];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

- (id)summaryString
{
  printInfo = [(UIPrintOption *)self printInfo];
  bookletStyle = [printInfo bookletStyle];

  if (bookletStyle == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [mainBundle localizedStringForKey:@"Print as Booklet" value:@"Print as Booklet" table:@"Localizable"];
  }

  else
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    numNUpRows = [printInfo2 numNUpRows];
    printInfo3 = [(UIPrintOption *)self printInfo];
    v10 = [printInfo3 numNUpColumns] * numNUpRows;

    v11 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NUP_PAGES" value:@"NUP_PAGES" table:@"Localizable"];
    v14 = [mainBundle localizedStringForKey:v13 value:&stru_2871AE610 table:0];
    v6 = [v11 localizedStringWithFormat:v14, v10];
  }

  return v6;
}

@end