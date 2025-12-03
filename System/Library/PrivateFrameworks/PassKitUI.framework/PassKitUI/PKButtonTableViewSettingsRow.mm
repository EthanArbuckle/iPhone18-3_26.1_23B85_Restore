@interface PKButtonTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKButtonTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title tapHandler:(id)handler;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
- (void)handleCellSelection;
@end

@implementation PKButtonTableViewSettingsRow

- (PKButtonTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title tapHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = PKButtonTableViewSettingsRow;
  v11 = [(PKButtonTableViewSettingsRow *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [handlerCopy copy];
    changeHandler = v11->_changeHandler;
    v11->_changeHandler = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
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

              goto LABEL_18;
            }

            v11 = [(NSString *)v8 isEqualToString:v9];

            if (!v11)
            {
              goto LABEL_18;
            }
          }

          if (PKEqualObjects() && self->_style == v6->_style && self->_changeHandler == v6->_changeHandler)
          {
            v12 = self->_enabled == v6->_enabled;
LABEL_19:

            goto LABEL_20;
          }
        }

LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }
    }

    v12 = 0;
  }

LABEL_20:

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

  textLabel = [v7 textLabel];
  [textLabel setText:self->_title];

  textLabel2 = [v7 textLabel];
  [textLabel2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  style = self->_style;
  switch(style)
  {
    case 2:
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v13 = 1;
      goto LABEL_10;
    case 1:
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_8;
    case 0:
      systemRedColor = [MEMORY[0x1E69DC888] linkColor];
LABEL_8:
      labelColor = systemRedColor;
      v13 = 0;
LABEL_10:
      [v7 setAccessoryType:v13];
      goto LABEL_12;
  }

  labelColor = 0;
LABEL_12:
  if (!self->_enabled)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];

    labelColor = systemGrayColor;
  }

  textLabel3 = [v7 textLabel];
  [textLabel3 setTextColor:labelColor];

  [v7 setAccessibilityIdentifier:self->_identifier];
  [(PKButtonTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (void)handleCellSelection
{
  changeHandler = self->_changeHandler;
  if (changeHandler)
  {
    changeHandler[2](changeHandler, self);
  }
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end