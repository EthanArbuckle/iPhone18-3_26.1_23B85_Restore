@interface CACCustomCommandActionViewController
- (BOOL)_shouldDisallowSelectingRowAtIndexPath:(id)a3;
- (BOOL)_useDetailCell;
- (CACCustomCommandActionViewController)init;
- (CACCustomCommandActionViewControllerDelegate)delegate;
- (id)_stringFromPasteboardDataArray:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateForAction:(int64_t)a3;
- (void)didSelectShortcut:(id)a3;
- (void)gestureRecorder:(id)a3 saveReplayableGesture:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textViewDidEndEditing:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CACCustomCommandActionViewController

- (CACCustomCommandActionViewController)init
{
  v2 = [(CACCustomCommandActionViewController *)self initWithStyle:2];
  if (v2)
  {
    v3 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Action"];
    [(CACCustomCommandActionViewController *)v2 setTitle:v3];

    objc_initWeak(&location, v2);
    v4 = [MEMORY[0x277CE7E38] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__CACCustomCommandActionViewController_init__block_invoke;
    v7[3] = &unk_279CEB640;
    objc_copyWeak(&v8, &location);
    v5 = [v4 registerShortcutsDidChangeBlock:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __44__CACCustomCommandActionViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__CACCustomCommandActionViewController_init__block_invoke_2;
  v10[3] = &unk_279CEC620;
  objc_copyWeak(&v11, (a1 + 32));
  if ([v3 indexOfObjectPassingTest:v10] == 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained commandItem];
    [v5 setCustomType:0];

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 commandItem];
    [v7 setCustomShortcutsWorkflowIdentifier:0];
  }

  objc_destroyWeak(&v11);
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 tableView];
  [v9 reloadData];
}

