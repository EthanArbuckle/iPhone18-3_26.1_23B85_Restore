@interface WiFiAwarePublishDatapathConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)securityConfigurationEqual:(id)a3;
- (BOOL)serviceSpecificInfoEqual:(id)a3;
- (WiFiAwarePublishDatapathConfiguration)initWithCoder:(id)a3;
- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)a3 securityConfiguration:(id)a4;
- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)a3 securityConfiguration:(id)a4 connectionMode:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublishDatapathConfiguration

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[WiFiAwarePublishDatapathConfiguration serviceType](self forKey:{"serviceType"), @"WiFiAwarePublishDatapathConfiguration.serviceType"}];
  v4 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  [v6 encodeObject:v4 forKey:@"WiFiAwarePublishDatapathConfiguration.securityConfiguration"];

  v5 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  [v6 encodeObject:v5 forKey:@"WiFiAwarePublishDatapathConfiguration.serviceSpecificInfo"];

  [v6 encodeInteger:-[WiFiAwarePublishDatapathConfiguration connectionMode](self forKey:{"connectionMode"), @"WiFiAwareDataRequest.connectionMode"}];
}

- (WiFiAwarePublishDatapathConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"WiFiAwarePublishDatapathConfiguration.serviceType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathConfiguration.securityConfiguration"];
  v7 = -[WiFiAwarePublishDatapathConfiguration initWithServiceType:securityConfiguration:connectionMode:](self, "initWithServiceType:securityConfiguration:connectionMode:", v5, v6, [v4 decodeIntegerForKey:@"WiFiAwareDataRequest.connectionMode"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathConfiguration.serviceSpecificInfo"];

  [(WiFiAwarePublishDatapathConfiguration *)v7 setServiceSpecificInfo:v8];
  return v7;
}

- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)a3 securityConfiguration:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WiFiAwarePublishDatapathConfiguration;
  v8 = [(WiFiAwarePublishDatapathConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_serviceType = a3;
    objc_storeStrong(&v8->_securityConfiguration, a4);
    v9->_connectionMode = 0;
  }

  return v9;
}

- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)a3 securityConfiguration:(id)a4 connectionMode:(int64_t)a5
{
  v6 = [(WiFiAwarePublishDatapathConfiguration *)self initWithServiceType:a3 securityConfiguration:a4];
  v7 = v6;
  if (v6)
  {
    [(WiFiAwarePublishDatapathConfiguration *)v6 setConnectionMode:a5];
  }

  return v7;
}

- (BOOL)securityConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  v6 = [v4 securityConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
    v8 = [v4 securityConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  v6 = [v4 serviceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
    v8 = [v4 serviceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
LABEL_9:
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  if (v6 == [(WiFiAwarePublishDatapathConfiguration *)v5 serviceType])
  {
    if ([(WiFiAwarePublishDatapathConfiguration *)self securityConfigurationEqual:v5])
    {
      if ([(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfoEqual:v5])
      {
        v7 = [(WiFiAwarePublishDatapathConfiguration *)self connectionMode];
        if (v7 == [(WiFiAwarePublishDatapathConfiguration *)v5 connectionMode])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)description
{
  v3 = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  if (v3 > 2)
  {
    v4 = "unrecognized";
  }

  else
  {
    v4 = off_2787AB330[v3];
  }

  v5 = [(WiFiAwarePublishDatapathConfiguration *)self connectionMode];
  if (v5 > 2)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_2787AB348[v5];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  v9 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  v10 = [v7 stringWithFormat:@"<WiFiAwarePublishDatapathConfiguration: serviceType=%s, securityConfig=%@, serviceSpecificInfo=%@, connectionMode=%s", v4, v8, v9, v6];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwarePublishDatapathConfiguration alloc];
  v5 = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  v6 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  v7 = [(WiFiAwarePublishDatapathConfiguration *)v4 initWithServiceType:v5 securityConfiguration:v6];

  v8 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  [(WiFiAwarePublishDatapathConfiguration *)v7 setServiceSpecificInfo:v8];

  [(WiFiAwarePublishDatapathConfiguration *)v7 setConnectionMode:[(WiFiAwarePublishDatapathConfiguration *)self connectionMode]];
  return v7;
}

@end