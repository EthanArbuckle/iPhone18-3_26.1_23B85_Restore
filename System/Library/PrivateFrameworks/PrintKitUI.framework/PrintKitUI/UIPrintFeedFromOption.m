@interface UIPrintFeedFromOption
- (BOOL)shouldShow;
- (NSArray)trays;
- (NSMutableArray)trayNames;
- (UIPrintFeedFromOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)capitalizeFirstLetter:(id)a3;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)trayActionSelected:(id)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFeedFromOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF250];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintFeedFromOption;
  [(UIPrintFeedFromOption *)&v5 dealloc];
}

- (UIPrintFeedFromOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v10.receiver = self;
  v10.super_class = UIPrintFeedFromOption;
  v4 = [(UIPrintOption *)&v10 initWithPrintInfo:a3 printPanelViewController:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Feed From" value:@"Feed From" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    [(UIPrintFeedFromOption *)v4 currentPrinterChanged];
    v7 = [(UIPrintOption *)v4 printInfo];
    [v7 addObserver:v4 forKeyPath:0x2871AF250 options:0 context:0];

    v8 = [(UIPrintOption *)v4 printInfo];
    [v8 addObserver:v4 forKeyPath:0x2871AF150 options:0 context:0];

    [(UIPrintFeedFromOption *)v4 updateFromPrintInfo];
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__UIPrintFeedFromOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __72__UIPrintFeedFromOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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

- (void)updateFromPrintInfo
{
  v2 = self;
  v45 = *MEMORY[0x277D85DE8];
  if ([(UIPrintFeedFromOption *)self shouldShow])
  {
    v3 = [(UIPrintFeedFromOption *)v2 summaryString];
    [(UIPrintOption *)v2 setSummary:v3];

    v4 = [(UIPrintOption *)v2 printInfo];
    v5 = [v4 inputSlot];

    if (v5)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [(UIPrintFeedFromOption *)v2 trays];
      v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v39;
        v9 = *MEMORY[0x277D41130];
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v39 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v38 + 1) + 8 * i);
            v12 = [v11 allKeys];
            v13 = [v12 containsObject:v9];

            if (v13)
            {
              v14 = [v11 objectForKey:v9];
              v15 = v2;
              v16 = [(UIPrintOption *)v2 printInfo];
              v17 = [v16 inputSlot];
              v18 = [v14 isEqualToString:v17];

              if (v18)
              {
                v2 = v15;
                [(UIPrintFeedFromOption *)v15 setSelectedTray:v11];

                goto LABEL_16;
              }

              v2 = v15;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      [(UIPrintFeedFromOption *)v2 setSelectedTray:0];
    }

    v19 = [(UIPrintFeedFromOption *)v2 selectedTray];

    if (v19)
    {
      v20 = [(UIPrintFeedFromOption *)v2 trayActions];
      v21 = [(UIPrintFeedFromOption *)v2 trays];
      v22 = [(UIPrintFeedFromOption *)v2 selectedTray];
      v19 = [v20 objectAtIndex:{objc_msgSend(v21, "indexOfObject:", v22)}];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = [(UIPrintFeedFromOption *)v2 trayActions];
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v34 + 1) + 8 * j) setState:v19 == *(*(&v34 + 1) + 8 * j)];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v25);
    }

    v28 = [(UIPrintOption *)v2 tableViewCell];
    if (v28)
    {
      v29 = [(UIPrintFeedFromOption *)v2 trayActions];
      v30 = [v29 count];

      if (v30)
      {
        v31 = [(UIPrintFeedFromOption *)v2 trayActions];
        v42 = v31;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [v28 setPopupActions:v32];
      }
    }
  }
}

- (void)currentPrinterChanged
{
  [(UIPrintFeedFromOption *)self setTrays:0];
  [(UIPrintFeedFromOption *)self setTrayNames:0];
  [(UIPrintFeedFromOption *)self setTrayActions:0];
  [(UIPrintFeedFromOption *)self setSelectedTray:0];

  [(UIPrintFeedFromOption *)self updateFromPrintInfo];
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintFeedFromOption *)self trays];
  if (v3)
  {
    v4 = [(UIPrintFeedFromOption *)self trays];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trayActionSelected:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintFeedFromOption *)self trayActions];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(UIPrintFeedFromOption *)self trays];
    v8 = [v7 objectAtIndex:v6];
    [(UIPrintFeedFromOption *)self setSelectedTray:v8];

    v11 = [(UIPrintFeedFromOption *)self selectedTray];
    v9 = [v11 objectForKey:*MEMORY[0x277D41130]];
    v10 = [(UIPrintOption *)self printInfo];
    [v10 setInputSlot:v9];
  }
}

