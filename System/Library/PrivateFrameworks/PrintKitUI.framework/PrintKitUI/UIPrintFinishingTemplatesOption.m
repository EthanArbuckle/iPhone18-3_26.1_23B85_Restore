@interface UIPrintFinishingTemplatesOption
- (BOOL)shouldShow;
- (NSString)summary;
- (UIPrintFinishingTemplatesOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4 finishingOptionsTableView:(id)a5;
- (UIPrintPanelViewController)printPanelViewController;
- (id)finishingTempletesTableViewCell;
- (id)selectedTemplate;
- (id)title;
- (id)titleForFinishingTemplate:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)templateActionSelected:(id)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFinishingTemplatesOption

- (UIPrintFinishingTemplatesOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4 finishingOptionsTableView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = UIPrintFinishingTemplatesOption;
  v9 = [(UIPrintFinishingTemplatesOption *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(UIPrintFinishingTemplatesOption *)v9 setPrintInfo:v7];
    [(UIPrintFinishingTemplatesOption *)v10 setPrintPanelViewController:v8];
    v11 = [(UIPrintFinishingTemplatesOption *)v10 printInfo];
    v12 = [v11 currentPrinter];
    v13 = [v12 finishingTemplates];
    v14 = [v13 copy];
    [(UIPrintFinishingTemplatesOption *)v10 setFinishingTemplates:v14];

    v15 = [(UIPrintFinishingTemplatesOption *)v10 printInfo];
    [v15 addObserver:v10 forKeyPath:0x2871AF390 options:0 context:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF390];

  v4.receiver = self;
  v4.super_class = UIPrintFinishingTemplatesOption;
  [(UIPrintFinishingTemplatesOption *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__UIPrintFinishingTemplatesOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)finishingTempletesTableViewCell
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintFinishingTemplatesOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v21 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintFinishingTemplatesOption *)self setTableViewCell:v21];
  v5 = [(UIPrintFinishingTemplatesOption *)self title];
  v6 = [v21 textLabel];
  [v6 setText:v5];

  [v21 setSelectionStyle:0];
  v7 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  v8 = [v7 currentPrinter];
  v9 = [v8 finishingTemplates];
  v10 = [v9 copy];
  [(UIPrintFinishingTemplatesOption *)self setFinishingTemplates:v10];

  v11 = [MEMORY[0x277CBEB18] array];
  [(UIPrintFinishingTemplatesOption *)self setFinishingTemplateActions:v11];

  objc_initWeak(&location, self);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = MEMORY[0x277D750C8];
        v17 = [(UIPrintFinishingTemplatesOption *)self titleForFinishingTemplate:*(*(&v24 + 1) + 8 * i), v21];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__UIPrintFinishingTemplatesOption_finishingTempletesTableViewCell__block_invoke;
        v22[3] = &unk_279A9C688;
        objc_copyWeak(&v23, &location);
        v18 = [v16 actionWithTitle:v17 image:0 identifier:0 handler:v22];

        v19 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
        [v19 addObject:v18];

        objc_destroyWeak(&v23);
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  [(UIPrintFinishingTemplatesOption *)self updateFromPrintInfo];
  objc_destroyWeak(&location);

  return v21;
}

void __66__UIPrintFinishingTemplatesOption_finishingTempletesTableViewCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained templateActionSelected:v3];
}

- (id)selectedTemplate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  v4 = [v3 finishingTemplate];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277D41110];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:v9];
        if ([v12 isEqualToString:v4])
        {
          v13 = v11;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)updateFromPrintInfo
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(UIPrintFinishingTemplatesOption *)self shouldShow])
  {
    v3 = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
    v4 = [(UIPrintFinishingTemplatesOption *)self selectedTemplate];
    v5 = [v3 indexOfObject:v4];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
      v6 = [v7 objectAtIndex:v5];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v18 + 1) + 8 * i) setState:v6 == *(*(&v18 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v13 = [(UIPrintFinishingTemplatesOption *)self tableViewCell];
    if (v13)
    {
      v14 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
        v22 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        [v13 setPopupActions:v17];
      }
    }
  }
}

- (void)templateActionSelected:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
    v10 = [v7 objectAtIndex:v6];

    v8 = [v10 objectForKey:*MEMORY[0x277D41110]];
    v9 = [(UIPrintFinishingTemplatesOption *)self printInfo];
    [v9 setFinishingTemplate:v8];
  }
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  v4 = [v3 currentPrinter];
  v5 = [v4 finishingTemplates];

  v6 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  v7 = [v6 currentPrinter];
  v8 = [v7 printerInfoDict];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 count];

    if (!v10)
    {
      LOBYTE(v7) = 0;
      goto LABEL_9;
    }

    if ([v5 count] != 1)
    {
      LOBYTE(v7) = 1;
      goto LABEL_9;
    }

    v7 = [v5 firstObject];
    v6 = [v7 objectForKey:*MEMORY[0x277D41110]];

    LODWORD(v7) = [v6 isEqualToString:@"none"] ^ 1;
  }

  else
  {

    LOBYTE(v7) = 0;
  }

LABEL_9:
  return v7;
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Finishing Template" value:@"Finishing Template" table:@"Localizable"];

  return v3;
}

- (NSString)summary
{
  v3 = [(UIPrintFinishingTemplatesOption *)self selectedTemplate];
  v4 = [(UIPrintFinishingTemplatesOption *)self titleForFinishingTemplate:v3];

  return v4;
}

- (id)titleForFinishingTemplate:(id)a3
{
  v3 = *MEMORY[0x277D41120];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:*MEMORY[0x277D41110]];

  if ([v6 isEqualToString:@"none"])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"No finishing template" value:@"No finishing template" table:@"Localizable"];

    v5 = v8;
  }

  else if (!v5)
  {
    v5 = v6;
  }

  return v5;
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end