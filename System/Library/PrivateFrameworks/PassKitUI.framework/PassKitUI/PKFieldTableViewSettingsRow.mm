@interface PKFieldTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKFieldTableViewSettingsRow)initWithIdentifier:(id)identifier field:(id)field editing:(BOOL)editing onValueChange:(id)change;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
@end

@implementation PKFieldTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKFieldTableViewSettingsRow)initWithIdentifier:(id)identifier field:(id)field editing:(BOOL)editing onValueChange:(id)change
{
  identifierCopy = identifier;
  fieldCopy = field;
  changeCopy = change;
  v20.receiver = self;
  v20.super_class = PKFieldTableViewSettingsRow;
  v13 = [(PKFieldTableViewSettingsRow *)&v20 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_field, field);
    v13->_editing = editing;
    v13->_redact = 0;
    if (changeCopy)
    {
      v16 = changeCopy;
    }

    else
    {
      v16 = &__block_literal_global_84;
    }

    v17 = _Block_copy(v16);
    onValueChange = v13->_onValueChange;
    v13->_onValueChange = v17;
  }

  return v13;
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (!v7)
  {
    v7 = [[_TtC9PassKitUI27PKPaymentFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:cellReuseIdentifier];
  }

  [(PKPaymentSetupField *)self->_field setReadonly:!self->_editing];
  [(PKPaymentFieldTableViewCell *)v7 configureWith:self->_field useGroupedFormStyle:1 onValueChange:self->_onValueChange];
  [(UIView *)v7 pkui_setExcludedFromScreenCapture:self->_redact andBroadcasting:1];
  [(PKPaymentFieldTableViewCell *)v7 setAccessibilityIdentifier:self->_identifier];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end