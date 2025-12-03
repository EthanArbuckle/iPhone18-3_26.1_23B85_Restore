@interface UIPrintAccountInfoOption
- (BOOL)canDismiss;
- (BOOL)isJobAccountIDRequired;
- (BOOL)shouldShow;
- (UIPrintAccountInfoOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (void)changeJobAccountID:(id)d;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)promptForJobAccountID;
- (void)selectJobAccountID;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintAccountInfoOption

- (UIPrintAccountInfoOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = UIPrintAccountInfoOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:info printPanelViewController:controller];
  v5 = v4;
  if (v4)
  {
    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF210 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF210];

  v4.receiver = self;
  v4.super_class = UIPrintAccountInfoOption;
  [(UIPrintAccountInfoOption *)&v4 dealloc];
}

- (BOOL)isJobAccountIDRequired
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  if (currentPrinter)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    currentPrinter2 = [printInfo2 currentPrinter];
    v7 = [currentPrinter2 jobAccountIDSupport] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"JobAccountIDCell"];

  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"JobAccountIDCell"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Account" value:@"Account" table:@"Localizable"];
    textLabel = [v5 textLabel];
    [textLabel setText:v7];

    [v5 setSelectionStyle:0];
    v9 = objc_alloc(MEMORY[0x277D75BB8]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    [(UIPrintAccountInfoOption *)self setJobAccountIDTextField:v14];

    jobAccountIDTextField = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField setDelegate:self];

    v16 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 0);
    jobAccountIDTextField2 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField2 setTextAlignment:v16];

    jobAccountIDTextField3 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField3 setEnabled:1];

    jobAccountIDTextField4 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField4 setSpellCheckingType:1];

    jobAccountIDTextField5 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField5 setAutocorrectionType:1];

    jobAccountIDTextField6 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField6 setHoverStyle:0];

    jobAccountIDTextField7 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField7 addTarget:self action:sel_changeJobAccountID_ forControlEvents:0x40000];

    jobAccountIDTextField8 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v5 setAccessoryView:jobAccountIDTextField8];

    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"Account" value:@"Account" table:@"Localizable"];
    [v25 setText:v27];

    textProperties = [cellConfiguration textProperties];
    font = [textProperties font];
    [v25 setFont:font];

    [v25 setNumberOfLines:1];
    [v25 sizeToFit];
    printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
    printOptionsTableView2 = [printPanelViewController2 printOptionsTableView];
    v32 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [printOptionsTableView2 rectForRowAtIndexPath:v32];
    v34 = v33;
    v36 = v35;

    jobAccountIDTextField9 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField9 frame];
    v39 = v38;
    v41 = v40;

    [v25 frame];
    v43 = v34 - (v42 + 64.0);
    jobAccountIDTextField10 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [jobAccountIDTextField10 setFrame:{v39, v41, v43, v36 + -8.0}];
  }

  isJobAccountIDRequired = [(UIPrintAccountInfoOption *)self isJobAccountIDRequired];
  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = v46;
  if (isJobAccountIDRequired)
  {
    v48 = @"Account Information (Required)";
  }

  else
  {
    v48 = @"Account Information";
  }

  v49 = [v46 localizedStringForKey:v48 value:v48 table:@"Localizable"];
  jobAccountIDTextField11 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [jobAccountIDTextField11 setPlaceholder:v49];

  printInfo = [(UIPrintOption *)self printInfo];
  jobAccountID = [printInfo jobAccountID];
  jobAccountIDTextField12 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [jobAccountIDTextField12 setText:jobAccountID];

  jobAccountIDTextField13 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [jobAccountIDTextField13 setHoverStyle:0];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UIPrintAccountInfoOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  printInfo = [(UIPrintOption *)self printInfo];
  jobAccountID = [printInfo jobAccountID];
  jobAccountIDTextField = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [jobAccountIDTextField setText:jobAccountID];
}

- (void)changeJobAccountID:(id)d
{
  text = [d text];
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setJobAccountID:text];
}

- (BOOL)shouldShow
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  if (currentPrinter)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    currentPrinter2 = [printInfo2 currentPrinter];
    supportsJobAccountID = [currentPrinter2 supportsJobAccountID];
  }

  else
  {
    supportsJobAccountID = 0;
  }

  return supportsJobAccountID;
}

- (void)promptForJobAccountID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Account information required for “%@”" value:@"Account information required for “%@”" table:@"Localizable"];
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  displayName = [currentPrinter displayName];
  v9 = [v3 stringWithFormat:v5, displayName];

  v10 = MEMORY[0x277D75110];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Enter the account information in the print options." value:@"Enter the account information in the print options." table:@"Localizable"];
  v13 = [v10 alertControllerWithTitle:v9 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ACCOUNT_ID_ALERT_BUTTON_TEXT" value:@"OK" table:@"Localizable"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__UIPrintAccountInfoOption_promptForJobAccountID__block_invoke;
  v19[3] = &unk_279A9CA70;
  v19[4] = self;
  v17 = [v14 actionWithTitle:v16 style:0 handler:v19];

  [v13 addAction:v17];
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  [printPanelViewController presentViewController:v13 animated:1 completion:0];
}

- (void)selectJobAccountID
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  editableTextField = [tableViewCell editableTextField];

  v3 = editableTextField;
  if (editableTextField)
  {
    [editableTextField becomeFirstResponder];
    v3 = editableTextField;
  }
}

- (BOOL)canDismiss
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  editableTextField = [tableViewCell editableTextField];

  if (editableTextField && [editableTextField isFirstResponder])
  {
    [editableTextField resignFirstResponder];
  }

  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  if ([currentPrinter jobAccountIDSupport] == 1)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    jobAccountID = [printInfo2 jobAccountID];
    if (!jobAccountID)
    {

LABEL_11:
      [(UIPrintAccountInfoOption *)self promptForJobAccountID];
      v13 = 0;
      goto LABEL_12;
    }

    v9 = jobAccountID;
    printInfo3 = [(UIPrintOption *)self printInfo];
    jobAccountID2 = [printInfo3 jobAccountID];
    v12 = [jobAccountID2 length];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = 1;
LABEL_12:

  return v13;
}

@end