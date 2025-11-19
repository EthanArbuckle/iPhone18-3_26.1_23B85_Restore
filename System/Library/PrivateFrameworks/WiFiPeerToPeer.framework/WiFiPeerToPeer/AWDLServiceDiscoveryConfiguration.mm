@interface AWDLServiceDiscoveryConfiguration
- (AWDLServiceDiscoveryConfiguration)initWithCoder:(id)a3;
- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)a3;
- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)a3 value:(id)a4 resolve:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AWDLServiceDiscoveryConfiguration

- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AWDLServiceDiscoveryConfiguration;
  v5 = [(AWDLServiceDiscoveryConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceKey = v5->_serviceKey;
    v5->_serviceKey = v6;

    serviceValue = v5->_serviceValue;
    v5->_serviceValue = 0;

    v5->_isResolve = 0;
  }

  return v5;
}

- (AWDLServiceDiscoveryConfiguration)initWithKey:(id)a3 value:(id)a4 resolve:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AWDLServiceDiscoveryConfiguration;
  v10 = [(AWDLServiceDiscoveryConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    serviceKey = v10->_serviceKey;
    v10->_serviceKey = v11;

    v13 = [v9 copy];
    serviceValue = v10->_serviceValue;
    v10->_serviceValue = v13;

    v10->_isResolve = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
  [v4 encodeObject:v5 forKey:@"AWDLServiceDiscoveryConfiguration.serviceKey"];

  v6 = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  [v4 encodeObject:v6 forKey:@"AWDLServiceDiscoveryConfiguration.serviceValue"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AWDLServiceDiscoveryConfiguration isResolve](self, "isResolve")}];
  [v4 encodeObject:v7 forKey:@"AWDLServiceDiscoveryConfiguration.resolve"];
}

- (AWDLServiceDiscoveryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.serviceKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.serviceValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLServiceDiscoveryConfiguration.resolve"];

  v8 = [v7 BOOLValue];
  v9 = [(AWDLServiceDiscoveryConfiguration *)self initWithKey:v5 value:v6 resolve:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self != v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    v7 = v6;
    v8 = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
    v9 = [(AWDLServiceDiscoveryConfiguration *)v7 serviceKey];
    if (([v8 isEqualToData:v9] & 1) == 0)
    {

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v10 = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
    v11 = [(AWDLServiceDiscoveryConfiguration *)v7 serviceValue];
    if (v10 == v11 || (-[AWDLServiceDiscoveryConfiguration serviceValue](self, "serviceValue"), v3 = objc_claimAutoreleasedReturnValue(), -[AWDLServiceDiscoveryConfiguration serviceValue](v7, "serviceValue"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
    {
      v14 = [(AWDLServiceDiscoveryConfiguration *)self isResolve];
      v12 = v14 ^ [(AWDLServiceDiscoveryConfiguration *)v7 isResolve];
      if (v10 == v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AWDLServiceDiscoveryConfiguration alloc];
  v5 = [(AWDLServiceDiscoveryConfiguration *)self serviceKey];
  v6 = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  v7 = [(AWDLServiceDiscoveryConfiguration *)v4 initWithKey:v5 value:v6 resolve:[(AWDLServiceDiscoveryConfiguration *)self isResolve]];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AWDLServiceDiscoveryConfiguration *)self serviceValue];
  if (v4)
  {
    v5 = [(AWDLServiceDiscoveryConfiguration *)self isResolve];
    v6 = "Advertise";
    if (v5)
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