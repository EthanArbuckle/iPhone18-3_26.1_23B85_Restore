@interface PKFieldTableViewSettingsRow
+ (id)cellReuseIdentifier;
- (PKFieldTableViewSettingsRow)initWithIdentifier:(id)a3 field:(id)a4 editing:(BOOL)a5 onValueChange:(id)a6;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
@end

@implementation PKFieldTableViewSettingsRow

+ (id)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (PKFieldTableViewSettingsRow)initWithIdentifier:(id)a3 field:(id)a4 editing:(BOOL)a5 onValueChange:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = PKFieldTableViewSettingsRow;
  v13 = [(PKFieldTableViewSettingsRow *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_field, a4);
    v13->_editing = a5;
    v13->_redact = 0;
    if (v12)
    {
      v16 = v12;
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

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [objc_opt_class() cellReuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    v7 = [[_TtC9PassKitUI27PKPaymentFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:v6];
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