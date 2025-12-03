@interface STScreenTimeCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilities:(id)capabilities;
- (STScreenTimeCapabilities)initWithSupportedInfrastructure:(int64_t)infrastructure;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation STScreenTimeCapabilities

- (STScreenTimeCapabilities)initWithSupportedInfrastructure:(int64_t)infrastructure
{
  v5.receiver = self;
  v5.super_class = STScreenTimeCapabilities;
  result = [(STScreenTimeCapabilities *)&v5 init];
  result->_supportedInfrastructure = infrastructure;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  supportedInfrastructure = [(STScreenTimeCapabilities *)self supportedInfrastructure];
  v5 = objc_opt_new();
  v6 = v5;
  if (supportedInfrastructure)
  {
    [v5 addObject:@"V1"];
  }

  if ((supportedInfrastructure & 2) != 0)
  {
    [v6 addObject:@"V2"];
  }

  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [NSString stringWithFormat:@"[%@]", v7];

  v9 = [NSString stringWithFormat:@"<%@ { Supported Infrastructure: %@ }>", v3, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  supportedInfrastructure = self->_supportedInfrastructure;

  return [v4 initWithSupportedInfrastructure:supportedInfrastructure];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STScreenTimeCapabilities *)self isEqualToCapabilities:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)capabilities
{
  if (capabilities == self)
  {
    return 1;
  }

  capabilitiesCopy = capabilities;
  supportedInfrastructure = [(STScreenTimeCapabilities *)self supportedInfrastructure];
  supportedInfrastructure2 = [capabilitiesCopy supportedInfrastructure];

  return supportedInfrastructure == supportedInfrastructure2;
}

@end