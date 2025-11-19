@interface CACCustomCommandEditorViewController
- (BOOL)_commandStringIsValid:(id)a3 checkForLength:(BOOL)a4;
- (BOOL)_hasValidActionWithErrorText:(id *)a3;
- (BOOL)_hasValidSpokenStringWithErrorText:(id *)a3;
- (BOOL)_shouldShowDeleteButton;
- (BOOL)_showAlertIfNeededForAction;
- (BOOL)hasEmptySpokenString;
- (BOOL)isEmptyCommandItem;
- (BOOL)isModalInPresentation;
- (BOOL)isNewCommand;
- (BOOL)isValidCommandItem;
- (BOOL)showAlertIfNeededForAnyError;
- (BOOL)showAlertIfNeededForErrorInSpokenString;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CACCustomCommandEditorViewController)init;
- (CACCustomCommandEditorViewControllerDelegate)delegate;
- (NSDictionary)applicationIdentifiersToNames;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_showErrorAlertWithText:(id)a3;
- (void)_updateCommandItemWithText:(id)a3;
- (void)cancelAction;
- (void)configureNavItems;
- (void)didUpdateCommandItemForApplicationViewController:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)editButtonTapped:(id)a3;
- (void)saveButtonTapped;
- (void)setIsInEditingMode:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CACCustomCommandEditorViewController

- (CACCustomCommandEditorViewController)init
{
  v2 = [(CACCustomCommandEditorViewController *)self initWithStyle:2];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:v2 action:sel_editButtonTapped_];
    editButton = v2->_editButton;
    v2->_editButton = v3;

    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v2 action:sel_doneButtonTapped_];
    doneButton = v2->_doneButton;
    v2->_doneButton = v5;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:v2 action:sel_saveButtonTapped];
    saveButton = v2->_saveButton;
    v2->_saveButton = v7;

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancelAction];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v9;
  }

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CACCustomCommandEditorViewController;
  [(CACCustomCommandEditorViewController *)&v13 viewDidLoad];
  v3 = [(CACCustomCommandEditorViewController *)self isNewCommand];
  v4 = [(CACCustomCommandEditorViewController *)self commandItem];
  v5 = v4;
  if (v3)
  {
    [(CACCustomCommandEditorViewController *)self setMutableCommandItem:v4];
  }

  else
  {
    v6 = [v4 copy];
    [(CACCustomCommandEditorViewController *)self setMutableCommandItem:v6];
  }

  [(CACCustomCommandEditorViewController *)self setIsInEditingMode:[(CACCustomCommandEditorViewController *)self isNewCommand]];
  [(CACCustomCommandEditorViewController *)self configureNavItems];
  v7 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.NewCommandTitle"];
  [(CACCustomCommandEditorViewController *)self setTitle:v7];

  v8 = objc_alloc(MEMORY[0x277D75B80]);
  v9 = [(CACCustomCommandEditorViewController *)self view];
  v10 = [v8 initWithTarget:v9 action:sel_endEditing_];

  [v10 setCancelsTouchesInView:0];
  v11 = [(CACCustomCommandEditorViewController *)self view];
  [v11 addGestureRecognizer:v10];

  v12 = [MEMORY[0x277CE7E38] sharedManager];
  [(CACCustomCommandEditorViewController *)self setShortcutsManager:v12];
}

