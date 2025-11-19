@interface PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell
- (PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell)init;
- (void)setPaymentSetupField:(id)a3;
@end

@implementation PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell

- (PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell;
  v2 = [(PKPaymentSetupFieldCell *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PKPaymentSetupFieldCell *)v2 editableTextField];
    [v4 setTextContentType:*MEMORY[0x1E69DE480]];
  }

  return v3;
}

- (void)setPaymentSetupField:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupBuiltInPrimaryAccountNumberFieldCell;
  [(PKPaymentSetupFieldCell *)&v3 setPaymentSetupField:a3];
}

@end