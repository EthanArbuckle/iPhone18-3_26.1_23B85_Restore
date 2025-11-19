@interface SSCardManualEntryViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (SSCardManualEntryViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (double)_heightAnchorConstant;
- (id)findFirstResponderInView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)addNewPlanWithUserInfo;
- (void)keyboardDidHide:(id)a3;
- (void)keyboardWasShown:(id)a3;
- (void)onError;
- (void)resetFirstResponder;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateTableHeightAnchor;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSCardManualEntryViewController

- (SSCardManualEntryViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENTER_ACTIVATION_CODE" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENTER_ACTIVATION_CODE_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];

  v11.receiver = self;
  v11.super_class = SSCardManualEntryViewController;
  v7 = [(OBTableWelcomeController *)&v11 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{&stru_28753DF48, &stru_28753DF48, &stru_28753DF48, 0}];
    values = v7->_values;
    v7->_values = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = SSCardManualEntryViewController;
  [(TSOBTableWelcomeController *)&v26 viewDidLoad];
  v3 = [(SSCardManualEntryViewController *)self navigationController];
  v4 = [v3 navigationItem];
  [v4 setHidesBackButton:1];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_NEXT" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:2 target:self action:sel_addNewPlanWithUserInfo];
  nextButton = self->_nextButton;
  self->_nextButton = v8;

  v10 = [(OBBaseWelcomeController *)self navigationItem];
  [v10 setRightBarButtonItem:self->_nextButton animated:0];

  [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  v11 = objc_alloc(MEMORY[0x277D75B40]);
  v12 = [v11 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v12];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 registerClass:objc_opt_class() forCellReuseIdentifier:@"CardManualEntry"];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v16 = [(OBTableWelcomeController *)self tableView];
  v17 = [MEMORY[0x277D75348] clearColor];
  [v16 setBackgroundColor:v17];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setDataSource:self];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 setDelegate:self];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 setScrollEnabled:1];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setAllowsSelection:0];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 setDataSource:self];

  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 setDelegate:self];

  v24 = [(OBTableWelcomeController *)self tableView];
  [v24 reloadData];

  v25 = [(OBTableWelcomeController *)self tableView];
  [v25 layoutIfNeeded];

  [(SSCardManualEntryViewController *)self updateTableHeightAnchor];
}

- (void)updateTableHeightAnchor
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 heightAnchor];
  [(SSCardManualEntryViewController *)self _heightAnchorConstant];
  v5 = [v4 constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v5;

  v7 = self->_tableHeightAnchor;

  [(NSLayoutConstraint *)v7 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SSCardManualEntryViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = SSCardManualEntryViewController;
  [(SSCardManualEntryViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = SSCardManualEntryViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)resetFirstResponder
{
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 cellForRowAtIndexPath:v6];

  v5 = [v4 editableTextField];
  [v5 becomeFirstResponder];
}

- (id)findFirstResponderInView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isFirstResponder])
  {
    v5 = v4;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(SSCardManualEntryViewController *)self findFirstResponderInView:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)keyboardWasShown:(id)a3
{
  v24 = [a3 userInfo];
  v4 = [v24 objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;

  self->_keyboardSize.width = v6;
  self->_keyboardSize.height = v8;
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setContentInset:{0.0, 0.0, v8, 0.0}];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setScrollIndicatorInsets:{0.0, 0.0, v8, 0.0}];

  v11 = [(SSCardManualEntryViewController *)self view];
  v12 = [(SSCardManualEntryViewController *)self findFirstResponderInView:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    v14 = [(OBTableWelcomeController *)self tableView];
    [v13 bounds];
    [v14 convertRect:v13 fromView:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(OBTableWelcomeController *)self tableView];
    [v23 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];
  }
}

