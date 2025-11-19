@interface SESLegacyKeyCreateResponse
+ (id)withPublicKeyData:(id)a3 CASDSignature:(id)a4 keySlot:(id)a5 legacyKeyAttestation:(id)a6;
- (SESLegacyKeyCreateResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESLegacyKeyCreateResponse

+ (id)withPublicKeyData:(id)a3 CASDSignature:(id)a4 keySlot:(id)a5 legacyKeyAttestation:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setLegacyKeyAttestation:v9];

  [v13 setPublicKeyData:v12];
  [v13 setCASDSignature:v11];

  [v13 setKeySlot:v10];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SESLegacyKeyCreateResponse *)self legacyKeyAttestation];
  v5 = [v4 asHexString];
  v6 = [(SESLegacyKeyCreateResponse *)self publicKeyData];
  v7 = [v6 asHexString];
  v8 = [(SESLegacyKeyCreateResponse *)self CASDSignature];
  v9 = [v8 asHexString];
  v10 = [(SESLegacyKeyCreateResponse *)self keySlot];
  v11 = [v3 stringWithFormat:@"{\n\tlegacyKeyAttestation : %@, \n\tpublicKeyData : %@, \n\tCASDSignature : %@, \n\tkeySlot : %d\n}", v5, v7, v9, objc_msgSend(v10, "unsignedShortValue")];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SESLegacyKeyCreateResponse *)self legacyKeyAttestation];
  [v4 encodeObject:v5 forKey:@"legacyKeyAttestation"];

  v6 = [(SESLegacyKeyCreateResponse *)self publicKeyData];
  [v4 encodeObject:v6 forKey:@"publicKeyData"];

  v7 = [(SESLegacyKeyCreateResponse *)self CASDSignature];
  [v4 encodeObject:v7 forKey:@"CASDSignature"];

  v8 = [(SESLegacyKeyCreateResponse *)self keySlot];
  [v4 encodeObject:v8 forKey:@"keySlot"];
}

- (SESLegacyKeyCreateResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SESLegacyKeyCreateResponse;
  v5 = [(SESLegacyKeyCreateResponse *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SESLegacyKeyCreateResponse *)v5 legacyKeyAttestation];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legacyKeyAttestation"];
    legacyKeyAttestation = v6->_legacyKeyAttestation;
    v6->_legacyKeyAttestation = v8;

    v10 = [(SESLegacyKeyCreateResponse *)v6 publicKeyData];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyData"];
    publicKeyData = v6->_publicKeyData;
    v6->_publicKeyData = v11;

    v13 = [(SESLegacyKeyCreateResponse *)v6 CASDSignature];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CASDSignature"];
    CASDSignature = v6->_CASDSignature;
    v6->_CASDSignature = v14;

    v16 = [(SESLegacyKeyCreateResponse *)v6 keySlot];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySlot"];
    keySlot = v6->_keySlot;
    v6->_keySlot = v17;
  }

  return v6;
}

@end