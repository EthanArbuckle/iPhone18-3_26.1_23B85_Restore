@interface SEFidoKeySignResult
+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash fidoAssertion:(id)assertion;
- (SEFidoKeySignResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEFidoKeySignResult

+ (id)withRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash fidoAssertion:(id)assertion
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  assertionCopy = assertion;
  v13 = objc_opt_new();
  v14 = v13[1];
  v13[1] = partyCopy;
  v15 = partyCopy;

  v16 = v13[2];
  v13[2] = hashCopy;
  v17 = hashCopy;

  v18 = v13[3];
  v13[3] = keyHashCopy;
  v19 = keyHashCopy;

  v20 = v13[4];
  v13[4] = assertionCopy;

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  relyingParty = self->_relyingParty;
  coderCopy = coder;
  [coderCopy encodeObject:relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  [coderCopy encodeObject:self->_fidoKeyHash forKey:@"fidoKeyHash"];
  [coderCopy encodeObject:self->_fidoAssertion forKey:@"fidoAssertion"];
}

- (SEFidoKeySignResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SEFidoKeySignResult;
  v5 = [(SEFidoKeySignResult *)&v15 init];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoAssertion"];
    fidoAssertion = v5->_fidoAssertion;
    v5->_fidoAssertion = v12;
  }

  return v5;
}

@end