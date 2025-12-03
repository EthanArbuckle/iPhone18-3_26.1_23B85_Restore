@interface PKTextFieldTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKTextFieldTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value formatter:(id)formatter changeHandler:(id)handler;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
- (void)_textFieldValueChanged:(id)changed;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
@end

@implementation PKTextFieldTableViewSettingsRow

- (PKTextFieldTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value formatter:(id)formatter changeHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  valueCopy = value;
  formatterCopy = formatter;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = PKTextFieldTableViewSettingsRow;
  v17 = [(PKTextFieldTableViewSettingsRow *)&v30 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v20;

    v22 = [valueCopy copy];
    value = v17->_value;
    v17->_value = v22;

    objc_storeStrong(&v17->_formatter, formatter);
    v24 = [handlerCopy copy];
    changeHandler = v17->_changeHandler;
    v17->_changeHandler = v24;

    formatter = v17->_formatter;
    if (formatter)
    {
      v27 = [(PKTextFieldTableViewSettingsRowFormatter *)formatter formattedValueFromInput:v17->_value];
      v28 = v17->_value;
      v17->_value = v27;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
  [v3 safelyAddObject:self->_formatter];
  [v3 safelyAddObject:self->_placeholder];
  PKCombinedHash();
  PKIntegerHash();
  v4 = PKIntegerHash();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!PKEqualObjects())
        {
          goto LABEL_22;
        }

        title = v6->_title;
        v8 = self->_title;
        v9 = title;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_21;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_22;
          }
        }

        if (!PKEqualObjects() || !PKEqualObjects() || self->_keyboardType != v6->_keyboardType)
        {
          goto LABEL_22;
        }

        placeholder = v6->_placeholder;
        v8 = self->_placeholder;
        v14 = placeholder;
        v10 = v14;
        if (v8 == v14)
        {

LABEL_26:
          if (self->_changeHandler == v6->_changeHandler)
          {
            v12 = self->_enabled == v6->_enabled;
            goto LABEL_23;
          }

LABEL_22:
          v12 = 0;
LABEL_23:

          goto LABEL_24;
        }

        if (v8 && v14)
        {
          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v12 = 0;
  }

LABEL_24:

  return v12;
}

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  v27[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1000 reuseIdentifier:cellReuseIdentifier];
  }

  textLabel = [v7 textLabel];
  [textLabel setText:self->_title];

  textLabel2 = [v7 textLabel];
  [textLabel2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  editableTextField = [v7 editableTextField];
  [editableTextField setDelegate:self];
  [editableTextField setText:self->_value];
  [editableTextField addTarget:self action:sel__textFieldValueChanged_ forControlEvents:0x20000];
  [editableTextField setKeyboardType:self->_keyboardType];
  [editableTextField setPlaceholder:self->_placeholder];
  [editableTextField setReturnKeyType:9];
  [editableTextField setEnabled:self->_enabled];
  if (self->_keyboardType == 8)
  {
    v11 = objc_alloc(MEMORY[0x1E69DD180]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = MEMORY[0x1E69DC628];
    v15 = PKLocalizedString(&cfstr_Done.isa);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __73__PKTextFieldTableViewSettingsRow_tableViewCellForTableView_atIndexPath___block_invoke;
    v25 = &unk_1E8016068;
    v16 = editableTextField;
    v26 = v16;
    v17 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:&v22];
    v18 = [v13 initWithPrimaryAction:{v17, v22, v23, v24, v25}];

    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v27[0] = v19;
    v27[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v12 setItems:v20];

    [v12 sizeToFit];
    [v16 setInputAccessoryView:v12];
  }

  [v7 setAccessibilityIdentifier:self->_identifier];
  [(PKTextFieldTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  if (!reason)
  {
    text = [editing text];
    formatter = self->_formatter;
    if (formatter)
    {
      v9 = text;
      v8 = [(PKTextFieldTableViewSettingsRowFormatter *)formatter submissionValueFromFormattedInput:?];

      text = v8;
    }

    v10 = text;
    (*(self->_changeHandler + 2))();
  }
}

- (void)_textFieldValueChanged:(id)changed
{
  formatter = self->_formatter;
  if (formatter)
  {
    changedCopy = changed;
    text = [changedCopy text];
    v6 = [(PKTextFieldTableViewSettingsRowFormatter *)formatter formattedValueFromInput:text];

    [changedCopy setText:v6];
  }
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end