@interface UIPrintPagesPerSheetOption
- (UIPrintPagesPerSheetOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)itemNameForNumber:(int64_t)a3;
- (id)summaryString;
- (void)actionSelectedForNumRows:(int64_t)a3 numColumns:(int64_t)a4 booklet:(BOOL)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintPagesPerSheetOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF290];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF330];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF150];

  v6.receiver = self;
  v6.super_class = UIPrintPagesPerSheetOption;
  [(UIPrintPagesPerSheetOption *)&v6 dealloc];
}

- (UIPrintPagesPerSheetOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v59[6] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = UIPrintPagesPerSheetOption;
  v41 = a3;
  v42 = a4;
  v5 = [(UIPrintOption *)&v58 initWithPrintInfo:v41 printPanelViewController:?];
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

    v30 = [(UIPrintPagesPerSheetOption *)v5 oneUpAction];
    v59[0] = v30;
    v31 = [(UIPrintPagesPerSheetOption *)v5 twoUpAction];
    v59[1] = v31;
    v32 = [(UIPrintPagesPerSheetOption *)v5 fourUpAction];
    v59[2] = v32;
    v33 = [(UIPrintPagesPerSheetOption *)v5 sixUpAction];
    v59[3] = v33;
    v34 = [(UIPrintPagesPerSheetOption *)v5 nineUpAction];
    v59[4] = v34;
    v35 = [(UIPrintPagesPerSheetOption *)v5 sixteenUpAction];
    v59[5] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:6];
    [(UIPrintPagesPerSheetOption *)v5 setNUpActions:v36];

    v37 = [(UIPrintOption *)v5 printInfo];
    [v37 addObserver:v5 forKeyPath:0x2871AF290 options:0 context:0];

    v38 = [(UIPrintOption *)v5 printInfo];
    [v38 addObserver:v5 forKeyPath:0x2871AF330 options:0 context:0];

    v39 = [(UIPrintOption *)v5 printInfo];
    [v39 addObserver:v5 forKeyPath:0x2871AF150 options:0 context:0];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__UIPrintPagesPerSheetOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
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
  v3 = [(UIPrintPagesPerSheetOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v3];

  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 bookletStyle];

  if (v5)
  {
    v6 = [(UIPrintPagesPerSheetOption *)self bookletAction];
    goto LABEL_3;
  }

  v31 = [(UIPrintOption *)self printInfo];
  v32 = [v31 numNUpRows];
  v33 = [(UIPrintOption *)self printInfo];
  v34 = [v33 numNUpColumns] * v32;

  if (v34 <= 5)
  {
    if (v34 == 2)
    {
      v6 = [(UIPrintPagesPerSheetOption *)self twoUpAction];
      goto LABEL_3;
    }

    if (v34 == 4)
    {
      v6 = [(UIPrintPagesPerSheetOption *)self fourUpAction];
      goto LABEL_3;
    }
  }

  else
  {
    switch(v34)
    {
      case 6:
        v6 = [(UIPrintPagesPerSheetOption *)self sixUpAction];
        goto LABEL_3;
      case 9:
        v6 = [(UIPrintPagesPerSheetOption *)self nineUpAction];
        goto LABEL_3;
      case 16:
        v6 = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
        goto LABEL_3;
    }
  }

  v6 = [(UIPrintPagesPerSheetOption *)self oneUpAction];
LABEL_3:
  v7 = v6;
  v8 = [(UIPrintPagesPerSheetOption *)self oneUpAction];
  v9 = [(UIPrintPagesPerSheetOption *)self oneUpAction];
  [v9 setState:v7 == v8];

  v10 = [(UIPrintPagesPerSheetOption *)self twoUpAction];
  v11 = [(UIPrintPagesPerSheetOption *)self twoUpAction];
  [v11 setState:v7 == v10];

  v12 = [(UIPrintPagesPerSheetOption *)self fourUpAction];
  v13 = [(UIPrintPagesPerSheetOption *)self fourUpAction];
  [v13 setState:v7 == v12];

  v14 = [(UIPrintPagesPerSheetOption *)self sixUpAction];
  v15 = [(UIPrintPagesPerSheetOption *)self sixUpAction];
  [v15 setState:v7 == v14];

  v16 = [(UIPrintPagesPerSheetOption *)self nineUpAction];
  v17 = [(UIPrintPagesPerSheetOption *)self nineUpAction];
  [v17 setState:v7 == v16];

  v18 = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
  v19 = [(UIPrintPagesPerSheetOption *)self sixteenUpAction];
  [v19 setState:v7 == v18];

  v20 = [(UIPrintPagesPerSheetOption *)self bookletAction];
  v21 = [(UIPrintPagesPerSheetOption *)self bookletAction];
  [v21 setState:v7 == v20];

  v22 = [(UIPrintOption *)self tableViewCell];
  if (v22)
  {
    v23 = [(UIPrintOption *)self printInfo];
    v24 = [v23 currentPrinter];
    if (v24)
    {
      v25 = v24;
      v26 = [(UIPrintOption *)self printInfo];
      v27 = [v26 currentPrinter];
      v28 = [v27 supportsDuplex];

      if (!v28)
      {
        v29 = [(UIPrintPagesPerSheetOption *)self nUpActions];
        v37 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [v22 setPopupActions:v30];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v29 = [(UIPrintPagesPerSheetOption *)self nUpActions];
    v39[0] = v29;
    v30 = [(UIPrintPagesPerSheetOption *)self bookletAction];
    v38 = v30;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v39[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    [v22 setPopupActions:v36];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)actionSelectedForNumRows:(int64_t)a3 numColumns:(int64_t)a4 booklet:(BOOL)a5
{
  v5 = a5;
  v16[2] = *MEMORY[0x277D85DE8];
  v9 = [(UIPrintOption *)self printInfo];
  v10 = [v9 bookletStyle];

  if (v10 != v5)
  {
    v11 = [(UIPrintOption *)self printInfo];
    [v11 setBookletStyle:v5];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v16[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v15 = [(UIPrintOption *)self printInfo];
  [v15 setNUpRowsColumns:v14];
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
  [(UIPrintPagesPerSheetOption *)self updateFromPrintInfo];

  return v5;
}

- (id)itemNameForNumber:(int64_t)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

- (id)summaryString
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 bookletStyle];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Print as Booklet" value:@"Print as Booklet" table:@"Localizable"];
  }

  else
  {
    v7 = [(UIPrintOption *)self printInfo];
    v8 = [v7 numNUpRows];
    v9 = [(UIPrintOption *)self printInfo];
    v10 = [v9 numNUpColumns] * v8;

    v11 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NUP_PAGES" value:@"NUP_PAGES" table:@"Localizable"];
    v14 = [v5 localizedStringForKey:v13 value:&stru_2871AE610 table:0];
    v6 = [v11 localizedStringWithFormat:v14, v10];
  }

  return v6;
}

@end