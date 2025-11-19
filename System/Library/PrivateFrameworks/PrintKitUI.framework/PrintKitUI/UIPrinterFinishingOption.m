@interface UIPrinterFinishingOption
- (UIPrintPanelViewController)printPanelViewController;
- (UIPrinterFinishingOption)initWithTitle:(id)a3 finishingType:(int64_t)a4 viewType:(int64_t)a5 optionChoices:(id)a6 printPanelViewController:(id)a7 finishingOptionsTableView:(id)a8;
- (UITableView)finishingOptionsTableView;
- (id)printerFinishingOptionTableViewCell;
- (id)selectedFinishingChoice;
- (id)summary;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)printerFinishingOptionActionSelected:(id)a3;
- (void)switchValueChanged:(id)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrinterFinishingOption

- (UIPrinterFinishingOption)initWithTitle:(id)a3 finishingType:(int64_t)a4 viewType:(int64_t)a5 optionChoices:(id)a6 printPanelViewController:(id)a7 finishingOptionsTableView:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = UIPrinterFinishingOption;
  v18 = [(UIPrinterFinishingOption *)&v25 init];
  v19 = v18;
  if (v18)
  {
    [(UIPrinterFinishingOption *)v18 setTitle:v14];
    [(UIPrinterFinishingOption *)v19 setFinishingType:a4];
    [(UIPrinterFinishingOption *)v19 setViewType:a5];
    [(UIPrinterFinishingOption *)v19 setOptionChoices:v15];
    [(UIPrinterFinishingOption *)v19 setPrintPanelViewController:v16];
    v20 = [v16 printInfo];
    [(UIPrinterFinishingOption *)v19 setPrintInfo:v20];

    [(UIPrinterFinishingOption *)v19 setFinishingOptionsTableView:v17];
    v21 = [(UIPrinterFinishingOption *)v19 finishingType];
    if (v21 <= 6)
    {
      v22 = off_279A9C8F8[v21];
      v23 = [(UIPrinterFinishingOption *)v19 printInfo];
      [v23 addObserver:v19 forKeyPath:*v22 options:0 context:0];
    }

    [(UIPrinterFinishingOption *)v19 updateFromPrintInfo];
  }

  return v19;
}

