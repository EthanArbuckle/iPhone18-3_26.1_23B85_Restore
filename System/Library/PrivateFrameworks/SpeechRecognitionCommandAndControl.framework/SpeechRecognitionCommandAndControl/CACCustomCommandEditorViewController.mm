@interface CACCustomCommandEditorViewController
- (BOOL)_commandStringIsValid:(id)valid checkForLength:(BOOL)length;
- (BOOL)_hasValidActionWithErrorText:(id *)text;
- (BOOL)_hasValidSpokenStringWithErrorText:(id *)text;
- (BOOL)_shouldShowDeleteButton;
- (BOOL)_showAlertIfNeededForAction;
- (BOOL)hasEmptySpokenString;
- (BOOL)isEmptyCommandItem;
- (BOOL)isModalInPresentation;
- (BOOL)isNewCommand;
- (BOOL)isValidCommandItem;
- (BOOL)showAlertIfNeededForAnyError;
- (BOOL)showAlertIfNeededForErrorInSpokenString;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CACCustomCommandEditorViewController)init;
- (CACCustomCommandEditorViewControllerDelegate)delegate;
- (NSDictionary)applicationIdentifiersToNames;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_showErrorAlertWithText:(id)text;
- (void)_updateCommandItemWithText:(id)text;
- (void)cancelAction;
- (void)configureNavItems;
- (void)didUpdateCommandItemForApplicationViewController:(id)controller;
- (void)doneButtonTapped:(id)tapped;
- (void)editButtonTapped:(id)tapped;
- (void)saveButtonTapped;
- (void)setIsInEditingMode:(BOOL)mode;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  isNewCommand = [(CACCustomCommandEditorViewController *)self isNewCommand];
  commandItem = [(CACCustomCommandEditorViewController *)self commandItem];
  v5 = commandItem;
  if (isNewCommand)
  {
    [(CACCustomCommandEditorViewController *)self setMutableCommandItem:commandItem];
  }

  else
  {
    v6 = [commandItem copy];
    [(CACCustomCommandEditorViewController *)self setMutableCommandItem:v6];
  }

  [(CACCustomCommandEditorViewController *)self setIsInEditingMode:[(CACCustomCommandEditorViewController *)self isNewCommand]];
  [(CACCustomCommandEditorViewController *)self configureNavItems];
  v7 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.NewCommandTitle"];
  [(CACCustomCommandEditorViewController *)self setTitle:v7];

  v8 = objc_alloc(MEMORY[0x277D75B80]);
  view = [(CACCustomCommandEditorViewController *)self view];
  v10 = [v8 initWithTarget:view action:sel_endEditing_];

  [v10 setCancelsTouchesInView:0];
  view2 = [(CACCustomCommandEditorViewController *)self view];
  [view2 addGestureRecognizer:v10];

  mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
  [(CACCustomCommandEditorViewController *)self setShortcutsManager:mEMORY[0x277CE7E38]];
}

