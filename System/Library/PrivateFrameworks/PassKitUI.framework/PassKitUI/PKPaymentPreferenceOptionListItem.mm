@interface PKPaymentPreferenceOptionListItem
- (BOOL)_supportsEditing;
- (BOOL)supportsSwipeActionType:(int)a3;
- (PKPaymentPreferenceOptionListItem)initWithPreference:(id)a3 inSectionPreference:(id)a4 hasErrorHandler:(id)a5;
- (id)_inlineEditingConfiguration;
- (id)configuration;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentPreferenceOptionListItem

- (PKPaymentPreferenceOptionListItem)initWithPreference:(id)a3 inSectionPreference:(id)a4 hasErrorHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKPaymentPreferenceOptionListItem;
  v11 = [(PKPaymentPreferenceListItem *)&v16 initWithSectionPreference:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preference, a3);
    v13 = _Block_copy(v10);
    hasErrorHandler = v12->_hasErrorHandler;
    v12->_hasErrorHandler = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PKPaymentPreferenceOptionListItem;
  v4 = [(PKPaymentPreferenceListItem *)&v8 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_preference);
  v5 = _Block_copy(self->_hasErrorHandler);
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (id)_inlineEditingConfiguration
{
  v3 = +[PKListTextFieldContentConfiguration cellConfiguration];
  v4 = [(PKPaymentPreferenceOptionListItem *)self _text];
  [v3 setText:v4];

  v5 = [(PKPaymentPreferenceOptionListItem *)self _placeholderText];
  [v3 setPlaceholderText:v5];

  v6 = [(PKPaymentPreferenceOptionListItem *)self _secondaryText];
  [v3 setSecondaryText:v6];

  [v3 setAutocorrectionType:1];
  [v3 setHasErrorHandler:self->_hasErrorHandler];
  [v3 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins:10.0];

  return v3;
}

- (id)configuration
{
  if ([(PKPaymentPreferenceListItem *)self supportsInlineEditing])
  {
    v3 = [(PKPaymentPreferenceOptionListItem *)self _inlineEditingConfiguration];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKPaymentPreferenceOptionListItem;
    v3 = [(PKPaymentPreferenceListItem *)&v5 configuration];
  }

  return v3;
}

- (BOOL)supportsSwipeActionType:(int)a3
{
  if (a3 == 1)
  {
    return [(PKPaymentPreferenceOptionListItem *)self _supportsEditAction];
  }

  if (a3)
  {
    return 0;
  }

  return [(PKPaymentPreferenceOptionListItem *)self _supportsDeleteAction];
}

- (BOOL)_supportsEditing
{
  v3 = [(PKPaymentPreferenceListItem *)self sectionPreference];
  if ([v3 isReadOnly])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PKPaymentPreferenceListItem *)self sectionPreference];
    v4 = [v5 supportsDeletion];
  }

  return v4;
}

@end