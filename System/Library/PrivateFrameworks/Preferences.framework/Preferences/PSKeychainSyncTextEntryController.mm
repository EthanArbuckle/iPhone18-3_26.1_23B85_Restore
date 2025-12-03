@interface PSKeychainSyncTextEntryController
- (BOOL)becomeFirstResponder;
- (Class)textEntryCellClass;
- (PSKeychainSyncTextEntryController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)textEntryCell;
- (id)textEntrySpecifier;
- (id)textEntryText;
- (id)textEntryView;
- (void)dealloc;
- (void)didFinishEnteringText:(id)text;
- (void)loadView;
- (void)nextPressed;
- (void)passcodeField:(id)field didUpdateEnteredPasscode:(id)passcode;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setTextEntryText:(id)text;
- (void)setTextEntryType:(int)type;
- (void)textFieldChanged:(id)changed;
- (void)updateNextButton;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];

    v2->_numberOfPasscodeFields = 6;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v4 loadView];
  table = [(PSListController *)self table];
  [table setSeparatorStyle:0];
}

- (void)updateNextButton
{
  if (self->_textEntryType == 1 || [(PSKeychainSyncTextEntryController *)self hidesNextButton])
  {
    navigationItem = [(PSKeychainSyncTextEntryController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = PS_LocalizedStringForKeychainSync(@"NEXT");
    navigationItem = [v3 initWithTitle:v4 style:2 target:self action:sel_nextPressed];

    [navigationItem setEnabled:0];
    navigationItem2 = [(PSKeychainSyncTextEntryController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem];
  }
}

- (void)nextPressed
{
  textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
  [textEntryView resignFirstResponder];

  textValue = [(PSKeychainSyncTextEntryController *)self textValue];
  [(PSKeychainSyncTextEntryController *)self didFinishEnteringText:textValue];
}

- (void)didFinishEnteringText:(id)text
{
  textCopy = text;
  delegate = [(PSKeychainSyncViewController *)self delegate];
  [delegate keychainSyncController:self didFinishWithResult:textCopy error:0];
}

- (void)setTextEntryType:(int)type
{
  [(PSKeychainSyncTextEntryController *)self setTextEntryText:&stru_1EFE45030];
  self->_textEntryType = type;
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
  textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
  becomeFirstResponder = [textEntryView becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)willBecomeActive
{
  textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
  [textEntryView becomeFirstResponder];

  v4.receiver = self;
  v4.super_class = PSKeychainSyncTextEntryController;
  [(PSViewController *)&v4 willBecomeActive];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(PSKeychainSyncTextEntryController *)self updateNextButton];
  if (([(PSKeychainSyncTextEntryController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(PSListController *)self reloadSpecifiers];
  }

  v5.receiver = self;
  v5.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v7 viewWillDisappear:disappear];
  textEntryCell = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    textEntryCell2 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    [textEntryCell2 setDenyFirstResponder:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PSKeychainSyncTextEntryController;
  [(PSListController *)&v7 viewDidDisappear:disappear];
  textEntryCell = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    textEntryCell2 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    [textEntryCell2 setDenyFirstResponder:0];
  }
}

- (void)setTextEntryText:(id)text
{
  textCopy = text;
  [(PSKeychainSyncTextEntryController *)self setTextValue:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyInput *)self->_textEntryView setText:textCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIKeyInput *)self->_textEntryView setStringValue:textCopy];
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
    text = [(UIKeyInput *)self->_textEntryView text];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [(UIKeyInput *)self->_textEntryView stringValue];
    }

    else
    {
      text = 0;
    }
  }

  return text;
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
    specifiers = [(PSKeychainSyncViewController *)&v12 specifiers];
    textEntrySpecifier = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    [(NSArray *)specifiers addObject:textEntrySpecifier];

    v10 = self->super.super._specifiers;
    self->super.super._specifiers = specifiers;

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
      placeholderText = [(PSKeychainSyncTextEntryController *)self placeholderText];
      [(PSSpecifier *)v10 setPlaceholder:placeholderText];
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
      placeholderText = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PSKeychainSyncTextEntryController numberOfPasscodeFields](self, "numberOfPasscodeFields")}];
      [(PSSpecifier *)v6 setProperty:placeholderText forKey:@"numberOfPasscodeFields"];
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
    textEntryCellClass = [(PSKeychainSyncTextEntryController *)self textEntryCellClass];
    v4 = [textEntryCellClass alloc];
    cellStyle = [(objc_class *)textEntryCellClass cellStyle];
    textEntrySpecifier = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    v7 = [(objc_class *)textEntryCellClass reuseIdentifierForSpecifier:textEntrySpecifier];
    textEntrySpecifier2 = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
    v9 = [v4 initWithStyle:cellStyle reuseIdentifier:v7 specifier:textEntrySpecifier2];
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
      editableTextField = [(PSTableCell *)self->_textEntryCell editableTextField];
      textEntryView = self->_textEntryView;
      self->_textEntryView = editableTextField;
    }

    else if (textEntryType == 1)
    {
      passcodeField = [(PSTableCell *)self->_textEntryCell passcodeField];
      v13 = self->_textEntryView;
      self->_textEntryView = passcodeField;

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
  textEntryCell = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  textEntryView = self->_textEntryView;

  return textEntryView;
}

