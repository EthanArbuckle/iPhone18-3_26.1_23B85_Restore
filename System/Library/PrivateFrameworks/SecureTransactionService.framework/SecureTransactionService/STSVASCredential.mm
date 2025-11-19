@interface STSVASCredential
- (STSVASCredential)initWithCoder:(id)a3;
- (STSVASCredential)initWithMerchantId:(id)a3 data:(id)a4 mobileToken:(id)a5 userInterventionRequired:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSVASCredential

- (STSVASCredential)initWithMerchantId:(id)a3 data:(id)a4 mobileToken:(id)a5 userInterventionRequired:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = STSVASCredential;
  v14 = [(STSAuxiliaryCredential *)&v17 initWithType:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_merchantId, a3);
    objc_storeStrong(&v15->_data, a4);
    objc_storeStrong(&v15->_mobileToken, a5);
    v15->_userInterventionRequired = a6;
  }

  return v15;
}

- (STSVASCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSVASCredential;
  v5 = [(STSAuxiliaryCredential *)&v13 initWithType:1];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyMerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyData"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASCredentialKeyMobileToken"];
    mobileToken = v5->_mobileToken;
    v5->_mobileToken = v10;

    v5->_userInterventionRequired = [v4 decodeBoolForKey:@"STSVASCredentialKeyUserInterventionRequired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSVASCredential;
  v4 = a3;
  [(STSAuxiliaryCredential *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_merchantId forKey:{@"STSVASCredentialKeyMerchantId", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_data forKey:@"STSVASCredentialKeyData"];
  [v4 encodeObject:self->_mobileToken forKey:@"STSVASCredentialKeyMobileToken"];
  [v4 encodeBool:self->_userInterventionRequired forKey:@"STSVASCredentialKeyUserInterventionRequired"];
}

@end