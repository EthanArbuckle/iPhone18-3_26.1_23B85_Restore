@interface WiFiAwareSubscribeConfiguration
- (BOOL)channelConfigurationEqual:(id)a3;
- (BOOL)countryCodeEqual:(id)a3;
- (BOOL)fastDiscoveryConfigEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)multicastAddressConfigurationEqual:(id)a3;
- (BOOL)multicastConfigurationEqual:(id)a3;
- (BOOL)serviceSpecificInfoEqual:(id)a3;
- (WiFiAwareSubscribeConfiguration)initWithCoder:(id)a3;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3 discoveryMode:(int64_t)a4;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3 serviceSpecificInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareSubscribeConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  [v4 encodeObject:v5 forKey:@"WiFiAwareSubscribeConfiguration.serviceName"];

  v6 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  [v4 encodeObject:v6 forKey:@"WiFiAwareSubscribeConfiguration.serviceSpecificInfo"];

  [v4 encodeInteger:-[WiFiAwareSubscribeConfiguration authenticationType](self forKey:{"authenticationType"), @"WiFiAwareSubscribeConfiguration.authenticationType"}];
  v7 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  [v4 encodeObject:v7 forKey:@"WiFiAwareSubscribeConfiguration.fastDiscoveryConfiguration"];

  v8 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  [v4 encodeObject:v8 forKey:@"WiFiAwareSubscribeConfiguration.multicastAddress"];

  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds")}];
  [v4 encodeObject:v9 forKey:@"WiFiAwareSubscribeConfiguration.timeout"];

  v10 = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  [v4 encodeObject:v10 forKey:@"WiFiAwareSubscribeConfiguration.allowedDeviceIDs"];

  [v4 encodeInteger:-[WiFiAwareSubscribeConfiguration discoveryMode](self forKey:{"discoveryMode"), @"WiFiAwareSubscribeConfiguration.discoveryMode"}];
  v11 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  [v4 encodeObject:v11 forKey:@"WiFiAwareSubscribeConfiguration.channelInfo"];

  v12 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  [v4 encodeObject:v12 forKey:@"WiFiAwareSubscribeConfiguration.countryCode"];

  v13 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  [v4 encodeObject:v13 forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];
}

- (WiFiAwareSubscribeConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.serviceName"];
  v6 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.serviceSpecificInfo"];
  [(WiFiAwareSubscribeConfiguration *)v6 setServiceSpecificInfo:v7];

  -[WiFiAwareSubscribeConfiguration setAuthenticationType:](v6, "setAuthenticationType:", [v4 decodeIntegerForKey:@"WiFiAwareSubscribeConfiguration.authenticationType"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.fastDiscoveryConfiguration"];
  [(WiFiAwareSubscribeConfiguration *)v6 setFastDiscoveryConfiguration:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.multicastAddress"];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastAddress:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.timeout"];
  -[WiFiAwareSubscribeConfiguration setTimeoutAfterSeconds:](v6, "setTimeoutAfterSeconds:", [v10 unsignedLongValue]);

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"WiFiAwareSubscribeConfiguration.allowedDeviceIDs"];
  [(WiFiAwareSubscribeConfiguration *)v6 setAllowedDeviceIDs:v14];

  -[WiFiAwareSubscribeConfiguration setDiscoveryMode:](v6, "setDiscoveryMode:", [v4 decodeIntegerForKey:@"WiFiAwareSubscribeConfiguration.discoveryMode"]);
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.channelInfo"];
  [(WiFiAwareSubscribeConfiguration *)v6 setChannelInfo:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.countryCode"];
  [(WiFiAwareSubscribeConfiguration *)v6 setCountryCode:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];

  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastConfiguration:v17];
  return v6;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3 serviceSpecificInfo:(id)a4
{
  v6 = a4;
  v7 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:a3];
  [(WiFiAwareSubscribeConfiguration *)v7 setServiceSpecificInfo:v6];

  return v7;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WiFiAwareSubscribeConfiguration;
  v5 = [(WiFiAwareSubscribeConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    serviceSpecificInfo = v5->_serviceSpecificInfo;
    v5->_serviceSpecificInfo = 0;

    v5->_authenticationType = 1;
    v5->_discoveryMode = 0;
  }

  return v5;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)a3 discoveryMode:(int64_t)a4
{
  v5 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:a3];
  [(WiFiAwareSubscribeConfiguration *)v5 setDiscoveryMode:a4];
  return v5;
}

- (BOOL)channelConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  v6 = [v4 channelInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
    v8 = [v4 channelInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)countryCodeEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  v6 = [v4 countryCode];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
    v8 = [v4 countryCode];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)multicastConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  v6 = [v4 multicastConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
    v8 = [v4 multicastConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  v6 = [v4 serviceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
    v8 = [v4 serviceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)fastDiscoveryConfigEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  v6 = [v4 fastDiscoveryConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
    v8 = [v4 fastDiscoveryConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)multicastAddressConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  v6 = [v4 multicastAddress];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
    v8 = [v4 multicastAddress];
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
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      v5 = 0;
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [(WiFiAwareSubscribeConfiguration *)self serviceName];
    v7 = [(WiFiAwareSubscribeConfiguration *)v5 serviceName];
    if (![v6 isEqualToString:v7] || !-[WiFiAwareSubscribeConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || (v8 = -[WiFiAwareSubscribeConfiguration authenticationType](self, "authenticationType"), v8 != -[WiFiAwareSubscribeConfiguration authenticationType](v5, "authenticationType")) || (v9 = -[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds"), v9 != -[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](v5, "timeoutAfterSeconds")) || !-[WiFiAwareSubscribeConfiguration fastDiscoveryConfigEqual:](self, "fastDiscoveryConfigEqual:", v5) || !-[WiFiAwareSubscribeConfiguration multicastAddressConfigurationEqual:](self, "multicastAddressConfigurationEqual:", v5) || (v10 = -[WiFiAwareSubscribeConfiguration discoveryMode](self, "discoveryMode"), v10 != -[WiFiAwareSubscribeConfiguration discoveryMode](v5, "discoveryMode")) || !-[WiFiAwareSubscribeConfiguration channelConfigurationEqual:](self, "channelConfigurationEqual:", v5) || !-[WiFiAwareSubscribeConfiguration countryCodeEqual:](self, "countryCodeEqual:", v5))
    {

LABEL_18:
      v12 = 0;
      goto LABEL_19;
    }

    v11 = [(WiFiAwareSubscribeConfiguration *)self multicastConfigurationEqual:v5];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = 1;
LABEL_19:

  return v12;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  v4 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  v5 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  v6 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  v7 = [(WiFiAwareSubscribeConfiguration *)self timeoutAfterSeconds];
  v8 = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  v9 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  v10 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  v11 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  v12 = [v14 stringWithFormat:@"<WiFiAwareSubscribeConfiguration: name=%@, serviceSpecificInfo=%@, fastDiscoveryConfiguration=%@, multicastAddress=%@, timeoutAfter=%ld>, allowedDeviceIDs=%@, channelInfo=%@, cc=%@, multicastConfiguration=%@>, discoveryMode=%ld", v3, v4, v5, v6, v7, v8, v9, v10, v11, -[WiFiAwareSubscribeConfiguration discoveryMode](self, "discoveryMode")];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwareSubscribeConfiguration alloc];
  v5 = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  v6 = [(WiFiAwareSubscribeConfiguration *)v4 initWithServiceName:v5];

  v7 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  [(WiFiAwareSubscribeConfiguration *)v6 setServiceSpecificInfo:v7];

  [(WiFiAwareSubscribeConfiguration *)v6 setAuthenticationType:[(WiFiAwareSubscribeConfiguration *)self authenticationType]];
  v8 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  [(WiFiAwareSubscribeConfiguration *)v6 setFastDiscoveryConfiguration:v8];

  v9 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastAddress:v9];

  [(WiFiAwareSubscribeConfiguration *)v6 setTimeoutAfterSeconds:[(WiFiAwareSubscribeConfiguration *)self timeoutAfterSeconds]];
  v10 = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  v11 = [v10 copy];
  [(WiFiAwareSubscribeConfiguration *)v6 setAllowedDeviceIDs:v11];

  v12 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  [(WiFiAwareSubscribeConfiguration *)v6 setChannelInfo:v12];

  v13 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  [(WiFiAwareSubscribeConfiguration *)v6 setCountryCode:v13];

  v14 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  v15 = [v14 copy];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastConfiguration:v15];

  return v6;
}

@end