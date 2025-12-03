@interface SESLegacyKeyCreateResponse
+ (id)withPublicKeyData:(id)data CASDSignature:(id)signature keySlot:(id)slot legacyKeyAttestation:(id)attestation;
- (SESLegacyKeyCreateResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESLegacyKeyCreateResponse

+ (id)withPublicKeyData:(id)data CASDSignature:(id)signature keySlot:(id)slot legacyKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  slotCopy = slot;
  signatureCopy = signature;
  dataCopy = data;
  v13 = objc_opt_new();
  [v13 setLegacyKeyAttestation:attestationCopy];

  [v13 setPublicKeyData:dataCopy];
  [v13 setCASDSignature:signatureCopy];

  [v13 setKeySlot:slotCopy];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  legacyKeyAttestation = [(SESLegacyKeyCreateResponse *)self legacyKeyAttestation];
  asHexString = [legacyKeyAttestation asHexString];
  publicKeyData = [(SESLegacyKeyCreateResponse *)self publicKeyData];
  asHexString2 = [publicKeyData asHexString];
  cASDSignature = [(SESLegacyKeyCreateResponse *)self CASDSignature];
  asHexString3 = [cASDSignature asHexString];
  keySlot = [(SESLegacyKeyCreateResponse *)self keySlot];
  v11 = [v3 stringWithFormat:@"{\n\tlegacyKeyAttestation : %@, \n\tpublicKeyData : %@, \n\tCASDSignature : %@, \n\tkeySlot : %d\n}", asHexString, asHexString2, asHexString3, objc_msgSend(keySlot, "unsignedShortValue")];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  legacyKeyAttestation = [(SESLegacyKeyCreateResponse *)self legacyKeyAttestation];
  [coderCopy encodeObject:legacyKeyAttestation forKey:@"legacyKeyAttestation"];

  publicKeyData = [(SESLegacyKeyCreateResponse *)self publicKeyData];
  [coderCopy encodeObject:publicKeyData forKey:@"publicKeyData"];

  cASDSignature = [(SESLegacyKeyCreateResponse *)self CASDSignature];
  [coderCopy encodeObject:cASDSignature forKey:@"CASDSignature"];

  keySlot = [(SESLegacyKeyCreateResponse *)self keySlot];
  [coderCopy encodeObject:keySlot forKey:@"keySlot"];
}

- (SESLegacyKeyCreateResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SESLegacyKeyCreateResponse;
  v5 = [(SESLegacyKeyCreateResponse *)&v20 init];
  v6 = v5;
  if (v5)
  {
    legacyKeyAttestation = [(SESLegacyKeyCreateResponse *)v5 legacyKeyAttestation];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacyKeyAttestation"];
    legacyKeyAttestation = v6->_legacyKeyAttestation;
    v6->_legacyKeyAttestation = v8;

    publicKeyData = [(SESLegacyKeyCreateResponse *)v6 publicKeyData];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyData"];
    publicKeyData = v6->_publicKeyData;
    v6->_publicKeyData = v11;

    cASDSignature = [(SESLegacyKeyCreateResponse *)v6 CASDSignature];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CASDSignature"];
    CASDSignature = v6->_CASDSignature;
    v6->_CASDSignature = v14;

    keySlot = [(SESLegacyKeyCreateResponse *)v6 keySlot];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySlot"];
    keySlot = v6->_keySlot;
    v6->_keySlot = v17;
  }

  return v6;
}

@end