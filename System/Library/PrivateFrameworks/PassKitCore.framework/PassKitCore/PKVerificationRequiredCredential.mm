@interface PKVerificationRequiredCredential
- (PKVerificationRequiredCredential)initWithPass:(id)pass;
@end

@implementation PKVerificationRequiredCredential

- (PKVerificationRequiredCredential)initWithPass:(id)pass
{
  passCopy = pass;
  v13.receiver = self;
  v13.super_class = PKVerificationRequiredCredential;
  v6 = [(PKPaymentCredential *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
    devicePrimaryPaymentApplication = [(PKSecureElementPass *)v7->_pass devicePrimaryPaymentApplication];
    -[PKPaymentCredential setCredentialType:](v7, "setCredentialType:", [devicePrimaryPaymentApplication paymentNetworkIdentifier]);

    primaryAccountNumberSuffix = [(PKSecureElementPass *)v7->_pass primaryAccountNumberSuffix];
    [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountNumber:primaryAccountNumberSuffix];

    sanitizedPrimaryAccountName = [(PKSecureElementPass *)v7->_pass sanitizedPrimaryAccountName];
    [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountName:sanitizedPrimaryAccountName];

    [(PKPaymentCredential *)v7 setExpiration:0];
    localizedDescription = [(PKPass *)v7->_pass localizedDescription];
    [(PKPaymentCredential *)v7 setLongDescription:localizedDescription];

    [(PKPaymentCredential *)v7 setCardType:[(PKSecureElementPass *)v7->_pass cardType]];
  }

  return v7;
}

@end