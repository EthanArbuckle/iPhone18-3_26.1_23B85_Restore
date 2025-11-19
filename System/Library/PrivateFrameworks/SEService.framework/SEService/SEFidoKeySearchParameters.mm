@interface SEFidoKeySearchParameters
+ (id)withRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5;
- (SEFidoKeySearchParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEFidoKeySearchParameters

+ (id)withRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = v10[1];
  v10[1] = v7;
  v12 = v7;

  v13 = v10[2];
  v10[2] = v8;
  v14 = v8;

  v15 = v10[3];
  v10[3] = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  relyingParty = self->_relyingParty;
  v5 = a3;
  [v5 encodeObject:relyingParty forKey:@"relyingParty"];
  [v5 encodeObject:self->_relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  [v5 encodeObject:self->_fidoKeyHash forKey:@"fidoKeyHash"];
}

- (SEFidoKeySearchParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SEFidoKeySearchParameters;
  v5 = [(SEFidoKeySearchParameters *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyAccountHash"];
    relyingPartyAccountHash = v5->_relyingPartyAccountHash;
    v5->_relyingPartyAccountHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoKeyHash"];
    fidoKeyHash = v5->_fidoKeyHash;
    v5->_fidoKeyHash = v10;
  }

  return v5;
}

@end