uint64_t __44__CACCustomCommandActionViewController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained commandItem];
  v6 = [v5 customShortcutsWorkflowIdentifier];
  v7 = [v3 isEqualToString:v6];

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v10 viewDidLoad];
  v3 = [(CACCustomCommandActionViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandActionCheckmarkCell"];

  v4 = [(CACCustomCommandActionViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandShortcutsViewCell"];

  v5 = [(CACCustomCommandActionViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandActionTextViewCell"];

  v6 = objc_alloc(MEMORY[0x277D75B80]);
  v7 = [(CACCustomCommandActionViewController *)self view];
  v8 = [v6 initWithTarget:v7 action:sel_endEditing_];

  [v8 setCancelsTouchesInView:0];
  v9 = [(CACCustomCommandActionViewController *)self view];
  [v9 addGestureRecognizer:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v4 viewWillAppear:a3];
  [(CACCustomCommandActionViewController *)self setIsPresentingGestureRecorder:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v8 viewWillDisappear:a3];
  v4 = [(CACCustomCommandActionViewController *)self tableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v6 = [v4 cellForRowAtIndexPath:v5];

  v7 = [v6 textView];
  [v7 resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v5 viewDidDisappear:a3];
  if (![(CACCustomCommandActionViewController *)self isPresentingGestureRecorder])
  {
    v4 = [(CACCustomCommandActionViewController *)self delegate];
    [v4 didDismissActionViewController:self];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return a4 == 1;
  }

  else
  {
    return 4;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] != 1)
  {
    if ([v7 section])
    {
      v16 = 0;
      goto LABEL_33;
    }

    v16 = [v6 dequeueReusableCellWithIdentifier:@"CustomCommandActionCheckmarkCell" forIndexPath:v7];
    v17 = [(CACCustomCommandActionViewController *)self commandItem];
    v13 = [v17 customType];

    v18 = [v13 isEqualToString:@"RunShortcutsWorkflow"];
    v19 = @"CustomCommandShortcutsViewCell";
    if (!v18)
    {
      v19 = @"CustomCommandActionCheckmarkCell";
    }

    v20 = v19;
    if ([(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:v7])
    {

      v20 = @"CustomCommandShortcutsViewCell";
    }

    v21 = [v7 row];
    v15 = 0;
    v22 = 0;
    v41 = v20;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v14 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflow"];
        v24 = [MEMORY[0x277CE7E38] sharedManager];
        v25 = [(CACCustomCommandActionViewController *)self commandItem];
        v26 = [v25 customShortcutsWorkflowIdentifier];
        v40 = [v24 shortcutForIdentifier:v26];

        v22 = [v13 isEqualToString:@"RunShortcutsWorkflow"];
        v27 = [MEMORY[0x277CE7E38] sharedManager];
        v28 = [v27 shortcuts];
        v29 = [v28 count];

        if (v29)
        {
          v30 = v40;
          v15 = [v40 shortcutName];
        }

        else
        {
          v15 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflowSetupShortcuts"];
          v30 = v40;
        }

        goto LABEL_22;
      }

      v14 = 0;
      if (v21 == 3)
      {
        v14 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunUserActionFlow"];
        v23 = @"RunUserActionFlow";
        goto LABEL_17;
      }
    }

    else
    {
      if (!v21)
      {
        v14 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteText"];
        v23 = @"PasteText";
        goto LABEL_17;
      }

      v14 = 0;
      if (v21 == 1)
      {
        v14 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunGesture"];
        v23 = @"RunGesture";
LABEL_17:
        v22 = [v13 isEqualToString:v23];
        v15 = 0;
      }
    }

LABEL_22:
    v31 = [v16 textLabel];
    [v31 setText:v14];

    v32 = [v16 detailTextLabel];
    [v32 setText:v15];

    if (v22)
    {
      v33 = 3;
    }

    else
    {
      v33 = 0;
    }

    [v16 setAccessoryType:v33];
    v34 = [(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:v7];
    if (v34)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v35 = ;
    v36 = [v16 textLabel];
    [v36 setTextColor:v35];

    if (v34)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v37 = ;
    v38 = [v16 detailTextLabel];
    [v38 setTextColor:v37];

    goto LABEL_32;
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"CustomCommandActionTextViewCell" forIndexPath:v7];
  v9 = [(CACCustomCommandActionViewController *)self commandItem];
  v10 = [v9 customTextToInsert];
  v11 = [v8 textView];
  [v11 setText:v10];

  v12 = [v8 textView];
  [v12 setDelegate:self];

  v13 = v8;
  v14 = [(CACCustomCommandActionViewController *)self commandItem];
  v15 = [v14 customType];
  [v13 setHidden:{objc_msgSend(v15, "isEqualToString:", @"PasteText"}];
  v16 = v13;
LABEL_32:

LABEL_33:

  return v16;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Actions.RecordedCommandsExplanation", v4];
  }

  return v6;
}

- (BOOL)_shouldDisallowSelectingRowAtIndexPath:(id)a3
{
  v3 = a3;
  if (![v3 section] && objc_msgSend(v3, "row") == 3 || objc_msgSend(v3, "section") == 1)
  {
    v4 = 1;
  }

  else if ([v3 section] || objc_msgSend(v3, "row") != 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CE7E38] sharedManager];
    v6 = [v5 shortcuts];
    v4 = [v6 count] == 0;
  }

  return v4;
}

- (BOOL)_useDetailCell
{
  v3 = [(CACCustomCommandActionViewController *)self commandItem];
  v4 = [v3 customType];
  if ([v4 isEqualToString:@"RunShortcutsWorkflow"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CACCustomCommandActionViewController *)self commandItem];
    v7 = [v6 customType];
    if (v7)
    {
      v5 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CE7E38] sharedManager];
      v9 = [v8 shortcuts];
      v5 = [v9 count] == 0;
    }
  }

  return v5;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [v18 section];
  v8 = v18;
  if (!v7)
  {
    if ([v18 row] != 2)
    {
      v9 = [(CACCustomCommandActionViewController *)self commandItem];
      [v9 setCustomShortcutsWorkflowIdentifier:0];
    }

    v10 = [v18 row];
    if (v10)
    {
      if (v10 == 2)
      {
        v13 = [MEMORY[0x277CE7E38] sharedManager];
        v14 = [(CACCustomCommandActionViewController *)self commandItem];
        v15 = [v14 customShortcutsWorkflowIdentifier];
        v11 = [v13 shortcutForIdentifier:v15];

        v12 = [[CACShortcutsSelectionTableViewController alloc] initWithPreviouslySelectedShortcut:v11];
        v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
        [(CACShortcutsSelectionTableViewController *)v12 setShortcutsSelectionDelegate:self];
        [(CACCustomCommandActionViewController *)self presentViewController:v16 animated:1 completion:0];
      }

      else
      {
        v8 = v18;
        if (v10 != 1)
        {
          goto LABEL_12;
        }

        v11 = [objc_alloc(MEMORY[0x277CE7820]) initWithType:1];
        [v11 setDelegate:self];
        v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
        [(CACShortcutsSelectionTableViewController *)v12 setModalPresentationStyle:0];
        [(CACShortcutsSelectionTableViewController *)v12 _setIgnoreAppSupportedOrientations:1];
        [(CACCustomCommandActionViewController *)self setIsPresentingGestureRecorder:1];
        [(CACCustomCommandActionViewController *)self presentViewController:v12 animated:1 completion:0];
      }
    }

    else
    {
      [(CACCustomCommandActionViewController *)self _updateForAction:0];
    }

    v8 = v18;
  }

LABEL_12:
  [v6 deselectRowAtIndexPath:v8 animated:1];
  v17 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v6, "numberOfSections")}];
  [v6 reloadSections:v17 withRowAnimation:100];
}

