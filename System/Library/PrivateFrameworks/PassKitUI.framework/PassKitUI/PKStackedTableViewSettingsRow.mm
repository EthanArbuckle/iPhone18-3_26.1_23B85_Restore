@interface PKStackedTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKStackedTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
@end

@implementation PKStackedTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKStackedTableViewSettingsRow)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  v15.receiver = self;
  v15.super_class = PKStackedTableViewSettingsRow;
  v11 = [(PKStackedTableViewSettingsRow *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v11->_value, subtitle);
  }

  return v11;
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (!v7)
  {
    v7 = [[PKStackedLabelCell alloc] initWithReuseIdentifier:cellReuseIdentifier];
  }

  [(PKStackedLabelCell *)v7 setTitleText:self->_title];
  stringValue = [self->_value stringValue];
  [(PKStackedLabelCell *)v7 setDetailText:stringValue];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(PKStackedLabelCell *)v7 setTitleTextColor:tertiaryLabelColor];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(PKStackedLabelCell *)v7 setDetailTextColor:systemBlueColor];

  [(PKTableViewCell *)v7 setShowsActionSpinner:self->_showSpinner];
  [(PKStackedLabelCell *)v7 setAccessibilityIdentifier:self->_identifier];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end