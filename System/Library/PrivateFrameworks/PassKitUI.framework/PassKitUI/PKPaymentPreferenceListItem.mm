@interface PKPaymentPreferenceListItem
- (PKPaymentPreferenceListItem)initWithSectionPreference:(id)a3;
- (id)configuration;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentPreferenceListItem

- (PKPaymentPreferenceListItem)initWithSectionPreference:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentPreferenceListItem;
  v6 = [(PKPaymentPreferenceListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionPreference, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  objc_storeStrong(v4 + 1, self->_sectionPreference);
  return v4;
}

- (id)configuration
{
  v3 = [(PKPaymentPreferenceListItem *)self _internalConfiguration];
  v4 = [(PKPaymentPreferenceListItem *)self _text];
  [v3 setText:v4];

  v5 = [(PKPaymentPreferenceListItem *)self _secondaryText];
  [v3 setSecondaryText:v5];

  v6 = [(PKPaymentPreferenceListItem *)self _image];
  [v3 setImage:v6];

  v7 = [v3 secondaryTextProperties];
  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v7 setColor:v8];

  [v3 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins:10.0];

  return v3;
}

@end