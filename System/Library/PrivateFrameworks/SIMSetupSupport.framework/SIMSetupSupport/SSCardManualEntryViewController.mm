@interface SSCardManualEntryViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (SSCardManualEntryViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (double)_heightAnchorConstant;
- (id)findFirstResponderInView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addNewPlanWithUserInfo;
- (void)keyboardDidHide:(id)hide;
- (void)keyboardWasShown:(id)shown;
- (void)onError;
- (void)resetFirstResponder;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
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
  navigationController = [(SSCardManualEntryViewController *)self navigationController];
  navigationItem = [navigationController navigationItem];
  [navigationItem setHidesBackButton:1];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_NEXT" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:2 target:self action:sel_addNewPlanWithUserInfo];
  nextButton = self->_nextButton;
  self->_nextButton = v8;

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:self->_nextButton animated:0];

  [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  v11 = objc_alloc(MEMORY[0x277D75B40]);
  v12 = [v11 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v12];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CardManualEntry"];

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
  [tableView8 setAllowsSelection:0];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setDataSource:self];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 setDelegate:self];

  tableView11 = [(OBTableWelcomeController *)self tableView];
  [tableView11 reloadData];

  tableView12 = [(OBTableWelcomeController *)self tableView];
  [tableView12 layoutIfNeeded];

  [(SSCardManualEntryViewController *)self updateTableHeightAnchor];
}

- (void)updateTableHeightAnchor
{
  tableView = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView heightAnchor];
  [(SSCardManualEntryViewController *)self _heightAnchorConstant];
  v5 = [heightAnchor constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v5;

  v7 = self->_tableHeightAnchor;

  [(NSLayoutConstraint *)v7 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  view = [(SSCardManualEntryViewController *)self view];
  [view layoutIfNeeded];

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
  tableView = [(OBTableWelcomeController *)self tableView];
  v4 = [tableView cellForRowAtIndexPath:v6];

  editableTextField = [v4 editableTextField];
  [editableTextField becomeFirstResponder];
}

- (id)findFirstResponderInView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([viewCopy isFirstResponder])
  {
    v5 = viewCopy;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [(SSCardManualEntryViewController *)self findFirstResponderInView:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)keyboardWasShown:(id)shown
{
  userInfo = [shown userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;

  self->_keyboardSize.width = v6;
  self->_keyboardSize.height = v8;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setContentInset:{0.0, 0.0, v8, 0.0}];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setScrollIndicatorInsets:{0.0, 0.0, v8, 0.0}];

  view = [(SSCardManualEntryViewController *)self view];
  v12 = [(SSCardManualEntryViewController *)self findFirstResponderInView:view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [v13 bounds];
    [tableView3 convertRect:v13 fromView:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    tableView4 = [(OBTableWelcomeController *)self tableView];
    [tableView4 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];
  }
}

- (void)keyboardDidHide:(id)hide
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setContentInset:{v4, v5, v6, v7}];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setScrollIndicatorInsets:{v4, v5, v6, v7}];

  view = [(SSCardManualEntryViewController *)self view];
  [view endEditing:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CardManualEntry" forIndexPath:pathCopy];
  [v7 setupWithDelegate:self indexPath:pathCopy];
  v8 = [pathCopy row];
  v9 = v8;
  if (v8 < 3)
  {
    v10 = off_279B45558[v8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
    editableTextField = [v7 editableTextField];
    [editableTextField setPlaceholder:v12];

    [v7 setTag:v9];
LABEL_6:
    if (v9 < [(NSMutableArray *)self->_values count])
    {
      v15 = [(NSMutableArray *)self->_values objectAtIndex:v9];
      if ([v15 length])
      {
        editableTextField2 = [v7 editableTextField];
        [editableTextField2 setText:v15];
      }
    }

    goto LABEL_10;
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SSCardManualEntryViewController tableView:pathCopy cellForRowAtIndexPath:v14];
  }

  [v7 setTag:v9];
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v7;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = [returnCopy tag] + 1;
  tableView = [(OBTableWelcomeController *)self tableView];
  v7 = [tableView numberOfRowsInSection:0];

  if (v5 >= v7)
  {
    [returnCopy resignFirstResponder];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:0];
    tableView2 = [(OBTableWelcomeController *)self tableView];
    v10 = [tableView2 cellForRowAtIndexPath:v8];

    if (v10)
    {
      editableTextField = [v10 editableTextField];

      if (editableTextField)
      {
        contentView = [v10 contentView];
        [contentView setUserInteractionEnabled:1];

        editableTextField2 = [v10 editableTextField];
        [editableTextField2 setUserInteractionEnabled:1];

        editableTextField3 = [v10 editableTextField];
        [editableTextField3 resignFirstResponder];

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

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = [tableView numberOfRowsInSection:0];

  if ([editingCopy tag] == v5 - 1)
  {
    v6 = 11;
  }

  else
  {
    v6 = 4;
  }

  [editingCopy setReturnKeyType:v6];
}

- (void)textFieldDidEndEditing:(id)editing
{
  values = self->_values;
  editingCopy = editing;
  v6 = [editingCopy tag];
  text = [editingCopy text];

  [(NSMutableArray *)values replaceObjectAtIndex:v6 withObject:text];
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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:0];
}

- (double)_heightAnchorConstant
{
  view = [(SSCardManualEntryViewController *)self view];
  [view bounds];
  v4 = v3 * 0.42;

  return v4;
}

- (void)addNewPlanWithUserInfo
{
  v20 = *MEMORY[0x277D85DE8];
  view = [(SSCardManualEntryViewController *)self view];
  [view endEditing:1];

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