- (void)dealloc
{
  v3 = [(UIPrinterFinishingOption *)self finishingType];
  if (v3 <= 6)
  {
    v4 = off_279A9C8F8[v3];
    v5 = [(UIPrinterFinishingOption *)self printInfo];
    [v5 removeObserver:self forKeyPath:*v4];
  }

  v6.receiver = self;
  v6.super_class = UIPrinterFinishingOption;
  [(UIPrinterFinishingOption *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v3 = [(UIPrinterFinishingOption *)self selectedFinishingChoice];
  if ([(UIPrinterFinishingOption *)self viewType]== 1)
  {
    v4 = [(UIPrinterFinishingOption *)self optionChoices];
    v5 = [v4 indexOfObject:v3];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v8 = [(UIPrinterFinishingOption *)self optionActions];
      v6 = [v8 objectAtIndex:v5];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(UIPrinterFinishingOption *)self optionActions];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * i) setState:v6 == *(*(&v19 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    v14 = [(UIPrinterFinishingOption *)self printerFinishingOptionCell];
    if (v14)
    {
      v15 = [(UIPrinterFinishingOption *)self optionActions];
      v16 = [v15 count];

      if (v16)
      {
        v17 = [(UIPrinterFinishingOption *)self optionActions];
        v23 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        [v14 setPopupActions:v18];
      }
    }
  }

  else
  {
    v7 = [(UIPrinterFinishingOption *)self printerFinishingOptionCell];
    v6 = [v7 accessoryView];

    [v6 setOn:v3 != 0];
  }
}

- (id)selectedFinishingChoice
{
  v2 = self;
  v40 = *MEMORY[0x277D85DE8];
  if ([(UIPrinterFinishingOption *)self finishingType]== 6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(UIPrinterFinishingOption *)v2 optionChoices];
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
          v8 = [(UIPrinterFinishingOption *)v2 printInfo];
          v9 = [v8 outputBin];
          v10 = [v7 finishingChoiceInfo];
          v11 = [v10 objectForKey:@"OutputBinChoice"];
          if ([v9 isEqualToString:v11])
          {
            v12 = [(UIPrinterFinishingOption *)v2 printInfo];
            v13 = [v12 pageStackOrder];
            v14 = [v7 finishingChoiceInfo];
            [v14 objectForKey:@"com.apple.pageStackOrder"];
            v29 = v8;
            v16 = v15 = v2;
            v28 = [v13 isEqualToString:v16];

            v2 = v15;
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

  v18 = [(UIPrinterFinishingOption *)v2 finishingType];
  v19 = 0;
  if (v18 > 2)
  {
    switch(v18)
    {
      case 3:
        v20 = [(UIPrinterFinishingOption *)v2 printInfo];
        v21 = [v20 laminate];
        break;
      case 4:
        v20 = [(UIPrinterFinishingOption *)v2 printInfo];
        v21 = [v20 coat];
        break;
      case 5:
        v20 = [(UIPrinterFinishingOption *)v2 printInfo];
        v21 = [v20 trim];
        break;
      default:
        goto LABEL_28;
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      v20 = [(UIPrinterFinishingOption *)v2 printInfo];
      v21 = [v20 punch];
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_28;
      }

      v20 = [(UIPrinterFinishingOption *)v2 printInfo];
      v21 = [v20 fold];
    }
  }

  else
  {
    v20 = [(UIPrinterFinishingOption *)v2 printInfo];
    v21 = [v20 staple];
  }

  v19 = v21;

LABEL_28:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(UIPrinterFinishingOption *)v2 optionChoices];
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
  v2 = [MEMORY[0x277CBEB18] array];
  [(UIPrinterFinishingOption *)self setOptionActions:v2];

  v3 = [(UIPrinterFinishingOption *)self viewType]== 0;
  v4 = [(UIPrinterFinishingOption *)self finishingOptionsTableView];
  v5 = v4;
  if (v3)
  {
    v17 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

    v18 = v17;
    if (!v17)
    {
      v18 = [[UIPrintOptionCell alloc] initWithStyle:0 reuseIdentifier:@"UIPrintOptionCell"];
    }

    v32 = v18;
    [(UIPrintOptionCell *)v18 setSelectionStyle:0];
    v19 = objc_alloc(MEMORY[0x277D75AE8]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v21 = [(UIPrinterFinishingOption *)self printPanelViewController];
    v22 = [v21 controlTintColor];
    [v20 setOnTintColor:v22];

    [v20 addTarget:self action:sel_switchValueChanged_ forControlEvents:4096];
    [(UIPrintOptionPopupCell *)v32 setAccessoryView:v20];
    v23 = [MEMORY[0x277D756E0] valueCellConfiguration];
    v24 = [(UIPrinterFinishingOption *)self title];
    [v23 setText:v24];

    [(UIPrintOptionPopupCell *)v32 setContentConfiguration:v23];
    objc_initWeak(&location, self);
    v25 = [(UIPrinterFinishingOption *)self optionChoices];
    v26 = [v25 firstObject];

    v27 = MEMORY[0x277D750C8];
    v28 = [v26 title];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke;
    v40[3] = &unk_279A9C688;
    objc_copyWeak(&v41, &location);
    v29 = [v27 actionWithTitle:v28 image:0 identifier:0 handler:v40];

    v30 = [(UIPrinterFinishingOption *)self optionActions];
    [v30 addObject:v29];

    [(UIPrinterFinishingOption *)self setPrinterFinishingOptionCell:v32];
    objc_destroyWeak(&v41);

    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

    if (!v6)
    {
      v6 = [[UIPrintOptionPopupCell alloc] initWithStyle:0 reuseIdentifier:@"UIPrintOptionPopupCell"];
    }

    v32 = v6;
    v7 = [(UIPrinterFinishingOption *)self title];
    v8 = [(UIPrintOptionPopupCell *)v6 textLabel];
    [v8 setText:v7];

    [(UIPrintOptionPopupCell *)v6 setSelectionStyle:0];
    objc_initWeak(&location, self);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [(UIPrinterFinishingOption *)self optionChoices];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v10)
    {
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = MEMORY[0x277D750C8];
          v14 = [*(*(&v36 + 1) + 8 * i) title];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __63__UIPrinterFinishingOption_printerFinishingOptionTableViewCell__block_invoke_2;
          v34[3] = &unk_279A9C688;
          objc_copyWeak(&v35, &location);
          v15 = [v13 actionWithTitle:v14 image:0 identifier:0 handler:v34];

          v16 = [(UIPrinterFinishingOption *)self optionActions];
          [v16 addObject:v15];

          objc_destroyWeak(&v35);
        }

        v10 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
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

- (void)printerFinishingOptionActionSelected:(id)a3
{
  v16 = a3;
  if (v16 && (-[UIPrinterFinishingOption optionActions](self, "optionActions"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 indexOfObject:v16], v4, v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(UIPrinterFinishingOption *)self optionChoices];
    v6 = [v8 objectAtIndex:v5];

    v7 = [v6 finishingChoiceID];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = [(UIPrinterFinishingOption *)self finishingType];
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = [(UIPrinterFinishingOption *)self printInfo];
        [v10 setPunch:v7];
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_21;
        }

        v10 = [(UIPrinterFinishingOption *)self printInfo];
        [v10 setFold:v7];
      }
    }

    else
    {
      v10 = [(UIPrinterFinishingOption *)self printInfo];
      [v10 setStaple:v7];
    }
  }

  else if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = [(UIPrinterFinishingOption *)self printInfo];
      [v10 setTrim:v7];
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_21;
      }

      v11 = [v6 finishingChoiceInfo];
      v12 = [v11 objectForKey:@"OutputBinChoice"];
      v13 = [(UIPrinterFinishingOption *)self printInfo];
      [v13 setOutputBin:v12];

      v10 = [v6 finishingChoiceInfo];
      v14 = [v10 objectForKey:@"com.apple.pageStackOrder"];
      v15 = [(UIPrinterFinishingOption *)self printInfo];
      [v15 setPageStackOrder:v14];
    }
  }

  else if (v9 == 3)
  {
    v10 = [(UIPrinterFinishingOption *)self printInfo];
    [v10 setLaminate:v7];
  }

  else
  {
    v10 = [(UIPrinterFinishingOption *)self printInfo];
    [v10 setCoat:v7];
  }

LABEL_21:
  [(UIPrinterFinishingOption *)self updateFromPrintInfo];
}

- (void)switchValueChanged:(id)a3
{
  if ([a3 isOn])
  {
    v4 = [(UIPrinterFinishingOption *)self optionActions];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  [(UIPrinterFinishingOption *)self printerFinishingOptionActionSelected:v5];
}

- (id)summary
{
  v3 = [(UIPrinterFinishingOption *)self selectedFinishingChoice];
  if (v3)
  {
    v4 = [(UIPrinterFinishingOption *)self viewType];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v4)
    {
      v8 = [v6 localizedStringForKey:@"%@: %@" value:@"%@: %@" table:@"Localizable"];
      v9 = [(UIPrinterFinishingOption *)self title];
      v10 = [v3 title];
      v11 = [v5 stringWithFormat:v8, v9, v10];
    }

    else
    {
      v8 = [v6 localizedStringForKey:@"%@ On" value:@"%@ On" table:@"Localizable"];
      v9 = [(UIPrinterFinishingOption *)self title];
      v11 = [v5 stringWithFormat:v8, v9];
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