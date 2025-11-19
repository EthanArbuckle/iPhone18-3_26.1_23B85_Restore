@interface UIPrinterSelectionOption
- (PKPrinter)printer;
- (UIPrinterSelectionOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)printerDisplayName:(id)a3;
- (id)summary;
- (void)didSelectPrintOption;
- (void)setPrinter:(id)a3;
- (void)setShowContactingPrinter:(BOOL)a3;
- (void)showContacting;
@end

@implementation UIPrinterSelectionOption

- (UIPrinterSelectionOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIPrinterSelectionOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:a3 printPanelViewController:a4];
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
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  [(UIPrintOption *)self setTableViewCell:v5];
  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [(UIPrintOption *)self title];
  [v6 setText:v7];

  v8 = [(UIPrinterSelectionOption *)self summary];
  [v6 setSecondaryText:v8];

  [v5 setContentConfiguration:v6];
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

- (id)printerDisplayName:(id)a3
{
  v3 = [a3 pkPrinter];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"No Printer Selected" value:@"No Printer Selected" table:@"Localizable"];
  }

  return v5;
}

- (id)summary
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];
  v5 = [(UIPrinterSelectionOption *)self printerDisplayName:v4];

  return v5;
}

- (void)didSelectPrintOption
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v13 = [v3 printOptionsNavController];

  v4 = [v13 topViewController];
  v5 = [(UIPrinterSelectionOption *)self browserController];

  if (v4 != v5)
  {
    v6 = [(UIPrinterSelectionOption *)self browserController];

    if (!v6)
    {
      v7 = [UIPrinterBrowserViewController alloc];
      v8 = [(UIPrintOption *)self printPanelViewController];
      v9 = [v8 printInfo];
      v10 = [(UIPrintOption *)self printPanelViewController];
      v11 = [(UIPrinterBrowserViewController *)v7 initWithOwnerViewController:self printInfo:v9 printPanelViewController:v10];
      [(UIPrinterSelectionOption *)self setBrowserController:v11];
    }

    v12 = [(UIPrinterSelectionOption *)self browserController];
    [v13 pushViewController:v12 animated:1];
  }
}

- (PKPrinter)printer
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 currentPrinter];
  v4 = [v3 pkPrinter];

  return v4;
}

- (void)setPrinter:(id)a3
{
  v4 = a3;
  v6 = [[UIPrinter alloc] _initWithPrinter:v4];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 setCurrentPrinter:v6];
}

- (void)showContacting
{
  v3 = [(UIPrintOption *)self tableViewCell];
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:4];
  [v3 setAccessoryView:v2];
  [v2 startAnimating];
}

- (void)setShowContactingPrinter:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPrintOption *)self tableViewCell];
  if (!v3)
  {
    [(UIPrinterSelectionOption *)self setContactingPrinter:0];
    [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_showContacting object:0];
    if (pthread_main_np() == 1)
    {
      [v5 setAccessoryView:0];
      [v5 setAccessoryType:1];
      goto LABEL_9;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__UIPrinterSelectionOption_setShowContactingPrinter___block_invoke_2;
    v7[3] = &unk_279A9BEE0;
    v8 = v5;
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
    v10 = v5;
    v11 = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = v10;
    goto LABEL_8;
  }

  [v5 setSelectionStyle:0];
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