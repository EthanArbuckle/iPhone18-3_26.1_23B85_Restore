@interface STScreenTimeCapabilities
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilities:(id)a3;
- (STScreenTimeCapabilities)initWithSupportedInfrastructure:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation STScreenTimeCapabilities

- (STScreenTimeCapabilities)initWithSupportedInfrastructure:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STScreenTimeCapabilities;
  result = [(STScreenTimeCapabilities *)&v5 init];
  result->_supportedInfrastructure = a3;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STScreenTimeCapabilities *)self supportedInfrastructure];
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    [v5 addObject:@"V1"];
  }

  if ((v4 & 2) != 0)
  {
    [v6 addObject:@"V2"];
  }

  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [NSString stringWithFormat:@"[%@]", v7];

  v9 = [NSString stringWithFormat:@"<%@ { Supported Infrastructure: %@ }>", v3, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  supportedInfrastructure = self->_supportedInfrastructure;

  return [v4 initWithSupportedInfrastructure:supportedInfrastructure];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STScreenTimeCapabilities *)self isEqualToCapabilities:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(STScreenTimeCapabilities *)self supportedInfrastructure];
  v6 = [v4 supportedInfrastructure];

  return v5 == v6;
}

@end