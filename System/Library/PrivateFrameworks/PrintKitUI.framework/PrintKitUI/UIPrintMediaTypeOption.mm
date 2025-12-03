@interface UIPrintMediaTypeOption
- (BOOL)shouldShow;
- (NSArray)mediaTypes;
- (NSMutableArray)mediaTypeNames;
- (UIPrintMediaTypeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)mediaTypeSelected:(id)selected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintMediaTypeOption

- (UIPrintMediaTypeOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v6 = MEMORY[0x277CCA8D8];
  controllerCopy = controller;
  infoCopy = info;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Media Type" value:@"Media Type" table:@"Localizable"];
  [(UIPrintOption *)self setTitle:v10];

  v15.receiver = self;
  v15.super_class = UIPrintMediaTypeOption;
  v11 = [(UIPrintOption *)&v15 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];

  if (v11)
  {
    [(UIPrintMediaTypeOption *)v11 updateFromPrintInfo];
    printInfo = [(UIPrintOption *)v11 printInfo];
    [printInfo addObserver:v11 forKeyPath:0x2871AF230 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v11 printInfo];
    [printInfo2 addObserver:v11 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v11;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF230];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintMediaTypeOption;
  [(UIPrintMediaTypeOption *)&v5 dealloc];
}

- (BOOL)shouldShow
{
  mediaTypes = [(UIPrintMediaTypeOption *)self mediaTypes];
  if (mediaTypes)
  {
    mediaTypes2 = [(UIPrintMediaTypeOption *)self mediaTypes];
    v5 = [mediaTypes2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__UIPrintMediaTypeOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __73__UIPrintMediaTypeOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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
  v42 = *MEMORY[0x277D85DE8];
  if ([(UIPrintMediaTypeOption *)self shouldShow])
  {
    summaryString = [(UIPrintMediaTypeOption *)self summaryString];
    [(UIPrintOption *)self setSummary:summaryString];

    printInfo = [(UIPrintOption *)self printInfo];
    mediaType = [printInfo mediaType];

    if (mediaType)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [(UIPrintMediaTypeOption *)self mediaTypes];
      v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v36;
        v9 = *MEMORY[0x277D41188];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v36 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v35 + 1) + 8 * i);
            v12 = [v11 objectForKey:v9];
            printInfo2 = [(UIPrintOption *)self printInfo];
            mediaType2 = [printInfo2 mediaType];
            v15 = [v12 isEqualToString:mediaType2];

            if (v15)
            {
              [(UIPrintMediaTypeOption *)self setSelectedMediaType:v11];
            }
          }

          v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v7);
      }
    }

    else
    {
      [(UIPrintMediaTypeOption *)self setSelectedMediaType:0];
    }

    selectedMediaType = [(UIPrintMediaTypeOption *)self selectedMediaType];

    if (selectedMediaType)
    {
      mediaTypeActions = [(UIPrintMediaTypeOption *)self mediaTypeActions];
      mediaTypes = [(UIPrintMediaTypeOption *)self mediaTypes];
      selectedMediaType2 = [(UIPrintMediaTypeOption *)self selectedMediaType];
      selectedMediaType = [mediaTypeActions objectAtIndex:{objc_msgSend(mediaTypes, "indexOfObject:", selectedMediaType2)}];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    mediaTypeActions2 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
    v21 = [mediaTypeActions2 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(mediaTypeActions2);
          }

          [*(*(&v31 + 1) + 8 * j) setState:selectedMediaType == *(*(&v31 + 1) + 8 * j)];
        }

        v22 = [mediaTypeActions2 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v22);
    }

    tableViewCell = [(UIPrintOption *)self tableViewCell];
    if (tableViewCell)
    {
      mediaTypeActions3 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
      v27 = [mediaTypeActions3 count];

      if (v27)
      {
        mediaTypeActions4 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
        v39 = mediaTypeActions4;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        [tableViewCell setPopupActions:v29];
      }
    }
  }
}

- (NSArray)mediaTypes
{
  if (!self->_mediaTypes)
  {
    printInfo = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo currentPrinter];
    printerInfoDict = [currentPrinter printerInfoDict];

    if (printerInfoDict)
    {
      v6 = MEMORY[0x277CBEB18];
      printInfo2 = [(UIPrintOption *)self printInfo];
      currentPrinter2 = [printInfo2 currentPrinter];
      supportedMediaTypes = [currentPrinter2 supportedMediaTypes];
      v10 = [v6 arrayWithArray:supportedMediaTypes];

      [v10 sortUsingFunction:compareMediaTypes context:0];
      if ([v10 count])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&self->_mediaTypes, v11);
    }
  }

  mediaTypes = self->_mediaTypes;

  return mediaTypes;
}

