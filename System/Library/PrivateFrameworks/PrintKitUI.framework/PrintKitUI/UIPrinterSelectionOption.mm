@interface UIPrinterSelectionOption
- (PKPrinter)printer;
- (UIPrinterSelectionOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)printerDisplayName:(id)name;
- (id)summary;
- (void)didSelectPrintOption;
- (void)setPrinter:(id)printer;
- (void)setShowContactingPrinter:(BOOL)printer;
- (void)showContacting;
@end

@implementation UIPrinterSelectionOption

- (UIPrinterSelectionOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = UIPrinterSelectionOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:info printPanelViewController:controller];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"PRINTER_OPTION_TITLE" value:@"Printer" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];
  }

  return v4;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  title = [(UIPrintOption *)self title];
  [valueCellConfiguration setText:title];

  summary = [(UIPrinterSelectionOption *)self summary];
  [valueCellConfiguration setSecondaryText:summary];

  [v5 setContentConfiguration:valueCellConfiguration];
  if ([(UIPrinterSelectionOption *)self contactingPrinter])
  {
    [(UIPrinterSelectionOption *)self showContacting];
  }

  else
  {
    [v5 setAccessoryView:0];
    [v5 setAccessoryType:1];
    [v5 setSelectionStyle:3];
  }

  return v5;
}

- (id)printerDisplayName:(id)name
{
  pkPrinter = [name pkPrinter];
  v4 = pkPrinter;
  if (pkPrinter)
  {
    displayName = [pkPrinter displayName];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    displayName = [v6 localizedStringForKey:@"No Printer Selected" value:@"No Printer Selected" table:@"Localizable"];
  }

  return displayName;
}

- (id)summary
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  v5 = [(UIPrinterSelectionOption *)self printerDisplayName:currentPrinter];

  return v5;
}

- (void)didSelectPrintOption
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsNavController = [printPanelViewController printOptionsNavController];

  topViewController = [printOptionsNavController topViewController];
  browserController = [(UIPrinterSelectionOption *)self browserController];

  if (topViewController != browserController)
  {
    browserController2 = [(UIPrinterSelectionOption *)self browserController];

    if (!browserController2)
    {
      v7 = [UIPrinterBrowserViewController alloc];
      printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
      printInfo = [printPanelViewController2 printInfo];
      printPanelViewController3 = [(UIPrintOption *)self printPanelViewController];
      v11 = [(UIPrinterBrowserViewController *)v7 initWithOwnerViewController:self printInfo:printInfo printPanelViewController:printPanelViewController3];
      [(UIPrinterSelectionOption *)self setBrowserController:v11];
    }

    browserController3 = [(UIPrinterSelectionOption *)self browserController];
    [printOptionsNavController pushViewController:browserController3 animated:1];
  }
}

- (PKPrinter)printer
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  pkPrinter = [currentPrinter pkPrinter];

  return pkPrinter;
}

- (void)setPrinter:(id)printer
{
  printerCopy = printer;
  v6 = [[UIPrinter alloc] _initWithPrinter:printerCopy];

  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setCurrentPrinter:v6];
}

- (void)showContacting
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:4];
  [tableViewCell setAccessoryView:v2];
  [v2 startAnimating];
}

- (void)setShowContactingPrinter:(BOOL)printer
{
  printerCopy = printer;
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (!printerCopy)
  {
    [(UIPrinterSelectionOption *)self setContactingPrinter:0];
    [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_showContacting object:0];
    if (pthread_main_np() == 1)
    {
      [tableViewCell setAccessoryView:0];
      [tableViewCell setAccessoryType:1];
      goto LABEL_9;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__UIPrinterSelectionOption_setShowContactingPrinter___block_invoke_2;
    v7[3] = &unk_279A9BEE0;
    v8 = tableViewCell;
    dispatch_sync(MEMORY[0x277D85CD0], v7);
    v6 = v8;
LABEL_8:

    goto LABEL_9;
  }

  [(UIPrinterSelectionOption *)self setContactingPrinter:1];
  if (pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__UIPrinterSelectionOption_setShowContactingPrinter___block_invoke;
    block[3] = &unk_279A9BF78;
    v10 = tableViewCell;
    selfCopy = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = v10;
    goto LABEL_8;
  }

  [tableViewCell setSelectionStyle:0];
  [(UIPrinterSelectionOption *)self performSelector:sel_showContacting withObject:0 afterDelay:0.1];
LABEL_9:
}

uint64_t __53__UIPrinterSelectionOption_setShowContactingPrinter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectionStyle:0];
  v2 = *(a1 + 40);

  return [v2 performSelector:sel_showContacting withObject:0 afterDelay:0.1];
}

uint64_t __53__UIPrinterSelectionOption_setShowContactingPrinter___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAccessoryView:0];
  v2 = *(a1 + 32);

  return [v2 setAccessoryType:1];
}

@end