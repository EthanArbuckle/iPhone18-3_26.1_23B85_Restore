@interface SKSubscriptionValidationTokens
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSubscriptionValidationTokens:(id)tokens;
- (SKSubscriptionValidationTokens)initWithCoder:(id)coder;
- (SKSubscriptionValidationTokens)initWithSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKSubscriptionValidationTokens

- (SKSubscriptionValidationTokens)initWithSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken
{
  tokenCopy = token;
  validationTokenCopy = validationToken;
  v14.receiver = self;
  v14.super_class = SKSubscriptionValidationTokens;
  v8 = [(SKSubscriptionValidationTokens *)&v14 init];
  if (v8)
  {
    v9 = [tokenCopy copy];
    subscriptionValidationToken = v8->_subscriptionValidationToken;
    v8->_subscriptionValidationToken = v9;

    v11 = [validationTokenCopy copy];
    encryptionValidationToken = v8->_encryptionValidationToken;
    v8->_encryptionValidationToken = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  subscriptionValidationToken = [(SKSubscriptionValidationTokens *)self subscriptionValidationToken];
  encryptionValidationToken = [(SKSubscriptionValidationTokens *)self encryptionValidationToken];
  v7 = [v3 stringWithFormat:@"<%@: %p subscriptionValidationToken = %@, encryptionValidationToken = %@>", v4, self, subscriptionValidationToken, encryptionValidationToken];;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKSubscriptionValidationTokens *)self isEqualToSubscriptionValidationTokens:equalCopy];

  return v5;
}

- (BOOL)isEqualToSubscriptionValidationTokens:(id)tokens
{
  tokensCopy = tokens;
  subscriptionValidationToken = [tokensCopy subscriptionValidationToken];
  if ((subscriptionValidationToken || self->_subscriptionValidationToken) && ([tokensCopy subscriptionValidationToken], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", self->_subscriptionValidationToken), v6, subscriptionValidationToken, !v7))
  {
    v10 = 0;
  }

  else
  {
    encryptionValidationToken = [tokensCopy encryptionValidationToken];
    if (encryptionValidationToken || self->_encryptionValidationToken)
    {
      encryptionValidationToken2 = [tokensCopy encryptionValidationToken];
      v10 = [encryptionValidationToken2 isEqualToString:self->_encryptionValidationToken];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  subscriptionValidationToken = [(SKSubscriptionValidationTokens *)self subscriptionValidationToken];
  v4 = [subscriptionValidationToken hash];
  encryptionValidationToken = [(SKSubscriptionValidationTokens *)self encryptionValidationToken];
  v6 = [encryptionValidationToken hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  subscriptionValidationToken = self->_subscriptionValidationToken;
  coderCopy = coder;
  [coderCopy encodeObject:subscriptionValidationToken forKey:@"subscriptionToken"];
  [coderCopy encodeObject:self->_encryptionValidationToken forKey:@"encryptionToken"];
}

- (SKSubscriptionValidationTokens)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionToken"];

  v7 = [(SKSubscriptionValidationTokens *)self initWithSubscriptionValidationToken:v5 encryptionValidationToken:v6];
  return v7;
}

@end