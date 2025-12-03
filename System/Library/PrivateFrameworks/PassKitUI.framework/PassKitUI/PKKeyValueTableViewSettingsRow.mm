@interface PKKeyValueTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKKeyValueTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value sectionID:(id)d;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
@end

@implementation PKKeyValueTableViewSettingsRow

- (PKKeyValueTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title value:(id)value sectionID:(id)d
{
  identifierCopy = identifier;
  titleCopy = title;
  valueCopy = value;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = PKKeyValueTableViewSettingsRow;
  v14 = [(PKKeyValueTableViewSettingsRow *)&v28 init];
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

    v21 = [dCopy copy];
    sectionID = v14->_sectionID;
    v14->_sectionID = v21;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    secondaryTextColor = v14->_secondaryTextColor;
    v14->_secondaryTextColor = secondaryLabelColor;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    primaryTextColor = v14->_primaryTextColor;
    v14->_primaryTextColor = labelColor;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
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

  [secondaryTextProperties setColor:self->_secondaryTextColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:self->_primaryTextColor];
  [v7 setContentConfiguration:defaultContentConfiguration];
  textLabel = [v7 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

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