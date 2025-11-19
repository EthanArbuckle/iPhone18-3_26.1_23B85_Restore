@interface UIPrintAccountInfoOption
- (BOOL)canDismiss;
- (BOOL)isJobAccountIDRequired;
- (BOOL)shouldShow;
- (UIPrintAccountInfoOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (void)changeJobAccountID:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)promptForJobAccountID;
- (void)selectJobAccountID;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintAccountInfoOption

- (UIPrintAccountInfoOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIPrintAccountInfoOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printInfo];
    [v6 addObserver:v5 forKeyPath:0x2871AF210 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF210];

  v4.receiver = self;
  v4.super_class = UIPrintAccountInfoOption;
  [(UIPrintAccountInfoOption *)&v4 dealloc];
}

- (BOOL)isJobAccountIDRequired
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];
  if (v4)
  {
    v5 = [(UIPrintOption *)self printInfo];
    v6 = [v5 currentPrinter];
    v7 = [v6 jobAccountIDSupport] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"JobAccountIDCell"];

  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"JobAccountIDCell"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Account" value:@"Account" table:@"Localizable"];
    v8 = [v5 textLabel];
    [v8 setText:v7];

    [v5 setSelectionStyle:0];
    v9 = objc_alloc(MEMORY[0x277D75BB8]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    [(UIPrintAccountInfoOption *)self setJobAccountIDTextField:v14];

    v15 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v15 setDelegate:self];

    v16 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 0);
    v17 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v17 setTextAlignment:v16];

    v18 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v18 setEnabled:1];

    v19 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v19 setSpellCheckingType:1];

    v20 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v20 setAutocorrectionType:1];

    v21 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v21 setHoverStyle:0];

    v22 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v22 addTarget:self action:sel_changeJobAccountID_ forControlEvents:0x40000];

    v23 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v5 setAccessoryView:v23];

    v24 = [MEMORY[0x277D756E0] cellConfiguration];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"Account" value:@"Account" table:@"Localizable"];
    [v25 setText:v27];

    v28 = [v24 textProperties];
    v29 = [v28 font];
    [v25 setFont:v29];

    [v25 setNumberOfLines:1];
    [v25 sizeToFit];
    v30 = [(UIPrintOption *)self printPanelViewController];
    v31 = [v30 printOptionsTableView];
    v32 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [v31 rectForRowAtIndexPath:v32];
    v34 = v33;
    v36 = v35;

    v37 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v37 frame];
    v39 = v38;
    v41 = v40;

    [v25 frame];
    v43 = v34 - (v42 + 64.0);
    v44 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
    [v44 setFrame:{v39, v41, v43, v36 + -8.0}];
  }

  v45 = [(UIPrintAccountInfoOption *)self isJobAccountIDRequired];
  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = v46;
  if (v45)
  {
    v48 = @"Account Information (Required)";
  }

  else
  {
    v48 = @"Account Information";
  }

  v49 = [v46 localizedStringForKey:v48 value:v48 table:@"Localizable"];
  v50 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [v50 setPlaceholder:v49];

  v51 = [(UIPrintOption *)self printInfo];
  v52 = [v51 jobAccountID];
  v53 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [v53 setText:v52];

  v54 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [v54 setHoverStyle:0];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v5 = [(UIPrintOption *)self printInfo];
  v3 = [v5 jobAccountID];
  v4 = [(UIPrintAccountInfoOption *)self jobAccountIDTextField];
  [v4 setText:v3];
}

- (void)changeJobAccountID:(id)a3
{
  v5 = [a3 text];
  v4 = [(UIPrintOption *)self printInfo];
  [v4 setJobAccountID:v5];
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];
  if (v4)
  {
    v5 = [(UIPrintOption *)self printInfo];
    v6 = [v5 currentPrinter];
    v7 = [v6 supportsJobAccountID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)promptForJobAccountID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Account information required for “%@”" value:@"Account information required for “%@”" table:@"Localizable"];
  v6 = [(UIPrintOption *)self printInfo];
  v7 = [v6 currentPrinter];
  v8 = [v7 displayName];
  v9 = [v3 stringWithFormat:v5, v8];

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
  v18 = [(UIPrintOption *)self printPanelViewController];
  [v18 presentViewController:v13 animated:1 completion:0];
}

- (void)selectJobAccountID
{
  v2 = [(UIPrintOption *)self tableViewCell];
  v4 = [v2 editableTextField];

  v3 = v4;
  if (v4)
  {
    [v4 becomeFirstResponder];
    v3 = v4;
  }
}

- (BOOL)canDismiss
{
  v3 = [(UIPrintOption *)self tableViewCell];
  v4 = [v3 editableTextField];

  if (v4 && [v4 isFirstResponder])
  {
    [v4 resignFirstResponder];
  }

  v5 = [(UIPrintOption *)self printInfo];
  v6 = [v5 currentPrinter];
  if ([v6 jobAccountIDSupport] == 1)
  {
    v7 = [(UIPrintOption *)self printInfo];
    v8 = [v7 jobAccountID];
    if (!v8)
    {

LABEL_11:
      [(UIPrintAccountInfoOption *)self promptForJobAccountID];
      v13 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    v10 = [(UIPrintOption *)self printInfo];
    v11 = [v10 jobAccountID];
    v12 = [v11 length];

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