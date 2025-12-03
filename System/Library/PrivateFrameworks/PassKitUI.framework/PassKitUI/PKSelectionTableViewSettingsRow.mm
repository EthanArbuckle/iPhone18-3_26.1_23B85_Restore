@interface PKSelectionTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKSelectionTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value tapHandler:(id)handler;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
- (void)handleCellSelection;
@end

@implementation PKSelectionTableViewSettingsRow

- (PKSelectionTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value tapHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  valueCopy = value;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = PKSelectionTableViewSettingsRow;
  v14 = [(PKSelectionTableViewSettingsRow *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [valueCopy copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = [handlerCopy copy];
    changeHandler = v14->_changeHandler;
    v14->_changeHandler = v21;
  }

  return v14;
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
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:cellReuseIdentifier];
  }

  defaultContentConfiguration = [v7 defaultContentConfiguration];
  [defaultContentConfiguration setText:self->_title];
  [defaultContentConfiguration setSecondaryText:self->_value];
  [defaultContentConfiguration setPrefersSideBySideTextAndSecondaryText:1];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [secondaryTextProperties setFont:v10];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [v7 setContentConfiguration:defaultContentConfiguration];
  [v7 setAccessoryType:1];
  [v7 setAccessibilityIdentifier:self->_identifier];
  [(PKSelectionTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (void)handleCellSelection
{
  changeHandler = self->_changeHandler;
  if (changeHandler)
  {
    changeHandler[2](changeHandler, 0);
  }
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end