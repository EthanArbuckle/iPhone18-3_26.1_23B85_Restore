@interface UIPrintFinishingTemplatesOption
- (BOOL)shouldShow;
- (NSString)summary;
- (UIPrintFinishingTemplatesOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller finishingOptionsTableView:(id)view;
- (UIPrintPanelViewController)printPanelViewController;
- (id)finishingTempletesTableViewCell;
- (id)selectedTemplate;
- (id)title;
- (id)titleForFinishingTemplate:(id)template;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)templateActionSelected:(id)selected;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintFinishingTemplatesOption

- (UIPrintFinishingTemplatesOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller finishingOptionsTableView:(id)view
{
  infoCopy = info;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = UIPrintFinishingTemplatesOption;
  v9 = [(UIPrintFinishingTemplatesOption *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(UIPrintFinishingTemplatesOption *)v9 setPrintInfo:infoCopy];
    [(UIPrintFinishingTemplatesOption *)v10 setPrintPanelViewController:controllerCopy];
    printInfo = [(UIPrintFinishingTemplatesOption *)v10 printInfo];
    currentPrinter = [printInfo currentPrinter];
    finishingTemplates = [currentPrinter finishingTemplates];
    v14 = [finishingTemplates copy];
    [(UIPrintFinishingTemplatesOption *)v10 setFinishingTemplates:v14];

    printInfo2 = [(UIPrintFinishingTemplatesOption *)v10 printInfo];
    [printInfo2 addObserver:v10 forKeyPath:0x2871AF390 options:0 context:0];
  }

  return v10;
}

- (void)dealloc
{
  printInfo = [(UIPrintFinishingTemplatesOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF390];

  v4.receiver = self;
  v4.super_class = UIPrintFinishingTemplatesOption;
  [(UIPrintFinishingTemplatesOption *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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
  printPanelViewController = [(UIPrintFinishingTemplatesOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v21 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionPopupCell"];

  [(UIPrintFinishingTemplatesOption *)self setTableViewCell:v21];
  title = [(UIPrintFinishingTemplatesOption *)self title];
  textLabel = [v21 textLabel];
  [textLabel setText:title];

  [v21 setSelectionStyle:0];
  printInfo = [(UIPrintFinishingTemplatesOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  finishingTemplates = [currentPrinter finishingTemplates];
  v10 = [finishingTemplates copy];
  [(UIPrintFinishingTemplatesOption *)self setFinishingTemplates:v10];

  array = [MEMORY[0x277CBEB18] array];
  [(UIPrintFinishingTemplatesOption *)self setFinishingTemplateActions:array];

  objc_initWeak(&location, self);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  finishingTemplates2 = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
  v13 = [finishingTemplates2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(finishingTemplates2);
        }

        v16 = MEMORY[0x277D750C8];
        v17 = [(UIPrintFinishingTemplatesOption *)self titleForFinishingTemplate:*(*(&v24 + 1) + 8 * i), v21];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__UIPrintFinishingTemplatesOption_finishingTempletesTableViewCell__block_invoke;
        v22[3] = &unk_279A9C688;
        objc_copyWeak(&v23, &location);
        v18 = [v16 actionWithTitle:v17 image:0 identifier:0 handler:v22];

        finishingTemplateActions = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
        [finishingTemplateActions addObject:v18];

        objc_destroyWeak(&v23);
      }

      v13 = [finishingTemplates2 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
  printInfo = [(UIPrintFinishingTemplatesOption *)self printInfo];
  finishingTemplate = [printInfo finishingTemplate];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  finishingTemplates = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
  v6 = [finishingTemplates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(finishingTemplates);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:v9];
        if ([v12 isEqualToString:finishingTemplate])
        {
          v13 = v11;

          goto LABEL_11;
        }
      }

      v7 = [finishingTemplates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    finishingTemplates = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
    selectedTemplate = [(UIPrintFinishingTemplatesOption *)self selectedTemplate];
    v5 = [finishingTemplates indexOfObject:selectedTemplate];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      finishingTemplateActions = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
      v6 = [finishingTemplateActions objectAtIndex:v5];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    finishingTemplateActions2 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
    v9 = [finishingTemplateActions2 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(finishingTemplateActions2);
          }

          [*(*(&v18 + 1) + 8 * i) setState:v6 == *(*(&v18 + 1) + 8 * i)];
        }

        v10 = [finishingTemplateActions2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    tableViewCell = [(UIPrintFinishingTemplatesOption *)self tableViewCell];
    if (tableViewCell)
    {
      finishingTemplateActions3 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
      v15 = [finishingTemplateActions3 count];

      if (v15)
      {
        finishingTemplateActions4 = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
        v22 = finishingTemplateActions4;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        [tableViewCell setPopupActions:v17];
      }
    }
  }
}

- (void)templateActionSelected:(id)selected
{
  selectedCopy = selected;
  finishingTemplateActions = [(UIPrintFinishingTemplatesOption *)self finishingTemplateActions];
  v6 = [finishingTemplateActions indexOfObject:selectedCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    finishingTemplates = [(UIPrintFinishingTemplatesOption *)self finishingTemplates];
    v10 = [finishingTemplates objectAtIndex:v6];

    v8 = [v10 objectForKey:*MEMORY[0x277D41110]];
    printInfo = [(UIPrintFinishingTemplatesOption *)self printInfo];
    [printInfo setFinishingTemplate:v8];
  }
}

- (BOOL)shouldShow
{
  printInfo = [(UIPrintFinishingTemplatesOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  finishingTemplates = [currentPrinter finishingTemplates];

  printInfo2 = [(UIPrintFinishingTemplatesOption *)self printInfo];
  currentPrinter2 = [printInfo2 currentPrinter];
  printerInfoDict = [currentPrinter2 printerInfoDict];
  if (printerInfoDict)
  {
    v9 = printerInfoDict;
    v10 = [finishingTemplates count];

    if (!v10)
    {
      LOBYTE(currentPrinter2) = 0;
      goto LABEL_9;
    }

    if ([finishingTemplates count] != 1)
    {
      LOBYTE(currentPrinter2) = 1;
      goto LABEL_9;
    }

    currentPrinter2 = [finishingTemplates firstObject];
    printInfo2 = [currentPrinter2 objectForKey:*MEMORY[0x277D41110]];

    LODWORD(currentPrinter2) = [printInfo2 isEqualToString:@"none"] ^ 1;
  }

  else
  {

    LOBYTE(currentPrinter2) = 0;
  }

LABEL_9:
  return currentPrinter2;
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Finishing Template" value:@"Finishing Template" table:@"Localizable"];

  return v3;
}

- (NSString)summary
{
  selectedTemplate = [(UIPrintFinishingTemplatesOption *)self selectedTemplate];
  v4 = [(UIPrintFinishingTemplatesOption *)self titleForFinishingTemplate:selectedTemplate];

  return v4;
}

- (id)titleForFinishingTemplate:(id)template
{
  v3 = *MEMORY[0x277D41120];
  templateCopy = template;
  v5 = [templateCopy objectForKey:v3];
  v6 = [templateCopy objectForKey:*MEMORY[0x277D41110]];

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