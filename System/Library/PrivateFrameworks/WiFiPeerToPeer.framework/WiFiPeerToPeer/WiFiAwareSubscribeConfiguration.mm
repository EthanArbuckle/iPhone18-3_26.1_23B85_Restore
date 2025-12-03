@interface WiFiAwareSubscribeConfiguration
- (BOOL)channelConfigurationEqual:(id)equal;
- (BOOL)countryCodeEqual:(id)equal;
- (BOOL)fastDiscoveryConfigEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)multicastAddressConfigurationEqual:(id)equal;
- (BOOL)multicastConfigurationEqual:(id)equal;
- (BOOL)serviceSpecificInfoEqual:(id)equal;
- (WiFiAwareSubscribeConfiguration)initWithCoder:(id)coder;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name discoveryMode:(int64_t)mode;
- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name serviceSpecificInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareSubscribeConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"WiFiAwareSubscribeConfiguration.serviceName"];

  serviceSpecificInfo = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  [coderCopy encodeObject:serviceSpecificInfo forKey:@"WiFiAwareSubscribeConfiguration.serviceSpecificInfo"];

  [coderCopy encodeInteger:-[WiFiAwareSubscribeConfiguration authenticationType](self forKey:{"authenticationType"), @"WiFiAwareSubscribeConfiguration.authenticationType"}];
  fastDiscoveryConfiguration = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  [coderCopy encodeObject:fastDiscoveryConfiguration forKey:@"WiFiAwareSubscribeConfiguration.fastDiscoveryConfiguration"];

  multicastAddress = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  [coderCopy encodeObject:multicastAddress forKey:@"WiFiAwareSubscribeConfiguration.multicastAddress"];

  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds")}];
  [coderCopy encodeObject:v9 forKey:@"WiFiAwareSubscribeConfiguration.timeout"];

  allowedDeviceIDs = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  [coderCopy encodeObject:allowedDeviceIDs forKey:@"WiFiAwareSubscribeConfiguration.allowedDeviceIDs"];

  [coderCopy encodeInteger:-[WiFiAwareSubscribeConfiguration discoveryMode](self forKey:{"discoveryMode"), @"WiFiAwareSubscribeConfiguration.discoveryMode"}];
  channelInfo = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  [coderCopy encodeObject:channelInfo forKey:@"WiFiAwareSubscribeConfiguration.channelInfo"];

  countryCode = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"WiFiAwareSubscribeConfiguration.countryCode"];

  multicastConfiguration = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  [coderCopy encodeObject:multicastConfiguration forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];
}

- (WiFiAwareSubscribeConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.serviceName"];
  v6 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.serviceSpecificInfo"];
  [(WiFiAwareSubscribeConfiguration *)v6 setServiceSpecificInfo:v7];

  -[WiFiAwareSubscribeConfiguration setAuthenticationType:](v6, "setAuthenticationType:", [coderCopy decodeIntegerForKey:@"WiFiAwareSubscribeConfiguration.authenticationType"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.fastDiscoveryConfiguration"];
  [(WiFiAwareSubscribeConfiguration *)v6 setFastDiscoveryConfiguration:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.multicastAddress"];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastAddress:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.timeout"];
  -[WiFiAwareSubscribeConfiguration setTimeoutAfterSeconds:](v6, "setTimeoutAfterSeconds:", [v10 unsignedLongValue]);

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"WiFiAwareSubscribeConfiguration.allowedDeviceIDs"];
  [(WiFiAwareSubscribeConfiguration *)v6 setAllowedDeviceIDs:v14];

  -[WiFiAwareSubscribeConfiguration setDiscoveryMode:](v6, "setDiscoveryMode:", [coderCopy decodeIntegerForKey:@"WiFiAwareSubscribeConfiguration.discoveryMode"]);
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.channelInfo"];
  [(WiFiAwareSubscribeConfiguration *)v6 setChannelInfo:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareSubscribeConfiguration.countryCode"];
  [(WiFiAwareSubscribeConfiguration *)v6 setCountryCode:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];

  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastConfiguration:v17];
  return v6;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name serviceSpecificInfo:(id)info
{
  infoCopy = info;
  v7 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:name];
  [(WiFiAwareSubscribeConfiguration *)v7 setServiceSpecificInfo:infoCopy];

  return v7;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = WiFiAwareSubscribeConfiguration;
  v5 = [(WiFiAwareSubscribeConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    serviceSpecificInfo = v5->_serviceSpecificInfo;
    v5->_serviceSpecificInfo = 0;

    v5->_authenticationType = 1;
    v5->_discoveryMode = 0;
  }

  return v5;
}

- (WiFiAwareSubscribeConfiguration)initWithServiceName:(id)name discoveryMode:(int64_t)mode
{
  v5 = [(WiFiAwareSubscribeConfiguration *)self initWithServiceName:name];
  [(WiFiAwareSubscribeConfiguration *)v5 setDiscoveryMode:mode];
  return v5;
}

- (BOOL)channelConfigurationEqual:(id)equal
{
  equalCopy = equal;
  channelInfo = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  channelInfo2 = [equalCopy channelInfo];
  if (channelInfo == channelInfo2)
  {
    v9 = 1;
  }

  else
  {
    channelInfo3 = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
    channelInfo4 = [equalCopy channelInfo];
    v9 = [channelInfo3 isEqual:channelInfo4];
  }

  return v9;
}

- (BOOL)countryCodeEqual:(id)equal
{
  equalCopy = equal;
  countryCode = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  countryCode2 = [equalCopy countryCode];
  if (countryCode == countryCode2)
  {
    v9 = 1;
  }

  else
  {
    countryCode3 = [(WiFiAwareSubscribeConfiguration *)self countryCode];
    countryCode4 = [equalCopy countryCode];
    v9 = [countryCode3 isEqual:countryCode4];
  }

  return v9;
}

- (BOOL)multicastConfigurationEqual:(id)equal
{
  equalCopy = equal;
  multicastConfiguration = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  multicastConfiguration2 = [equalCopy multicastConfiguration];
  if (multicastConfiguration == multicastConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    multicastConfiguration3 = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
    multicastConfiguration4 = [equalCopy multicastConfiguration];
    v9 = [multicastConfiguration3 isEqual:multicastConfiguration4];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  serviceSpecificInfo = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  serviceSpecificInfo2 = [equalCopy serviceSpecificInfo];
  if (serviceSpecificInfo == serviceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    serviceSpecificInfo3 = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
    serviceSpecificInfo4 = [equalCopy serviceSpecificInfo];
    v9 = [serviceSpecificInfo3 isEqual:serviceSpecificInfo4];
  }

  return v9;
}

- (BOOL)fastDiscoveryConfigEqual:(id)equal
{
  equalCopy = equal;
  fastDiscoveryConfiguration = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  fastDiscoveryConfiguration2 = [equalCopy fastDiscoveryConfiguration];
  if (fastDiscoveryConfiguration == fastDiscoveryConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    fastDiscoveryConfiguration3 = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
    fastDiscoveryConfiguration4 = [equalCopy fastDiscoveryConfiguration];
    v9 = [fastDiscoveryConfiguration3 isEqual:fastDiscoveryConfiguration4];
  }

  return v9;
}

- (BOOL)multicastAddressConfigurationEqual:(id)equal
{
  equalCopy = equal;
  multicastAddress = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  multicastAddress2 = [equalCopy multicastAddress];
  if (multicastAddress == multicastAddress2)
  {
    v9 = 1;
  }

  else
  {
    multicastAddress3 = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
    multicastAddress4 = [equalCopy multicastAddress];
    v9 = [multicastAddress3 isEqual:multicastAddress4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

    v5 = equalCopy;
    serviceName = [(WiFiAwareSubscribeConfiguration *)self serviceName];
    serviceName2 = [(WiFiAwareSubscribeConfiguration *)v5 serviceName];
    if (![serviceName isEqualToString:serviceName2] || !-[WiFiAwareSubscribeConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || (v8 = -[WiFiAwareSubscribeConfiguration authenticationType](self, "authenticationType"), v8 != -[WiFiAwareSubscribeConfiguration authenticationType](v5, "authenticationType")) || (v9 = -[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds"), v9 != -[WiFiAwareSubscribeConfiguration timeoutAfterSeconds](v5, "timeoutAfterSeconds")) || !-[WiFiAwareSubscribeConfiguration fastDiscoveryConfigEqual:](self, "fastDiscoveryConfigEqual:", v5) || !-[WiFiAwareSubscribeConfiguration multicastAddressConfigurationEqual:](self, "multicastAddressConfigurationEqual:", v5) || (v10 = -[WiFiAwareSubscribeConfiguration discoveryMode](self, "discoveryMode"), v10 != -[WiFiAwareSubscribeConfiguration discoveryMode](v5, "discoveryMode")) || !-[WiFiAwareSubscribeConfiguration channelConfigurationEqual:](self, "channelConfigurationEqual:", v5) || !-[WiFiAwareSubscribeConfiguration countryCodeEqual:](self, "countryCodeEqual:", v5))
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
  serviceName = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  serviceSpecificInfo = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  fastDiscoveryConfiguration = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  multicastAddress = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  timeoutAfterSeconds = [(WiFiAwareSubscribeConfiguration *)self timeoutAfterSeconds];
  allowedDeviceIDs = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  channelInfo = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  countryCode = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  multicastConfiguration = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  v12 = [v14 stringWithFormat:@"<WiFiAwareSubscribeConfiguration: name=%@, serviceSpecificInfo=%@, fastDiscoveryConfiguration=%@, multicastAddress=%@, timeoutAfter=%ld>, allowedDeviceIDs=%@, channelInfo=%@, cc=%@, multicastConfiguration=%@>, discoveryMode=%ld", serviceName, serviceSpecificInfo, fastDiscoveryConfiguration, multicastAddress, timeoutAfterSeconds, allowedDeviceIDs, channelInfo, countryCode, multicastConfiguration, -[WiFiAwareSubscribeConfiguration discoveryMode](self, "discoveryMode")];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwareSubscribeConfiguration alloc];
  serviceName = [(WiFiAwareSubscribeConfiguration *)self serviceName];
  v6 = [(WiFiAwareSubscribeConfiguration *)v4 initWithServiceName:serviceName];

  serviceSpecificInfo = [(WiFiAwareSubscribeConfiguration *)self serviceSpecificInfo];
  [(WiFiAwareSubscribeConfiguration *)v6 setServiceSpecificInfo:serviceSpecificInfo];

  [(WiFiAwareSubscribeConfiguration *)v6 setAuthenticationType:[(WiFiAwareSubscribeConfiguration *)self authenticationType]];
  fastDiscoveryConfiguration = [(WiFiAwareSubscribeConfiguration *)self fastDiscoveryConfiguration];
  [(WiFiAwareSubscribeConfiguration *)v6 setFastDiscoveryConfiguration:fastDiscoveryConfiguration];

  multicastAddress = [(WiFiAwareSubscribeConfiguration *)self multicastAddress];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastAddress:multicastAddress];

  [(WiFiAwareSubscribeConfiguration *)v6 setTimeoutAfterSeconds:[(WiFiAwareSubscribeConfiguration *)self timeoutAfterSeconds]];
  allowedDeviceIDs = [(WiFiAwareSubscribeConfiguration *)self allowedDeviceIDs];
  v11 = [allowedDeviceIDs copy];
  [(WiFiAwareSubscribeConfiguration *)v6 setAllowedDeviceIDs:v11];

  channelInfo = [(WiFiAwareSubscribeConfiguration *)self channelInfo];
  [(WiFiAwareSubscribeConfiguration *)v6 setChannelInfo:channelInfo];

  countryCode = [(WiFiAwareSubscribeConfiguration *)self countryCode];
  [(WiFiAwareSubscribeConfiguration *)v6 setCountryCode:countryCode];

  multicastConfiguration = [(WiFiAwareSubscribeConfiguration *)self multicastConfiguration];
  v15 = [multicastConfiguration copy];
  [(WiFiAwareSubscribeConfiguration *)v6 setMulticastConfiguration:v15];

  return v6;
}

@end