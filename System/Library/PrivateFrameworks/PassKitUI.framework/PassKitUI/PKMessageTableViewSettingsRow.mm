@interface PKMessageTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKMessageTableViewSettingsRow)initWithIdentifier:(id)a3 contentConfiguration:(id)a4;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (void)setActionOnDismiss:(id)a3;
@end

@implementation PKMessageTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKMessageTableViewSettingsRow)initWithIdentifier:(id)a3 contentConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKMessageTableViewSettingsRow;
  v8 = [(PKMessageTableViewSettingsRow *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_config, a4);
  }

  return v8;
}

- (void)setActionOnDismiss:(id)a3
{
  v4 = _Block_copy(a3);
  actionOnDismiss = self->_actionOnDismiss;
  self->_actionOnDismiss = v4;
}

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [objc_opt_class() cellReuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    v7 = [[PKMessageTableCell alloc] initWithStyle:0 reuseIdentifier:v6];
  }

  [(PKMessageTableCell *)v7 setContent:self->_config];
  [(PKMessageTableCell *)v7 setActionOnDismiss:self->_actionOnDismiss];
  [(PKMessageTableCell *)v7 setAccessibilityIdentifier:self->_identifier];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end