@interface UIPrintFeedFromOption
- (BOOL)shouldShow;
- (NSArray)trays;
- (NSMutableArray)trayNames;
- (UIPrintFeedFromOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)capitalizeFirstLetter:(id)letter;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)trayActionSelected:(id)selected;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFeedFromOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF250];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintFeedFromOption;
  [(UIPrintFeedFromOption *)&v5 dealloc];
}

- (UIPrintFeedFromOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = UIPrintFeedFromOption;
  v4 = [(UIPrintOption *)&v10 initWithPrintInfo:info printPanelViewController:controller];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Feed From" value:@"Feed From" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    [(UIPrintFeedFromOption *)v4 currentPrinterChanged];
    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v4 forKeyPath:0x2871AF250 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v4 printInfo];
    [printInfo2 addObserver:v4 forKeyPath:0x2871AF150 options:0 context:0];

    [(UIPrintFeedFromOption *)v4 updateFromPrintInfo];
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__UIPrintFeedFromOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
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
  selfCopy = self;
  v45 = *MEMORY[0x277D85DE8];
  if ([(UIPrintFeedFromOption *)self shouldShow])
  {
    summaryString = [(UIPrintFeedFromOption *)selfCopy summaryString];
    [(UIPrintOption *)selfCopy setSummary:summaryString];

    printInfo = [(UIPrintOption *)selfCopy printInfo];
    inputSlot = [printInfo inputSlot];

    if (inputSlot)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [(UIPrintFeedFromOption *)selfCopy trays];
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
            allKeys = [v11 allKeys];
            v13 = [allKeys containsObject:v9];

            if (v13)
            {
              v14 = [v11 objectForKey:v9];
              v15 = selfCopy;
              printInfo2 = [(UIPrintOption *)selfCopy printInfo];
              inputSlot2 = [printInfo2 inputSlot];
              v18 = [v14 isEqualToString:inputSlot2];

              if (v18)
              {
                selfCopy = v15;
                [(UIPrintFeedFromOption *)v15 setSelectedTray:v11];

                goto LABEL_16;
              }

              selfCopy = v15;
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
      [(UIPrintFeedFromOption *)selfCopy setSelectedTray:0];
    }

    selectedTray = [(UIPrintFeedFromOption *)selfCopy selectedTray];

    if (selectedTray)
    {
      trayActions = [(UIPrintFeedFromOption *)selfCopy trayActions];
      trays = [(UIPrintFeedFromOption *)selfCopy trays];
      selectedTray2 = [(UIPrintFeedFromOption *)selfCopy selectedTray];
      selectedTray = [trayActions objectAtIndex:{objc_msgSend(trays, "indexOfObject:", selectedTray2)}];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    trayActions2 = [(UIPrintFeedFromOption *)selfCopy trayActions];
    v24 = [trayActions2 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
            objc_enumerationMutation(trayActions2);
          }

          [*(*(&v34 + 1) + 8 * j) setState:selectedTray == *(*(&v34 + 1) + 8 * j)];
        }

        v25 = [trayActions2 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v25);
    }

    tableViewCell = [(UIPrintOption *)selfCopy tableViewCell];
    if (tableViewCell)
    {
      trayActions3 = [(UIPrintFeedFromOption *)selfCopy trayActions];
      v30 = [trayActions3 count];

      if (v30)
      {
        trayActions4 = [(UIPrintFeedFromOption *)selfCopy trayActions];
        v42 = trayActions4;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [tableViewCell setPopupActions:v32];
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
  trays = [(UIPrintFeedFromOption *)self trays];
  if (trays)
  {
    trays2 = [(UIPrintFeedFromOption *)self trays];
    v5 = [trays2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trayActionSelected:(id)selected
{
  selectedCopy = selected;
  trayActions = [(UIPrintFeedFromOption *)self trayActions];
  v6 = [trayActions indexOfObject:selectedCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    trays = [(UIPrintFeedFromOption *)self trays];
    v8 = [trays objectAtIndex:v6];
    [(UIPrintFeedFromOption *)self setSelectedTray:v8];

    selectedTray = [(UIPrintFeedFromOption *)self selectedTray];
    v9 = [selectedTray objectForKey:*MEMORY[0x277D41130]];
    printInfo = [(UIPrintOption *)self printInfo];
    [printInfo setInputSlot:v9];
  }
}

- (id)createPrintOptionTableViewCell
{
  v26 = *MEMORY[0x277D85DE8];
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v17 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintOption *)self setTableViewCell:v17];
  title = [(UIPrintOption *)self title];
  textLabel = [v17 textLabel];
  [textLabel setText:title];

  [v17 setSelectionStyle:0];
  array = [MEMORY[0x277CBEB18] array];
  [(UIPrintFeedFromOption *)self setTrayActions:array];

  objc_initWeak(&location, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  trayNames = [(UIPrintFeedFromOption *)self trayNames];
  v9 = [trayNames countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(trayNames);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = MEMORY[0x277D750C8];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __55__UIPrintFeedFromOption_createPrintOptionTableViewCell__block_invoke;
        v18[3] = &unk_279A9C688;
        objc_copyWeak(&v19, &location);
        v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v18];
        trayActions = [(UIPrintFeedFromOption *)self trayActions];
        [trayActions addObject:v14];

        objc_destroyWeak(&v19);
      }

      v9 = [trayNames countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    printInfo = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo currentPrinter];
    printerInfoDict = [currentPrinter printerInfoDict];

    if (printerInfoDict)
    {
      printInfo2 = [(UIPrintOption *)self printInfo];
      currentPrinter2 = [printInfo2 currentPrinter];
      supportedTrays = [currentPrinter2 supportedTrays];

      if (!supportedTrays || [supportedTrays count] < 2)
      {
        goto LABEL_9;
      }

      if ([supportedTrays count] == 2)
      {
        v9 = [supportedTrays objectAtIndex:0];
        v10 = *MEMORY[0x277D41130];
        v11 = [v9 objectForKey:*MEMORY[0x277D41130]];

        v12 = [supportedTrays objectAtIndex:1];
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

      v15 = [MEMORY[0x277CBEB18] arrayWithArray:supportedTrays];
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
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_trayNames)
  {
    trays = [(UIPrintFeedFromOption *)self trays];
    if (trays)
    {
      v6 = trays;
      trays2 = [(UIPrintFeedFromOption *)selfCopy trays];
      v8 = [trays2 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        trays3 = [(UIPrintFeedFromOption *)selfCopy trays];
        v11 = [v9 arrayWithCapacity:{objc_msgSend(trays3, "count")}];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = selfCopy;
        trays4 = [(UIPrintFeedFromOption *)selfCopy trays];
        v13 = [trays4 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
                objc_enumerationMutation(trays4);
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

            v14 = [trays4 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v14);
        }

        selfCopy = v23;
        trayNames = v23->_trayNames;
        v23->_trayNames = v11;
      }
    }
  }

  v3 = selfCopy->_trayNames;

  return v3;
}

- (id)capitalizeFirstLetter:(id)letter
{
  lowercaseString = [letter lowercaseString];
  v4 = [lowercaseString substringToIndex:1];
  uppercaseString = [v4 uppercaseString];
  v6 = [lowercaseString stringByReplacingCharactersInRange:0 withString:{1, uppercaseString}];

  return v6;
}

- (id)summaryString
{
  selectedTray = [(UIPrintFeedFromOption *)self selectedTray];

  if (selectedTray && (-[UIPrintFeedFromOption trays](self, "trays"), v4 = objc_claimAutoreleasedReturnValue(), -[UIPrintFeedFromOption selectedTray](self, "selectedTray"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 indexOfObject:v5], v5, v4, v6))
  {
    trayNames = [(UIPrintFeedFromOption *)self trayNames];
    v8 = [trayNames objectAtIndex:v6];

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