@interface SEEndPointAuthorizeResponse
+ (id)responseWithEndPointAttestationData:(id)data encryptionPublicKeyData:(id)keyData encryptedData:(id)encryptedData;
- (SEEndPointAuthorizeResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointAuthorizeResponse

+ (id)responseWithEndPointAttestationData:(id)data encryptionPublicKeyData:(id)keyData encryptedData:(id)encryptedData
{
  dataCopy = data;
  keyDataCopy = keyData;
  encryptedDataCopy = encryptedData;
  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setEndPointAttestationData:dataCopy];
    [v11 setEncryptionPublicKeyData:keyDataCopy];
    [v11 setEncryptedData:encryptedDataCopy];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  endPointAttestationData = [(SEEndPointAuthorizeResponse *)self endPointAttestationData];
  asHexString = [endPointAttestationData asHexString];
  encryptionPublicKeyData = [(SEEndPointAuthorizeResponse *)self encryptionPublicKeyData];
  asHexString2 = [encryptionPublicKeyData asHexString];
  encryptedData = [(SEEndPointAuthorizeResponse *)self encryptedData];
  asHexString3 = [encryptedData asHexString];
  v10 = [v3 stringWithFormat:@"{\n\tendPointAttestation : %@, \n\tencryptionPublicKey : %@, \n\tencryptedData : %@\n}", asHexString, asHexString2, asHexString3];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endPointAttestationData = [(SEEndPointAuthorizeResponse *)self endPointAttestationData];
  [coderCopy encodeObject:endPointAttestationData forKey:@"endPointAttestationData"];

  encryptionPublicKeyData = [(SEEndPointAuthorizeResponse *)self encryptionPublicKeyData];
  [coderCopy encodeObject:encryptionPublicKeyData forKey:@"encryptionPublicKeyData"];

  encryptedData = [(SEEndPointAuthorizeResponse *)self encryptedData];
  [coderCopy encodeObject:encryptedData forKey:@"encryptedData"];
}

- (SEEndPointAuthorizeResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SEEndPointAuthorizeResponse;
  v5 = [(SEEndPointAuthorizeResponse *)&v17 init];
  v6 = v5;
  if (v5)
  {
    endPointAttestationData = [(SEEndPointAuthorizeResponse *)v5 endPointAttestationData];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endPointAttestationData"];
    endPointAttestationData = v6->_endPointAttestationData;
    v6->_endPointAttestationData = v8;

    encryptionPublicKeyData = [(SEEndPointAuthorizeResponse *)v6 encryptionPublicKeyData];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionPublicKeyData"];
    encryptionPublicKeyData = v6->_encryptionPublicKeyData;
    v6->_encryptionPublicKeyData = v11;

    encryptedData = [(SEEndPointAuthorizeResponse *)v6 encryptedData];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v6->_encryptedData;
    v6->_encryptedData = v14;
  }

  return v6;
}

@end