@interface PKCurrencyAmountSelectorCustomEntryItem
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (PKCurrencyAmountSelectorCustomEntryItem)initWithCurrencyCode:(id)a3;
- (id)decimalNumberValue;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_textFieldValueChanged:(id)a3;
- (void)clear;
- (void)endEditing;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
@end

@implementation PKCurrencyAmountSelectorCustomEntryItem

- (PKCurrencyAmountSelectorCustomEntryItem)initWithCurrencyCode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCurrencyAmountSelectorCustomEntryItem;
  v5 = [(PKCurrencyAmountSelectorCustomEntryItem *)&v9 init];
  if (v5)
  {
    v6 = [[PKTextfieldTableViewSettingsRowCurrencyFormatter alloc] initWithCurrencyCode:v4];
    formatter = v5->_formatter;
    v5->_formatter = v6;
  }

  return v5;
}

- (void)endEditing
{
  v2 = [(PKTextFieldTableViewCell *)self->_cell textField];
  [v2 endEditing:1];
}

- (void)clear
{
  v2 = [(PKTextFieldTableViewCell *)self->_cell textField];
  [v2 setText:0];
}

- (id)decimalNumberValue
{
  v3 = [(PKTextFieldTableViewCell *)self->_cell textField];
  v4 = [v3 text];

  if (v4 && [v4 length])
  {
    v5 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter submissionValueFromFormattedInput:v4];
    v6 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v5];
    v7 = [MEMORY[0x1E696AB90] notANumber];
    v8 = [v6 isEqualToNumber:v7];

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

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  cell = self->_cell;
  if (!cell)
  {
    v7 = a4;
    v8 = a3;
    v9 = [objc_opt_class() cellReuseIdentifier];
    v10 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];

    v11 = self->_cell;
    self->_cell = v10;

    v12 = [(PKTextFieldTableViewCell *)self->_cell textField];
    v13 = PKLocalizedFeatureString();
    [v12 setPlaceholder:v13];

    [v12 setKeyboardType:8];
    [v12 setDelegate:self];
    [v12 addTarget:self action:sel__textFieldValueChanged_ forControlEvents:0x20000];
    [(PKTextFieldTableViewCell *)self->_cell setAccessibilityIdentifier:*MEMORY[0x1E69B9660]];

    cell = self->_cell;
  }

  return cell;
}

- (void)_textFieldValueChanged:(id)a3
{
  v4 = a3;
  formatter = self->_formatter;
  if (formatter)
  {
    v13 = v4;
    v6 = [v4 text];
    v7 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)formatter formattedValueFromInput:v6];

    [v13 setText:v7];
    v8 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter numberFromInput:v7];
    v9 = [v8 integerValue];
    maximumInput = self->_maximumInput;
    v11 = MEMORY[0x1E69DC888];
    self->_inputIsValid = v9 <= maximumInput;
    if (v9 > maximumInput)
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
    v4 = v13;
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self->_formatter numberFromInput:v11];
  LOBYTE(v10) = self->_inputIsValid | ([v12 integerValue] <= self->_maximumInput);

  return v10 & 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  editingChangedHandler = self->_editingChangedHandler;
  if (editingChangedHandler)
  {
    editingChangedHandler[2](editingChangedHandler, 1);
  }
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  editingChangedHandler = self->_editingChangedHandler;
  if (editingChangedHandler)
  {
    editingChangedHandler[2](editingChangedHandler, 0);
  }
}

@end