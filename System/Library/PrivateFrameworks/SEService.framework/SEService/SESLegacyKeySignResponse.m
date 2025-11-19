@interface SESLegacyKeySignResponse
+ (id)withSignature:(id)a3 localValidationVerified:(id)a4;
- (SESLegacyKeySignResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESLegacyKeySignResponse

+ (id)withSignature:(id)a3 localValidationVerified:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setSignature:v6];

  [v7 setLocalValidationVerified:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SESLegacyKeySignResponse *)self signature];
  v5 = [v4 asHexString];
  v6 = [(SESLegacyKeySignResponse *)self localValidationVerified];
  v7 = [v3 stringWithFormat:@"{\n\tsignature : %@, \n\tlocalValidationVerified : %d, \n}", v5, objc_msgSend(v6, "intValue")];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SESLegacyKeySignResponse *)self signature];
  [v4 encodeObject:v5 forKey:@"signature"];

  v6 = [(SESLegacyKeySignResponse *)self localValidationVerified];
  [v4 encodeObject:v6 forKey:@"localValidationVerified"];
}

- (SESLegacyKeySignResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SESLegacyKeySignResponse;
  v5 = [(SESLegacyKeySignResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SESLegacyKeySignResponse *)v5 signature];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v8;

    v10 = [(SESLegacyKeySignResponse *)v6 localValidationVerified];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localValidationVerified"];
    localValidationVerified = v6->_localValidationVerified;
    v6->_localValidationVerified = v11;
  }

  return v6;
}

@end