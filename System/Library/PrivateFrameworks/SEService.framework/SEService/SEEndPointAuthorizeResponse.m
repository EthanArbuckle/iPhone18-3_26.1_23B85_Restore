@interface SEEndPointAuthorizeResponse
+ (id)responseWithEndPointAttestationData:(id)a3 encryptionPublicKeyData:(id)a4 encryptedData:(id)a5;
- (SEEndPointAuthorizeResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointAuthorizeResponse

+ (id)responseWithEndPointAttestationData:(id)a3 encryptionPublicKeyData:(id)a4 encryptedData:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setEndPointAttestationData:v7];
    [v11 setEncryptionPublicKeyData:v8];
    [v11 setEncryptedData:v9];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SEEndPointAuthorizeResponse *)self endPointAttestationData];
  v5 = [v4 asHexString];
  v6 = [(SEEndPointAuthorizeResponse *)self encryptionPublicKeyData];
  v7 = [v6 asHexString];
  v8 = [(SEEndPointAuthorizeResponse *)self encryptedData];
  v9 = [v8 asHexString];
  v10 = [v3 stringWithFormat:@"{\n\tendPointAttestation : %@, \n\tencryptionPublicKey : %@, \n\tencryptedData : %@\n}", v5, v7, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointAuthorizeResponse *)self endPointAttestationData];
  [v4 encodeObject:v5 forKey:@"endPointAttestationData"];

  v6 = [(SEEndPointAuthorizeResponse *)self encryptionPublicKeyData];
  [v4 encodeObject:v6 forKey:@"encryptionPublicKeyData"];

  v7 = [(SEEndPointAuthorizeResponse *)self encryptedData];
  [v4 encodeObject:v7 forKey:@"encryptedData"];
}

- (SEEndPointAuthorizeResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SEEndPointAuthorizeResponse;
  v5 = [(SEEndPointAuthorizeResponse *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SEEndPointAuthorizeResponse *)v5 endPointAttestationData];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPointAttestationData"];
    endPointAttestationData = v6->_endPointAttestationData;
    v6->_endPointAttestationData = v8;

    v10 = [(SEEndPointAuthorizeResponse *)v6 encryptionPublicKeyData];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionPublicKeyData"];
    encryptionPublicKeyData = v6->_encryptionPublicKeyData;
    v6->_encryptionPublicKeyData = v11;

    v13 = [(SEEndPointAuthorizeResponse *)v6 encryptedData];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v6->_encryptedData;
    v6->_encryptedData = v14;
  }

  return v6;
}

@end