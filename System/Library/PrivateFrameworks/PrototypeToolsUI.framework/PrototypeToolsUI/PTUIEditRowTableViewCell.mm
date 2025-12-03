@interface PTUIEditRowTableViewCell
- (PTUIEditRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)numericKeypadDidUpdateValue:(id)value;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateDisplayedValue;
@end

@implementation PTUIEditRowTableViewCell

- (PTUIEditRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = PTUIEditRowTableViewCell;
  v4 = [(PTUIEditRowTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    editableTextField = [(PTUIEditRowTableViewCell *)v4 editableTextField];
    [editableTextField setTextAlignment:2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      editableTextField2 = [(PTUIEditRowTableViewCell *)v5 editableTextField];
      v8 = editableTextField2;
      v9 = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      editableTextField2 = [(PTUIEditRowTableViewCell *)v5 editableTextField];
      v8 = editableTextField2;
      if (isKindOfClass)
      {
        [editableTextField2 setKeyboardType:8];

        editableTextField2 = [(PTUIEditRowTableViewCell *)v5 editableTextField];
        v8 = editableTextField2;
      }

      v9 = 0;
    }

    [editableTextField2 setClearButtonMode:v9];

    editableTextField3 = [(PTUIEditRowTableViewCell *)v5 editableTextField];
    [editableTextField3 setDelegate:v5];
  }

  return v5;
}

- (void)updateDisplayedValue
{
  v3 = [(PTUIRowTableViewCell *)self row];
  value = [v3 value];

  editableTextField = [(PTUIEditRowTableViewCell *)self editableTextField];
  v5 = [(PTUIEditRowTableViewCell *)self textForValue:value];
  [editableTextField setText:v5];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && PTUINumericKeypadIsNeeded())
  {
    v4 = +[PTUINumericKeypad sharedKeypad];
    text = [editingCopy text];
    [v4 setStringValue:text];

    v6 = +[PTUINumericKeypad sharedKeypad];
    [v6 showAnimated:1 forDelegate:self];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  [editing setTextAlignment:2];
  editableTextField = [(PTUIEditRowTableViewCell *)self editableTextField];
  text = [editableTextField text];

  v5 = [(PTUIRowTableViewCell *)self row];
  v6 = [(PTUIEditRowTableViewCell *)self valueForText:text];
  [v5 setValue:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && PTUINumericKeypadIsNeeded())
  {
    v7 = +[PTUINumericKeypad sharedKeypad];
    [v7 hideAnimated:1];
  }
}

- (void)numericKeypadDidUpdateValue:(id)value
{
  valueCopy = value;
  v3 = valueCopy;
  BSDispatchMain();
}

void __56__PTUIEditRowTableViewCell_numericKeypadDidUpdateValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editableTextField];
  v3 = [*(a1 + 40) stringValue];
  [v2 setText:v3];

  v4 = [*(a1 + 32) editableTextField];
  [v4 sendActionsForControlEvents:4096];
}

void __53__PTUIEditRowTableViewCell_numericKeypadWillDismiss___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editableTextField];
  [v1 resignFirstResponder];
}

@end