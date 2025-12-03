@interface UIPrinterFinishingOption
- (UIPrintPanelViewController)printPanelViewController;
- (UIPrinterFinishingOption)initWithTitle:(id)title finishingType:(int64_t)type viewType:(int64_t)viewType optionChoices:(id)choices printPanelViewController:(id)controller finishingOptionsTableView:(id)view;
- (UITableView)finishingOptionsTableView;
- (id)printerFinishingOptionTableViewCell;
- (id)selectedFinishingChoice;
- (id)summary;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)printerFinishingOptionActionSelected:(id)selected;
- (void)switchValueChanged:(id)changed;
- (void)updateFromPrintInfo;
@end

@implementation UIPrinterFinishingOption

- (UIPrinterFinishingOption)initWithTitle:(id)title finishingType:(int64_t)type viewType:(int64_t)viewType optionChoices:(id)choices printPanelViewController:(id)controller finishingOptionsTableView:(id)view
{
  titleCopy = title;
  choicesCopy = choices;
  controllerCopy = controller;
  viewCopy = view;
  v25.receiver = self;
  v25.super_class = UIPrinterFinishingOption;
  v18 = [(UIPrinterFinishingOption *)&v25 init];
  v19 = v18;
  if (v18)
  {
    [(UIPrinterFinishingOption *)v18 setTitle:titleCopy];
    [(UIPrinterFinishingOption *)v19 setFinishingType:type];
    [(UIPrinterFinishingOption *)v19 setViewType:viewType];
    [(UIPrinterFinishingOption *)v19 setOptionChoices:choicesCopy];
    [(UIPrinterFinishingOption *)v19 setPrintPanelViewController:controllerCopy];
    printInfo = [controllerCopy printInfo];
    [(UIPrinterFinishingOption *)v19 setPrintInfo:printInfo];

    [(UIPrinterFinishingOption *)v19 setFinishingOptionsTableView:viewCopy];
    finishingType = [(UIPrinterFinishingOption *)v19 finishingType];
    if (finishingType <= 6)
    {
      v22 = off_279A9C8F8[finishingType];
      printInfo2 = [(UIPrinterFinishingOption *)v19 printInfo];
      [printInfo2 addObserver:v19 forKeyPath:*v22 options:0 context:0];
    }

    [(UIPrinterFinishingOption *)v19 updateFromPrintInfo];
  }

  return v19;
}

