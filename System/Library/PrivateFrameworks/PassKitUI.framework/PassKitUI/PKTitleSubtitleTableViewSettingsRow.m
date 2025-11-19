@interface PKTitleSubtitleTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)a3;
- (PKTitleSubtitleTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (unint64_t)hash;
@end

@implementation PKTitleSubtitleTableViewSettingsRow

- (PKTitleSubtitleTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PKTitleSubtitleTableViewSettingsRow;
  v11 = [(PKTitleSubtitleTableViewSettingsRow *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v10 copy];
    value = v11->_value;
    v11->_value = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
  v4 = PKCombinedHash();

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

            goto LABEL_13;
          }

          if (v8 && v9)
          {
            v11 = [(NSString *)v8 isEqualToString:v9];

            if (!v11)
            {
              goto LABEL_15;
            }

LABEL_13:
            v12 = PKEqualObjects();
LABEL_16:

            goto LABEL_17;
          }
        }

LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = 0;
  }

LABEL_17:

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

  v8 = [v7 defaultContentConfiguration];
  [v8 setText:self->_title];
  [v8 setSecondaryText:self->_value];
  v9 = [v8 textProperties];
  v10 = *MEMORY[0x1E69DDCF8];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
  [v9 setFont:v11];

  v12 = [MEMORY[0x1E69DC888] labelColor];
  [v9 setColor:v12];

  v13 = [v8 secondaryTextProperties];
  v14 = PKFontForDefaultDesign(v10, 0);
  [v13 setFont:v14];

  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setColor:v15];

  [v7 setContentConfiguration:v8];
  v16 = [v7 textLabel];
  [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v17 = [v7 detailTextLabel];
  [v17 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  [v7 setAccessibilityIdentifier:self->_identifier];
  [(PKTitleSubtitleTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end