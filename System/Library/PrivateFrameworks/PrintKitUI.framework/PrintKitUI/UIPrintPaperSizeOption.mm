@interface UIPrintPaperSizeOption
- (NSArray)loadedPaperNames;
- (NSArray)loadedPaperSizes;
- (NSArray)supportedPaperNames;
- (UIPrintPaperSizeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)_removeRollsFrom:(id)from;
- (id)createPrintOptionTableViewCell;
- (id)defaultPaperIndex;
- (id)getPaperNames:(id)names;
- (id)itemList;
- (id)paperList;
- (id)summary;
- (int64_t)listItemSelected:(id)selected;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateSelectedPaper;
@end

@implementation UIPrintPaperSizeOption

- (void)dealloc
{
  pkPrinterQueue = self->_pkPrinterQueue;
  self->_pkPrinterQueue = 0;

  observedPrinter = [(UIPrintPaperSizeOption *)self observedPrinter];
  [observedPrinter removeObserver:self forKeyPath:0x2871B0290];

  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF1D0];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  v7.receiver = self;
  v7.super_class = UIPrintPaperSizeOption;
  [(UIPrintPaperSizeOption *)&v7 dealloc];
}

- (UIPrintPaperSizeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = UIPrintPaperSizeOption;
  v7 = [(UIPrintOption *)&v33 initWithPrintInfo:infoCopy printPanelViewController:controller];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Paper Size" value:@"Paper Size" table:@"Localizable"];
  [(UIPrintOption *)v7 setTitle:v9];

  defaultPaperIndex = [(UIPrintPaperSizeOption *)v7 defaultPaperIndex];
  selectedIndexPath = v7->_selectedIndexPath;
  v7->_selectedIndexPath = defaultPaperIndex;

  v12 = dispatch_queue_create("com.apple.UIKit.UIPrintPaperSizeOption.pkPrinter", 0);
  pkPrinterQueue = v7->_pkPrinterQueue;
  v7->_pkPrinterQueue = v12;

  printInfo = [(UIPrintOption *)v7 printInfo];
  currentPrinter = [printInfo currentPrinter];
  if (currentPrinter)
  {
    v16 = currentPrinter;
    printInfo2 = [(UIPrintOption *)v7 printInfo];
    currentPrinter2 = [printInfo2 currentPrinter];
    printerInfoDict = [currentPrinter2 printerInfoDict];

    if (!printerInfoDict)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [(UIPrintPaperSizeOption *)v7 updateSelectedPaper];
LABEL_7:
  printInfo3 = [(UIPrintOption *)v7 printInfo];
  currentPrinter3 = [printInfo3 currentPrinter];

  if (currentPrinter3)
  {
    printPanelViewController = [(UIPrintOption *)v7 printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    if ([printInteractionController _canShowPaperList])
    {
      printInfo4 = [(UIPrintOption *)v7 printInfo];
      currentPrinter4 = [printInfo4 currentPrinter];
      printerInfoDict2 = [currentPrinter4 printerInfoDict];
      if (printerInfoDict2)
      {
        loadedPaperSizes = [(UIPrintPaperSizeOption *)v7 loadedPaperSizes];
        -[UIPrintOption setShouldShow:](v7, "setShouldShow:", [loadedPaperSizes count] != 0);
      }

      else
      {
        [(UIPrintOption *)v7 setShouldShow:0];
      }
    }

    else
    {
      [(UIPrintOption *)v7 setShouldShow:0];
    }
  }

  else
  {
    [(UIPrintOption *)v7 setShouldShow:1];
  }

  currentPrinter5 = [infoCopy currentPrinter];
  [(UIPrintPaperSizeOption *)v7 setObservedPrinter:currentPrinter5];

  observedPrinter = [(UIPrintPaperSizeOption *)v7 observedPrinter];
  [observedPrinter addObserver:v7 forKeyPath:0x2871B0290 options:0 context:0];

  printInfo5 = [(UIPrintOption *)v7 printInfo];
  [printInfo5 addObserver:v7 forKeyPath:0x2871AF1D0 options:0 context:0];

  printInfo6 = [(UIPrintOption *)v7 printInfo];
  [printInfo6 addObserver:v7 forKeyPath:0x2871AF150 options:0 context:0];

LABEL_17:
  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__UIPrintPaperSizeOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __73__UIPrintPaperSizeOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:0x2871AF150])
  {
    v2 = [*(a1 + 40) observedPrinter];
    [v2 removeObserver:*(a1 + 40) forKeyPath:0x2871B0290];

    v3 = [*(a1 + 40) printInfo];
    v4 = [v3 currentPrinter];
    [*(a1 + 40) setObservedPrinter:v4];

    v5 = [*(a1 + 40) observedPrinter];
    [v5 addObserver:*(a1 + 40) forKeyPath:0x2871B0290 options:0 context:0];

LABEL_3:
    v6 = *(a1 + 40);

    return [v6 currentPrinterChanged];
  }

  if (![*(a1 + 32) isEqualToString:0x2871AF1D0])
  {
    result = [*(a1 + 32) isEqualToString:0x2871B0290];
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  v8 = *(a1 + 40);

  return [v8 updateSelectedPaper];
}

- (id)_removeRollsFrom:(id)from
{
  v3 = MEMORY[0x277CCAC30];
  fromCopy = from;
  v5 = [v3 predicateWithBlock:&__block_literal_global_7];
  v6 = [fromCopy filteredArrayUsingPredicate:v5];

  return v6;
}

uint64_t __43__UIPrintPaperSizeOption__removeRollsFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pkPaper];
  v3 = [v2 isRoll];

  return v3 ^ 1u;
}

