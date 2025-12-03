@interface WiFiAwarePublishDatapathConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)securityConfigurationEqual:(id)equal;
- (BOOL)serviceSpecificInfoEqual:(id)equal;
- (WiFiAwarePublishDatapathConfiguration)initWithCoder:(id)coder;
- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)type securityConfiguration:(id)configuration;
- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)type securityConfiguration:(id)configuration connectionMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublishDatapathConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WiFiAwarePublishDatapathConfiguration serviceType](self forKey:{"serviceType"), @"WiFiAwarePublishDatapathConfiguration.serviceType"}];
  securityConfiguration = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  [coderCopy encodeObject:securityConfiguration forKey:@"WiFiAwarePublishDatapathConfiguration.securityConfiguration"];

  serviceSpecificInfo = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  [coderCopy encodeObject:serviceSpecificInfo forKey:@"WiFiAwarePublishDatapathConfiguration.serviceSpecificInfo"];

  [coderCopy encodeInteger:-[WiFiAwarePublishDatapathConfiguration connectionMode](self forKey:{"connectionMode"), @"WiFiAwareDataRequest.connectionMode"}];
}

- (WiFiAwarePublishDatapathConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"WiFiAwarePublishDatapathConfiguration.serviceType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathConfiguration.securityConfiguration"];
  v7 = -[WiFiAwarePublishDatapathConfiguration initWithServiceType:securityConfiguration:connectionMode:](self, "initWithServiceType:securityConfiguration:connectionMode:", v5, v6, [coderCopy decodeIntegerForKey:@"WiFiAwareDataRequest.connectionMode"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathConfiguration.serviceSpecificInfo"];

  [(WiFiAwarePublishDatapathConfiguration *)v7 setServiceSpecificInfo:v8];
  return v7;
}

- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)type securityConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = WiFiAwarePublishDatapathConfiguration;
  v8 = [(WiFiAwarePublishDatapathConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_serviceType = type;
    objc_storeStrong(&v8->_securityConfiguration, configuration);
    v9->_connectionMode = 0;
  }

  return v9;
}

- (WiFiAwarePublishDatapathConfiguration)initWithServiceType:(int64_t)type securityConfiguration:(id)configuration connectionMode:(int64_t)mode
{
  v6 = [(WiFiAwarePublishDatapathConfiguration *)self initWithServiceType:type securityConfiguration:configuration];
  v7 = v6;
  if (v6)
  {
    [(WiFiAwarePublishDatapathConfiguration *)v6 setConnectionMode:mode];
  }

  return v7;
}

- (BOOL)securityConfigurationEqual:(id)equal
{
  equalCopy = equal;
  securityConfiguration = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  securityConfiguration2 = [equalCopy securityConfiguration];
  if (securityConfiguration == securityConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    securityConfiguration3 = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
    securityConfiguration4 = [equalCopy securityConfiguration];
    v9 = [securityConfiguration3 isEqual:securityConfiguration4];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  serviceSpecificInfo = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  serviceSpecificInfo2 = [equalCopy serviceSpecificInfo];
  if (serviceSpecificInfo == serviceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    serviceSpecificInfo3 = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
    serviceSpecificInfo4 = [equalCopy serviceSpecificInfo];
    v9 = [serviceSpecificInfo3 isEqual:serviceSpecificInfo4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
  serviceType = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  if (serviceType == [(WiFiAwarePublishDatapathConfiguration *)v5 serviceType])
  {
    if ([(WiFiAwarePublishDatapathConfiguration *)self securityConfigurationEqual:v5])
    {
      if ([(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfoEqual:v5])
      {
        connectionMode = [(WiFiAwarePublishDatapathConfiguration *)self connectionMode];
        if (connectionMode == [(WiFiAwarePublishDatapathConfiguration *)v5 connectionMode])
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
  serviceType = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  if (serviceType > 2)
  {
    v4 = "unrecognized";
  }

  else
  {
    v4 = off_2787AB330[serviceType];
  }

  connectionMode = [(WiFiAwarePublishDatapathConfiguration *)self connectionMode];
  if (connectionMode > 2)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_2787AB348[connectionMode];
  }

  v7 = MEMORY[0x277CCACA8];
  securityConfiguration = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  serviceSpecificInfo = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  v10 = [v7 stringWithFormat:@"<WiFiAwarePublishDatapathConfiguration: serviceType=%s, securityConfig=%@, serviceSpecificInfo=%@, connectionMode=%s", v4, securityConfiguration, serviceSpecificInfo, v6];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwarePublishDatapathConfiguration alloc];
  serviceType = [(WiFiAwarePublishDatapathConfiguration *)self serviceType];
  securityConfiguration = [(WiFiAwarePublishDatapathConfiguration *)self securityConfiguration];
  v7 = [(WiFiAwarePublishDatapathConfiguration *)v4 initWithServiceType:serviceType securityConfiguration:securityConfiguration];

  serviceSpecificInfo = [(WiFiAwarePublishDatapathConfiguration *)self serviceSpecificInfo];
  [(WiFiAwarePublishDatapathConfiguration *)v7 setServiceSpecificInfo:serviceSpecificInfo];

  [(WiFiAwarePublishDatapathConfiguration *)v7 setConnectionMode:[(WiFiAwarePublishDatapathConfiguration *)self connectionMode]];
  return v7;
}

@end