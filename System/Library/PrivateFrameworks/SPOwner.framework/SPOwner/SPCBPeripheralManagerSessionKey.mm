@interface SPCBPeripheralManagerSessionKey
- (BOOL)isEqual:(id)equal;
- (SPCBPeripheralManagerSessionKey)initWithCoder:(id)coder;
- (SPCBPeripheralManagerSessionKey)initWithUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCBPeripheralManagerSessionKey

- (SPCBPeripheralManagerSessionKey)initWithUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralManagerSessionKey;
  v8 = [(SPCBPeripheralManagerSessionKey *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    userIdentifier = v8->_userIdentifier;
    v8->_userIdentifier = v9;

    v11 = [bundleIdentifierCopy copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userIdentifier = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
      userIdentifier2 = [(SPCBPeripheralManagerSessionKey *)v5 userIdentifier];
      if ([userIdentifier isEqual:userIdentifier2])
      {
        bundleId = [(SPCBPeripheralManagerSessionKey *)self bundleId];
        bundleId2 = [(SPCBPeripheralManagerSessionKey *)v5 bundleId];
        v10 = [bundleId isEqualToString:bundleId2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  userIdentifier = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  v4 = [userIdentifier hash];
  bundleId = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  v6 = [bundleId hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  userIdentifier = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  bundleId = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  v6 = [v3 stringWithFormat:@"<%@:%@>", userIdentifier, bundleId];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPCBPeripheralManagerSessionKey alloc];
  userIdentifier = self->_userIdentifier;
  bundleId = self->_bundleId;

  return [(SPCBPeripheralManagerSessionKey *)v4 initWithUserIdentifier:userIdentifier bundleIdentifier:bundleId];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userIdentifier = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  [coderCopy encodeObject:userIdentifier forKey:@"userIdentifier"];

  bundleId = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"bundleId"];
}

- (SPCBPeripheralManagerSessionKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  userIdentifier = self->_userIdentifier;
  self->_userIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];

  bundleId = self->_bundleId;
  self->_bundleId = v7;

  return self;
}

@end