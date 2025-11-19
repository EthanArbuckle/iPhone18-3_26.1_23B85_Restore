@interface PKStackedTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKStackedTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
@end

@implementation PKStackedTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKStackedTableViewSettingsRow)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKStackedTableViewSettingsRow;
  v11 = [(PKStackedTableViewSettingsRow *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_title, a4);
    objc_storeStrong(&v11->_value, a5);
  }

  return v11;
}

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [objc_opt_class() cellReuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    v7 = [[PKStackedLabelCell alloc] initWithReuseIdentifier:v6];
  }

  [(PKStackedLabelCell *)v7 setTitleText:self->_title];
  v8 = [self->_value stringValue];
  [(PKStackedLabelCell *)v7 setDetailText:v8];

  v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(PKStackedLabelCell *)v7 setTitleTextColor:v9];

  v10 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(PKStackedLabelCell *)v7 setDetailTextColor:v10];

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