- (id)paperList
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];

  if (currentPrinter && ([currentPrinter printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v21 = 0;
  }

  else
  {
    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    [printInteractionController _printItemContentSize];
    v9 = v8;
    v11 = v10;

    if (currentPrinter)
    {
      printInfo2 = [(UIPrintOption *)self printInfo];
      scaleUp = [printInfo2 scaleUp];

      pkPrinter = [currentPrinter pkPrinter];
      printInfo3 = [(UIPrintOption *)self printInfo];
      duplex = [printInfo3 duplex];
      if (scaleUp)
      {
        v17 = [UIPrintPaper _readyDocumentPaperListForPrinter:pkPrinter withDuplexMode:duplex contentSize:1 scaleUpForRoll:v9, v11];
      }

      else
      {
        printInfo4 = [(UIPrintOption *)self printInfo];
        v17 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", pkPrinter, duplex, [printInfo4 outputType], v9, v11);
      }
    }

    else
    {
      pkPrinter = [(UIPrintOption *)self printInfo];
      v17 = +[UIPrintPaper _genericPaperListForOutputType:](UIPrintPaper, "_genericPaperListForOutputType:", [pkPrinter outputType]);
    }

    if (v9 == *MEMORY[0x277CBF3A8] && v11 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v20 = [(UIPrintPaperSizeOption *)self _removeRollsFrom:v17];

      v17 = v20;
    }

    v21 = [v17 sortedArrayUsingComparator:&__block_literal_global_556];
  }

  return v21;
}

uint64_t __35__UIPrintPaperSizeOption_paperList__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pkPaper];
  v6 = [v5 localizedName];
  v7 = [v4 pkPaper];

  v8 = [v7 localizedName];
  v9 = [v6 localizedCompare:v8];

  return v9;
}

- (NSArray)loadedPaperSizes
{
  loadedPaperSizes = self->_loadedPaperSizes;
  if (!loadedPaperSizes)
  {
    paperList = [(UIPrintPaperSizeOption *)self paperList];
    v5 = self->_loadedPaperSizes;
    self->_loadedPaperSizes = paperList;

    loadedPaperSizes = self->_loadedPaperSizes;
  }

  return loadedPaperSizes;
}

- (NSArray)loadedPaperNames
{
  loadedPaperNames = self->_loadedPaperNames;
  if (!loadedPaperNames)
  {
    loadedPaperSizes = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v5 = [(UIPrintPaperSizeOption *)self getPaperNames:loadedPaperSizes];
    v6 = self->_loadedPaperNames;
    self->_loadedPaperNames = v5;

    loadedPaperNames = self->_loadedPaperNames;
  }

  return loadedPaperNames;
}

