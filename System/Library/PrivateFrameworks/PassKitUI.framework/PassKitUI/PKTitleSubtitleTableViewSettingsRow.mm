@interface PKTitleSubtitleTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (BOOL)isEqual:(id)equal;
- (PKTitleSubtitleTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
@end

@implementation PKTitleSubtitleTableViewSettingsRow

- (PKTitleSubtitleTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  v19.receiver = self;
  v19.super_class = PKTitleSubtitleTableViewSettingsRow;
  v11 = [(PKTitleSubtitleTableViewSettingsRow *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [subtitleCopy copy];
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
  textProperties = [defaultContentConfiguration textProperties];
  v10 = *MEMORY[0x1E69DDCF8];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
  [textProperties setFont:v11];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textProperties setColor:labelColor];

  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  v14 = PKFontForDefaultDesign(v10, 0);
  [secondaryTextProperties setFont:v14];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [v7 setContentConfiguration:defaultContentConfiguration];
  textLabel = [v7 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

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