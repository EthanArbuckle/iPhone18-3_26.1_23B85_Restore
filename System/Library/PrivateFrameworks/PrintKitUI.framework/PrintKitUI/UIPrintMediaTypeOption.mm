@interface UIPrintMediaTypeOption
- (BOOL)shouldShow;
- (NSArray)mediaTypes;
- (NSMutableArray)mediaTypeNames;
- (UIPrintMediaTypeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summaryString;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)mediaTypeSelected:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintMediaTypeOption

- (UIPrintMediaTypeOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Media Type" value:@"Media Type" table:@"Localizable"];
  [(UIPrintOption *)self setTitle:v10];

  v15.receiver = self;
  v15.super_class = UIPrintMediaTypeOption;
  v11 = [(UIPrintOption *)&v15 initWithPrintInfo:v8 printPanelViewController:v7];

  if (v11)
  {
    [(UIPrintMediaTypeOption *)v11 updateFromPrintInfo];
    v12 = [(UIPrintOption *)v11 printInfo];
    [v12 addObserver:v11 forKeyPath:0x2871AF230 options:0 context:0];

    v13 = [(UIPrintOption *)v11 printInfo];
    [v13 addObserver:v11 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF230];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintMediaTypeOption;
  [(UIPrintMediaTypeOption *)&v5 dealloc];
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintMediaTypeOption *)self mediaTypes];
  if (v3)
  {
    v4 = [(UIPrintMediaTypeOption *)self mediaTypes];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__UIPrintMediaTypeOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
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
    v3 = [(UIPrintMediaTypeOption *)self summaryString];
    [(UIPrintOption *)self setSummary:v3];

    v4 = [(UIPrintOption *)self printInfo];
    v5 = [v4 mediaType];

    if (v5)
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
            v13 = [(UIPrintOption *)self printInfo];
            v14 = [v13 mediaType];
            v15 = [v12 isEqualToString:v14];

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

    v16 = [(UIPrintMediaTypeOption *)self selectedMediaType];

    if (v16)
    {
      v17 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
      v18 = [(UIPrintMediaTypeOption *)self mediaTypes];
      v19 = [(UIPrintMediaTypeOption *)self selectedMediaType];
      v16 = [v17 objectAtIndex:{objc_msgSend(v18, "indexOfObject:", v19)}];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
            objc_enumerationMutation(v20);
          }

          [*(*(&v31 + 1) + 8 * j) setState:v16 == *(*(&v31 + 1) + 8 * j)];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v22);
    }

    v25 = [(UIPrintOption *)self tableViewCell];
    if (v25)
    {
      v26 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
      v27 = [v26 count];

      if (v27)
      {
        v28 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
        v39 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        [v25 setPopupActions:v29];
      }
    }
  }
}

- (NSArray)mediaTypes
{
  if (!self->_mediaTypes)
  {
    v3 = [(UIPrintOption *)self printInfo];
    v4 = [v3 currentPrinter];
    v5 = [v4 printerInfoDict];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB18];
      v7 = [(UIPrintOption *)self printInfo];
      v8 = [v7 currentPrinter];
      v9 = [v8 supportedMediaTypes];
      v10 = [v6 arrayWithArray:v9];

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
  v2 = self;
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_mediaTypeNames)
  {
    v5 = [(UIPrintMediaTypeOption *)self mediaTypes];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIPrintMediaTypeOption *)v2 mediaTypes];
      v8 = [v7 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        v10 = [(UIPrintMediaTypeOption *)v2 mediaTypes];
        v26 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = v2;
        obj = [(UIPrintMediaTypeOption *)v2 mediaTypes];
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

        v2 = v24;
        mediaTypeNames = v24->_mediaTypeNames;
        v24->_mediaTypeNames = v26;
      }
    }
  }

  v3 = v2->_mediaTypeNames;

  return v3;
}

- (void)mediaTypeSelected:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(UIPrintMediaTypeOption *)self mediaTypes];
    v8 = [v7 objectAtIndex:v6];
    [(UIPrintMediaTypeOption *)self setSelectedMediaType:v8];

    v11 = [(UIPrintMediaTypeOption *)self selectedMediaType];
    v9 = [v11 objectForKey:*MEMORY[0x277D41188]];
    v10 = [(UIPrintOption *)self printInfo];
    [v10 setMediaType:v9];
  }
}

- (id)createPrintOptionTableViewCell
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v17 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  v5 = [(UIPrintOption *)self title];
  v6 = [v17 textLabel];
  [v6 setText:v5];

  [v17 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v17];
  v7 = [MEMORY[0x277CBEB18] array];
  [(UIPrintMediaTypeOption *)self setMediaTypeActions:v7];

  objc_initWeak(&location, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UIPrintMediaTypeOption *)self mediaTypeNames];
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
        v18[2] = __56__UIPrintMediaTypeOption_createPrintOptionTableViewCell__block_invoke;
        v18[3] = &unk_279A9C688;
        objc_copyWeak(&v19, &location);
        v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v18];
        v15 = [(UIPrintMediaTypeOption *)self mediaTypeActions];
        [v15 addObject:v14];

        objc_destroyWeak(&v19);
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
  v3 = [(UIPrintMediaTypeOption *)self selectedMediaType];

  if (v3 && (-[UIPrintMediaTypeOption mediaTypes](self, "mediaTypes"), v4 = objc_claimAutoreleasedReturnValue(), -[UIPrintMediaTypeOption selectedMediaType](self, "selectedMediaType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 indexOfObject:v5], v5, v4, v6))
  {
    v7 = [(UIPrintMediaTypeOption *)self mediaTypeNames];
    v8 = [v7 objectAtIndex:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Auto Select Media Type" value:@"Auto Select Media Type" table:@"Localizable"];
  }

  v9 = v8;

  return v9;
}

@end