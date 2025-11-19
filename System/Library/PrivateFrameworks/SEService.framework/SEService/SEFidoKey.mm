@interface SEFidoKey
+ (id)withRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoPublicKey:(id)a5 fidoAttestation:(id)a6;
- (SEFidoKey)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEFidoKey

+ (id)withRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoPublicKey:(id)a5 fidoAttestation:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = v13[1];
  v13[1] = v9;
  v15 = v9;

  v16 = v13[2];
  v13[2] = v10;
  v17 = v10;

  v18 = v13[4];
  v13[4] = v11;
  v19 = v11;

  v20 = v13[3];
  v13[3] = v12;

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  relyingParty = self->_relyingParty;
  v5 = a3;
  [v5 encodeObject:relyingParty forKey:@"relyingParty"];
  [v5 encodeObject:self->_relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  [v5 encodeObject:self->_fidoPublicKey forKey:@"fidoPublicKey"];
  [v5 encodeObject:self->_fidoAttestation forKey:@"fidoAttestation"];
}

- (SEFidoKey)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SEFidoKey;
  v5 = [(SEFidoKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyAccountHash"];
    relyingPartyAccountHash = v5->_relyingPartyAccountHash;
    v5->_relyingPartyAccountHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoPublicKey"];
    fidoPublicKey = v5->_fidoPublicKey;
    v5->_fidoPublicKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoAttestation"];
    fidoAttestation = v5->_fidoAttestation;
    v5->_fidoAttestation = v12;
  }

  return v5;
}

@end