- (void)setSecureTextEntry:(BOOL)entry
{
  if (self->_secureTextEntry != entry)
  {
    entryCopy = entry;
    self->_secureTextEntry = entry;
    if (objc_opt_respondsToSelector())
    {
      textEntryView = self->_textEntryView;

      [(UIKeyInput *)textEntryView setSecureTextEntry:entryCopy];
    }
  }
}

- (void)textFieldChanged:(id)changed
{
  changedCopy = changed;
  textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
  object = [changedCopy object];

  if (object == textEntryView)
  {
    navigationItem = [(PSKeychainSyncTextEntryController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    text = [textEntryView text];
    [rightBarButtonItem setEnabled:{objc_msgSend(text, "length") != 0}];

    object2 = [changedCopy object];
    [(PSKeychainSyncTextEntryController *)self textEntryViewDidChange:object2];
  }
}

- (void)passcodeField:(id)field didUpdateEnteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([passcodeCopy length] >= 4)
  {
    [(PSKeychainSyncTextEntryController *)self didFinishEnteringText:passcodeCopy];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:pathCopy]];
  textEntrySpecifier = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];

  if (v8 == textEntrySpecifier)
  {
    textEntryCell = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    if (objc_opt_respondsToSelector())
    {
      [(UIKeyInput *)self->_textEntryView setAutocorrectionType:1];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PSKeychainSyncTextEntryController;
    textEntryCell = [(PSListController *)&v12 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return textEntryCell;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:pathCopy]];
  textEntrySpecifier = [(PSKeychainSyncTextEntryController *)self textEntrySpecifier];
  if (v8 == textEntrySpecifier)
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
  [(PSListController *)&v27 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
  v12 = v13;
  textFieldHasRoundBorder = [(PSKeychainSyncTextEntryController *)self textFieldHasRoundBorder];
  textEntryCell = [(PSKeychainSyncTextEntryController *)self textEntryCell];
  contentView = [textEntryCell contentView];
  layer = [contentView layer];
  v18 = layer;
  if (textFieldHasRoundBorder)
  {
    [layer setBorderWidth:1.0];

    textEntryCell2 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    contentView2 = [textEntryCell2 contentView];
    layer2 = [contentView2 layer];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer2 setBorderColor:{objc_msgSend(blackColor, "CGColor")}];

    textEntryCell3 = [(PSKeychainSyncTextEntryController *)self textEntryCell];
    contentView3 = [textEntryCell3 contentView];
    layer3 = [contentView3 layer];
    [layer3 setCornerRadius:10.0];

    if (v12 < 50.0)
    {
      v12 = 50.0;
    }
  }

  else
  {
    [layer setBorderWidth:0.0];
  }

LABEL_12:

  return v12;
}

@end