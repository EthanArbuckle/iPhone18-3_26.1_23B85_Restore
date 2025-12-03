@interface SEFidoKeySearchParameters
+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash;
- (SEFidoKeySearchParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEFidoKeySearchParameters

+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  v10 = objc_opt_new();
  v11 = v10[1];
  v10[1] = partyCopy;
  v12 = partyCopy;

  v13 = v10[2];
  v10[2] = hashCopy;
  v14 = hashCopy;

  v15 = v10[3];
  v10[3] = keyHashCopy;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  relyingParty = self->_relyingParty;
  coderCopy = coder;
  [coderCopy encodeObject:relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  [coderCopy encodeObject:self->_fidoKeyHash forKey:@"fidoKeyHash"];
}

- (SEFidoKeySearchParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SEFidoKeySearchParameters;
  v5 = [(SEFidoKeySearchParameters *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyAccountHash"];
    relyingPartyAccountHash = v5->_relyingPartyAccountHash;
    v5->_relyingPartyAccountHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoKeyHash"];
    fidoKeyHash = v5->_fidoKeyHash;
    v5->_fidoKeyHash = v10;
  }

  return v5;
}

@end