- (NSArray)supportedPaperNames
{
  supportedPaperSizes = [(UIPrintPaperSizeOption *)self supportedPaperSizes];
  if (supportedPaperSizes)
  {
    supportedPaperNames = self->_supportedPaperNames;

    if (!supportedPaperNames)
    {
      supportedPaperSizes2 = [(UIPrintPaperSizeOption *)self supportedPaperSizes];
      v6 = [(UIPrintPaperSizeOption *)self getPaperNames:supportedPaperSizes2];
      v7 = self->_supportedPaperNames;
      self->_supportedPaperNames = v6;
    }
  }

  v8 = self->_supportedPaperNames;

  return v8;
}

- (id)getPaperNames:(id)names
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v4 = namesCopy;
  if (namesCopy && [namesCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          _localizedName = [v11 _localizedName];
          if (_localizedName)
          {
            v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
            [v13 setObject:_localizedName forKey:@"Title"];
            _localizedMediaTypeName = [v11 _localizedMediaTypeName];
            if (_localizedMediaTypeName)
            {
              [v13 setObject:_localizedMediaTypeName forKey:@"SubTitle"];
            }

            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)itemList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  loadedPaperNames = [(UIPrintPaperSizeOption *)self loadedPaperNames];

  if (loadedPaperNames)
  {
    loadedPaperNames2 = [(UIPrintPaperSizeOption *)self loadedPaperNames];
    [v3 addObject:loadedPaperNames2];
  }

  supportedPaperNames = [(UIPrintPaperSizeOption *)self supportedPaperNames];

  if (supportedPaperNames)
  {
    supportedPaperNames2 = [(UIPrintPaperSizeOption *)self supportedPaperNames];
    [v3 addObject:supportedPaperNames2];
  }

  if ([v3 count])
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (int64_t)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [selectedCopy row];
  loadedPaperSizes = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
  v7 = [loadedPaperSizes count] - 1;

  if (v5 <= v7)
  {
    [(UIPrintPaperSizeOption *)self setSelectedIndexPath:selectedCopy];
    loadedPaperSizes2 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v10 = [loadedPaperSizes2 objectAtIndex:v5];

    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    [printInteractionController setPaper:v10];

    printInfo = [(UIPrintOption *)self printInfo];
    [printInfo setPrintPaper:v10];

    v8 = 1;
  }

  else
  {
    [(UIPrintPaperSizeOption *)self updateSelectedPaper];
    v8 = 0;
  }

  return v8;
}

- (id)createPrintOptionTableViewCell
{
  v3 = objc_alloc_init(UIPrintOptionListCell);
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  title = [(UIPrintOption *)self title];
  [valueCellConfiguration setText:title];

  summary = [(UIPrintPaperSizeOption *)self summary];
  [valueCellConfiguration setSecondaryText:summary];

  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setNumberOfLines:0];

  [(UIPrintOptionListCell *)v3 setContentConfiguration:valueCellConfiguration];
  [(UIPrintOptionListCell *)v3 setAccessoryType:1];
  [(UIPrintOptionListCell *)v3 setSelectionStyle:3];
  [(UIPrintOptionListCell *)v3 setItemListDelegate:self];
  [(UIPrintOption *)self setTableViewCell:v3];

  return v3;
}

