@interface PKMessageTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKMessageTableViewSettingsRow)initWithIdentifier:(id)identifier contentConfiguration:(id)configuration;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (void)setActionOnDismiss:(id)dismiss;
@end

@implementation PKMessageTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKMessageTableViewSettingsRow)initWithIdentifier:(id)identifier contentConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = PKMessageTableViewSettingsRow;
  v8 = [(PKMessageTableViewSettingsRow *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_config, configuration);
  }

  return v8;
}

- (void)setActionOnDismiss:(id)dismiss
{
  v4 = _Block_copy(dismiss);
  actionOnDismiss = self->_actionOnDismiss;
  self->_actionOnDismiss = v4;
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (!v7)
  {
    v7 = [[PKMessageTableCell alloc] initWithStyle:0 reuseIdentifier:cellReuseIdentifier];
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