- (void)dealloc
{
  finishingType = [(UIPrinterFinishingOption *)self finishingType];
  if (finishingType <= 6)
  {
    v4 = off_279A9C8F8[finishingType];
    printInfo = [(UIPrinterFinishingOption *)self printInfo];
    [printInfo removeObserver:self forKeyPath:*v4];
  }

  v6.receiver = self;
  v6.super_class = UIPrinterFinishingOption;
  [(UIPrinterFinishingOption *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UIPrinterFinishingOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  v25 = *MEMORY[0x277D85DE8];
  selectedFinishingChoice = [(UIPrinterFinishingOption *)self selectedFinishingChoice];
  if ([(UIPrinterFinishingOption *)self viewType]== 1)
  {
    optionChoices = [(UIPrinterFinishingOption *)self optionChoices];
    v5 = [optionChoices indexOfObject:selectedFinishingChoice];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      accessoryView = 0;
    }

    else
    {
      optionActions = [(UIPrinterFinishingOption *)self optionActions];
      accessoryView = [optionActions objectAtIndex:v5];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    optionActions2 = [(UIPrinterFinishingOption *)self optionActions];
    v10 = [optionActions2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(optionActions2);
          }

          [*(*(&v19 + 1) + 8 * i) setState:accessoryView == *(*(&v19 + 1) + 8 * i)];
        }

        v11 = [optionActions2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    printerFinishingOptionCell = [(UIPrinterFinishingOption *)self printerFinishingOptionCell];
    if (printerFinishingOptionCell)
    {
      optionActions3 = [(UIPrinterFinishingOption *)self optionActions];
      v16 = [optionActions3 count];

      if (v16)
      {
        optionActions4 = [(UIPrinterFinishingOption *)self optionActions];
        v23 = optionActions4;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        [printerFinishingOptionCell setPopupActions:v18];
      }
    }
  }

  else
  {
    printerFinishingOptionCell2 = [(UIPrinterFinishingOption *)self printerFinishingOptionCell];
    accessoryView = [printerFinishingOptionCell2 accessoryView];

    [accessoryView setOn:selectedFinishingChoice != 0];
  }
}

- (id)selectedFinishingChoice
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  if ([(UIPrinterFinishingOption *)self finishingType]== 6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(UIPrinterFinishingOption *)selfCopy optionChoices];
    v3 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v31;
      v25 = *v31;
      do
      {
        v6 = 0;
        v26 = v4;
        do
        {
          if (*v31 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v30 + 1) + 8 * v6);
          printInfo = [(UIPrinterFinishingOption *)selfCopy printInfo];
          outputBin = [printInfo outputBin];
          finishingChoiceInfo = [v7 finishingChoiceInfo];
          v11 = [finishingChoiceInfo objectForKey:@"OutputBinChoice"];
          if ([outputBin isEqualToString:v11])
          {
            printInfo2 = [(UIPrinterFinishingOption *)selfCopy printInfo];
            pageStackOrder = [printInfo2 pageStackOrder];
            finishingChoiceInfo2 = [v7 finishingChoiceInfo];
            [finishingChoiceInfo2 objectForKey:@"com.apple.pageStackOrder"];
            v29 = printInfo;
            v16 = v15 = selfCopy;
            v28 = [pageStackOrder isEqualToString:v16];

            selfCopy = v15;
            v5 = v25;

            v4 = v26;
            if (v28)
            {
              goto LABEL_37;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v4);
    }

    v17 = 0;
    goto LABEL_38;
  }

  finishingType = [(UIPrinterFinishingOption *)selfCopy finishingType];
  v19 = 0;
  if (finishingType > 2)
  {
    switch(finishingType)
    {
      case 3:
        printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
        laminate = [printInfo3 laminate];
        break;
      case 4:
        printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
        laminate = [printInfo3 coat];
        break;
      case 5:
        printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
        laminate = [printInfo3 trim];
        break;
      default:
        goto LABEL_28;
    }
  }

  else if (finishingType)
  {
    if (finishingType == 1)
    {
      printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
      laminate = [printInfo3 punch];
    }

    else
    {
      if (finishingType != 2)
      {
        goto LABEL_28;
      }

      printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
      laminate = [printInfo3 fold];
    }
  }

  else
  {
    printInfo3 = [(UIPrinterFinishingOption *)selfCopy printInfo];
    laminate = [printInfo3 staple];
  }

  v19 = laminate;

LABEL_28:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(UIPrinterFinishingOption *)selfCopy optionChoices];
  v17 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v17)
  {
    v22 = *v35;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        if ([v7 finishingChoiceID] == v19)
        {
LABEL_37:
          v17 = v7;
          goto LABEL_38;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  return v17;
}

- (id)printerFinishingOptionTableViewCell
{
  v44 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(UIPrinterFinishingOption *)self setOptionActions:array];

  v3 = [(UIPrinterFinishingOption *)self viewType]== 0;
  finishingOptionsTableView = [(UIPrinterFinishingOption *)self finishingOptionsTableView];
  v5 = finishingOptionsTableView;
  if (v3)
  {
    v17 = [finishingOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

    v18 = v17;
    if (!v17)
    {
      v18 = [[UIPrintOptionCell alloc] initWithStyle:0 reuseIdentifier:@"UIPrintOptionCell"];
    }

    v32 = v18;
    [(UIPrintOptionCell *)v18 setSelectionStyle:0];
    v19 = objc_alloc(MEMORY[0x277D75AE8]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    printPanelViewController = [(UIPrinterFinishingOption *)self printPanelViewController];
    controlTintColor = [printPanelViewController controlTintColor];
    [v20 setOnTintColor:controlTintColor];

    [v20 addTarget:self action:sel_switchValueChanged_ forControlEvents:4096];
    [(UIPrintOptionPopupCell *)v32 setAccessoryView:v20];
    valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
    title = [(UIPrinterFinishingOption *)self title];
    [valueCellConfiguration setText:title];

    [(UIPrintOptionPopupCell *)v32 setContentConfiguration:valueCellConfiguration];
    objc_initWeak(&location, self);
    optionChoices = [(UIPrinterFinishingOption *)self optionChoices];
    firstObject = [optionChoices firstObject];

    v27 = MEMORY[0x277D750C8];
    title2 = [firstObject title];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke;
    v40[3] = &unk_279A9C688;
    objc_copyWeak(&v41, &location);
    v29 = [v27 actionWithTitle:title2 image:0 identifier:0 handler:v40];

    optionActions = [(UIPrinterFinishingOption *)self optionActions];
    [optionActions addObject:v29];

    [(UIPrinterFinishingOption *)self setPrinterFinishingOptionCell:v32];
    objc_destroyWeak(&v41);

    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [finishingOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

    if (!v6)
    {
      v6 = [[UIPrintOptionPopupCell alloc] initWithStyle:0 reuseIdentifier:@"UIPrintOptionPopupCell"];
    }

    v32 = v6;
    title3 = [(UIPrinterFinishingOption *)self title];
    textLabel = [(UIPrintOptionPopupCell *)v6 textLabel];
    [textLabel setText:title3];

    [(UIPrintOptionPopupCell *)v6 setSelectionStyle:0];
    objc_initWeak(&location, self);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    optionChoices2 = [(UIPrinterFinishingOption *)self optionChoices];
    v10 = [optionChoices2 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v10)
    {
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(optionChoices2);
          }

          v13 = MEMORY[0x277D750C8];
          title4 = [*(*(&v36 + 1) + 8 * i) title];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke_2;
          v34[3] = &unk_279A9C688;
          objc_copyWeak(&v35, &location);
          v15 = [v13 actionWithTitle:title4 image:0 identifier:0 handler:v34];

          optionActions2 = [(UIPrinterFinishingOption *)self optionActions];
          [optionActions2 addObject:v15];

          objc_destroyWeak(&v35);
        }

        v10 = [optionChoices2 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v10);
    }

    [(UIPrinterFinishingOption *)self setPrinterFinishingOptionCell:v32];
    objc_destroyWeak(&location);
  }

  [(UIPrinterFinishingOption *)self updateFromPrintInfo];

  return v32;
}

void __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained printerFinishingOptionActionSelected:v3];
}