- (id)defaultPaperIndex
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  if (currentPrinter)
  {
  }

  else
  {
    loadedPaperSizes = [(UIPrintPaperSizeOption *)self loadedPaperSizes];

    if (!loadedPaperSizes)
    {
      goto LABEL_15;
    }

    printInfo = [MEMORY[0x277D41098] defaultGenericPaperForLocale:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    loadedPaperSizes2 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v8 = [loadedPaperSizes2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(loadedPaperSizes2);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          pkPaper = [v12 pkPaper];
          v14 = [pkPaper isEqualSizeAndMediaType:printInfo];

          if (v14)
          {
            v15 = MEMORY[0x277CCAA70];
            loadedPaperSizes3 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
            v17 = [v15 indexPathForRow:objc_msgSend(loadedPaperSizes3 inSection:{"indexOfObject:", v12), 0}];

            v3 = v17;
          }
        }

        v9 = [loadedPaperSizes2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

LABEL_15:

  return v3;
}

- (void)updateSelectedPaper
{
  pkPrinterQueue = self->_pkPrinterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__UIPrintPaperSizeOption_updateSelectedPaper__block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(pkPrinterQueue, block);
}

void __45__UIPrintPaperSizeOption_updateSelectedPaper__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) printInfo];
  v3 = [v2 printPaper];
  v4 = [v3 pkPaper];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(a1 + 32) loadedPaperSizes];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    v18 = v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) pkPaper];
        v12 = [v11 isEqualSizeAndMediaType:v4];

        if (v12)
        {
          v13 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:0];
          [*(a1 + 32) setSelectedIndexPath:v13];

          if (pthread_main_np() == 1)
          {
            v14 = [*(a1 + 32) tableViewCell];
            v15 = [v14 contentConfiguration];

            v16 = [*(a1 + 32) summary];
            [v15 setSecondaryText:v16];

            v17 = [*(a1 + 32) tableViewCell];
            [v17 setContentConfiguration:v15];
          }

          else
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            v20[0] = __45__UIPrintPaperSizeOption_updateSelectedPaper__block_invoke_2;
            v20[1] = &unk_279A9BEE0;
            v20[2] = *(a1 + 32);
            dispatch_sync(MEMORY[0x277D85CD0], block);
          }
        }

        ++v8;
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

void __45__UIPrintPaperSizeOption_updateSelectedPaper__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableViewCell];
  v5 = [v2 contentConfiguration];

  v3 = [*(a1 + 32) summary];
  [v5 setSecondaryText:v3];

  v4 = [*(a1 + 32) tableViewCell];
  [v4 setContentConfiguration:v5];
}

- (void)currentPrinterChanged
{
  [(UIPrintPaperSizeOption *)self setLoadedPaperSizes:0];
  [(UIPrintPaperSizeOption *)self setLoadedPaperNames:0];
  [(UIPrintPaperSizeOption *)self setSupportedPaperSizes:0];
  [(UIPrintPaperSizeOption *)self setSupportedPaperNames:0];
  defaultPaperIndex = [(UIPrintPaperSizeOption *)self defaultPaperIndex];
  [(UIPrintPaperSizeOption *)self setSelectedIndexPath:defaultPaperIndex];

  [(UIPrintPaperSizeOption *)self updateSelectedPaper];
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];

  if (currentPrinter)
  {
    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    if ([printInteractionController _canShowPaperList])
    {
      printInfo2 = [(UIPrintOption *)self printInfo];
      currentPrinter2 = [printInfo2 currentPrinter];
      printerInfoDict = [currentPrinter2 printerInfoDict];
      if (printerInfoDict)
      {
        loadedPaperSizes = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
        -[UIPrintOption setShouldShow:](self, "setShouldShow:", [loadedPaperSizes count] != 0);
      }

      else
      {
        [(UIPrintOption *)self setShouldShow:0];
      }
    }

    else
    {
      [(UIPrintOption *)self setShouldShow:0];
    }
  }

  else
  {

    [(UIPrintOption *)self setShouldShow:1];
  }
}

- (id)summary
{
  selectedIndexPath = [(UIPrintPaperSizeOption *)self selectedIndexPath];
  if ([selectedIndexPath section] == 1)
  {
    supportedPaperNames = [(UIPrintPaperSizeOption *)self supportedPaperNames];
  }

  else
  {
    loadedPaperNames = [(UIPrintPaperSizeOption *)self loadedPaperNames];
    if (loadedPaperNames)
    {
      [(UIPrintPaperSizeOption *)self loadedPaperNames];
    }

    else
    {
      [(UIPrintPaperSizeOption *)self supportedPaperNames];
    }
    supportedPaperNames = ;
  }

  v6 = [supportedPaperNames count];
  selectedIndexPath2 = [(UIPrintPaperSizeOption *)self selectedIndexPath];
  v8 = [selectedIndexPath2 row];

  if (v6 <= v8)
  {
    v11 = 0;
  }

  else
  {
    selectedIndexPath3 = [(UIPrintPaperSizeOption *)self selectedIndexPath];
    v10 = [supportedPaperNames objectAtIndex:{objc_msgSend(selectedIndexPath3, "row")}];
    v11 = [v10 objectForKey:@"Title"];
  }

  return v11;
}

- (void)didSelectPrintOption
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  [tableViewCell printOptionCellTapped];
}

@end