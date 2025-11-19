@interface PSKeychainSyncTextEntryController
- (BOOL)becomeFirstResponder;
- (Class)textEntryCellClass;
- (PSKeychainSyncTextEntryController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)textEntryCell;
- (id)textEntrySpecifier;
- (id)textEntryText;
- (id)textEntryView;
- (void)dealloc;
- (void)didFinishEnteringText:(id)a3;
- (void)loadView;
- (void)nextPressed;
- (void)passcodeField:(id)a3 didUpdateEnteredPasscode:(id)a4;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setTextEntryText:(id)a3;
- (void)setTextEntryType:(int)a3;
- (void)textFieldChanged:(id)a3;
- (void)updateNextButton;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation PSKeychainSyncTextEntryController

- (PSKeychainSyncTextEntryController)init
{
  v5.receiver = self;
  v5.super_class = PSKeychainSyncTextEntryController;
  v2 = [(PSListController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];

    v2->_numberOfPasscodeFields = 6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v4 loadView];
  v3 = [(PSListController *)self table];
  [v3 setSeparatorStyle:0];
}

- (void)updateNextButton
{
  if (self->_textEntryType == 1 || [(PSKeychainSyncTextEntryController *)self hidesNextButton])
  {
    v6 = [(PSKeychainSyncTextEntryController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = PS_LocalizedStringForKeychainSync(@"NEXT");
    v6 = [v3 initWithTitle:v4 style:2 target:self action:sel_nextPressed];

    [v6 setEnabled:0];
    v5 = [(PSKeychainSyncTextEntryController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }
}

- (void)nextPressed
{
  v3 = [(PSKeychainSyncTextEntryController *)self textEntryView];
  [v3 resignFirstResponder];

  v4 = [(PSKeychainSyncTextEntryController *)self textValue];
  [(PSKeychainSyncTextEntryController *)self didFinishEnteringText:v4];
}

- (void)didFinishEnteringText:(id)a3
{
  v4 = a3;
  v5 = [(PSKeychainSyncViewController *)self delegate];
  [v5 keychainSyncController:self didFinishWithResult:v4 error:0];
}

- (void)setTextEntryType:(int)a3
{
  [(PSKeychainSyncTextEntryController *)self setTextEntryText:&stru_1EFE45030];
  self->_textEntryType = a3;
  if (self->super.super._specifiers)
  {

    [(PSListController *)self reloadSpecifiers];
  }
}

- (BOOL)becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = PSKeychainSyncTextEntryController;
  [(PSKeychainSyncTextEntryController *)&v6 becomeFirstResponder];
  v3 = [(PSKeychainSyncTextEntryController *)self textEntryView];
  v4 = [v3 becomeFirstResponder];

  return v4;
}

- (void)willBecomeActive
{
  v3 = [(PSKeychainSyncTextEntryController *)self textEntryView];
  [v3 becomeFirstResponder];

  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSViewController *)&v4 willBecomeActive];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(PSKeychainSyncTextEntryController *)self updateNextButton];
  if (([(PSKeychainSyncTextEntryController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(PSListController *)self reloadSpecifiers];
  }

  v5.receiver = self;
  v5.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v7 viewWillDisappear:a3];
  v4 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    [v6 setDenyFirstResponder:1];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v7 viewDidDisappear:a3];
  v4 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    [v6 setDenyFirstResponder:0];
  }
}

- (void)setTextEntryText:(id)a3
{
  v4 = a3;
  [(PSKeychainSyncTextEntryController *)self setTextValue:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyInput *)self->_textEntryView setText:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIKeyInput *)self->_textEntryView setStringValue:v4];
    }

    else
    {
      [(PSListController *)self reloadSpecifier:self->_textEntrySpecifier];
    }
  }
}

- (id)textEntryText
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIKeyInput *)self->_textEntryView text];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(UIKeyInput *)self->_textEntryView stringValue];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)specifiers
{
  specifiers = self->super.super._specifiers;
  if (!specifiers)
  {
    [(UIKeyInput *)self->_textEntryView removeFromSuperview];
    textEntryView = self->_textEntryView;
    self->_textEntryView = 0;

    [(PSTableCell *)self->_textEntryCell removeFromSuperview];
    textEntryCell = self->_textEntryCell;
    self->_textEntryCell = 0;

    textEntrySpecifier = self->_textEntrySpecifier;
    self->_textEntrySpecifier = 0;

    if (self->_secureTextEntry)
    {
      textValue = self->_textValue;
      self->_textValue = 0;
    }

    v12.receiver = self;
    v12.super_class = PSKeychainSyncTextEntryController;
    v8 = [(PSKeychainSyncViewController *)&v12 specifiers];
    v9 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    [(NSArray *)v8 addObject:v9];

    v10 = self->super.super._specifiers;
    self->super.super._specifiers = v8;

    specifiers = self->super.super._specifiers;
  }

  return specifiers;
}

