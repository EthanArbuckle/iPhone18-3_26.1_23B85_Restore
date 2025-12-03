@interface STSMerchantPaymentResponse
- (STSMerchantPaymentResponse)initWithCoder:(id)coder;
- (id)initFromNFECommercePaymentResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSMerchantPaymentResponse

- (id)initFromNFECommercePaymentResponse:(id)response
{
  responseCopy = response;
  v15.receiver = self;
  v15.super_class = STSMerchantPaymentResponse;
  v5 = [(STSPaymentResponseBase *)&v15 initFromNFECommercePaymentResponse:responseCopy];
  if (v5)
  {
    confirmationBlobHash = [responseCopy confirmationBlobHash];
    v7 = v5[5];
    v5[5] = confirmationBlobHash;

    confirmationBlobSignature = [responseCopy confirmationBlobSignature];
    v9 = v5[6];
    v5[6] = confirmationBlobSignature;

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "confirmationBlobVersion")}];
    v11 = v5[7];
    v5[7] = v10;

    sEPcerts = [responseCopy SEPcerts];
    v13 = v5[4];
    v5[4] = sEPcerts;
  }

  return v5;
}

- (STSMerchantPaymentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STSMerchantPaymentResponse;
  v5 = [(STSPaymentResponseBase *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobVersion"];
    confirmationBlobVersion = v5->_confirmationBlobVersion;
    v5->_confirmationBlobVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"sepCerts"];
    sepCerts = v5->_sepCerts;
    v5->_sepCerts = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSMerchantPaymentResponse;
  coderCopy = coder;
  [(STSPaymentResponseBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_confirmationBlobVersion forKey:{@"confirmationBlobVersion", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_confirmationBlobHash forKey:@"confirmationBlobHash"];
  [coderCopy encodeObject:self->_confirmationBlobSignature forKey:@"confirmationBlobHashSignature"];
  [coderCopy encodeObject:self->_sepCerts forKey:@"sepCerts"];
}

@end