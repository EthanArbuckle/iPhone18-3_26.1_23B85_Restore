@interface STSMerchantPaymentResponse
- (STSMerchantPaymentResponse)initWithCoder:(id)a3;
- (id)initFromNFECommercePaymentResponse:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSMerchantPaymentResponse

- (id)initFromNFECommercePaymentResponse:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSMerchantPaymentResponse;
  v5 = [(STSPaymentResponseBase *)&v15 initFromNFECommercePaymentResponse:v4];
  if (v5)
  {
    v6 = [v4 confirmationBlobHash];
    v7 = v5[5];
    v5[5] = v6;

    v8 = [v4 confirmationBlobSignature];
    v9 = v5[6];
    v5[6] = v8;

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "confirmationBlobVersion")}];
    v11 = v5[7];
    v5[7] = v10;

    v12 = [v4 SEPcerts];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (STSMerchantPaymentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSMerchantPaymentResponse;
  v5 = [(STSPaymentResponseBase *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobVersion"];
    confirmationBlobVersion = v5->_confirmationBlobVersion;
    v5->_confirmationBlobVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"sepCerts"];
    sepCerts = v5->_sepCerts;
    v5->_sepCerts = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSMerchantPaymentResponse;
  v4 = a3;
  [(STSPaymentResponseBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_confirmationBlobVersion forKey:{@"confirmationBlobVersion", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_confirmationBlobHash forKey:@"confirmationBlobHash"];
  [v4 encodeObject:self->_confirmationBlobSignature forKey:@"confirmationBlobHashSignature"];
  [v4 encodeObject:self->_sepCerts forKey:@"sepCerts"];
}

@end