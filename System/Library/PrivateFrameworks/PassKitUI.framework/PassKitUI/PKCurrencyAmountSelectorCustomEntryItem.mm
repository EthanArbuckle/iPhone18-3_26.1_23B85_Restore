@interface PKCurrencyAmountSelectorCustomEntryItem
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (PKCurrencyAmountSelectorCustomEntryItem)initWithCurrencyCode:(id)code;
- (id)decimalNumberValue;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (void)_textFieldValueChanged:(id)changed;
- (void)clear;
- (void)endEditing;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
@end

@implementation PKCurrencyAmountSelectorCustomEntryItem

- (PKCurrencyAmountSelectorCustomEntryItem)initWithCurrencyCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = PKCurrencyAmountSelectorCustomEntryItem;
  v5 = [(PKCurrencyAmountSelectorCustomEntryItem *)&v9 init];
  if (v5)
  {
    v6 = [[PKTextfieldTableViewSettingsRowCurrencyFormatter alloc] initWithCurrencyCode:codeCopy];
    formatter = v5->_formatter;
    v5->_formatter = v6;
  }

  return v5;
}

- (void)endEditing
{
  textField = [(PKTextFieldTableViewCell *)self->_cell textField];
  [textField endEditing:1];
}

- (void)clear
{
  textField = [(PKTextFieldTableViewCell *)self->_cell textField];
  [textField setText:0];
}

- (id)decimalNumberValue
{
  textField = [(PKTextFieldTableViewCell *)self->_cell textField];
  text = [textField text];

  if (text && [text length])
  {
    v5 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter submissionValueFromFormattedInput:text];
    v6 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v5];
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v8 = [v6 isEqualToNumber:notANumber];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  cell = self->_cell;
  if (!cell)
  {
    pathCopy = path;
    viewCopy = view;
    cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

    v11 = self->_cell;
    self->_cell = v10;

    textField = [(PKTextFieldTableViewCell *)self->_cell textField];
    v13 = PKLocalizedFeatureString();
    [textField setPlaceholder:v13];

    [textField setKeyboardType:8];
    [textField setDelegate:self];
    [textField addTarget:self action:sel__textFieldValueChanged_ forControlEvents:0x20000];
    [(PKTextFieldTableViewCell *)self->_cell setAccessibilityIdentifier:*MEMORY[0x1E69B9660]];

    cell = self->_cell;
  }

  return cell;
}

- (void)_textFieldValueChanged:(id)changed
{
  changedCopy = changed;
  formatter = self->_formatter;
  if (formatter)
  {
    v13 = changedCopy;
    text = [changedCopy text];
    v7 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)formatter formattedValueFromInput:text];

    [v13 setText:v7];
    v8 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter numberFromInput:v7];
    integerValue = [v8 integerValue];
    maximumInput = self->_maximumInput;
    v11 = MEMORY[0x1E69DC888];
    self->_inputIsValid = integerValue <= maximumInput;
    if (integerValue > maximumInput)
    {
      [v11 redColor];
    }

    else
    {
      [v11 labelColor];
    }
    v12 = ;
    [v13 setTextColor:v12];

    (*(self->_inputValueChangedHandler + 2))();
    changedCopy = v13;
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v12 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter numberFromInput:v11];
  LOBYTE(text) = self->_inputIsValid | ([v12 integerValue] <= self->_maximumInput);

  return text & 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingChangedHandler = self->_editingChangedHandler;
  if (editingChangedHandler)
  {
    editingChangedHandler[2](editingChangedHandler, 1);
  }
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingChangedHandler = self->_editingChangedHandler;
  if (editingChangedHandler)
  {
    editingChangedHandler[2](editingChangedHandler, 0);
  }
}

@end