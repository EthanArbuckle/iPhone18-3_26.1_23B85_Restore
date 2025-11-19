@interface PKVerificationRequiredCredential
- (PKVerificationRequiredCredential)initWithPass:(id)a3;
@end

@implementation PKVerificationRequiredCredential

- (PKVerificationRequiredCredential)initWithPass:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKVerificationRequiredCredential;
  v6 = [(PKPaymentCredential *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = [(PKSecureElementPass *)v7->_pass devicePrimaryPaymentApplication];
    -[PKPaymentCredential setCredentialType:](v7, "setCredentialType:", [v8 paymentNetworkIdentifier]);

    v9 = [(PKSecureElementPass *)v7->_pass primaryAccountNumberSuffix];
    [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountNumber:v9];

    v10 = [(PKSecureElementPass *)v7->_pass sanitizedPrimaryAccountName];
    [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountName:v10];

    [(PKPaymentCredential *)v7 setExpiration:0];
    v11 = [(PKPass *)v7->_pass localizedDescription];
    [(PKPaymentCredential *)v7 setLongDescription:v11];

    [(PKPaymentCredential *)v7 setCardType:[(PKSecureElementPass *)v7->_pass cardType]];
  }

  return v7;
}

@end