@interface PKButtonTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)a3;
- (PKButtonTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 tapHandler:(id)a5;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (unint64_t)hash;
- (void)handleCellSelection;
@end

@implementation PKButtonTableViewSettingsRow

- (PKButtonTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 tapHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PKButtonTableViewSettingsRow;
  v11 = [(PKButtonTableViewSettingsRow *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v10 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
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

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [objc_opt_class() cellReuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:v6];
  }

  v8 = [v7 textLabel];
  [v8 setText:self->_title];

  v9 = [v7 textLabel];
  [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  style = self->_style;
  switch(style)
  {
    case 2:
      v12 = [MEMORY[0x1E69DC888] labelColor];
      v13 = 1;
      goto LABEL_10;
    case 1:
      v11 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_8;
    case 0:
      v11 = [MEMORY[0x1E69DC888] linkColor];
LABEL_8:
      v12 = v11;
      v13 = 0;
LABEL_10:
      [v7 setAccessoryType:v13];
      goto LABEL_12;
  }

  v12 = 0;
LABEL_12:
  if (!self->_enabled)
  {
    v14 = [MEMORY[0x1E69DC888] systemGrayColor];

    v12 = v14;
  }

  v15 = [v7 textLabel];
  [v15 setTextColor:v12];

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