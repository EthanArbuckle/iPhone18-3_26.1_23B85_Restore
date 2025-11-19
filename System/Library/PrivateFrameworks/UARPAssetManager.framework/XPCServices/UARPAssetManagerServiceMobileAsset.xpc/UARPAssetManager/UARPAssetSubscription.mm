@interface UARPAssetSubscription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAnyDomain:(id)a3;
- (UARPAssetSubscription)initWithCoder:(id)a3;
- (UARPAssetSubscription)initWithIdentifier:(id)a3 domain:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetSubscription

- (UARPAssetSubscription)initWithIdentifier:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UARPAssetSubscription;
  v8 = [(UARPAssetSubscription *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    domain = v8->_domain;
    v8->_domain = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_domain forKey:@"domain"];
}

- (UARPAssetSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UARPAssetSubscription;
  v5 = [(UARPAssetSubscription *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPAssetSubscription alloc];
  identifier = self->_identifier;
  domain = self->_domain;

  return [(UARPAssetSubscription *)v4 initWithIdentifier:identifier domain:domain];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = [(UARPAssetSubscription *)v5 identifier];
      if ([(NSString *)identifier isEqualToString:v7])
      {
        domain = self->_domain;
        v9 = [(UARPAssetSubscription *)v5 domain];
        v10 = [(NSString *)domain isEqualToString:v9];
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

- (BOOL)isEqualForAnyDomain:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      identifier = self->_identifier;
      v6 = [(UARPAssetSubscription *)v4 identifier];
      v7 = [(NSString *)identifier isEqualToString:v6];
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
  v5 = [(UARPAssetSubscription *)self identifier];
  v6 = [(UARPAssetSubscription *)self domain];
  v7 = [NSString stringWithFormat:@"<%@: id=%@ domain=%@>", v4, v5, v6];

  return v7;
}

@end