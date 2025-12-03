@interface PKPaymentPreferenceListItem
- (PKPaymentPreferenceListItem)initWithSectionPreference:(id)preference;
- (id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKPaymentPreferenceListItem

- (PKPaymentPreferenceListItem)initWithSectionPreference:(id)preference
{
  preferenceCopy = preference;
  v9.receiver = self;
  v9.super_class = PKPaymentPreferenceListItem;
  v6 = [(PKPaymentPreferenceListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionPreference, preference);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  objc_storeStrong(v4 + 1, self->_sectionPreference);
  return v4;
}

- (id)configuration
{
  _internalConfiguration = [(PKPaymentPreferenceListItem *)self _internalConfiguration];
  _text = [(PKPaymentPreferenceListItem *)self _text];
  [_internalConfiguration setText:_text];

  _secondaryText = [(PKPaymentPreferenceListItem *)self _secondaryText];
  [_internalConfiguration setSecondaryText:_secondaryText];

  _image = [(PKPaymentPreferenceListItem *)self _image];
  [_internalConfiguration setImage:_image];

  secondaryTextProperties = [_internalConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [_internalConfiguration directionalLayoutMargins];
  [_internalConfiguration setDirectionalLayoutMargins:10.0];

  return _internalConfiguration;
}

@end