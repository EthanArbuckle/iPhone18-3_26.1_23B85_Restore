@interface CACCustomCommandActionViewController
- (BOOL)_shouldDisallowSelectingRowAtIndexPath:(id)path;
- (BOOL)_useDetailCell;
- (CACCustomCommandActionViewController)init;
- (CACCustomCommandActionViewControllerDelegate)delegate;
- (id)_stringFromPasteboardDataArray:(id)array;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateForAction:(int64_t)action;
- (void)didSelectShortcut:(id)shortcut;
- (void)gestureRecorder:(id)recorder saveReplayableGesture:(id)gesture;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textViewDidEndEditing:(id)editing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__CACCustomCommandActionViewController_init__block_invoke;
    v7[3] = &unk_279CEB640;
    objc_copyWeak(&v8, &location);
    v5 = [mEMORY[0x277CE7E38] registerShortcutsDidChangeBlock:v7];

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
  tableView = [(CACCustomCommandActionViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandActionCheckmarkCell"];

  tableView2 = [(CACCustomCommandActionViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandShortcutsViewCell"];

  tableView3 = [(CACCustomCommandActionViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CustomCommandActionTextViewCell"];

  v6 = objc_alloc(MEMORY[0x277D75B80]);
  view = [(CACCustomCommandActionViewController *)self view];
  v8 = [v6 initWithTarget:view action:sel_endEditing_];

  [v8 setCancelsTouchesInView:0];
  view2 = [(CACCustomCommandActionViewController *)self view];
  [view2 addGestureRecognizer:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v4 viewWillAppear:appear];
  [(CACCustomCommandActionViewController *)self setIsPresentingGestureRecorder:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v8 viewWillDisappear:disappear];
  tableView = [(CACCustomCommandActionViewController *)self tableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v6 = [tableView cellForRowAtIndexPath:v5];

  textView = [v6 textView];
  [textView resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CACCustomCommandActionViewController;
  [(CACCustomCommandActionViewController *)&v5 viewDidDisappear:disappear];
  if (![(CACCustomCommandActionViewController *)self isPresentingGestureRecorder])
  {
    delegate = [(CACCustomCommandActionViewController *)self delegate];
    [delegate didDismissActionViewController:self];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return section == 1;
  }

  else
  {
    return 4;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] != 1)
  {
    if ([pathCopy section])
    {
      v16 = 0;
      goto LABEL_33;
    }

    v16 = [viewCopy dequeueReusableCellWithIdentifier:@"CustomCommandActionCheckmarkCell" forIndexPath:pathCopy];
    commandItem = [(CACCustomCommandActionViewController *)self commandItem];
    customType = [commandItem customType];

    v18 = [customType isEqualToString:@"RunShortcutsWorkflow"];
    v19 = @"CustomCommandShortcutsViewCell";
    if (!v18)
    {
      v19 = @"CustomCommandActionCheckmarkCell";
    }

    v20 = v19;
    if ([(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:pathCopy])
    {

      v20 = @"CustomCommandShortcutsViewCell";
    }

    v21 = [pathCopy row];
    shortcutName = 0;
    v22 = 0;
    v41 = v20;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        commandItem4 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflow"];
        mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
        commandItem2 = [(CACCustomCommandActionViewController *)self commandItem];
        customShortcutsWorkflowIdentifier = [commandItem2 customShortcutsWorkflowIdentifier];
        v40 = [mEMORY[0x277CE7E38] shortcutForIdentifier:customShortcutsWorkflowIdentifier];

        v22 = [customType isEqualToString:@"RunShortcutsWorkflow"];
        mEMORY[0x277CE7E38]2 = [MEMORY[0x277CE7E38] sharedManager];
        shortcuts = [mEMORY[0x277CE7E38]2 shortcuts];
        v29 = [shortcuts count];

        if (v29)
        {
          v30 = v40;
          shortcutName = [v40 shortcutName];
        }

        else
        {
          shortcutName = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflowSetupShortcuts"];
          v30 = v40;
        }

        goto LABEL_22;
      }

      commandItem4 = 0;
      if (v21 == 3)
      {
        commandItem4 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunUserActionFlow"];
        v23 = @"RunUserActionFlow";
        goto LABEL_17;
      }
    }

    else
    {
      if (!v21)
      {
        commandItem4 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteText"];
        v23 = @"PasteText";
        goto LABEL_17;
      }

      commandItem4 = 0;
      if (v21 == 1)
      {
        commandItem4 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunGesture"];
        v23 = @"RunGesture";
LABEL_17:
        v22 = [customType isEqualToString:v23];
        shortcutName = 0;
      }
    }

LABEL_22:
    textLabel = [v16 textLabel];
    [textLabel setText:commandItem4];

    detailTextLabel = [v16 detailTextLabel];
    [detailTextLabel setText:shortcutName];

    if (v22)
    {
      v33 = 3;
    }

    else
    {
      v33 = 0;
    }

    [v16 setAccessoryType:v33];
    v34 = [(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:pathCopy];
    if (v34)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v35 = ;
    textLabel2 = [v16 textLabel];
    [textLabel2 setTextColor:v35];

    if (v34)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v37 = ;
    detailTextLabel2 = [v16 detailTextLabel];
    [detailTextLabel2 setTextColor:v37];

    goto LABEL_32;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"CustomCommandActionTextViewCell" forIndexPath:pathCopy];
  commandItem3 = [(CACCustomCommandActionViewController *)self commandItem];
  customTextToInsert = [commandItem3 customTextToInsert];
  textView = [v8 textView];
  [textView setText:customTextToInsert];

  textView2 = [v8 textView];
  [textView2 setDelegate:self];

  customType = v8;
  commandItem4 = [(CACCustomCommandActionViewController *)self commandItem];
  shortcutName = [commandItem4 customType];
  [customType setHidden:{objc_msgSend(shortcutName, "isEqualToString:", @"PasteText"}];
  v16 = customType;
LABEL_32:

LABEL_33:

  return v16;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Actions.RecordedCommandsExplanation", v4];
  }

  return v6;
}

- (BOOL)_shouldDisallowSelectingRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section] && objc_msgSend(pathCopy, "row") == 3 || objc_msgSend(pathCopy, "section") == 1)
  {
    v4 = 1;
  }

  else if ([pathCopy section] || objc_msgSend(pathCopy, "row") != 2)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
    shortcuts = [mEMORY[0x277CE7E38] shortcuts];
    v4 = [shortcuts count] == 0;
  }

  return v4;
}

- (BOOL)_useDetailCell
{
  commandItem = [(CACCustomCommandActionViewController *)self commandItem];
  customType = [commandItem customType];
  if ([customType isEqualToString:@"RunShortcutsWorkflow"])
  {
    v5 = 1;
  }

  else
  {
    commandItem2 = [(CACCustomCommandActionViewController *)self commandItem];
    customType2 = [commandItem2 customType];
    if (customType2)
    {
      v5 = 0;
    }

    else
    {
      mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
      shortcuts = [mEMORY[0x277CE7E38] shortcuts];
      v5 = [shortcuts count] == 0;
    }
  }

  return v5;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CACCustomCommandActionViewController *)self _shouldDisallowSelectingRowAtIndexPath:pathCopy])
  {
    v6 = 0;
  }

  else
  {
    v6 = pathCopy;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  v8 = pathCopy;
  if (!section)
  {
    if ([pathCopy row] != 2)
    {
      commandItem = [(CACCustomCommandActionViewController *)self commandItem];
      [commandItem setCustomShortcutsWorkflowIdentifier:0];
    }

    v10 = [pathCopy row];
    if (v10)
    {
      if (v10 == 2)
      {
        mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
        commandItem2 = [(CACCustomCommandActionViewController *)self commandItem];
        customShortcutsWorkflowIdentifier = [commandItem2 customShortcutsWorkflowIdentifier];
        v11 = [mEMORY[0x277CE7E38] shortcutForIdentifier:customShortcutsWorkflowIdentifier];

        v12 = [[CACShortcutsSelectionTableViewController alloc] initWithPreviouslySelectedShortcut:v11];
        v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
        [(CACShortcutsSelectionTableViewController *)v12 setShortcutsSelectionDelegate:self];
        [(CACCustomCommandActionViewController *)self presentViewController:v16 animated:1 completion:0];
      }

      else
      {
        v8 = pathCopy;
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

    v8 = pathCopy;
  }

LABEL_12:
  [viewCopy deselectRowAtIndexPath:v8 animated:1];
  v17 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(viewCopy, "numberOfSections")}];
  [viewCopy reloadSections:v17 withRowAnimation:100];
}

