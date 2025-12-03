@interface UIPrintLayoutDirectionOption
- (UIPrintLayoutDirectionOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintLayoutDirectionOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF2F0];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF290];

  v5.receiver = self;
  v5.super_class = UIPrintLayoutDirectionOption;
  [(UIPrintLayoutDirectionOption *)&v5 dealloc];
}

- (UIPrintLayoutDirectionOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = UIPrintLayoutDirectionOption;
  infoCopy = info;
  controllerCopy = controller;
  v5 = [(UIPrintOption *)&v48 initWithPrintInfo:infoCopy printPanelViewController:?];
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

    leftRightTopBottomAction = [(UIPrintLayoutDirectionOption *)v5 leftRightTopBottomAction];
    v49[0] = leftRightTopBottomAction;
    rightLeftTopBottomAction = [(UIPrintLayoutDirectionOption *)v5 rightLeftTopBottomAction];
    v49[1] = rightLeftTopBottomAction;
    topBottomLeftRightAction = [(UIPrintLayoutDirectionOption *)v5 topBottomLeftRightAction];
    v49[2] = topBottomLeftRightAction;
    topBottomRightLeftAction = [(UIPrintLayoutDirectionOption *)v5 topBottomRightLeftAction];
    v49[3] = topBottomRightLeftAction;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [(UIPrintLayoutDirectionOption *)v5 setLayoutDirectionActions:v33];

    printInfo = [(UIPrintOption *)v5 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF2F0 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v5 printInfo];
    [printInfo2 addObserver:v5 forKeyPath:0x2871AF290 options:0 context:0];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  title = [(UIPrintOption *)self title];
  textLabel = [v5 textLabel];
  [textLabel setText:title];

  [v5 setSelectionStyle:0];
  [(UIPrintLayoutDirectionOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  v19[1] = *MEMORY[0x277D85DE8];
  summaryString = [(UIPrintLayoutDirectionOption *)self summaryString];
  [(UIPrintOption *)self setSummary:summaryString];

  printInfo = [(UIPrintOption *)self printInfo];
  nUpLayoutDirection = [printInfo nUpLayoutDirection];

  v6 = 0;
  if (nUpLayoutDirection > 1)
  {
    if (nUpLayoutDirection == 2)
    {
      topBottomLeftRightAction = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
    }

    else
    {
      if (nUpLayoutDirection != 3)
      {
        goto LABEL_11;
      }

      topBottomLeftRightAction = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
    }
  }

  else if (nUpLayoutDirection)
  {
    if (nUpLayoutDirection != 1)
    {
      goto LABEL_11;
    }

    topBottomLeftRightAction = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  }

  else
  {
    topBottomLeftRightAction = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  }

  v6 = topBottomLeftRightAction;
LABEL_11:
  leftRightTopBottomAction = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  leftRightTopBottomAction2 = [(UIPrintLayoutDirectionOption *)self leftRightTopBottomAction];
  [leftRightTopBottomAction2 setState:v6 == leftRightTopBottomAction];

  rightLeftTopBottomAction = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  rightLeftTopBottomAction2 = [(UIPrintLayoutDirectionOption *)self rightLeftTopBottomAction];
  [rightLeftTopBottomAction2 setState:v6 == rightLeftTopBottomAction];

  topBottomLeftRightAction2 = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
  topBottomLeftRightAction3 = [(UIPrintLayoutDirectionOption *)self topBottomLeftRightAction];
  [topBottomLeftRightAction3 setState:v6 == topBottomLeftRightAction2];

  topBottomRightLeftAction = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
  topBottomRightLeftAction2 = [(UIPrintLayoutDirectionOption *)self topBottomRightLeftAction];
  [topBottomRightLeftAction2 setState:v6 == topBottomRightLeftAction];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    layoutDirectionActions = [(UIPrintLayoutDirectionOption *)self layoutDirectionActions];
    v19[0] = layoutDirectionActions;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [tableViewCell setPopupActions:v18];
  }
}

- (id)summaryString
{
  printInfo = [(UIPrintOption *)self printInfo];
  nUpLayoutDirection = [printInfo nUpLayoutDirection];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  switch(nUpLayoutDirection)
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