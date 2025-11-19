@interface SPCBPeripheralManagerSessionKey
- (BOOL)isEqual:(id)a3;
- (SPCBPeripheralManagerSessionKey)initWithCoder:(id)a3;
- (SPCBPeripheralManagerSessionKey)initWithUserIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCBPeripheralManagerSessionKey

- (SPCBPeripheralManagerSessionKey)initWithUserIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralManagerSessionKey;
  v8 = [(SPCBPeripheralManagerSessionKey *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    userIdentifier = v8->_userIdentifier;
    v8->_userIdentifier = v9;

    v11 = [v7 copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
      v7 = [(SPCBPeripheralManagerSessionKey *)v5 userIdentifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPCBPeripheralManagerSessionKey *)self bundleId];
        v9 = [(SPCBPeripheralManagerSessionKey *)v5 bundleId];
        v10 = [v8 isEqualToString:v9];
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
  v3 = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  v4 = [v3 hash];
  v5 = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  v5 = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  v6 = [v3 stringWithFormat:@"<%@:%@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPCBPeripheralManagerSessionKey alloc];
  userIdentifier = self->_userIdentifier;
  bundleId = self->_bundleId;

  return [(SPCBPeripheralManagerSessionKey *)v4 initWithUserIdentifier:userIdentifier bundleIdentifier:bundleId];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPCBPeripheralManagerSessionKey *)self userIdentifier];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(SPCBPeripheralManagerSessionKey *)self bundleId];
  [v4 encodeObject:v6 forKey:@"bundleId"];
}

- (SPCBPeripheralManagerSessionKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  userIdentifier = self->_userIdentifier;
  self->_userIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];

  bundleId = self->_bundleId;
  self->_bundleId = v7;

  return self;
}

@end