- (void)currentPrinterChanged
{
  [(UIPrintMediaTypeOption *)self setMediaTypes:0];
  [(UIPrintMediaTypeOption *)self setMediaTypeNames:0];
  [(UIPrintMediaTypeOption *)self setMediaTypeActions:0];
  [(UIPrintMediaTypeOption *)self setSelectedMediaType:0];

  [(UIPrintMediaTypeOption *)self updateFromPrintInfo];
}

- (NSMutableArray)mediaTypeNames
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_mediaTypeNames)
  {
    mediaTypes = [(UIPrintMediaTypeOption *)self mediaTypes];
    if (mediaTypes)
    {
      v6 = mediaTypes;
      mediaTypes2 = [(UIPrintMediaTypeOption *)selfCopy mediaTypes];
      v8 = [mediaTypes2 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        mediaTypes3 = [(UIPrintMediaTypeOption *)selfCopy mediaTypes];
        v26 = [v9 arrayWithCapacity:{objc_msgSend(mediaTypes3, "count")}];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = selfCopy;
        obj = [(UIPrintMediaTypeOption *)selfCopy mediaTypes];
        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          v14 = *MEMORY[0x277D41198];
          v15 = *MEMORY[0x277D41188];
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v27 + 1) + 8 * i);
              v18 = [v17 objectForKey:v14];
              if (v18)
              {
                v19 = v18;
                v20 = [v17 objectForKey:v15];
                if (([v20 isEqualToString:@"auto"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"any"))
                {
                  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v22 = [v21 localizedStringForKey:@"Auto Select" value:@"Auto Select" table:@"Localizable"];

                  v19 = v22;
                }

                [(NSMutableArray *)v26 addObject:v19];
              }
            }

            v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v12);
        }

        selfCopy = v24;
        mediaTypeNames = v24->_mediaTypeNames;
        v24->_mediaTypeNames = v26;
      }
    }
  }

  v3 = selfCopy->_mediaTypeNames;

  return v3;
}

- (void)mediaTypeSelected:(id)selected
{
  selectedCopy = selected;
  mediaTypeActions = [(UIPrintMediaTypeOption *)self mediaTypeActions];
  v6 = [mediaTypeActions indexOfObject:selectedCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    mediaTypes = [(UIPrintMediaTypeOption *)self mediaTypes];
    v8 = [mediaTypes objectAtIndex:v6];
    [(UIPrintMediaTypeOption *)self setSelectedMediaType:v8];

    selectedMediaType = [(UIPrintMediaTypeOption *)self selectedMediaType];
    v9 = [selectedMediaType objectForKey:*MEMORY[0x277D41188]];
    printInfo = [(UIPrintOption *)self printInfo];
    [printInfo setMediaType:v9];
  }
}

- (id)createPrintOptionTableViewCell
{
  v26 = *MEMORY[0x277D85DE8];
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v17 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  title = [(UIPrintOption *)self title];
  textLabel = [v17 textLabel];
  [textLabel setText:title];

  [v17 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v17];
  array = [MEMORY[0x277CBEB18] array];
  [(UIPrintMediaTypeOption *)self setMediaTypeActions:array];

  objc_initWeak(&location, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mediaTypeNames = [(UIPrintMediaTypeOption *)self mediaTypeNames];
  v9 = [mediaTypeNames countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(mediaTypeNames);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = MEMORY[0x277D750C8];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __56__UIPrintMediaTypeOption_createPrintOptionTableViewCell__block_invoke;
        v18[3] = &unk_279A9C688;
        objc_copyWeak(&v19, &location);
        v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v18];
        mediaTypeActions = [(UIPrintMediaTypeOption *)self mediaTypeActions];
        [mediaTypeActions addObject:v14];

        objc_destroyWeak(&v19);
      }

      v9 = [mediaTypeNames countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  [(UIPrintMediaTypeOption *)self updateFromPrintInfo];
  objc_destroyWeak(&location);

  return v17;
}

void __56__UIPrintMediaTypeOption_createPrintOptionTableViewCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained mediaTypeSelected:v3];
}

- (id)summaryString
{
  selectedMediaType = [(UIPrintMediaTypeOption *)self selectedMediaType];

  if (selectedMediaType && (-[UIPrintMediaTypeOption mediaTypes](self, "mediaTypes"), v4 = objc_claimAutoreleasedReturnValue(), -[UIPrintMediaTypeOption selectedMediaType](self, "selectedMediaType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 indexOfObject:v5], v5, v4, v6))
  {
    mediaTypeNames = [(UIPrintMediaTypeOption *)self mediaTypeNames];
    v8 = [mediaTypeNames objectAtIndex:v6];
  }

  else
  {
    mediaTypeNames = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [mediaTypeNames localizedStringForKey:@"Auto Select Media Type" value:@"Auto Select Media Type" table:@"Localizable"];
  }

  v9 = v8;

  return v9;
}

@end