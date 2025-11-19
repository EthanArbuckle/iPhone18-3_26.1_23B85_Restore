@interface UIPrintPaperSizeOption
- (NSArray)loadedPaperNames;
- (NSArray)loadedPaperSizes;
- (NSArray)supportedPaperNames;
- (UIPrintPaperSizeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)_removeRollsFrom:(id)a3;
- (id)createPrintOptionTableViewCell;
- (id)defaultPaperIndex;
- (id)getPaperNames:(id)a3;
- (id)itemList;
- (id)paperList;
- (id)summary;
- (int64_t)listItemSelected:(id)a3;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateSelectedPaper;
@end

@implementation UIPrintPaperSizeOption

- (void)dealloc
{
  pkPrinterQueue = self->_pkPrinterQueue;
  self->_pkPrinterQueue = 0;

  v4 = [(UIPrintPaperSizeOption *)self observedPrinter];
  [v4 removeObserver:self forKeyPath:0x2871B0290];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF1D0];

  v6 = [(UIPrintOption *)self printInfo];
  [v6 removeObserver:self forKeyPath:0x2871AF150];

  v7.receiver = self;
  v7.super_class = UIPrintPaperSizeOption;
  [(UIPrintPaperSizeOption *)&v7 dealloc];
}

- (UIPrintPaperSizeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = UIPrintPaperSizeOption;
  v7 = [(UIPrintOption *)&v33 initWithPrintInfo:v6 printPanelViewController:a4];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Paper Size" value:@"Paper Size" table:@"Localizable"];
  [(UIPrintOption *)v7 setTitle:v9];

  v10 = [(UIPrintPaperSizeOption *)v7 defaultPaperIndex];
  selectedIndexPath = v7->_selectedIndexPath;
  v7->_selectedIndexPath = v10;

  v12 = dispatch_queue_create("com.apple.UIKit.UIPrintPaperSizeOption.pkPrinter", 0);
  pkPrinterQueue = v7->_pkPrinterQueue;
  v7->_pkPrinterQueue = v12;

  v14 = [(UIPrintOption *)v7 printInfo];
  v15 = [v14 currentPrinter];
  if (v15)
  {
    v16 = v15;
    v17 = [(UIPrintOption *)v7 printInfo];
    v18 = [v17 currentPrinter];
    v19 = [v18 printerInfoDict];

    if (!v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [(UIPrintPaperSizeOption *)v7 updateSelectedPaper];
LABEL_7:
  v20 = [(UIPrintOption *)v7 printInfo];
  v21 = [v20 currentPrinter];

  if (v21)
  {
    v22 = [(UIPrintOption *)v7 printPanelViewController];
    v23 = [v22 printInteractionController];
    if ([v23 _canShowPaperList])
    {
      v24 = [(UIPrintOption *)v7 printInfo];
      v25 = [v24 currentPrinter];
      v26 = [v25 printerInfoDict];
      if (v26)
      {
        v27 = [(UIPrintPaperSizeOption *)v7 loadedPaperSizes];
        -[UIPrintOption setShouldShow:](v7, "setShouldShow:", [v27 count] != 0);
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

  v28 = [v6 currentPrinter];
  [(UIPrintPaperSizeOption *)v7 setObservedPrinter:v28];

  v29 = [(UIPrintPaperSizeOption *)v7 observedPrinter];
  [v29 addObserver:v7 forKeyPath:0x2871B0290 options:0 context:0];

  v30 = [(UIPrintOption *)v7 printInfo];
  [v30 addObserver:v7 forKeyPath:0x2871AF1D0 options:0 context:0];

  v31 = [(UIPrintOption *)v7 printInfo];
  [v31 addObserver:v7 forKeyPath:0x2871AF150 options:0 context:0];

LABEL_17:
  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__UIPrintPaperSizeOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
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

- (id)_removeRollsFrom:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_7];
  v6 = [v4 filteredArrayUsingPredicate:v5];

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
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];

  if (v4 && ([v4 printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v21 = 0;
  }

  else
  {
    v6 = [(UIPrintOption *)self printPanelViewController];
    v7 = [v6 printInteractionController];
    [v7 _printItemContentSize];
    v9 = v8;
    v11 = v10;

    if (v4)
    {
      v12 = [(UIPrintOption *)self printInfo];
      v13 = [v12 scaleUp];

      v14 = [v4 pkPrinter];
      v15 = [(UIPrintOption *)self printInfo];
      v16 = [v15 duplex];
      if (v13)
      {
        v17 = [UIPrintPaper _readyDocumentPaperListForPrinter:v14 withDuplexMode:v16 contentSize:1 scaleUpForRoll:v9, v11];
      }

      else
      {
        v18 = [(UIPrintOption *)self printInfo];
        v17 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", v14, v16, [v18 outputType], v9, v11);
      }
    }

    else
    {
      v14 = [(UIPrintOption *)self printInfo];
      v17 = +[UIPrintPaper _genericPaperListForOutputType:](UIPrintPaper, "_genericPaperListForOutputType:", [v14 outputType]);
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
    v4 = [(UIPrintPaperSizeOption *)self paperList];
    v5 = self->_loadedPaperSizes;
    self->_loadedPaperSizes = v4;

    loadedPaperSizes = self->_loadedPaperSizes;
  }

  return loadedPaperSizes;
}

- (NSArray)loadedPaperNames
{
  loadedPaperNames = self->_loadedPaperNames;
  if (!loadedPaperNames)
  {
    v4 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v5 = [(UIPrintPaperSizeOption *)self getPaperNames:v4];
    v6 = self->_loadedPaperNames;
    self->_loadedPaperNames = v5;

    loadedPaperNames = self->_loadedPaperNames;
  }

  return loadedPaperNames;
}

- (NSArray)supportedPaperNames
{
  v3 = [(UIPrintPaperSizeOption *)self supportedPaperSizes];
  if (v3)
  {
    supportedPaperNames = self->_supportedPaperNames;

    if (!supportedPaperNames)
    {
      v5 = [(UIPrintPaperSizeOption *)self supportedPaperSizes];
      v6 = [(UIPrintPaperSizeOption *)self getPaperNames:v5];
      v7 = self->_supportedPaperNames;
      self->_supportedPaperNames = v6;
    }
  }

  v8 = self->_supportedPaperNames;

  return v8;
}

- (id)getPaperNames:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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
          v12 = [v11 _localizedName];
          if (v12)
          {
            v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
            [v13 setObject:v12 forKey:@"Title"];
            v14 = [v11 _localizedMediaTypeName];
            if (v14)
            {
              [v13 setObject:v14 forKey:@"SubTitle"];
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
  v4 = [(UIPrintPaperSizeOption *)self loadedPaperNames];

  if (v4)
  {
    v5 = [(UIPrintPaperSizeOption *)self loadedPaperNames];
    [v3 addObject:v5];
  }

  v6 = [(UIPrintPaperSizeOption *)self supportedPaperNames];

  if (v6)
  {
    v7 = [(UIPrintPaperSizeOption *)self supportedPaperNames];
    [v3 addObject:v7];
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

- (int64_t)listItemSelected:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
  v7 = [v6 count] - 1;

  if (v5 <= v7)
  {
    [(UIPrintPaperSizeOption *)self setSelectedIndexPath:v4];
    v9 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v10 = [v9 objectAtIndex:v5];

    v11 = [(UIPrintOption *)self printPanelViewController];
    v12 = [v11 printInteractionController];
    [v12 setPaper:v10];

    v13 = [(UIPrintOption *)self printInfo];
    [v13 setPrintPaper:v10];

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
  v4 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v5 = [(UIPrintOption *)self title];
  [v4 setText:v5];

  v6 = [(UIPrintPaperSizeOption *)self summary];
  [v4 setSecondaryText:v6];

  v7 = [v4 secondaryTextProperties];
  [v7 setNumberOfLines:0];

  [(UIPrintOptionListCell *)v3 setContentConfiguration:v4];
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
  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 currentPrinter];
  if (v5)
  {
  }

  else
  {
    v6 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];

    if (!v6)
    {
      goto LABEL_15;
    }

    v4 = [MEMORY[0x277D41098] defaultGenericPaperForLocale:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 pkPaper];
          v14 = [v13 isEqualSizeAndMediaType:v4];

          if (v14)
          {
            v15 = MEMORY[0x277CCAA70];
            v16 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
            v17 = [v15 indexPathForRow:objc_msgSend(v16 inSection:{"indexOfObject:", v12), 0}];

            v3 = v17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v3 = [(UIPrintPaperSizeOption *)self defaultPaperIndex];
  [(UIPrintPaperSizeOption *)self setSelectedIndexPath:v3];

  [(UIPrintPaperSizeOption *)self updateSelectedPaper];
  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 currentPrinter];

  if (v5)
  {
    v11 = [(UIPrintOption *)self printPanelViewController];
    v6 = [v11 printInteractionController];
    if ([v6 _canShowPaperList])
    {
      v7 = [(UIPrintOption *)self printInfo];
      v8 = [v7 currentPrinter];
      v9 = [v8 printerInfoDict];
      if (v9)
      {
        v10 = [(UIPrintPaperSizeOption *)self loadedPaperSizes];
        -[UIPrintOption setShouldShow:](self, "setShouldShow:", [v10 count] != 0);
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
  v3 = [(UIPrintPaperSizeOption *)self selectedIndexPath];
  if ([v3 section] == 1)
  {
    v4 = [(UIPrintPaperSizeOption *)self supportedPaperNames];
  }

  else
  {
    v5 = [(UIPrintPaperSizeOption *)self loadedPaperNames];
    if (v5)
    {
      [(UIPrintPaperSizeOption *)self loadedPaperNames];
    }

    else
    {
      [(UIPrintPaperSizeOption *)self supportedPaperNames];
    }
    v4 = ;
  }

  v6 = [v4 count];
  v7 = [(UIPrintPaperSizeOption *)self selectedIndexPath];
  v8 = [v7 row];

  if (v6 <= v8)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(UIPrintPaperSizeOption *)self selectedIndexPath];
    v10 = [v4 objectAtIndex:{objc_msgSend(v9, "row")}];
    v11 = [v10 objectForKey:@"Title"];
  }

  return v11;
}

- (void)didSelectPrintOption
{
  v2 = [(UIPrintOption *)self tableViewCell];
  [v2 printOptionCellTapped];
}

@end