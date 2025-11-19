@interface UIPrintLayoutDirectionOption
- (UIPrintLayoutDirectionOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintLayoutDirectionOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF2F0];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF290];

  v5.receiver = self;
  v5.super_class = UIPrintLayoutDirectionOption;
  [(UIPrintLayoutDirectionOption *)&v5 dealloc];
}

- (UIPrintLayoutDirectionOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = UIPrintLayoutDirectionOption;
  v37 = a3;
  v38 = a4;
  v5 = [(UIPrintOption *)&v48 initWithPrintInfo:v37 printPanelViewController:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Layout Direction" value:@"Layout Direction" table:@"Localizable"];
    [(UIPrintOption *)v5 setTitle:v7];

    objc_initWeak(&location, v5);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = MEMORY[0x277D750C8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Left-Right-Top-Bottom" value:@"Left-Right-Top-Bottom" table:@"Localizable"];
    v12 = [MEMORY[0x277D755B8] imageNamed:@"LayoutDirection1" inBundle:v8 withConfiguration:0];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke;
    v45[3] = &unk_279A9C688;
    objc_copyWeak(&v46, &location);
    v13 = [v9 actionWithTitle:v11 image:v12 identifier:0 handler:v45];
    [(UIPrintLayoutDirectionOption *)v5 setLeftRightTopBottomAction:v13];

    v14 = MEMORY[0x277D750C8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Right-Left-Top-Bottom" value:@"Right-Left-Top-Bottom" table:@"Localizable"];
    v17 = [MEMORY[0x277D755B8] imageNamed:@"LayoutDirection2" inBundle:v8 withConfiguration:0];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_2;
    v43[3] = &unk_279A9C688;
    objc_copyWeak(&v44, &location);
    v18 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v43];
    [(UIPrintLayoutDirectionOption *)v5 setRightLeftTopBottomAction:v18];

    v19 = MEMORY[0x277D750C8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"Top-Bottom-Left-Right" value:@"Top-Bottom-Left-Right" table:@"Localizable"];
    v22 = [MEMORY[0x277D755B8] imageNamed:@"LayoutDirection3" inBundle:v8 withConfiguration:0];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_3;
    v41[3] = &unk_279A9C688;
    objc_copyWeak(&v42, &location);
    v23 = [v19 actionWithTitle:v21 image:v22 identifier:0 handler:v41];
    [(UIPrintLayoutDirectionOption *)v5 setTopBottomLeftRightAction:v23];

    v24 = MEMORY[0x277D750C8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"Top-Bottom-Right-Left" value:@"Top-Bottom-Right-Left" table:@"Localizable"];
    v27 = [MEMORY[0x277D755B8] imageNamed:@"LayoutDirection4" inBundle:v8 withConfiguration:0];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_4;
    v39[3] = &unk_279A9C688;
    objc_copyWeak(&v40, &location);
    v28 = [v24 actionWithTitle:v26 image:v27 identifier:0 handler:v39];
    [(UIPrintLayoutDirectionOption *)v5 setTopBottomRightLeftAction:v28];

    v29 = [(UIPrintLayoutDirectionOption *)v5 leftRightTopBottomAction];
    v49[0] = v29;
    v30 = [(UIPrintLayoutDirectionOption *)v5 rightLeftTopBottomAction];
    v49[1] = v30;
    v31 = [(UIPrintLayoutDirectionOption *)v5 topBottomLeftRightAction];
    v49[2] = v31;
    v32 = [(UIPrintLayoutDirectionOption *)v5 topBottomRightLeftAction];
    v49[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [(UIPrintLayoutDirectionOption *)v5 setLayoutDirectionActions:v33];

    v34 = [(UIPrintOption *)v5 printInfo];
    [v34 addObserver:v5 forKeyPath:0x2871AF2F0 options:0 context:0];

    v35 = [(UIPrintOption *)v5 printInfo];
    [v35 addObserver:v5 forKeyPath:0x2871AF290 options:0 context:0];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setNUpLayoutDirection:0];
}

void __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setNUpLayoutDirection:1];
}

void __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setNUpLayoutDirection:2];
}

void __75__UIPrintLayoutDirectionOption_initWithPrintInfo_printPanelViewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInfo];
  [v1 setNUpLayoutDirection:3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__UIPrintLayoutDirectionOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
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
  [(UIPrintLayoutDirectionOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintLayoutDirectionOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v3];

  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 nUpLayoutDirection];

  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v7 = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v7 = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  }

  else
  {
    v7 = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  }

  v6 = v7;
LABEL_11:
  v8 = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  v9 = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  [v9 setState:v6 == v8];

  v10 = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  v11 = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  [v11 setState:v6 == v10];

  v12 = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
  v13 = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
  [v13 setState:v6 == v12];

  v14 = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
  v15 = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
  [v15 setState:v6 == v14];

  v16 = [(UIPrintOption *)self tableViewCell];
  if (v16)
  {
    v17 = [(UIPrintLayoutDirectionOption *)self layoutDirectionActions];
    v19[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v16 setPopupActions:v18];
  }
}

- (id)summaryString
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 nUpLayoutDirection];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  switch(v3)
  {
    case 1:
      v6 = @"Right-Left-Top-Bottom";
      break;
    case 2:
      v6 = @"Top-Bottom-Left-Right";
      break;
    case 3:
      v6 = @"Top-Bottom-Right-Left";
      break;
    default:
      v6 = @"Left-Right-Top-Bottom";
      break;
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  return v7;
}

@end