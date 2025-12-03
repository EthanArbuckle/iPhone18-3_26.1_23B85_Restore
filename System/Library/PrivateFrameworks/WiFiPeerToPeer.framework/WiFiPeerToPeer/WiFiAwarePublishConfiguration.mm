@interface WiFiAwarePublishConfiguration
- (BOOL)channelConfigurationEqual:(id)equal;
- (BOOL)countryCodeEqual:(id)equal;
- (BOOL)datapathConfigurationEqual:(id)equal;
- (BOOL)fastDiscoveryConfigurationEqual:(id)equal;
- (BOOL)internetSharingConfigurationEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)multicastAddressConfigurationEqual:(id)equal;
- (BOOL)multicastConfigurationEqual:(id)equal;
- (BOOL)serviceSpecificInfoEqual:(id)equal;
- (WiFiAwarePublishConfiguration)initWithCoder:(id)coder;
- (WiFiAwarePublishConfiguration)initWithServiceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublishConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(WiFiAwarePublishConfiguration *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"WiFiAwarePublishConfiguration.serviceName"];

  serviceSpecificInfo = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  [coderCopy encodeObject:serviceSpecificInfo forKey:@"WiFiAwarePublishConfiguration.serviceSpecificInfo"];

  [coderCopy encodeBool:-[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](self forKey:{"furtherServiceDiscoveryRequired"), @"WiFiAwarePublishConfiguration.furtherServiceDiscoveryRequired"}];
  [coderCopy encodeBool:-[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](self forKey:{"jumboServiceDiscoveryMessages"), @"WiFiAwarePublishConfiguration.jumboServiceDiscoveryMessages"}];
  [coderCopy encodeInteger:-[WiFiAwarePublishConfiguration authenticationType](self forKey:{"authenticationType"), @"WiFiAwarePublishConfiguration.authenticationType"}];
  datapathConfiguration = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  [coderCopy encodeObject:datapathConfiguration forKey:@"WiFiAwarePublishConfiguration.datapathConfiguration"];

  fastDiscoveryConfiguration = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  [coderCopy encodeObject:fastDiscoveryConfiguration forKey:@"WiFiAwarePublishConfiguration.fastDiscoveryConfiguration"];

  internetSharingConfiguration = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  [coderCopy encodeObject:internetSharingConfiguration forKey:@"WiFiAwarePublishConfiguration.internetSharingConfiguration"];

  multicastAddress = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  [coderCopy encodeObject:multicastAddress forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];

  allowedDeviceIDs = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  [coderCopy encodeObject:allowedDeviceIDs forKey:@"WiFiAwarePublishConfiguration.allowedDeviceIDs"];

  v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[WiFiAwarePublishConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds")}];
  [coderCopy encodeObject:v12 forKey:@"WiFiAwarePublishConfiguration.timeout"];

  channelInfo = [(WiFiAwarePublishConfiguration *)self channelInfo];
  [coderCopy encodeObject:channelInfo forKey:@"WiFiAwarePublishConfiguration.channelInfo"];

  countryCode = [(WiFiAwarePublishConfiguration *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"WiFiAwarePublishConfiguration.countryCode"];

  multicastConfiguration = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  [coderCopy encodeObject:multicastConfiguration forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];

  pairingMetadata = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  [coderCopy encodeObject:pairingMetadata forKey:@"WiFiAwarePublishConfiguration.pairingMetadata"];
}

- (WiFiAwarePublishConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.serviceName"];
  v6 = [(WiFiAwarePublishConfiguration *)self initWithServiceName:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.serviceSpecificInfo"];
  [(WiFiAwarePublishConfiguration *)v6 setServiceSpecificInfo:v7];

  -[WiFiAwarePublishConfiguration setFurtherServiceDiscoveryRequired:](v6, "setFurtherServiceDiscoveryRequired:", [coderCopy decodeBoolForKey:@"WiFiAwarePublishConfiguration.furtherServiceDiscoveryRequired"]);
  -[WiFiAwarePublishConfiguration setJumboServiceDiscoveryMessages:](v6, "setJumboServiceDiscoveryMessages:", [coderCopy decodeBoolForKey:@"WiFiAwarePublishConfiguration.jumboServiceDiscoveryMessages"]);
  -[WiFiAwarePublishConfiguration setAuthenticationType:](v6, "setAuthenticationType:", [coderCopy decodeIntegerForKey:@"WiFiAwarePublishConfiguration.authenticationType"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.datapathConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setDatapathConfiguration:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.fastDiscoveryConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setFastDiscoveryConfiguration:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.internetSharingConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setInternetSharingConfiguration:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastAddress:v11];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"WiFiAwarePublishConfiguration.allowedDeviceIDs"];
  [(WiFiAwarePublishConfiguration *)v6 setAllowedDeviceIDs:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.timeout"];
  -[WiFiAwarePublishConfiguration setTimeoutAfterSeconds:](v6, "setTimeoutAfterSeconds:", [v16 unsignedLongValue]);

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.channelInfo"];
  [(WiFiAwarePublishConfiguration *)v6 setChannelInfo:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.countryCode"];
  [(WiFiAwarePublishConfiguration *)v6 setCountryCode:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastConfiguration:v19];

  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"WiFiAwarePublishConfiguration.pairingMetadata"];

  [(WiFiAwarePublishConfiguration *)v6 setPairingMetadata:v23];
  return v6;
}

- (WiFiAwarePublishConfiguration)initWithServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = WiFiAwarePublishConfiguration;
  v5 = [(WiFiAwarePublishConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_authenticationType = 1;
  }

  return v5;
}

- (BOOL)multicastConfigurationEqual:(id)equal
{
  equalCopy = equal;
  multicastConfiguration = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  multicastConfiguration2 = [equalCopy multicastConfiguration];
  if (multicastConfiguration == multicastConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    multicastConfiguration3 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
    multicastConfiguration4 = [equalCopy multicastConfiguration];
    v9 = [multicastConfiguration3 isEqual:multicastConfiguration4];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  serviceSpecificInfo = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  serviceSpecificInfo2 = [equalCopy serviceSpecificInfo];
  if (serviceSpecificInfo == serviceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    serviceSpecificInfo3 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
    serviceSpecificInfo4 = [equalCopy serviceSpecificInfo];
    v9 = [serviceSpecificInfo3 isEqual:serviceSpecificInfo4];
  }

  return v9;
}

- (BOOL)datapathConfigurationEqual:(id)equal
{
  equalCopy = equal;
  datapathConfiguration = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  datapathConfiguration2 = [equalCopy datapathConfiguration];
  if (datapathConfiguration == datapathConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    datapathConfiguration3 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
    datapathConfiguration4 = [equalCopy datapathConfiguration];
    v9 = [datapathConfiguration3 isEqual:datapathConfiguration4];
  }

  return v9;
}

- (BOOL)fastDiscoveryConfigurationEqual:(id)equal
{
  equalCopy = equal;
  fastDiscoveryConfiguration = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  fastDiscoveryConfiguration2 = [equalCopy fastDiscoveryConfiguration];
  if (fastDiscoveryConfiguration == fastDiscoveryConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    fastDiscoveryConfiguration3 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
    fastDiscoveryConfiguration4 = [equalCopy fastDiscoveryConfiguration];
    v9 = [fastDiscoveryConfiguration3 isEqual:fastDiscoveryConfiguration4];
  }

  return v9;
}

- (BOOL)internetSharingConfigurationEqual:(id)equal
{
  equalCopy = equal;
  internetSharingConfiguration = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  internetSharingConfiguration2 = [equalCopy internetSharingConfiguration];
  if (internetSharingConfiguration == internetSharingConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    internetSharingConfiguration3 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
    internetSharingConfiguration4 = [equalCopy internetSharingConfiguration];
    v9 = [internetSharingConfiguration3 isEqual:internetSharingConfiguration4];
  }

  return v9;
}

- (BOOL)multicastAddressConfigurationEqual:(id)equal
{
  equalCopy = equal;
  multicastAddress = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  multicastAddress2 = [equalCopy multicastAddress];
  if (multicastAddress == multicastAddress2)
  {
    v9 = 1;
  }

  else
  {
    multicastAddress3 = [(WiFiAwarePublishConfiguration *)self multicastAddress];
    multicastAddress4 = [equalCopy multicastAddress];
    v9 = [multicastAddress3 isEqual:multicastAddress4];
  }

  return v9;
}

- (BOOL)channelConfigurationEqual:(id)equal
{
  equalCopy = equal;
  channelInfo = [(WiFiAwarePublishConfiguration *)self channelInfo];
  channelInfo2 = [equalCopy channelInfo];
  if (channelInfo == channelInfo2)
  {
    v9 = 1;
  }

  else
  {
    channelInfo3 = [(WiFiAwarePublishConfiguration *)self channelInfo];
    channelInfo4 = [equalCopy channelInfo];
    v9 = [channelInfo3 isEqual:channelInfo4];
  }

  return v9;
}

- (BOOL)countryCodeEqual:(id)equal
{
  equalCopy = equal;
  countryCode = [(WiFiAwarePublishConfiguration *)self countryCode];
  countryCode2 = [equalCopy countryCode];
  if (countryCode == countryCode2)
  {
    v9 = 1;
  }

  else
  {
    countryCode3 = [(WiFiAwarePublishConfiguration *)self countryCode];
    countryCode4 = [equalCopy countryCode];
    v9 = [countryCode3 isEqual:countryCode4];
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
      v15 = 0;
      v5 = 0;
      goto LABEL_23;
    }

    v5 = equalCopy;
    serviceName = [(WiFiAwarePublishConfiguration *)self serviceName];
    serviceName2 = [(WiFiAwarePublishConfiguration *)v5 serviceName];
    if (![serviceName isEqualToString:serviceName2] || !-[WiFiAwarePublishConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || (v8 = -[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](self, "furtherServiceDiscoveryRequired"), v8 != -[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](v5, "furtherServiceDiscoveryRequired")) || (v9 = -[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](self, "jumboServiceDiscoveryMessages"), v9 != -[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](v5, "jumboServiceDiscoveryMessages")) || (v10 = -[WiFiAwarePublishConfiguration authenticationType](self, "authenticationType"), v10 != -[WiFiAwarePublishConfiguration authenticationType](v5, "authenticationType")) || !-[WiFiAwarePublishConfiguration datapathConfigurationEqual:](self, "datapathConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration fastDiscoveryConfigurationEqual:](self, "fastDiscoveryConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration internetSharingConfigurationEqual:](self, "internetSharingConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration multicastAddressConfigurationEqual:](self, "multicastAddressConfigurationEqual:", v5) || (v11 = -[WiFiAwarePublishConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds"), v11 != -[WiFiAwarePublishConfiguration timeoutAfterSeconds](v5, "timeoutAfterSeconds")) || !-[WiFiAwarePublishConfiguration channelConfigurationEqual:](self, "channelConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration countryCodeEqual:](self, "countryCodeEqual:", v5) || !-[WiFiAwarePublishConfiguration multicastConfigurationEqual:](self, "multicastConfigurationEqual:", v5))
    {

LABEL_22:
      v15 = 0;
      goto LABEL_23;
    }

    pairingMetadata = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
    pairingMetadata2 = [(WiFiAwarePublishConfiguration *)v5 pairingMetadata];
    v14 = [pairingMetadata isEqual:pairingMetadata2];

    if (!v14)
    {
      goto LABEL_22;
    }
  }

  v15 = 1;
LABEL_23:

  return v15;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  serviceName = [(WiFiAwarePublishConfiguration *)self serviceName];
  serviceSpecificInfo = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  if ([(WiFiAwarePublishConfiguration *)self furtherServiceDiscoveryRequired])
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  v16 = v3;
  if ([(WiFiAwarePublishConfiguration *)self jumboServiceDiscoveryMessages])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  datapathConfiguration = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  fastDiscoveryConfiguration = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  internetSharingConfiguration = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  allowedDeviceIDs = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  timeoutAfterSeconds = [(WiFiAwarePublishConfiguration *)self timeoutAfterSeconds];
  channelInfo = [(WiFiAwarePublishConfiguration *)self channelInfo];
  countryCode = [(WiFiAwarePublishConfiguration *)self countryCode];
  multicastConfiguration = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  pairingMetadata = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  v13 = [v19 stringWithFormat:@"<WiFiAwarePublishConfiguration: serviceName=%@, serviceSpecificInfo=%@, furtherServiceDiscoveryRequired=%s, jumboMessages=%s, dataConfig=%@, fastDiscovery=%@, internetSharing=%@>, allowedDeviceIDs=%@, timeoutAfter=%ld, channelInfo=%@, cc=%@, multicastConfiguration=%@, pairingMetadata=%@>", serviceName, serviceSpecificInfo, v16, v4, datapathConfiguration, fastDiscoveryConfiguration, internetSharingConfiguration, allowedDeviceIDs, timeoutAfterSeconds, channelInfo, countryCode, multicastConfiguration, pairingMetadata];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwarePublishConfiguration alloc];
  serviceName = [(WiFiAwarePublishConfiguration *)self serviceName];
  v6 = [(WiFiAwarePublishConfiguration *)v4 initWithServiceName:serviceName];

  serviceSpecificInfo = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  v8 = [serviceSpecificInfo copy];
  [(WiFiAwarePublishConfiguration *)v6 setServiceSpecificInfo:v8];

  [(WiFiAwarePublishConfiguration *)v6 setFurtherServiceDiscoveryRequired:[(WiFiAwarePublishConfiguration *)self furtherServiceDiscoveryRequired]];
  [(WiFiAwarePublishConfiguration *)v6 setJumboServiceDiscoveryMessages:[(WiFiAwarePublishConfiguration *)self jumboServiceDiscoveryMessages]];
  datapathConfiguration = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  v10 = [datapathConfiguration copy];
  [(WiFiAwarePublishConfiguration *)v6 setDatapathConfiguration:v10];

  [(WiFiAwarePublishConfiguration *)v6 setAuthenticationType:[(WiFiAwarePublishConfiguration *)self authenticationType]];
  fastDiscoveryConfiguration = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  v12 = [fastDiscoveryConfiguration copy];
  [(WiFiAwarePublishConfiguration *)v6 setFastDiscoveryConfiguration:v12];

  internetSharingConfiguration = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  v14 = [internetSharingConfiguration copy];
  [(WiFiAwarePublishConfiguration *)v6 setInternetSharingConfiguration:v14];

  multicastAddress = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  v16 = [multicastAddress copy];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastAddress:v16];

  allowedDeviceIDs = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  v18 = [allowedDeviceIDs copy];
  [(WiFiAwarePublishConfiguration *)v6 setAllowedDeviceIDs:v18];

  [(WiFiAwarePublishConfiguration *)v6 setTimeoutAfterSeconds:[(WiFiAwarePublishConfiguration *)self timeoutAfterSeconds]];
  channelInfo = [(WiFiAwarePublishConfiguration *)self channelInfo];
  v20 = [channelInfo copy];
  [(WiFiAwarePublishConfiguration *)v6 setChannelInfo:v20];

  countryCode = [(WiFiAwarePublishConfiguration *)self countryCode];
  v22 = [countryCode copy];
  [(WiFiAwarePublishConfiguration *)v6 setCountryCode:v22];

  multicastConfiguration = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  v24 = [multicastConfiguration copy];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastConfiguration:v24];

  pairingMetadata = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  v26 = [pairingMetadata copy];
  [(WiFiAwarePublishConfiguration *)v6 setPairingMetadata:v26];

  return v6;
}

@end