- (void)keyboardDidHide:(id)a3
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setContentInset:{v4, v5, v6, v7}];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setScrollIndicatorInsets:{v4, v5, v6, v7}];

  v10 = [(SSCardManualEntryViewController *)self view];
  [v10 endEditing:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CardManualEntry" forIndexPath:v6];
  [v7 setupWithDelegate:self indexPath:v6];
  v8 = [v6 row];
  v9 = v8;
  if (v8 < 3)
  {
    v10 = off_279B45558[v8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
    v13 = [v7 editableTextField];
    [v13 setPlaceholder:v12];

    [v7 setTag:v9];
LABEL_6:
    if (v9 < [(NSMutableArray *)self->_values count])
    {
      v15 = [(NSMutableArray *)self->_values objectAtIndex:v9];
      if ([v15 length])
      {
        v16 = [v7 editableTextField];
        [v16 setText:v15];
      }
    }

    goto LABEL_10;
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SSCardManualEntryViewController tableView:v6 cellForRowAtIndexPath:v14];
  }

  [v7 setTag:v9];
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v7;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 tag] + 1;
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 numberOfRowsInSection:0];

  if (v5 >= v7)
  {
    [v4 resignFirstResponder];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:0];
    v9 = [(OBTableWelcomeController *)self tableView];
    v10 = [v9 cellForRowAtIndexPath:v8];

    if (v10)
    {
      v11 = [v10 editableTextField];

      if (v11)
      {
        v12 = [v10 contentView];
        [v12 setUserInteractionEnabled:1];

        v13 = [v10 editableTextField];
        [v13 setUserInteractionEnabled:1];

        v14 = [v10 editableTextField];
        [v14 resignFirstResponder];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __57__SSCardManualEntryViewController_textFieldShouldReturn___block_invoke;
        block[3] = &unk_279B44578;
        v17 = v10;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  return 1;
}

void __57__SSCardManualEntryViewController_textFieldShouldReturn___block_invoke(uint64_t a1)
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
    v11 = "[SSCardManualEntryViewController textFieldShouldReturn:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Next field is first responder: %@ @%s", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];

  if ([v7 tag] == v5 - 1)
  {
    v6 = 11;
  }

  else
  {
    v6 = 4;
  }

  [v7 setReturnKeyType:v6];
}

- (void)textFieldDidEndEditing:(id)a3
{
  values = self->_values;
  v5 = a3;
  v6 = [v5 tag];
  v7 = [v5 text];

  [(NSMutableArray *)values replaceObjectAtIndex:v6 withObject:v7];
  v8 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:0];
  v9 = [v8 length];

  if (v9)
  {
    nextButton = self->_nextButton;

    [(UIBarButtonItem *)nextButton setEnabled:1];
  }
}

- (void)onError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained receivedResponseWithVC:self];

  [(SSCardManualEntryViewController *)self resetFirstResponder];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setHidesBackButton:0];
}

- (double)_heightAnchorConstant
{
  v2 = [(SSCardManualEntryViewController *)self view];
  [v2 bounds];
  v4 = v3 * 0.42;

  return v4;
}

- (void)addNewPlanWithUserInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(SSCardManualEntryViewController *)self view];
  [v3 endEditing:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waitForResponse:self];

  v5 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:0];
  v6 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:1];
  v7 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:2];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2080;
    v19 = "[SSCardManualEntryViewController addNewPlanWithUserInfo]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "addressField:%@, activationCode:%@, confirmationCode:%@ @%s", &v12, 0x2Au);
  }

  v9 = +[TSCellularPlanManagerCache sharedInstance];
  v10 = objc_loadWeakRetained(&self->_delegate);
  [v9 addNewPlanWithAddress:v5 matchingId:v6 confirmationCode:v7 userConsent:objc_msgSend(v10 completion:{"signupUserConsentResponse"), &__block_literal_global_15}];

  v11 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(uint64_t)a1 cellForRowAtIndexPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[SSCardManualEntryViewController tableView:cellForRowAtIndexPath:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]No defined cell for index: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end