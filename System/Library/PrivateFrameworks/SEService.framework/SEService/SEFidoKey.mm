@interface SEFidoKey
+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoPublicKey:(id)key fidoAttestation:(id)attestation;
- (SEFidoKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEFidoKey

+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoPublicKey:(id)key fidoAttestation:(id)attestation
{
  partyCopy = party;
  hashCopy = hash;
  keyCopy = key;
  attestationCopy = attestation;
  v13 = objc_opt_new();
  v14 = v13[1];
  v13[1] = partyCopy;
  v15 = partyCopy;

  v16 = v13[2];
  v13[2] = hashCopy;
  v17 = hashCopy;

  v18 = v13[4];
  v13[4] = keyCopy;
  v19 = keyCopy;

  v20 = v13[3];
  v13[3] = attestationCopy;

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  relyingParty = self->_relyingParty;
  coderCopy = coder;
  [coderCopy encodeObject:relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  [coderCopy encodeObject:self->_fidoPublicKey forKey:@"fidoPublicKey"];
  [coderCopy encodeObject:self->_fidoAttestation forKey:@"fidoAttestation"];
}

- (SEFidoKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SEFidoKey;
  v5 = [(SEFidoKey *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyAccountHash"];
    relyingPartyAccountHash = v5->_relyingPartyAccountHash;
    v5->_relyingPartyAccountHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoPublicKey"];
    fidoPublicKey = v5->_fidoPublicKey;
    v5->_fidoPublicKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoAttestation"];
    fidoAttestation = v5->_fidoAttestation;
    v5->_fidoAttestation = v12;
  }

  return v5;
}

@end