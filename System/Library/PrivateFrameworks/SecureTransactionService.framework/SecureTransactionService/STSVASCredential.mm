@interface STSVASCredential
- (STSVASCredential)initWithCoder:(id)coder;
- (STSVASCredential)initWithMerchantId:(id)id data:(id)data mobileToken:(id)token userInterventionRequired:(BOOL)required;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSVASCredential

- (STSVASCredential)initWithMerchantId:(id)id data:(id)data mobileToken:(id)token userInterventionRequired:(BOOL)required
{
  idCopy = id;
  dataCopy = data;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = STSVASCredential;
  v14 = [(STSAuxiliaryCredential *)&v17 initWithType:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_merchantId, id);
    objc_storeStrong(&v15->_data, data);
    objc_storeStrong(&v15->_mobileToken, token);
    v15->_userInterventionRequired = required;
  }

  return v15;
}

- (STSVASCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSVASCredential;
  v5 = [(STSAuxiliaryCredential *)&v13 initWithType:1];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyMerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyData"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyMobileToken"];
    mobileToken = v5->_mobileToken;
    v5->_mobileToken = v10;

    v5->_userInterventionRequired = [coderCopy decodeBoolForKey:@"STSVASCredentialKeyUserInterventionRequired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSVASCredential;
  coderCopy = coder;
  [(STSAuxiliaryCredential *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_merchantId forKey:{@"STSVASCredentialKeyMerchantId", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_data forKey:@"STSVASCredentialKeyData"];
  [coderCopy encodeObject:self->_mobileToken forKey:@"STSVASCredentialKeyMobileToken"];
  [coderCopy encodeBool:self->_userInterventionRequired forKey:@"STSVASCredentialKeyUserInterventionRequired"];
}

@end