- (void)_updateForAction:(int64_t)action
{
  v25 = *MEMORY[0x277D85DE8];
  if (action > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_279CEC640[action];
  }

  commandItem = [(CACCustomCommandActionViewController *)self commandItem];
  [commandItem setCustomType:v5];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:action inSection:0];
  tableView = [(CACCustomCommandActionViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tableView2 = [(CACCustomCommandActionViewController *)self tableView];
  visibleCells = [tableView2 visibleCells];

  v12 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(visibleCells);
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
      v13 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  tableView3 = [(CACCustomCommandActionViewController *)self tableView];
  [tableView3 deselectRowAtIndexPath:v7 animated:1];

  delegate = [(CACCustomCommandActionViewController *)self delegate];
  [delegate didUpdateCommandItemForActionViewController:self];
}

- (void)gestureRecorder:(id)recorder saveReplayableGesture:(id)gesture
{
  gestureCopy = gesture;
  commandItem = [(CACCustomCommandActionViewController *)self commandItem];
  [commandItem setCustomGesture:gestureCopy];

  [(CACCustomCommandActionViewController *)self _updateForAction:1];
  tableView = [(CACCustomCommandActionViewController *)self tableView];
  [tableView reloadData];
}

- (void)didSelectShortcut:(id)shortcut
{
  v15 = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  v5 = shortcutCopy;
  if (shortcutCopy)
  {
    identifier = [shortcutCopy identifier];
    commandItem = [(CACCustomCommandActionViewController *)self commandItem];
    [commandItem setCustomShortcutsWorkflowIdentifier:identifier];

    v8 = CACLogShortcuts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      commandItem2 = [(CACCustomCommandActionViewController *)self commandItem];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = commandItem2;
      _os_log_impl(&dword_26B354000, v8, OS_LOG_TYPE_DEFAULT, "Delegate received shortcut %@ for commandItem %@", &v11, 0x16u);
    }

    [(CACCustomCommandActionViewController *)self _updateForAction:2];
    tableView = [(CACCustomCommandActionViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  text = [editing text];
  commandItem = [(CACCustomCommandActionViewController *)self commandItem];
  [commandItem setCustomTextToInsert:text];

  delegate = [(CACCustomCommandActionViewController *)self delegate];
  [delegate didUpdateCommandItemForActionViewController:self];
}

- (id)_stringFromPasteboardDataArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  pasteboardWithUniqueName = [MEMORY[0x277D75810] pasteboardWithUniqueName];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = arrayCopy;
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
  [pasteboardWithUniqueName setItems:v15];

  strings = [pasteboardWithUniqueName strings];
  v17 = [strings componentsJoinedByString:@"\n"];

  return v17;
}

- (CACCustomCommandActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end