- (id)textEntrySpecifier
{
  if (!self->_textEntrySpecifier)
  {
    textEntryType = self->_textEntryType;
    if (textEntryType == 2)
    {
      v8 = [PSTextFieldSpecifier preferenceSpecifierNamed:0 target:self set:sel_setTextValue_forSpecifier_ get:sel_getTextValueForSpecifier_ detail:0 cell:8 edit:0];
      textEntrySpecifier = self->_textEntrySpecifier;
      self->_textEntrySpecifier = v8;

      v10 = self->_textEntrySpecifier;
      v7 = [(PSKeychainSyncTextEntryController *)self placeholderText];
      [(PSSpecifier *)v10 setPlaceholder:v7];
    }

    else
    {
      if (textEntryType != 1)
      {
        goto LABEL_7;
      }

      v4 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:sel_setTextValue_forSpecifier_ get:sel_getTextValueForSpecifier_ detail:0 cell:3 edit:0];
      v5 = self->_textEntrySpecifier;
      self->_textEntrySpecifier = v4;

      [(PSSpecifier *)self->_textEntrySpecifier setProperty:objc_opt_class() forKey:@"cellClass"];
      v6 = self->_textEntrySpecifier;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PSKeychainSyncTextEntryController numberOfPasscodeFields](self, "numberOfPasscodeFields")}];
      [(PSSpecifier *)v6 setProperty:v7 forKey:@"numberOfPasscodeFields"];
    }
  }

LABEL_7:
  v11 = self->_textEntrySpecifier;

  return v11;
}

- (Class)textEntryCellClass
{
  v2 = objc_opt_class();

  return v2;
}

- (id)textEntryCell
{
  if (!self->_textEntryCell)
  {
    v3 = [(PSKeychainSyncTextEntryController *)self textEntryCellClass];
    v4 = [v3 alloc];
    v5 = [(objc_class *)v3 cellStyle];
    v6 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    v7 = [(objc_class *)v3 reuseIdentifierForSpecifier:v6];
    v8 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    v9 = [v4 initWithStyle:v5 reuseIdentifier:v7 specifier:v8];
    textEntryCell = self->_textEntryCell;
    self->_textEntryCell = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PSTableCell *)self->_textEntryCell setConvertsNumeralsToASCII:[(PSKeychainSyncTextEntryController *)self convertsNumeralsToASCII]];
    }

    textEntryType = self->_textEntryType;
    if (textEntryType == 2)
    {
      v14 = [(PSTableCell *)self->_textEntryCell editableTextField];
      textEntryView = self->_textEntryView;
      self->_textEntryView = v14;
    }

    else if (textEntryType == 1)
    {
      v12 = [(PSTableCell *)self->_textEntryCell passcodeField];
      v13 = self->_textEntryView;
      self->_textEntryView = v12;

      [(PSTableCell *)self->_textEntryCell setDelegate:self];
    }

    [(PSTableCell *)self->_textEntryCell setSpecifier:self->_textEntrySpecifier];
    if (objc_opt_respondsToSelector())
    {
      [(UIKeyInput *)self->_textEntryView setSecureTextEntry:self->_secureTextEntry];
    }
  }

  v16 = self->_textEntryCell;

  return v16;
}

- (id)textEntryView
{
  v3 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  textEntryView = self->_textEntryView;

  return textEntryView;
}

- (void)setSecureTextEntry:(BOOL)a3
{
  if (self->_secureTextEntry != a3)
  {
    v3 = a3;
    self->_secureTextEntry = a3;
    if (objc_opt_respondsToSelector())
    {
      textEntryView = self->_textEntryView;

      [(UIKeyInput *)textEntryView setSecureTextEntry:v3];
    }
  }
}

- (void)textFieldChanged:(id)a3
{
  v10 = a3;
  v4 = [(PSKeychainSyncTextEntryController *)self textEntryView];
  v5 = [v10 object];

  if (v5 == v4)
  {
    v6 = [(PSKeychainSyncTextEntryController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    v8 = [v4 text];
    [v7 setEnabled:{objc_msgSend(v8, "length") != 0}];

    v9 = [v10 object];
    [(PSKeychainSyncTextEntryController *)self textEntryViewDidChange:v9];
  }
}

- (void)passcodeField:(id)a3 didUpdateEnteredPasscode:(id)a4
{
  v5 = a4;
  if ([v5 length] >= 4)
  {
    [(PSKeychainSyncTextEntryController *)self didFinishEnteringText:v5];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:v7]];
  v9 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];

  if (v8 == v9)
  {
    v10 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    if (objc_opt_respondsToSelector())
    {
      [(UIKeyInput *)self->_textEntryView setAutocorrectionType:1];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PSKeychainSyncTextEntryController;
    v10 = [(PSListController *)&v12 tableView:v6 cellForRowAtIndexPath:v7];
  }

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:v7]];
  v9 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
  if (v8 == v9)
  {
    textEntryType = self->_textEntryType;

    if (textEntryType == 1)
    {
      [MEMORY[0x1E69DCD30] defaultHeight];
      if (v11 == 0.0)
      {
        v12 = 52.0;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v27.receiver = self;
  v27.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v27 tableView:v6 heightForRowAtIndexPath:v7];
  v12 = v13;
  v14 = [(PSKeychainSyncTextEntryController *)self textFieldHasRoundBorder];
  v15 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  v16 = [v15 contentView];
  v17 = [v16 layer];
  v18 = v17;
  if (v14)
  {
    [v17 setBorderWidth:1.0];

    v19 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    v20 = [v19 contentView];
    v21 = [v20 layer];
    v22 = [MEMORY[0x1E69DC888] blackColor];
    [v21 setBorderColor:{objc_msgSend(v22, "CGColor")}];

    v23 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    v24 = [v23 contentView];
    v25 = [v24 layer];
    [v25 setCornerRadius:10.0];

    if (v12 < 50.0)
    {
      v12 = 50.0;
    }
  }

  else
  {
    [v17 setBorderWidth:0.0];
  }

LABEL_12:

  return v12;
}

@end