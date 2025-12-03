@interface AWDLServiceDiscoveryConfiguration
- (AWDLServiceDiscoveryConfiguration)initWithCoder:(id)coder;
- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)key;
- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)key value:(id)value resolve:(BOOL)resolve;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AWDLServiceDiscoveryConfiguration

- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = AWDLServiceDiscoveryConfiguration;
  v5 = [(AWDLServiceDiscoveryConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    serviceKey = v5->_serviceKey;
    v5->_serviceKey = v6;

    serviceValue = v5->_serviceValue;
    v5->_serviceValue = 0;

    v5->_isResolve = 0;
  }

  return v5;
}

- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)key value:(id)value resolve:(BOOL)resolve
{
  keyCopy = key;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = AWDLServiceDiscoveryConfiguration;
  v10 = [(AWDLServiceDiscoveryConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [keyCopy copy];
    serviceKey = v10->_serviceKey;
    v10->_serviceKey = v11;

    v13 = [valueCopy copy];
    serviceValue = v10->_serviceValue;
    v10->_serviceValue = v13;

    v10->_isResolve = resolve;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceKey = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
  [coderCopy encodeObject:serviceKey forKey:@"AWDLServiceDiscoveryConfiguration.serviceKey"];

  serviceValue = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  [coderCopy encodeObject:serviceValue forKey:@"AWDLServiceDiscoveryConfiguration.serviceValue"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AWDLServiceDiscoveryConfiguration isResolve](self, "isResolve")}];
  [coderCopy encodeObject:v7 forKey:@"AWDLServiceDiscoveryConfiguration.resolve"];
}

- (AWDLServiceDiscoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.serviceKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.serviceValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.resolve"];

  bOOLValue = [v7 BOOLValue];
  v9 = [(AWDLServiceDiscoveryConfiguration *)self initWithKey:v5 value:v6 resolve:bOOLValue];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    v7 = equalCopy;
    serviceKey = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
    serviceKey2 = [(AWDLServiceDiscoveryConfiguration *)v7 serviceKey];
    if (([serviceKey isEqualToData:serviceKey2] & 1) == 0)
    {

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    serviceValue = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
    serviceValue2 = [(AWDLServiceDiscoveryConfiguration *)v7 serviceValue];
    if (serviceValue == serviceValue2 || (-[AWDLServiceDiscoveryConfiguration serviceValue](self, "serviceValue"), v3 = objc_claimAutoreleasedReturnValue(), -[AWDLServiceDiscoveryConfiguration serviceValue](v7, "serviceValue"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
    {
      isResolve = [(AWDLServiceDiscoveryConfiguration *)self isResolve];
      v12 = isResolve ^ [(AWDLServiceDiscoveryConfiguration *)v7 isResolve];
      if (serviceValue == serviceValue2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_13:
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  v13 = 1;
LABEL_15:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AWDLServiceDiscoveryConfiguration alloc];
  serviceKey = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
  serviceValue = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  v7 = [(AWDLServiceDiscoveryConfiguration *)v4 initWithKey:serviceKey value:serviceValue resolve:[(AWDLServiceDiscoveryConfiguration *)self isResolve]];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  serviceValue = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  if (serviceValue)
  {
    isResolve = [(AWDLServiceDiscoveryConfiguration *)self isResolve];
    v6 = "Advertise";
    if (isResolve)
    {
      v6 = "Resolve";
    }
  }

  else
  {
    v6 = "Browse";
  }

  v7 = [v3 stringWithFormat:@"<AWDLServiceDiscoveryConfiguration %s>", v6];

  return v7;
}

@end