@interface PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell
- (PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell)init;
- (void)_updateNetworkImage;
- (void)dealloc;
- (void)pk_applyAppearance:(id)appearance;
- (void)setAccessoryView:(id)view;
- (void)setHasDarkAppearance:(BOOL)appearance;
- (void)setPaymentCredentialType:(int64_t)type;
- (void)setPaymentSetupField:(id)field;
@end

@implementation PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell

- (void)pk_applyAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  appearanceCopy = appearance;
  [(PKPaymentSetupFieldCell *)&v6 pk_applyAppearance:appearanceCopy];
  hasDarkAppearance = [appearanceCopy hasDarkAppearance];

  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self setHasDarkAppearance:hasDarkAppearance];
}

- (PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  return [(PKPaymentSetupFieldCell *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  [(PKPaymentSetupFieldCell *)&v2 dealloc];
}

- (void)setPaymentSetupField:(id)field
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  [(PKPaymentSetupFieldCell *)&v3 setPaymentSetupField:field];
}

- (void)setHasDarkAppearance:(BOOL)appearance
{
  if (self->_hasDarkAppearance != appearance)
  {
    self->_hasDarkAppearance = appearance;
    [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _updateNetworkImage];
  }
}

- (void)setAccessoryView:(id)view
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)&v4 setAccessoryView:view];
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self setNeedsLayout];
}

- (void)setPaymentCredentialType:(int64_t)type
{
  if (self->_paymentCredentialType != type)
  {
    self->_paymentCredentialType = type;
    [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _updateNetworkImage];
  }
}

- (void)_updateNetworkImage
{
  _networkImage = [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _networkImage];
  accessoryImageView = self->_accessoryImageView;
  v7 = _networkImage;
  if (_networkImage)
  {
    if (accessoryImageView)
    {
      [(UIImageView *)accessoryImageView setImage:_networkImage];
      [(UIImageView *)self->_accessoryImageView sizeToFit];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_networkImage];
      v6 = self->_accessoryImageView;
      self->_accessoryImageView = v5;

      [(UIImageView *)self->_accessoryImageView setAccessibilityIgnoresInvertColors:1];
    }
  }

  else
  {
    self->_accessoryImageView = 0;
  }

  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self setAccessoryView:self->_accessoryImageView];
}

@end