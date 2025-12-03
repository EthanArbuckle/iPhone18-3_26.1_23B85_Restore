@interface SESLegacyKeySignResponse
+ (id)withSignature:(id)signature localValidationVerified:(id)verified;
- (SESLegacyKeySignResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESLegacyKeySignResponse

+ (id)withSignature:(id)signature localValidationVerified:(id)verified
{
  verifiedCopy = verified;
  signatureCopy = signature;
  v7 = objc_opt_new();
  [v7 setSignature:signatureCopy];

  [v7 setLocalValidationVerified:verifiedCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  signature = [(SESLegacyKeySignResponse *)self signature];
  asHexString = [signature asHexString];
  localValidationVerified = [(SESLegacyKeySignResponse *)self localValidationVerified];
  v7 = [v3 stringWithFormat:@"{\n\tsignature : %@, \n\tlocalValidationVerified : %d, \n}", asHexString, objc_msgSend(localValidationVerified, "intValue")];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signature = [(SESLegacyKeySignResponse *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  localValidationVerified = [(SESLegacyKeySignResponse *)self localValidationVerified];
  [coderCopy encodeObject:localValidationVerified forKey:@"localValidationVerified"];
}

- (SESLegacyKeySignResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SESLegacyKeySignResponse;
  v5 = [(SESLegacyKeySignResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    signature = [(SESLegacyKeySignResponse *)v5 signature];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v8;

    localValidationVerified = [(SESLegacyKeySignResponse *)v6 localValidationVerified];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localValidationVerified"];
    localValidationVerified = v6->_localValidationVerified;
    v6->_localValidationVerified = v11;
  }

  return v6;
}

@end