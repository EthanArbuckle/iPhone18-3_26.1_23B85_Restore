@interface CrossPlatformManualDetailsViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CrossPlatformManualDetailsViewController)init;
- (DCTCodeDelegate)dctDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_constructDCTUrl:(id)url withPasscode:(id)passcode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_doneButtonTapped;
- (void)keyboardWasShown:(id)shown;
- (void)keyboardWillBeHidden:(id)hidden;
- (void)resetFirstResponder;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CrossPlatformManualDetailsViewController

- (CrossPlatformManualDetailsViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOURCE_MANUAL_ENTRY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SOURCE_MANUAL_ENTRY_DETAILS" value:&stru_28753DF48 table:@"Localizable"];
  v11.receiver = self;
  v11.super_class = CrossPlatformManualDetailsViewController;
  v7 = [(OBTableWelcomeController *)&v11 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v7)
  {
    [(CrossPlatformManualDetailsViewController *)v7 setModalInPresentation:1];
    v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{&stru_28753DF48, &stru_28753DF48, 0}];
    values = v7->_values;
    v7->_values = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = CrossPlatformManualDetailsViewController;
  [(TSOBTableWelcomeController *)&v22 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  buttonTray = [(CrossPlatformManualDetailsViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SSManualEntryCell"];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView4 setBackgroundColor:clearColor];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDataSource:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setDelegate:self];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setScrollEnabled:1];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setAllowsMultipleSelection:0];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 reloadData];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  view = [(CrossPlatformManualDetailsViewController *)self view];
  [view layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = CrossPlatformManualDetailsViewController;
  [(CrossPlatformManualDetailsViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = CrossPlatformManualDetailsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)resetFirstResponder
{
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  tableView = [(OBTableWelcomeController *)self tableView];
  v4 = [tableView cellForRowAtIndexPath:v6];

  editableTextField = [v4 editableTextField];
  [editableTextField becomeFirstResponder];
}

- (void)keyboardWasShown:(id)shown
{
  userInfo = [shown userInfo];
  p_keyboardSize = &self->_keyboardSize;
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  p_keyboardSize->width = v6;
  p_keyboardSize->height = v7;
}

- (void)keyboardWillBeHidden:(id)hidden
{
  view = [(CrossPlatformManualDetailsViewController *)self view];
  [view endEditing:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SSManualEntryCell" forIndexPath:pathCopy];
  [v7 setupWithDelegate:self indexPath:pathCopy];
  v8 = [pathCopy row];
  v9 = v8;
  if (v8 == 1)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"PASSCODE_CELL_TITLE";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"SESSION_ID_CELL_TITLE";
LABEL_5:
    v13 = [v10 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];
    editableTextField = [v7 editableTextField];
    [editableTextField setPlaceholder:v13];

    editableTextField2 = [v7 editableTextField];
    [editableTextField2 setAutocapitalizationType:3];
    goto LABEL_6;
  }

  editableTextField2 = _TSLogDomain();
  if (os_log_type_enabled(editableTextField2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = pathCopy;
    v23 = 2080;
    v24 = "[CrossPlatformManualDetailsViewController tableView:cellForRowAtIndexPath:]";
    _os_log_impl(&dword_262AA8000, editableTextField2, OS_LOG_TYPE_DEFAULT, "Error no defined cell for index: %@ @%s", &v21, 0x16u);
  }

LABEL_6:

  [v7 setSelectionStyle:0];
  [v7 setTag:v9];
  editableTextField3 = [v7 editableTextField];
  [editableTextField3 setTag:v9];

  if ((v9 & 0x8000000000000000) == 0 && v9 < [(NSMutableArray *)self->_values count])
  {
    v17 = [(NSMutableArray *)self->_values objectAtIndex:v9];
    if ([v17 length])
    {
      editableTextField4 = [v7 editableTextField];
      [editableTextField4 setText:v17];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = text;
  v13 = &stru_28753DF48;
  if (text)
  {
    v13 = text;
  }

  v14 = v13;

  if ([(__CFString *)v14 length]<= 6)
  {
    stringCopy = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:length, stringCopy];
    if ([stringCopy length] <= 6)
    {
      [fieldCopy setText:stringCopy];
    }
  }

  text2 = [fieldCopy text];
  v17 = [text2 length];

  if (v17 >= 6)
  {
    v18 = [fieldCopy tag];
    v19 = [MEMORY[0x277CCAA70] indexPathForRow:v18 + 1 inSection:0];
    tableView = [(OBTableWelcomeController *)self tableView];
    v21 = [tableView cellForRowAtIndexPath:v19];

    if (v21 && ([v21 editableTextField], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      editableTextField = [v21 editableTextField];
      [editableTextField becomeFirstResponder];
    }

    else
    {
      [fieldCopy resignFirstResponder];
    }
  }

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = [returnCopy tag];
  if (v5 <= 0)
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:v5 + 1 inSection:0];
    tableView = [(OBTableWelcomeController *)self tableView];
    v8 = [tableView cellForRowAtIndexPath:v6];

    if (v8)
    {
      editableTextField = [v8 editableTextField];

      if (editableTextField)
      {
        contentView = [v8 contentView];
        [contentView setUserInteractionEnabled:1];

        editableTextField2 = [v8 editableTextField];
        [editableTextField2 setUserInteractionEnabled:1];

        editableTextField3 = [v8 editableTextField];
        [editableTextField3 resignFirstResponder];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__CrossPlatformManualDetailsViewController_textFieldShouldReturn___block_invoke;
        block[3] = &unk_279B44578;
        v15 = v8;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    [returnCopy resignFirstResponder];
  }

  return 1;
}

void __66__CrossPlatformManualDetailsViewController_textFieldShouldReturn___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) editableTextField];
  [v2 becomeFirstResponder];

  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) editableTextField];
    v5 = [v4 isFirstResponder];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "[CrossPlatformManualDetailsViewController textFieldShouldReturn:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Next field is first responder: %@ @%s", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  if ([(UITextField *)editingCopy tag]== 1)
  {
    v5 = 11;
  }

  else
  {
    v5 = 4;
  }

  [(UITextField *)editingCopy setReturnKeyType:v5];
  [(UITextField *)editingCopy reloadInputViews];
  activeTextField = self->_activeTextField;
  self->_activeTextField = editingCopy;
}

- (void)textFieldDidEndEditing:(id)editing
{
  values = self->_values;
  editingCopy = editing;
  v6 = [editingCopy tag];
  text = [editingCopy text];

  [(NSMutableArray *)values replaceObjectAtIndex:v6 withObject:text];
  v11 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:0];
  if ([v11 length])
  {
    v8 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:1];
    v9 = [v8 length];

    if (v9)
    {
      continueButton = self->_continueButton;

      [(OBBoldTrayButton *)continueButton setEnabled:1];
    }
  }

  else
  {
  }
}

- (void)_doneButtonTapped
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]invalid DCTCodeDelegate delegate @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__CrossPlatformManualDetailsViewController__doneButtonTapped__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained delegate];
      v7 = objc_loadWeakRetained((a1 + 40));
      [v6 viewControllerDidComplete:v7];
    }

    else
    {
      v16 = _TSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __61__CrossPlatformManualDetailsViewController__doneButtonTapped__block_invoke_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = [v5 view];
      [v24 setUserInteractionEnabled:1];

      [*(a1 + 32) _hideButtonTraySpinner];
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__CrossPlatformManualDetailsViewController__doneButtonTapped__block_invoke_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (id)_constructDCTUrl:(id)url withPasscode:(id)passcode
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACE0];
  passcodeCopy = passcode;
  urlCopy = url;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:@"https"];
  [v8 setHost:@"migrate.google"];
  v9 = [@"/" stringByAppendingString:@"1/e"];
  [v8 setPath:v9];

  v10 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"s" value:urlCopy];

  v19[0] = v11;
  v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"p" value:passcodeCopy];

  v19[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v10 setQueryItems:v13];

  percentEncodedQuery = [v10 percentEncodedQuery];
  [v8 setFragment:percentEncodedQuery];
  v15 = [v8 URL];
  absoluteString = [v15 absoluteString];

  v17 = *MEMORY[0x277D85DE8];

  return absoluteString;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DCTCodeDelegate)dctDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dctDelegate);

  return WeakRetained;
}

void __61__CrossPlatformManualDetailsViewController__doneButtonTapped__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid DCT Code! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__CrossPlatformManualDetailsViewController__doneButtonTapped__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]strong self gone @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end