- (BOOL)isModalInPresentation
{
  v3 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v4 = [v3 customType];

  if ([v4 isEqualToString:@"RunGesture"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PasteText") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"RunUserActionFlow") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"RunShortcutsWorkflow"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"PasteBoard"];
  }

  v6 = [(CACCustomCommandEditorViewController *)self hasEmptySpokenString];
  v7 = (v5 | ~v6) & [(CACCustomCommandEditorViewController *)self isInEditingMode];

  return v7 & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CACCustomCommandEditorViewController;
  [(CACCustomCommandEditorViewController *)&v10 viewWillAppear:a3];
  v4 = [(CACCustomCommandEditorViewController *)self tableView];
  [v4 reloadData];

  v5 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v6 = [v5 displayString];
  if (![v6 length])
  {
    v7 = [(CACCustomCommandEditorViewController *)self isNewCommand];

    if (!v7)
    {
      return;
    }

    v8 = [(CACCustomCommandEditorViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    v5 = [v8 cellForRowAtIndexPath:v9];

    v6 = [v5 textField];
    [v6 becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CACCustomCommandEditorViewController;
  [(CACCustomCommandEditorViewController *)&v3 viewWillDisappear:a3];
}

- (void)saveButtonTapped
{
  if ([(CACCustomCommandEditorViewController *)self isValidCommandItem])
  {
    v3 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
    [(CACCustomCommandEditorViewController *)self setCommandItem:v3];

    v4 = [(CACCustomCommandEditorViewController *)self delegate];
    if (v4 && (v5 = v4, [(CACCustomCommandEditorViewController *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
    {
      v9 = [(CACCustomCommandEditorViewController *)self delegate];
      [v9 didFinishEditingCustomCommandForEditor:self];
    }

    else
    {
      v8 = [(CACCustomCommandEditorViewController *)self commandItem];
      [v8 saveToPreferences];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CACCustomCommandEditorViewController_saveButtonTapped__block_invoke;
      v10[3] = &unk_279CEB2D0;
      v10[4] = self;
      [(CACCustomCommandEditorViewController *)self dismissViewControllerAnimated:1 completion:v10];
    }
  }

  else
  {

    [(CACCustomCommandEditorViewController *)self showAlertIfNeededForAnyError];
  }
}

void __56__CACCustomCommandEditorViewController_saveButtonTapped__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdatePropertiesForEditor:*(a1 + 32)];
}

- (void)cancelAction
{
  v3 = [(CACCustomCommandEditorViewController *)self delegate];
  if (v3 && (v4 = v3, [(CACCustomCommandEditorViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(CACCustomCommandEditorViewController *)self delegate];
    [v7 didCancelEditingCustomCommandForEditor:self];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__CACCustomCommandEditorViewController_cancelAction__block_invoke;
    v8[3] = &unk_279CEB2D0;
    v8[4] = self;
    [(CACCustomCommandEditorViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

void __52__CACCustomCommandEditorViewController_cancelAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdatePropertiesForEditor:*(a1 + 32)];
}

- (void)editButtonTapped:(id)a3
{
  [(CACCustomCommandEditorViewController *)self setIsInEditingMode:1];

  [(CACCustomCommandEditorViewController *)self configureNavItems];
}

- (void)doneButtonTapped:(id)a3
{
  [(CACCustomCommandEditorViewController *)self setIsInEditingMode:0];
  [(CACCustomCommandEditorViewController *)self configureNavItems];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CACCustomCommandEditorViewController_doneButtonTapped___block_invoke;
  v4[3] = &unk_279CEB2D0;
  v4[4] = self;
  [(CACCustomCommandEditorViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

void __57__CACCustomCommandEditorViewController_doneButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdatePropertiesForEditor:*(a1 + 32)];
}

- (void)configureNavItems
{
  if ([(CACCustomCommandEditorViewController *)self isInEditingMode])
  {
    [(CACCustomCommandEditorViewController *)self saveButton];
  }

  else
  {
    [(CACCustomCommandEditorViewController *)self editButton];
  }
  v3 = ;
  v4 = [(CACCustomCommandEditorViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  if ([(CACCustomCommandEditorViewController *)self isInEditingMode])
  {
    [(CACCustomCommandEditorViewController *)self cancelButton];
  }

  else
  {
    [(CACCustomCommandEditorViewController *)self doneButton];
  }
  v6 = ;
  v5 = [(CACCustomCommandEditorViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v6];
}

- (BOOL)isNewCommand
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [(CACCustomCommandEditorViewController *)self commandItem];
  v5 = [v4 identifier];
  v6 = [v3 propertiesForCommandIdentifier:v5];
  v7 = v6 == 0;

  return v7;
}

- (void)setIsInEditingMode:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  obj->_isInEditingMode = v3;
  [(CACCustomCommandEditorViewController *)obj setShowsDeleteButton:v3];
  v4 = [(CACCustomCommandEditorViewController *)obj tableView];
  v5 = MEMORY[0x277CCAA78];
  v6 = [(CACCustomCommandEditorViewController *)obj tableView];
  v7 = [v5 indexSetWithIndexesInRange:{0, objc_msgSend(v6, "numberOfSections")}];
  [v4 reloadSections:v7 withRowAnimation:100];

  objc_sync_exit(obj);
}

- (BOOL)isValidCommandItem
{
  v3 = [(CACCustomCommandEditorViewController *)self _hasValidSpokenStringWithErrorText:0];
  if (v3)
  {

    LOBYTE(v3) = [(CACCustomCommandEditorViewController *)self _hasValidActionWithErrorText:0];
  }

  return v3;
}

- (BOOL)isEmptyCommandItem
{
  v3 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  if ([(CACCustomCommandEditorViewController *)self hasEmptySpokenString])
  {
    v4 = [v3 customType];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [v3 customScope];
      v5 = [v6 isEqualToString:@"com.apple.speech.SystemWideScope"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasEmptySpokenString
{
  v2 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v3 = [v2 displayString];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)showAlertIfNeededForErrorInSpokenString
{
  v6 = 0;
  v3 = [(CACCustomCommandEditorViewController *)self _hasValidSpokenStringWithErrorText:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CACCustomCommandEditorViewController *)self _showErrorAlertWithText:v4];
  }

  return !v3;
}

- (BOOL)_showAlertIfNeededForAction
{
  v6 = 0;
  v3 = [(CACCustomCommandEditorViewController *)self _hasValidActionWithErrorText:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CACCustomCommandEditorViewController *)self _showErrorAlertWithText:v4];
  }

  return !v3;
}

- (BOOL)showAlertIfNeededForAnyError
{
  if ([(CACCustomCommandEditorViewController *)self showAlertIfNeededForErrorInSpokenString])
  {
    return 1;
  }

  return [(CACCustomCommandEditorViewController *)self _showAlertIfNeededForAction];
}

- (void)_showErrorAlertWithText:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.Title"];
  v10 = [v4 alertControllerWithTitle:v6 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.OK"];
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [(CACCustomCommandEditorViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (BOOL)_hasValidSpokenStringWithErrorText:(id *)a3
{
  v4 = self;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v6 = [v5 displayString];
  LODWORD(v4) = [(CACCustomCommandEditorViewController *)v4 _commandStringIsValid:v6 checkForLength:1];

  if (!v4)
  {
    v18 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.EmptyName"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v7 = objc_alloc_init(CACSpokenCommandPresentation);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(CACSpokenCommandPresentation *)v7 flattenedCommandGroupsAndItems];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = v7;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (([v13 isGroup] & 1) == 0)
        {
          v14 = v13;
          v15 = [v5 identifier];
          v16 = [v14 identifier];
          if ([v15 isEqualToString:v16])
          {
          }

          else
          {
            v17 = [v5 conflictsWithItem:v14];

            if (v17)
            {

              v18 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.ConflictingName"];
              goto LABEL_18;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_18:
    v7 = v21;
  }

  else
  {

    v18 = 0;
  }

  if (a3)
  {
LABEL_21:
    v19 = v18;
    *a3 = v18;
  }

LABEL_22:

  return v18 == 0;
}

- (BOOL)_hasValidActionWithErrorText:(id *)a3
{
  v4 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v5 = [v4 customType];
  v6 = [v5 isEqualToString:@"RunGesture"];

  if (!v6)
  {
    v9 = [v4 customType];
    v10 = [v9 isEqualToString:@"PasteText"];

    if (v10)
    {
      v11 = [v4 customTextToInsert];
      v12 = [v11 length];

      if (v12)
      {
        goto LABEL_15;
      }

      v8 = @"CustomCommand.Error.EmptyTextToInsert";
    }

    else
    {
      v13 = [v4 customType];
      v14 = [v13 isEqualToString:@"RunUserActionFlow"];

      if (v14)
      {
        v15 = [v4 customUserActionFlow];
        v16 = [v15 userActions];
        v17 = [v16 count];

        if (v17)
        {
          goto LABEL_15;
        }

        v8 = @"CustomCommand.Error.EmptyUserActionFlow";
      }

      else
      {
        v18 = [v4 customType];
        v19 = [v18 isEqualToString:@"RunShortcutsWorkflow"];

        if (v19)
        {
          v20 = [v4 customShortcutsWorkflowIdentifier];
          v21 = [v20 length];

          if (v21)
          {
            goto LABEL_15;
          }

          v8 = @"CustomCommand.Error.EmptyShortcutsWorkflow";
        }

        else
        {
          v22 = [v4 customType];
          v23 = [v22 isEqualToString:@"PasteBoard"];

          if (v23)
          {
            v24 = [v4 customPasteBoard];
            v25 = [v24 count];

            if (v25)
            {
              goto LABEL_15;
            }

            v8 = @"CustomCommand.Error.EmptyPasteBoard";
          }

          else
          {
            v8 = @"CustomCommand.Error.EmptyAction";
          }
        }
      }
    }

LABEL_20:
    v26 = [CACLocaleUtilities localizedUIStringForKey:v8];
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = [v4 customGesture];

  if (!v7)
  {
    v8 = @"CustomCommand.Error.EmptyGesture";
    goto LABEL_20;
  }

LABEL_15:
  v26 = 0;
  if (a3)
  {
LABEL_16:
    v27 = v26;
    *a3 = v26;
  }

LABEL_17:

  return v26 == 0;
}

- (BOOL)_commandStringIsValid:(id)a3 checkForLength:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CCA900] illegalCharacterSet];
  if (v4)
  {
    v7 = [v5 stringByTrimmingCharactersInSet:v6];
    v8 = [v7 length] > 3;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (NSDictionary)applicationIdentifiersToNames
{
  applicationIdentifiersToNames = self->_applicationIdentifiersToNames;
  if (!applicationIdentifiersToNames)
  {
    v4 = [MEMORY[0x277CE7E40] server];
    v5 = [v4 installedApps];
    v6 = self->_applicationIdentifiersToNames;
    self->_applicationIdentifiersToNames = v5;

    applicationIdentifiersToNames = self->_applicationIdentifiersToNames;
  }

  return applicationIdentifiersToNames;
}

- (BOOL)_shouldShowDeleteButton
{
  if (![(CACCustomCommandEditorViewController *)self isInEditingMode]|| ![(CACCustomCommandEditorViewController *)self showsDeleteButton])
  {
    return 0;
  }

  v3 = +[CACPreferences sharedPreferences];
  v4 = [(CACCustomCommandEditorViewController *)self commandItem];
  v5 = [v4 identifier];
  v6 = [v3 propertiesForCommandIdentifier:v5];
  v7 = v6 != 0;

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 > 2)
  {
    return 0;
  }

  else
  {
    return qword_26B404D88[a4];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.SpokenString", v4];
  }

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (![(CACCustomCommandEditorViewController *)self isInEditingMode])
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    v5 = @"CustomCommand.SpokenStringFooterText";
    goto LABEL_7;
  }

  if (a4 != 1)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = @"CustomCommand.ActionFooterText";
LABEL_7:
  v6 = [CACLocaleUtilities localizedUIStringForKey:v5];
LABEL_8:

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    if ([v7 section] == 2)
    {
      v8 = [v6 dequeueReusableCellWithIdentifier:@"Delete"];
      if (!v8)
      {
        v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"Delete"];
        v9 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [v9 setTextAlignment:1];

        v10 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Delete"];
        v11 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [v11 setText:v10];

        v12 = [MEMORY[0x277D75348] _systemDestructiveTintColor];
        v13 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [v13 setTextColor:v12];
      }

      [(CACCustomCommandEditorTextFieldCell *)v8 setHidden:[(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton]^ 1];
      goto LABEL_32;
    }

    v8 = [v6 dequeueReusableCellWithIdentifier:@"Property"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"Property"];
    }

    v19 = [v7 row];
    if (v19 == 1)
    {
      v20 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Application"];
      v24 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      v22 = [v24 customScope];

      if ([v22 isEqualToString:@"com.apple.speech.SystemWideScope"])
      {
        v23 = @"CustomCommand.AnyApplication";
        goto LABEL_17;
      }

      v27 = [(CACCustomCommandEditorViewController *)self applicationIdentifiersToNames];
      v30 = [v27 objectForKeyedSubscript:v22];
    }

    else
    {
      if (v19)
      {
        v25 = 0;
        v20 = 0;
        goto LABEL_26;
      }

      v20 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Action"];
      v21 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      v22 = [v21 customType];

      if ([v22 isEqualToString:@"RunGesture"])
      {
        v23 = @"CustomCommand.RunGesture";
LABEL_17:
        v25 = [CACLocaleUtilities localizedUIStringForKey:v23];
LABEL_25:

LABEL_26:
        v31 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [v31 setText:v20];

        v32 = [(CACCustomCommandEditorTextFieldCell *)v8 detailTextLabel];
        [v32 setText:v25];

        if ([(CACCustomCommandEditorViewController *)self isInEditingMode])
        {
          [(CACCustomCommandEditorTextFieldCell *)v8 setUserInteractionEnabled:1];
          if (![v7 row])
          {
            v36 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
            v37 = [v36 customType];
            -[CACCustomCommandEditorTextFieldCell setAccessoryType:](v8, "setAccessoryType:", [v37 isEqualToString:@"RunUserActionFlow"] ^ 1);

            goto LABEL_31;
          }

          v33 = v8;
          v34 = 1;
        }

        else
        {
          [(CACCustomCommandEditorTextFieldCell *)v8 setUserInteractionEnabled:0];
          v33 = v8;
          v34 = 0;
        }

        [(CACCustomCommandEditorTextFieldCell *)v33 setAccessoryType:v34];
LABEL_31:

        goto LABEL_32;
      }

      if (![v22 isEqualToString:@"PasteText"])
      {
        if ([v22 isEqualToString:@"RunUserActionFlow"])
        {
          v47 = MEMORY[0x277CCACA8];
          v46 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunUserActionFlowWithNumber"];
          v49 = [(CACCustomCommandEditorViewController *)self commandItem];
          v38 = [v49 customUserActionFlow];
          v39 = [v38 userActions];
          [v39 count];
          v40 = AXFormatInteger();
          v25 = [v47 localizedStringWithValidatedFormat:v46 validFormatSpecifiers:@"%@" error:0, v40];

          goto LABEL_25;
        }

        if ([v22 isEqualToString:@"RunShortcutsWorkflow"])
        {
          v48 = [MEMORY[0x277CE7E38] sharedManager];
          v41 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
          v42 = [v41 customShortcutsWorkflowIdentifier];
          v43 = [v48 shortcutForIdentifier:v42];
          v50 = [v43 shortcutName];

          v44 = MEMORY[0x277CCACA8];
          v45 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflowFormatted"];
          v25 = [v44 localizedStringWithValidatedFormat:v45 validFormatSpecifiers:@"%@" error:0, v50];

          goto LABEL_25;
        }

        if ([v22 isEqualToString:@"PasteBoard"])
        {
          v23 = @"CustomCommand.PasteBoard";
        }

        else
        {
          v23 = @"CustomCommand.Unset";
        }

        goto LABEL_17;
      }

      v26 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      v27 = [v26 customTextToInsert];

      if ([v27 length])
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteTextFormat"];
        v25 = [v28 localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v27];

LABEL_24:
        goto LABEL_25;
      }

      v30 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteText"];
    }

    v25 = v30;
    goto LABEL_24;
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"SpokenString"];
  if (!v8)
  {
    v8 = [[CACCustomCommandEditorTextFieldCell alloc] initWithStyle:0 reuseIdentifier:@"SpokenString"];
    [(CACCustomCommandEditorTextFieldCell *)v8 setSelectionStyle:0];
    v14 = [(CACCustomCommandEditorTextFieldCell *)v8 textField];
    v15 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.SpokenStringPlaceholder"];
    [v14 setPlaceholder:v15];

    [v14 setTextAlignment:4];
    [v14 setAutocapitalizationType:2];
    [v14 setReturnKeyType:9];
    [v14 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];
    [v14 setDelegate:self];
  }

  v16 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v17 = [v16 displayString];
  v18 = [(CACCustomCommandEditorTextFieldCell *)v8 textField];
  [v18 setText:v17];

  [(CACCustomCommandEditorTextFieldCell *)v8 setUserInteractionEnabled:[(CACCustomCommandEditorViewController *)self isInEditingMode]];
LABEL_32:

  return v8;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ([v5 section] == 1)
  {
    v6 = v5;
    if (![v5 row])
    {
      v7 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      v8 = [v7 customType];
      v9 = [v8 isEqualToString:@"RunUserActionFlow"];

      v6 = v5;
      if (v9)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == 1)
  {
    v6 = [v5 row];
    if (v6 == 1)
    {
      v7 = objc_alloc_init(CACCustomCommandApplicationViewController);
      [(CACCustomCommandApplicationViewController *)v7 setDelegate:self];
      v19 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      [(CACCustomCommandApplicationViewController *)v7 setCommandItem:v19];

      v8 = [(CACCustomCommandEditorViewController *)self applicationIdentifiersToNames];
      [(CACCustomCommandApplicationViewController *)v7 setApplicationIdentifiersToNames:v8];
    }

    else
    {
      if (v6)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(CACCustomCommandActionViewController);
      [(CACCustomCommandApplicationViewController *)v7 setDelegate:self];
      v8 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      [(CACCustomCommandApplicationViewController *)v7 setCommandItem:v8];
    }

    if (v7)
    {
      v20 = [(CACCustomCommandEditorViewController *)self navigationController];
      [v20 pushViewController:v7 animated:1];

      goto LABEL_10;
    }
  }

  else if ([v5 section] == 2)
  {
    v9 = [(CACCustomCommandEditorViewController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    v7 = [v9 cellForRowAtIndexPath:v10];

    v11 = [(CACCustomCommandApplicationViewController *)v7 textField];
    [v11 resignFirstResponder];

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v13 = MEMORY[0x277D750F8];
    v14 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Delete"];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v23[3] = &unk_279CEB2F8;
    v23[4] = self;
    v15 = [v13 actionWithTitle:v14 style:2 handler:v23];
    [v12 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v17 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Cancel"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
    v21[3] = &unk_279CEB320;
    v21[4] = self;
    v22 = v5;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v21];
    [v12 addAction:v18];

    [(CACCustomCommandEditorViewController *)self presentViewController:v12 animated:1 completion:0];
LABEL_10:
  }

LABEL_11:
}

uint64_t __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) commandItem];
  [v2 removeFromPreferences];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v5[3] = &unk_279CEB2D0;
  v5[4] = v3;
  return [v3 dismissViewControllerAnimated:1 completion:v5];
}

void __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdatePropertiesForEditor:*(a1 + 32)];
}

void __74__CACCustomCommandEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];
}

- (void)_updateCommandItemWithText:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = +[CACPreferences sharedPreferences];

  v8 = [v7 bestLocaleIdentifier];
  [v5 setValue:v6 forKey:@"CustomCommands" locale:v8];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [a3 text];
  v5 = [(CACCustomCommandEditorViewController *)self _commandStringIsValid:v4 checkForLength:1];

  v7 = [(CACCustomCommandEditorViewController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:v5];
}

- (void)textFieldDidChange:(id)a3
{
  v4 = [a3 text];
  v5 = [(CACCustomCommandEditorViewController *)self _commandStringIsValid:v4 checkForLength:1];

  v7 = [(CACCustomCommandEditorViewController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:v5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (![(CACCustomCommandEditorViewController *)self _commandStringIsValid:v10 checkForLength:0])
  {
    goto LABEL_6;
  }

  if (!location || ![v10 length])
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if (([v11 characterIsMember:{objc_msgSend(v10, "characterAtIndex:", 0)}] & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v13 = [v9 text];
  v14 = [v12 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", location - 1)}];

  if ((v14 & 1) == 0)
  {
LABEL_8:
    v16 = [v9 text];
    v17 = [v16 stringByReplacingCharactersInRange:location withString:{length, v10}];
    [(CACCustomCommandEditorViewController *)self _updateCommandItemWithText:v17];

    v15 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v15 = 0;
LABEL_9:

  return v15;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton];
  v6 = [v4 text];

  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  [(CACCustomCommandEditorViewController *)self _updateCommandItemWithText:v8];

  v9 = [(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton];
  if (!v5 && v9)
  {
    v11 = [(CACCustomCommandEditorViewController *)self tableView];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [v11 insertSections:v10 withRowAnimation:0];
  }
}

- (void)didUpdateCommandItemForApplicationViewController:(id)a3
{
  v4 = [(CACCustomCommandEditorViewController *)self delegate];
  [v4 didUpdatePropertiesForEditor:self];
}

- (CACCustomCommandEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end