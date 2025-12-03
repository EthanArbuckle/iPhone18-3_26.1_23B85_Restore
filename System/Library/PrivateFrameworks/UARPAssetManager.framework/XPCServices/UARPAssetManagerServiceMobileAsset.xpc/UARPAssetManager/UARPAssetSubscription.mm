@interface UARPAssetSubscription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAnyDomain:(id)domain;
- (UARPAssetSubscription)initWithCoder:(id)coder;
- (UARPAssetSubscription)initWithIdentifier:(id)identifier domain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetSubscription

- (UARPAssetSubscription)initWithIdentifier:(id)identifier domain:(id)domain
{
  identifierCopy = identifier;
  domainCopy = domain;
  v14.receiver = self;
  v14.super_class = UARPAssetSubscription;
  v8 = [(UARPAssetSubscription *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [domainCopy copy];
    domain = v8->_domain;
    v8->_domain = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
}

- (UARPAssetSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UARPAssetSubscription;
  v5 = [(UARPAssetSubscription *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPAssetSubscription alloc];
  identifier = self->_identifier;
  domain = self->_domain;

  return [(UARPAssetSubscription *)v4 initWithIdentifier:identifier domain:domain];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(UARPAssetSubscription *)v5 identifier];
      if ([(NSString *)identifier isEqualToString:identifier])
      {
        domain = self->_domain;
        domain = [(UARPAssetSubscription *)v5 domain];
        v10 = [(NSString *)domain isEqualToString:domain];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualForAnyDomain:(id)domain
{
  domainCopy = domain;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == domainCopy)
    {
      v7 = 1;
    }

    else
    {
      identifier = self->_identifier;
      identifier = [(UARPAssetSubscription *)domainCopy identifier];
      v7 = [(NSString *)identifier isEqualToString:identifier];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(UARPAssetSubscription *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(UARPAssetSubscription *)self identifier];
  domain = [(UARPAssetSubscription *)self domain];
  v7 = [NSString stringWithFormat:@"<%@: id=%@ domain=%@>", v4, identifier, domain];

  return v7;
}

@end