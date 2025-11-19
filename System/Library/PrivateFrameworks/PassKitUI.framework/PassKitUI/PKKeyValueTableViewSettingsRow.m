@interface PKKeyValueTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)a3;
- (PKKeyValueTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 value:(id)a5 sectionID:(id)a6;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (unint64_t)hash;
@end

@implementation PKKeyValueTableViewSettingsRow

- (PKKeyValueTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 value:(id)a5 sectionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = PKKeyValueTableViewSettingsRow;
  v14 = [(PKKeyValueTableViewSettingsRow *)&v28 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v12 copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = [v13 copy];
    sectionID = v14->_sectionID;
    v14->_sectionID = v21;

    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    secondaryTextColor = v14->_secondaryTextColor;
    v14->_secondaryTextColor = v23;

    v25 = [MEMORY[0x1E69DC888] labelColor];
    primaryTextColor = v14->_primaryTextColor;
    v14->_primaryTextColor = v25;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_value];
  [v3 safelyAddObject:self->_sectionID];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
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
            LOBYTE(v11) = 0;
            if (!v8 || !v9)
            {
LABEL_20:

              goto LABEL_21;
            }

            v11 = [(NSString *)v8 isEqualToString:v9];

            if (!v11)
            {
              goto LABEL_21;
            }
          }

          if (PKEqualObjects())
          {
            sectionID = self->_sectionID;
            v13 = v6->_sectionID;
            v8 = sectionID;
            v14 = v13;
            v10 = v14;
            if (v8 == v14)
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              LOBYTE(v11) = 0;
              if (v8 && v14)
              {
                LOBYTE(v11) = [(NSString *)v8 isEqualToString:v14];
              }
            }

            goto LABEL_20;
          }
        }

        LOBYTE(v11) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_22:

  return v11;
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
  [v8 setPrefersSideBySideTextAndSecondaryText:1];
  v9 = [v8 secondaryTextProperties];
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [v9 setFont:v10];

  [v9 setColor:self->_secondaryTextColor];
  v11 = [v8 textProperties];
  [v11 setColor:self->_primaryTextColor];
  [v7 setContentConfiguration:v8];
  v12 = [v7 textLabel];
  [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v13 = [v7 detailTextLabel];
  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  [v7 setAccessibilityIdentifier:self->_identifier];
  [v7 pkui_setExcludedFromScreenCapture:self->_sensitive andBroadcasting:self->_sensitive];
  [(PKKeyValueTableViewSettingsRow *)self setSourceItem:v7];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end