- (id)createPrintOptionTableViewCell
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v17 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v17];
  v5 = [(UIPrintOption *)self title];
  v6 = [v17 textLabel];
  [v6 setText:v5];

  [v17 setSelectionStyle:0];
  v7 = [MEMORY[0x277CBEB18] array];
  [(UIPrintFeedFromOption *)self setTrayActions:v7];

  objc_initWeak(&location, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UIPrintFeedFromOption *)self trayNames];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = MEMORY[0x277D750C8];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __55__UIPrintFeedFromOption_createPrintOptionTableViewCell__block_invoke;
        v18[3] = &unk_279A9C688;
        objc_copyWeak(&v19, &location);
        v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v18];
        v15 = [(UIPrintFeedFromOption *)self trayActions];
        [v15 addObject:v14];

        objc_destroyWeak(&v19);
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  [(UIPrintFeedFromOption *)self updateFromPrintInfo];
  objc_destroyWeak(&location);

  return v17;
}

void __55__UIPrintFeedFromOption_createPrintOptionTableViewCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained trayActionSelected:v3];
}

- (NSArray)trays
{
  if (!self->_trays)
  {
    v3 = [(UIPrintOption *)self printInfo];
    v4 = [v3 currentPrinter];
    v5 = [v4 printerInfoDict];

    if (v5)
    {
      v6 = [(UIPrintOption *)self printInfo];
      v7 = [v6 currentPrinter];
      v8 = [v7 supportedTrays];

      if (!v8 || [v8 count] < 2)
      {
        goto LABEL_9;
      }

      if ([v8 count] == 2)
      {
        v9 = [v8 objectAtIndex:0];
        v10 = *MEMORY[0x277D41130];
        v11 = [v9 objectForKey:*MEMORY[0x277D41130]];

        v12 = [v8 objectAtIndex:1];
        v13 = [v12 objectForKey:v10];

        if ([v11 isEqual:@"auto"])
        {

LABEL_9:
          v15 = 0;
LABEL_10:
          if ([v15 count])
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          objc_storeStrong(&self->_trays, v16);

          goto LABEL_14;
        }

        v14 = [v13 isEqual:@"auto"];

        if (v14)
        {
          goto LABEL_9;
        }
      }

      v15 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v15 sortUsingFunction:compareTrayNames context:0];
      goto LABEL_10;
    }
  }

LABEL_14:
  trays = self->_trays;

  return trays;
}

- (NSMutableArray)trayNames
{
  v2 = self;
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_trayNames)
  {
    v5 = [(UIPrintFeedFromOption *)self trays];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIPrintFeedFromOption *)v2 trays];
      v8 = [v7 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        v10 = [(UIPrintFeedFromOption *)v2 trays];
        v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = v2;
        v12 = [(UIPrintFeedFromOption *)v2 trays];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          v16 = *MEMORY[0x277D41140];
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v18 = [*(*(&v24 + 1) + 8 * i) objectForKey:v16];
              if (v18)
              {
                v19 = v18;
                if (([v18 isEqualToString:@"auto"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"any"))
                {
                  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v21 = [v20 localizedStringForKey:@"Auto Select" value:@"Auto Select" table:@"Localizable"];

                  v19 = v20;
                }

                else
                {
                  v21 = [(UIPrintFeedFromOption *)v23 capitalizeFirstLetter:v19];
                }

                [(NSMutableArray *)v11 addObject:v21];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v14);
        }

        v2 = v23;
        trayNames = v23->_trayNames;
        v23->_trayNames = v11;
      }
    }
  }

  v3 = v2->_trayNames;

  return v3;
}

- (id)capitalizeFirstLetter:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 substringToIndex:1];
  v5 = [v4 uppercaseString];
  v6 = [v3 stringByReplacingCharactersInRange:0 withString:{1, v5}];

  return v6;
}

- (id)summaryString
{
  v3 = [(UIPrintFeedFromOption *)self selectedTray];

  if (v3 && (-[UIPrintFeedFromOption trays](self, "trays"), v4 = objc_claimAutoreleasedReturnValue(), -[UIPrintFeedFromOption selectedTray](self, "selectedTray"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 indexOfObject:v5], v5, v4, v6))
  {
    v7 = [(UIPrintFeedFromOption *)self trayNames];
    v8 = [v7 objectAtIndex:v6];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Feed From %@" value:@"Feed From %@" table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11, v8];
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v8 localizedStringForKey:@"Auto Select Feed" value:@"Auto Select Feed" table:@"Localizable"];
  }

  return v12;
}

@end