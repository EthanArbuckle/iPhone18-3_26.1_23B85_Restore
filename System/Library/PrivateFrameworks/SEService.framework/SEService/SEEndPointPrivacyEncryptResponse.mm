@interface SEEndPointPrivacyEncryptResponse
+ (SEEndPointPrivacyEncryptResponse)responseWithCipherText:(id)text ephemeralPublicKeyData:(id)data receiverPublicKeyHash:(id)hash;
- (SEEndPointPrivacyEncryptResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointPrivacyEncryptResponse

+ (SEEndPointPrivacyEncryptResponse)responseWithCipherText:(id)text ephemeralPublicKeyData:(id)data receiverPublicKeyHash:(id)hash
{
  textCopy = text;
  dataCopy = data;
  hashCopy = hash;
  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setVersion:@"ECIES_V1"];
    [v11 setCipherText:textCopy];
    [v11 setEphemeralPublicKeydata:dataCopy];
    [v11 setReceiverPublicKeyHash:hashCopy];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  version = [(SEEndPointPrivacyEncryptResponse *)self version];
  cipherText = [(SEEndPointPrivacyEncryptResponse *)self cipherText];
  asHexString = [cipherText asHexString];
  ephemeralPublicKeydata = [(SEEndPointPrivacyEncryptResponse *)self ephemeralPublicKeydata];
  asHexString2 = [ephemeralPublicKeydata asHexString];
  receiverPublicKeyHash = [(SEEndPointPrivacyEncryptResponse *)self receiverPublicKeyHash];
  asHexString3 = [receiverPublicKeyHash asHexString];
  v11 = [v3 stringWithFormat:@"{\n\tversion : %@, \n\tcipherText : %@, \n\tephemeralPublicKeydata : %@\n\treceiverPublicKeyHash : %@\n}", version, asHexString, asHexString2, asHexString3];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(SEEndPointPrivacyEncryptResponse *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  cipherText = [(SEEndPointPrivacyEncryptResponse *)self cipherText];
  [coderCopy encodeObject:cipherText forKey:@"cipherText"];

  ephemeralPublicKeydata = [(SEEndPointPrivacyEncryptResponse *)self ephemeralPublicKeydata];
  [coderCopy encodeObject:ephemeralPublicKeydata forKey:@"ephemeralPublicKeydata"];

  receiverPublicKeyHash = [(SEEndPointPrivacyEncryptResponse *)self receiverPublicKeyHash];
  [coderCopy encodeObject:receiverPublicKeyHash forKey:@"receiverPublicKeyHash"];
}

- (SEEndPointPrivacyEncryptResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SEEndPointPrivacyEncryptResponse;
  v5 = [(SEEndPointPrivacyEncryptResponse *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cipherText"];
    cipherText = v5->_cipherText;
    v5->_cipherText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKeydata"];
    ephemeralPublicKeydata = v5->_ephemeralPublicKeydata;
    v5->_ephemeralPublicKeydata = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverPublicKeyHash"];
    receiverPublicKeyHash = v5->_receiverPublicKeyHash;
    v5->_receiverPublicKeyHash = v12;
  }

  return v5;
}

@end