- (void)_updateForAction:(int64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_279CEC640[a3];
  }

  v6 = [(CACCustomCommandActionViewController *)self commandItem];
  [v6 setCustomType:v5];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  v8 = [(CACCustomCommandActionViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(CACCustomCommandActionViewController *)self tableView];
  v11 = [v10 visibleCells];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (v16 == v9)
        {
          v17 = 3;
        }

        else
        {
          v17 = 0;
        }

        [v16 setAccessoryType:v17];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = [(CACCustomCommandActionViewController *)self tableView];
  [v18 deselectRowAtIndexPath:v7 animated:1];

  v19 = [(CACCustomCommandActionViewController *)self delegate];
  [v19 didUpdateCommandItemForActionViewController:self];
}

- (void)gestureRecorder:(id)a3 saveReplayableGesture:(id)a4
{
  v5 = a4;
  v6 = [(CACCustomCommandActionViewController *)self commandItem];
  [v6 setCustomGesture:v5];

  [(CACCustomCommandActionViewController *)self _updateForAction:1];
  v7 = [(CACCustomCommandActionViewController *)self tableView];
  [v7 reloadData];
}

- (void)didSelectShortcut:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [(CACCustomCommandActionViewController *)self commandItem];
    [v7 setCustomShortcutsWorkflowIdentifier:v6];

    v8 = CACLogShortcuts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CACCustomCommandActionViewController *)self commandItem];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_26B354000, v8, OS_LOG_TYPE_DEFAULT, "Delegate received shortcut %@ for commandItem %@", &v11, 0x16u);
    }

    [(CACCustomCommandActionViewController *)self _updateForAction:2];
    v10 = [(CACCustomCommandActionViewController *)self tableView];
    [v10 reloadData];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [a3 text];
  v5 = [(CACCustomCommandActionViewController *)self commandItem];
  [v5 setCustomTextToInsert:v4];

  v6 = [(CACCustomCommandActionViewController *)self delegate];
  [v6 didUpdateCommandItemForActionViewController:self];
}

- (id)_stringFromPasteboardDataArray:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D75810] pasteboardWithUniqueName];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKey:{@"CustomPasteBoardType", v19}];
        v13 = [v11 objectForKey:@"CustomPasteBoardData"];
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v5 setObject:v13 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v23 = v5;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v4 setItems:v15];

  v16 = [v4 strings];
  v17 = [v16 componentsJoinedByString:@"\n"];

  return v17;
}

- (CACCustomCommandActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end