@interface PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell
- (PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell)init;
- (void)_updateNetworkImage;
- (void)dealloc;
- (void)pk_applyAppearance:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setHasDarkAppearance:(BOOL)a3;
- (void)setPaymentCredentialType:(int64_t)a3;
- (void)setPaymentSetupField:(id)a3;
@end

@implementation PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell

- (void)pk_applyAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  v4 = a3;
  [(PKPaymentSetupFieldCell *)&v6 pk_applyAppearance:v4];
  v5 = [v4 hasDarkAppearance];

  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self setHasDarkAppearance:v5];
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

- (void)setPaymentSetupField:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  [(PKPaymentSetupFieldCell *)&v3 setPaymentSetupField:a3];
}

- (void)setHasDarkAppearance:(BOOL)a3
{
  if (self->_hasDarkAppearance != a3)
  {
    self->_hasDarkAppearance = a3;
    [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _updateNetworkImage];
  }
}

- (void)setAccessoryView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell;
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)&v4 setAccessoryView:a3];
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self setNeedsLayout];
}

- (void)setPaymentCredentialType:(int64_t)a3
{
  if (self->_paymentCredentialType != a3)
  {
    self->_paymentCredentialType = a3;
    [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _updateNetworkImage];
  }
}

- (void)_updateNetworkImage
{
  v3 = [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell *)self _networkImage];
  accessoryImageView = self->_accessoryImageView;
  v7 = v3;
  if (v3)
  {
    if (accessoryImageView)
    {
      [(UIImageView *)accessoryImageView setImage:v3];
      [(UIImageView *)self->_accessoryImageView sizeToFit];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
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