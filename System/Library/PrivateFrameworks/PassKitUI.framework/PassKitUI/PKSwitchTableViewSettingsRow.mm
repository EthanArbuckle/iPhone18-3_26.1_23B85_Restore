@interface PKSwitchTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKSwitchTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(BOOL)value changeHandler:(id)handler;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
- (void)_switchValueChanged:(id)changed;
@end

@implementation PKSwitchTableViewSettingsRow

- (PKSwitchTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(BOOL)value changeHandler:(id)handler
{
  valueCopy = value;
  identifierCopy = identifier;
  titleCopy = title;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = PKSwitchTableViewSettingsRow;
  v13 = [(PKSwitchTableViewSettingsRow *)&v23 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v16;

    v18 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
    value = v13->_value;
    v13->_value = v18;

    v20 = [handlerCopy copy];
    changeHandler = v13->_changeHandler;
    v13->_changeHandler = v20;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
  PKCombinedHash();
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
        if (PKEqualObjects())
        {
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

              goto LABEL_17;
            }

            v11 = [(NSString *)v8 isEqualToString:v9];

            if (!v11)
            {
              goto LABEL_17;
            }
          }

          if (PKEqualObjects() && self->_changeHandler == v6->_changeHandler)
          {
            v12 = self->_enabled == v6->_enabled;
LABEL_18:

            goto LABEL_19;
          }
        }

LABEL_17:
        v12 = 0;
        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (!v7)
  {
    v7 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:cellReuseIdentifier];
  }

  -[PKSettingTableCell setOn:](v7, "setOn:", [self->_value BOOLValue]);
  [(PKSettingTableCell *)v7 setTarget:self action:sel__switchValueChanged_];
  settingSwitch = [(PKSettingTableCell *)v7 settingSwitch];
  [settingSwitch setEnabled:self->_enabled];

  textLabel = [(PKSettingTableCell *)v7 textLabel];
  [textLabel setText:self->_title];

  textLabel2 = [(PKSettingTableCell *)v7 textLabel];
  [textLabel2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  [(PKSettingTableCell *)v7 setAccessibilityIdentifier:self->_identifier];
  [(PKSwitchTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (void)_switchValueChanged:(id)changed
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(changed, "isOn")}];
  changeHandler = self->_changeHandler;
  if (changeHandler)
  {
    v6 = v4;
    changeHandler[2]();
    v4 = v6;
  }
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end