void __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained printerFinishingOptionActionSelected:v3];
}

- (void)printerFinishingOptionActionSelected:(id)selected
{
  selectedCopy = selected;
  if (selectedCopy && (-[UIPrinterFinishingOption optionActions](self, "optionActions"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 indexOfObject:selectedCopy], v4, v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    optionChoices = [(UIPrinterFinishingOption *)self optionChoices];
    v6 = [optionChoices objectAtIndex:v5];

    finishingChoiceID = [v6 finishingChoiceID];
  }

  else
  {
    v6 = 0;
    finishingChoiceID = 0;
  }

  finishingType = [(UIPrinterFinishingOption *)self finishingType];
  if (finishingType <= 2)
  {
    if (finishingType)
    {
      if (finishingType == 1)
      {
        printInfo = [(UIPrinterFinishingOption *)self printInfo];
        [printInfo setPunch:finishingChoiceID];
      }

      else
      {
        if (finishingType != 2)
        {
          goto LABEL_21;
        }

        printInfo = [(UIPrinterFinishingOption *)self printInfo];
        [printInfo setFold:finishingChoiceID];
      }
    }

    else
    {
      printInfo = [(UIPrinterFinishingOption *)self printInfo];
      [printInfo setStaple:finishingChoiceID];
    }
  }

  else if (finishingType > 4)
  {
    if (finishingType == 5)
    {
      printInfo = [(UIPrinterFinishingOption *)self printInfo];
      [printInfo setTrim:finishingChoiceID];
    }

    else
    {
      if (finishingType != 6)
      {
        goto LABEL_21;
      }

      finishingChoiceInfo = [v6 finishingChoiceInfo];
      v12 = [finishingChoiceInfo objectForKey:@"OutputBinChoice"];
      printInfo2 = [(UIPrinterFinishingOption *)self printInfo];
      [printInfo2 setOutputBin:v12];

      printInfo = [v6 finishingChoiceInfo];
      v14 = [printInfo objectForKey:@"com.apple.pageStackOrder"];
      printInfo3 = [(UIPrinterFinishingOption *)self printInfo];
      [printInfo3 setPageStackOrder:v14];
    }
  }

  else if (finishingType == 3)
  {
    printInfo = [(UIPrinterFinishingOption *)self printInfo];
    [printInfo setLaminate:finishingChoiceID];
  }

  else
  {
    printInfo = [(UIPrinterFinishingOption *)self printInfo];
    [printInfo setCoat:finishingChoiceID];
  }

LABEL_21:
  [(UIPrinterFinishingOption *)self updateFromPrintInfo];
}

- (void)switchValueChanged:(id)changed
{
  if ([changed isOn])
  {
    optionActions = [(UIPrinterFinishingOption *)self optionActions];
    firstObject = [optionActions firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [(UIPrinterFinishingOption *)self printerFinishingOptionActionSelected:firstObject];
}

- (id)summary
{
  selectedFinishingChoice = [(UIPrinterFinishingOption *)self selectedFinishingChoice];
  if (selectedFinishingChoice)
  {
    viewType = [(UIPrinterFinishingOption *)self viewType];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (viewType)
    {
      v8 = [v6 localizedStringForKey:@"%@: %@" value:@"%@: %@" table:@"Localizable"];
      title = [(UIPrinterFinishingOption *)self title];
      title2 = [selectedFinishingChoice title];
      v11 = [v5 stringWithFormat:v8, title, title2];
    }

    else
    {
      v8 = [v6 localizedStringForKey:@"%@ On" value:@"%@ On" table:@"Localizable"];
      title = [(UIPrinterFinishingOption *)self title];
      v11 = [v5 stringWithFormat:v8, title];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

- (UITableView)finishingOptionsTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_finishingOptionsTableView);

  return WeakRetained;
}

@end