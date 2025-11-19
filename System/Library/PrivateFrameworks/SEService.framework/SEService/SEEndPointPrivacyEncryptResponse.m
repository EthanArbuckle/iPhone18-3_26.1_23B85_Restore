@interface SEEndPointPrivacyEncryptResponse
+ (SEEndPointPrivacyEncryptResponse)responseWithCipherText:(id)a3 ephemeralPublicKeyData:(id)a4 receiverPublicKeyHash:(id)a5;
- (SEEndPointPrivacyEncryptResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointPrivacyEncryptResponse

+ (SEEndPointPrivacyEncryptResponse)responseWithCipherText:(id)a3 ephemeralPublicKeyData:(id)a4 receiverPublicKeyHash:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setVersion:@"ECIES_V1"];
    [v11 setCipherText:v7];
    [v11 setEphemeralPublicKeydata:v8];
    [v11 setReceiverPublicKeyHash:v9];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SEEndPointPrivacyEncryptResponse *)self version];
  v5 = [(SEEndPointPrivacyEncryptResponse *)self cipherText];
  v6 = [v5 asHexString];
  v7 = [(SEEndPointPrivacyEncryptResponse *)self ephemeralPublicKeydata];
  v8 = [v7 asHexString];
  v9 = [(SEEndPointPrivacyEncryptResponse *)self receiverPublicKeyHash];
  v10 = [v9 asHexString];
  v11 = [v3 stringWithFormat:@"{\n\tversion : %@, \n\tcipherText : %@, \n\tephemeralPublicKeydata : %@\n\treceiverPublicKeyHash : %@\n}", v4, v6, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointPrivacyEncryptResponse *)self version];
  [v4 encodeObject:v5 forKey:@"version"];

  v6 = [(SEEndPointPrivacyEncryptResponse *)self cipherText];
  [v4 encodeObject:v6 forKey:@"cipherText"];

  v7 = [(SEEndPointPrivacyEncryptResponse *)self ephemeralPublicKeydata];
  [v4 encodeObject:v7 forKey:@"ephemeralPublicKeydata"];

  v8 = [(SEEndPointPrivacyEncryptResponse *)self receiverPublicKeyHash];
  [v4 encodeObject:v8 forKey:@"receiverPublicKeyHash"];
}

- (SEEndPointPrivacyEncryptResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SEEndPointPrivacyEncryptResponse;
  v5 = [(SEEndPointPrivacyEncryptResponse *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cipherText"];
    cipherText = v5->_cipherText;
    v5->_cipherText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKeydata"];
    ephemeralPublicKeydata = v5->_ephemeralPublicKeydata;
    v5->_ephemeralPublicKeydata = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverPublicKeyHash"];
    receiverPublicKeyHash = v5->_receiverPublicKeyHash;
    v5->_receiverPublicKeyHash = v12;
  }

  return v5;
}

@end