- (BOOL)isModalInPresentation
{
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  customType = [mutableCommandItem customType];

  if ([customType isEqualToString:@"RunGesture"] & 1) != 0 || (objc_msgSend(customType, "isEqualToString:", @"PasteText") & 1) != 0 || (objc_msgSend(customType, "isEqualToString:", @"RunUserActionFlow") & 1) != 0 || (objc_msgSend(customType, "isEqualToString:", @"RunShortcutsWorkflow"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [customType isEqualToString:@"PasteBoard"];
  }

  hasEmptySpokenString = [(CACCustomCommandEditorViewController *)self hasEmptySpokenString];
  v7 = (v5 | ~hasEmptySpokenString) & [(CACCustomCommandEditorViewController *)self isInEditingMode];

  return v7 & 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CACCustomCommandEditorViewController;
  [(CACCustomCommandEditorViewController *)&v10 viewWillAppear:appear];
  tableView = [(CACCustomCommandEditorViewController *)self tableView];
  [tableView reloadData];

  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  displayString = [mutableCommandItem displayString];
  if (![displayString length])
  {
    isNewCommand = [(CACCustomCommandEditorViewController *)self isNewCommand];

    if (!isNewCommand)
    {
      return;
    }

    tableView2 = [(CACCustomCommandEditorViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    mutableCommandItem = [tableView2 cellForRowAtIndexPath:v9];

    displayString = [mutableCommandItem textField];
    [displayString becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CACCustomCommandEditorViewController;
  [(CACCustomCommandEditorViewController *)&v3 viewWillDisappear:disappear];
}

- (void)saveButtonTapped
{
  if ([(CACCustomCommandEditorViewController *)self isValidCommandItem])
  {
    mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
    [(CACCustomCommandEditorViewController *)self setCommandItem:mutableCommandItem];

    delegate = [(CACCustomCommandEditorViewController *)self delegate];
    if (delegate && (v5 = delegate, [(CACCustomCommandEditorViewController *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
    {
      delegate2 = [(CACCustomCommandEditorViewController *)self delegate];
      [delegate2 didFinishEditingCustomCommandForEditor:self];
    }

    else
    {
      commandItem = [(CACCustomCommandEditorViewController *)self commandItem];
      [commandItem saveToPreferences];

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
  delegate = [(CACCustomCommandEditorViewController *)self delegate];
  if (delegate && (v4 = delegate, [(CACCustomCommandEditorViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    delegate2 = [(CACCustomCommandEditorViewController *)self delegate];
    [delegate2 didCancelEditingCustomCommandForEditor:self];
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

- (void)editButtonTapped:(id)tapped
{
  [(CACCustomCommandEditorViewController *)self setIsInEditingMode:1];

  [(CACCustomCommandEditorViewController *)self configureNavItems];
}

- (void)doneButtonTapped:(id)tapped
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
  navigationItem = [(CACCustomCommandEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  if ([(CACCustomCommandEditorViewController *)self isInEditingMode])
  {
    [(CACCustomCommandEditorViewController *)self cancelButton];
  }

  else
  {
    [(CACCustomCommandEditorViewController *)self doneButton];
  }
  v6 = ;
  navigationItem2 = [(CACCustomCommandEditorViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v6];
}

- (BOOL)isNewCommand
{
  v3 = +[CACPreferences sharedPreferences];
  commandItem = [(CACCustomCommandEditorViewController *)self commandItem];
  identifier = [commandItem identifier];
  v6 = [v3 propertiesForCommandIdentifier:identifier];
  v7 = v6 == 0;

  return v7;
}

- (void)setIsInEditingMode:(BOOL)mode
{
  modeCopy = mode;
  obj = self;
  objc_sync_enter(obj);
  obj->_isInEditingMode = modeCopy;
  [(CACCustomCommandEditorViewController *)obj setShowsDeleteButton:modeCopy];
  tableView = [(CACCustomCommandEditorViewController *)obj tableView];
  v5 = MEMORY[0x277CCAA78];
  tableView2 = [(CACCustomCommandEditorViewController *)obj tableView];
  v7 = [v5 indexSetWithIndexesInRange:{0, objc_msgSend(tableView2, "numberOfSections")}];
  [tableView reloadSections:v7 withRowAnimation:100];

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
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  if ([(CACCustomCommandEditorViewController *)self hasEmptySpokenString])
  {
    customType = [mutableCommandItem customType];
    if (customType)
    {
      v5 = 0;
    }

    else
    {
      customScope = [mutableCommandItem customScope];
      v5 = [customScope isEqualToString:@"com.apple.speech.SystemWideScope"];
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
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  displayString = [mutableCommandItem displayString];
  v4 = [displayString length] == 0;

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

- (void)_showErrorAlertWithText:(id)text
{
  v4 = MEMORY[0x277D75110];
  textCopy = text;
  v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.Title"];
  v10 = [v4 alertControllerWithTitle:v6 message:textCopy preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.OK"];
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [(CACCustomCommandEditorViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (BOOL)_hasValidSpokenStringWithErrorText:(id *)text
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  displayString = [mutableCommandItem displayString];
  LODWORD(selfCopy) = [(CACCustomCommandEditorViewController *)selfCopy _commandStringIsValid:displayString checkForLength:1];

  if (!selfCopy)
  {
    v18 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.EmptyName"];
    if (!text)
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
  flattenedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)v7 flattenedCommandGroupsAndItems];
  v9 = [flattenedCommandGroupsAndItems countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(flattenedCommandGroupsAndItems);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (([v13 isGroup] & 1) == 0)
        {
          v14 = v13;
          identifier = [mutableCommandItem identifier];
          identifier2 = [v14 identifier];
          if ([identifier isEqualToString:identifier2])
          {
          }

          else
          {
            v17 = [mutableCommandItem conflictsWithItem:v14];

            if (v17)
            {

              v18 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.ConflictingName"];
              goto LABEL_18;
            }
          }
        }
      }

      v10 = [flattenedCommandGroupsAndItems countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  if (text)
  {
LABEL_21:
    v19 = v18;
    *text = v18;
  }

LABEL_22:

  return v18 == 0;
}

- (BOOL)_hasValidActionWithErrorText:(id *)text
{
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  customType = [mutableCommandItem customType];
  v6 = [customType isEqualToString:@"RunGesture"];

  if (!v6)
  {
    customType2 = [mutableCommandItem customType];
    v10 = [customType2 isEqualToString:@"PasteText"];

    if (v10)
    {
      customTextToInsert = [mutableCommandItem customTextToInsert];
      v12 = [customTextToInsert length];

      if (v12)
      {
        goto LABEL_15;
      }

      v8 = @"CustomCommand.Error.EmptyTextToInsert";
    }

    else
    {
      customType3 = [mutableCommandItem customType];
      v14 = [customType3 isEqualToString:@"RunUserActionFlow"];

      if (v14)
      {
        customUserActionFlow = [mutableCommandItem customUserActionFlow];
        userActions = [customUserActionFlow userActions];
        v17 = [userActions count];

        if (v17)
        {
          goto LABEL_15;
        }

        v8 = @"CustomCommand.Error.EmptyUserActionFlow";
      }

      else
      {
        customType4 = [mutableCommandItem customType];
        v19 = [customType4 isEqualToString:@"RunShortcutsWorkflow"];

        if (v19)
        {
          customShortcutsWorkflowIdentifier = [mutableCommandItem customShortcutsWorkflowIdentifier];
          v21 = [customShortcutsWorkflowIdentifier length];

          if (v21)
          {
            goto LABEL_15;
          }

          v8 = @"CustomCommand.Error.EmptyShortcutsWorkflow";
        }

        else
        {
          customType5 = [mutableCommandItem customType];
          v23 = [customType5 isEqualToString:@"PasteBoard"];

          if (v23)
          {
            customPasteBoard = [mutableCommandItem customPasteBoard];
            v25 = [customPasteBoard count];

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
    if (!text)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  customGesture = [mutableCommandItem customGesture];

  if (!customGesture)
  {
    v8 = @"CustomCommand.Error.EmptyGesture";
    goto LABEL_20;
  }

LABEL_15:
  v26 = 0;
  if (text)
  {
LABEL_16:
    v27 = v26;
    *text = v26;
  }

LABEL_17:

  return v26 == 0;
}

- (BOOL)_commandStringIsValid:(id)valid checkForLength:(BOOL)length
{
  lengthCopy = length;
  validCopy = valid;
  illegalCharacterSet = [MEMORY[0x277CCA900] illegalCharacterSet];
  if (lengthCopy)
  {
    v7 = [validCopy stringByTrimmingCharactersInSet:illegalCharacterSet];
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
    server = [MEMORY[0x277CE7E40] server];
    installedApps = [server installedApps];
    v6 = self->_applicationIdentifiersToNames;
    self->_applicationIdentifiersToNames = installedApps;

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
  commandItem = [(CACCustomCommandEditorViewController *)self commandItem];
  identifier = [commandItem identifier];
  v6 = [v3 propertiesForCommandIdentifier:identifier];
  v7 = v6 != 0;

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_26B404D88[section];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.SpokenString", v4];
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (![(CACCustomCommandEditorViewController *)self isInEditingMode])
  {
    goto LABEL_5;
  }

  if (!section)
  {
    v5 = @"CustomCommand.SpokenStringFooterText";
    goto LABEL_7;
  }

  if (section != 1)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 2)
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Delete"];
      if (!v8)
      {
        v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"Delete"];
        textLabel = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [textLabel setTextAlignment:1];

        v10 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Delete"];
        textLabel2 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [textLabel2 setText:v10];

        _systemDestructiveTintColor = [MEMORY[0x277D75348] _systemDestructiveTintColor];
        textLabel3 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [textLabel3 setTextColor:_systemDestructiveTintColor];
      }

      [(CACCustomCommandEditorTextFieldCell *)v8 setHidden:[(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton]^ 1];
      goto LABEL_32;
    }

    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Property"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"Property"];
    }

    v19 = [pathCopy row];
    if (v19 == 1)
    {
      v20 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Application"];
      mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      customScope = [mutableCommandItem customScope];

      if ([customScope isEqualToString:@"com.apple.speech.SystemWideScope"])
      {
        v23 = @"CustomCommand.AnyApplication";
        goto LABEL_17;
      }

      applicationIdentifiersToNames = [(CACCustomCommandEditorViewController *)self applicationIdentifiersToNames];
      v30 = [applicationIdentifiersToNames objectForKeyedSubscript:customScope];
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
      mutableCommandItem2 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      customScope = [mutableCommandItem2 customType];

      if ([customScope isEqualToString:@"RunGesture"])
      {
        v23 = @"CustomCommand.RunGesture";
LABEL_17:
        v25 = [CACLocaleUtilities localizedUIStringForKey:v23];
LABEL_25:

LABEL_26:
        textLabel4 = [(CACCustomCommandEditorTextFieldCell *)v8 textLabel];
        [textLabel4 setText:v20];

        detailTextLabel = [(CACCustomCommandEditorTextFieldCell *)v8 detailTextLabel];
        [detailTextLabel setText:v25];

        if ([(CACCustomCommandEditorViewController *)self isInEditingMode])
        {
          [(CACCustomCommandEditorTextFieldCell *)v8 setUserInteractionEnabled:1];
          if (![pathCopy row])
          {
            mutableCommandItem3 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
            customType = [mutableCommandItem3 customType];
            -[CACCustomCommandEditorTextFieldCell setAccessoryType:](v8, "setAccessoryType:", [customType isEqualToString:@"RunUserActionFlow"] ^ 1);

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

      if (![customScope isEqualToString:@"PasteText"])
      {
        if ([customScope isEqualToString:@"RunUserActionFlow"])
        {
          v47 = MEMORY[0x277CCACA8];
          v46 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunUserActionFlowWithNumber"];
          commandItem = [(CACCustomCommandEditorViewController *)self commandItem];
          customUserActionFlow = [commandItem customUserActionFlow];
          userActions = [customUserActionFlow userActions];
          [userActions count];
          v40 = AXFormatInteger();
          v25 = [v47 localizedStringWithValidatedFormat:v46 validFormatSpecifiers:@"%@" error:0, v40];

          goto LABEL_25;
        }

        if ([customScope isEqualToString:@"RunShortcutsWorkflow"])
        {
          mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
          mutableCommandItem4 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
          customShortcutsWorkflowIdentifier = [mutableCommandItem4 customShortcutsWorkflowIdentifier];
          v43 = [mEMORY[0x277CE7E38] shortcutForIdentifier:customShortcutsWorkflowIdentifier];
          shortcutName = [v43 shortcutName];

          v44 = MEMORY[0x277CCACA8];
          v45 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.RunShortcutsWorkflowFormatted"];
          v25 = [v44 localizedStringWithValidatedFormat:v45 validFormatSpecifiers:@"%@" error:0, shortcutName];

          goto LABEL_25;
        }

        if ([customScope isEqualToString:@"PasteBoard"])
        {
          v23 = @"CustomCommand.PasteBoard";
        }

        else
        {
          v23 = @"CustomCommand.Unset";
        }

        goto LABEL_17;
      }

      mutableCommandItem5 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      applicationIdentifiersToNames = [mutableCommandItem5 customTextToInsert];

      if ([applicationIdentifiersToNames length])
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteTextFormat"];
        v25 = [v28 localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, applicationIdentifiersToNames];

LABEL_24:
        goto LABEL_25;
      }

      v30 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteText"];
    }

    v25 = v30;
    goto LABEL_24;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"SpokenString"];
  if (!v8)
  {
    v8 = [[CACCustomCommandEditorTextFieldCell alloc] initWithStyle:0 reuseIdentifier:@"SpokenString"];
    [(CACCustomCommandEditorTextFieldCell *)v8 setSelectionStyle:0];
    textField = [(CACCustomCommandEditorTextFieldCell *)v8 textField];
    v15 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.SpokenStringPlaceholder"];
    [textField setPlaceholder:v15];

    [textField setTextAlignment:4];
    [textField setAutocapitalizationType:2];
    [textField setReturnKeyType:9];
    [textField addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];
    [textField setDelegate:self];
  }

  mutableCommandItem6 = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  displayString = [mutableCommandItem6 displayString];
  textField2 = [(CACCustomCommandEditorTextFieldCell *)v8 textField];
  [textField2 setText:displayString];

  [(CACCustomCommandEditorTextFieldCell *)v8 setUserInteractionEnabled:[(CACCustomCommandEditorViewController *)self isInEditingMode]];
LABEL_32:

  return v8;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  if ([pathCopy section] == 1)
  {
    v6 = pathCopy;
    if (![pathCopy row])
    {
      mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      customType = [mutableCommandItem customType];
      v9 = [customType isEqualToString:@"RunUserActionFlow"];

      v6 = pathCopy;
      if (v9)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    v6 = [pathCopy row];
    if (v6 == 1)
    {
      v7 = objc_alloc_init(CACCustomCommandApplicationViewController);
      [(CACCustomCommandApplicationViewController *)v7 setDelegate:self];
      mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      [(CACCustomCommandApplicationViewController *)v7 setCommandItem:mutableCommandItem];

      applicationIdentifiersToNames = [(CACCustomCommandEditorViewController *)self applicationIdentifiersToNames];
      [(CACCustomCommandApplicationViewController *)v7 setApplicationIdentifiersToNames:applicationIdentifiersToNames];
    }

    else
    {
      if (v6)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(CACCustomCommandActionViewController);
      [(CACCustomCommandApplicationViewController *)v7 setDelegate:self];
      applicationIdentifiersToNames = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
      [(CACCustomCommandApplicationViewController *)v7 setCommandItem:applicationIdentifiersToNames];
    }

    if (v7)
    {
      navigationController = [(CACCustomCommandEditorViewController *)self navigationController];
      [navigationController pushViewController:v7 animated:1];

      goto LABEL_10;
    }
  }

  else if ([pathCopy section] == 2)
  {
    tableView = [(CACCustomCommandEditorViewController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    v7 = [tableView cellForRowAtIndexPath:v10];

    textField = [(CACCustomCommandApplicationViewController *)v7 textField];
    [textField resignFirstResponder];

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
    v22 = pathCopy;
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

- (void)_updateCommandItemWithText:(id)text
{
  v9[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  mutableCommandItem = [(CACCustomCommandEditorViewController *)self mutableCommandItem];
  v9[0] = textCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = +[CACPreferences sharedPreferences];

  bestLocaleIdentifier = [v7 bestLocaleIdentifier];
  [mutableCommandItem setValue:v6 forKey:@"CustomCommands" locale:bestLocaleIdentifier];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  text = [editing text];
  v5 = [(CACCustomCommandEditorViewController *)self _commandStringIsValid:text checkForLength:1];

  navigationItem = [(CACCustomCommandEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5];
}

- (void)textFieldDidChange:(id)change
{
  text = [change text];
  v5 = [(CACCustomCommandEditorViewController *)self _commandStringIsValid:text checkForLength:1];

  navigationItem = [(CACCustomCommandEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if (![(CACCustomCommandEditorViewController *)self _commandStringIsValid:stringCopy checkForLength:0])
  {
    goto LABEL_6;
  }

  if (!location || ![stringCopy length])
  {
    goto LABEL_8;
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if (([whitespaceCharacterSet characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", 0)}] & 1) == 0)
  {

    goto LABEL_8;
  }

  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  text = [fieldCopy text];
  v14 = [whitespaceCharacterSet2 characterIsMember:{objc_msgSend(text, "characterAtIndex:", location - 1)}];

  if ((v14 & 1) == 0)
  {
LABEL_8:
    text2 = [fieldCopy text];
    v17 = [text2 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
    [(CACCustomCommandEditorViewController *)self _updateCommandItemWithText:v17];

    v15 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v15 = 0;
LABEL_9:

  return v15;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  _shouldShowDeleteButton = [(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton];
  text = [editingCopy text];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  [(CACCustomCommandEditorViewController *)self _updateCommandItemWithText:v8];

  _shouldShowDeleteButton2 = [(CACCustomCommandEditorViewController *)self _shouldShowDeleteButton];
  if (!_shouldShowDeleteButton && _shouldShowDeleteButton2)
  {
    tableView = [(CACCustomCommandEditorViewController *)self tableView];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [tableView insertSections:v10 withRowAnimation:0];
  }
}

- (void)didUpdateCommandItemForApplicationViewController:(id)controller
{
  delegate = [(CACCustomCommandEditorViewController *)self delegate];
  [delegate didUpdatePropertiesForEditor:self];
}

- (CACCustomCommandEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end