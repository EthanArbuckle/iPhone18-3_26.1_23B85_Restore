@interface WiFiAwarePublishConfiguration
- (BOOL)channelConfigurationEqual:(id)a3;
- (BOOL)countryCodeEqual:(id)a3;
- (BOOL)datapathConfigurationEqual:(id)a3;
- (BOOL)fastDiscoveryConfigurationEqual:(id)a3;
- (BOOL)internetSharingConfigurationEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)multicastAddressConfigurationEqual:(id)a3;
- (BOOL)multicastConfigurationEqual:(id)a3;
- (BOOL)serviceSpecificInfoEqual:(id)a3;
- (WiFiAwarePublishConfiguration)initWithCoder:(id)a3;
- (WiFiAwarePublishConfiguration)initWithServiceName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublishConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self serviceName];
  [v4 encodeObject:v5 forKey:@"WiFiAwarePublishConfiguration.serviceName"];

  v6 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  [v4 encodeObject:v6 forKey:@"WiFiAwarePublishConfiguration.serviceSpecificInfo"];

  [v4 encodeBool:-[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](self forKey:{"furtherServiceDiscoveryRequired"), @"WiFiAwarePublishConfiguration.furtherServiceDiscoveryRequired"}];
  [v4 encodeBool:-[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](self forKey:{"jumboServiceDiscoveryMessages"), @"WiFiAwarePublishConfiguration.jumboServiceDiscoveryMessages"}];
  [v4 encodeInteger:-[WiFiAwarePublishConfiguration authenticationType](self forKey:{"authenticationType"), @"WiFiAwarePublishConfiguration.authenticationType"}];
  v7 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  [v4 encodeObject:v7 forKey:@"WiFiAwarePublishConfiguration.datapathConfiguration"];

  v8 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  [v4 encodeObject:v8 forKey:@"WiFiAwarePublishConfiguration.fastDiscoveryConfiguration"];

  v9 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  [v4 encodeObject:v9 forKey:@"WiFiAwarePublishConfiguration.internetSharingConfiguration"];

  v10 = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  [v4 encodeObject:v10 forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];

  v11 = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  [v4 encodeObject:v11 forKey:@"WiFiAwarePublishConfiguration.allowedDeviceIDs"];

  v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[WiFiAwarePublishConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds")}];
  [v4 encodeObject:v12 forKey:@"WiFiAwarePublishConfiguration.timeout"];

  v13 = [(WiFiAwarePublishConfiguration *)self channelInfo];
  [v4 encodeObject:v13 forKey:@"WiFiAwarePublishConfiguration.channelInfo"];

  v14 = [(WiFiAwarePublishConfiguration *)self countryCode];
  [v4 encodeObject:v14 forKey:@"WiFiAwarePublishConfiguration.countryCode"];

  v15 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  [v4 encodeObject:v15 forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];

  v16 = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  [v4 encodeObject:v16 forKey:@"WiFiAwarePublishConfiguration.pairingMetadata"];
}

- (WiFiAwarePublishConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.serviceName"];
  v6 = [(WiFiAwarePublishConfiguration *)self initWithServiceName:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.serviceSpecificInfo"];
  [(WiFiAwarePublishConfiguration *)v6 setServiceSpecificInfo:v7];

  -[WiFiAwarePublishConfiguration setFurtherServiceDiscoveryRequired:](v6, "setFurtherServiceDiscoveryRequired:", [v4 decodeBoolForKey:@"WiFiAwarePublishConfiguration.furtherServiceDiscoveryRequired"]);
  -[WiFiAwarePublishConfiguration setJumboServiceDiscoveryMessages:](v6, "setJumboServiceDiscoveryMessages:", [v4 decodeBoolForKey:@"WiFiAwarePublishConfiguration.jumboServiceDiscoveryMessages"]);
  -[WiFiAwarePublishConfiguration setAuthenticationType:](v6, "setAuthenticationType:", [v4 decodeIntegerForKey:@"WiFiAwarePublishConfiguration.authenticationType"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.datapathConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setDatapathConfiguration:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.fastDiscoveryConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setFastDiscoveryConfiguration:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.internetSharingConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setInternetSharingConfiguration:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastAddress:v11];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"WiFiAwarePublishConfiguration.allowedDeviceIDs"];
  [(WiFiAwarePublishConfiguration *)v6 setAllowedDeviceIDs:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.timeout"];
  -[WiFiAwarePublishConfiguration setTimeoutAfterSeconds:](v6, "setTimeoutAfterSeconds:", [v16 unsignedLongValue]);

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.channelInfo"];
  [(WiFiAwarePublishConfiguration *)v6 setChannelInfo:v17];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.countryCode"];
  [(WiFiAwarePublishConfiguration *)v6 setCountryCode:v18];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastConfiguration"];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastConfiguration:v19];

  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v4 decodeObjectOfClasses:v22 forKey:@"WiFiAwarePublishConfiguration.pairingMetadata"];

  [(WiFiAwarePublishConfiguration *)v6 setPairingMetadata:v23];
  return v6;
}

- (WiFiAwarePublishConfiguration)initWithServiceName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WiFiAwarePublishConfiguration;
  v5 = [(WiFiAwarePublishConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_authenticationType = 1;
  }

  return v5;
}

- (BOOL)multicastConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  v6 = [v4 multicastConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
    v8 = [v4 multicastConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  v6 = [v4 serviceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
    v8 = [v4 serviceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)datapathConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  v6 = [v4 datapathConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
    v8 = [v4 datapathConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)fastDiscoveryConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  v6 = [v4 fastDiscoveryConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
    v8 = [v4 fastDiscoveryConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)internetSharingConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  v6 = [v4 internetSharingConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
    v8 = [v4 internetSharingConfiguration];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)multicastAddressConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  v6 = [v4 multicastAddress];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self multicastAddress];
    v8 = [v4 multicastAddress];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)channelConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self channelInfo];
  v6 = [v4 channelInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self channelInfo];
    v8 = [v4 channelInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)countryCodeEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishConfiguration *)self countryCode];
  v6 = [v4 countryCode];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishConfiguration *)self countryCode];
    v8 = [v4 countryCode];
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
      v15 = 0;
      v5 = 0;
      goto LABEL_23;
    }

    v5 = v4;
    v6 = [(WiFiAwarePublishConfiguration *)self serviceName];
    v7 = [(WiFiAwarePublishConfiguration *)v5 serviceName];
    if (![v6 isEqualToString:v7] || !-[WiFiAwarePublishConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || (v8 = -[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](self, "furtherServiceDiscoveryRequired"), v8 != -[WiFiAwarePublishConfiguration furtherServiceDiscoveryRequired](v5, "furtherServiceDiscoveryRequired")) || (v9 = -[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](self, "jumboServiceDiscoveryMessages"), v9 != -[WiFiAwarePublishConfiguration jumboServiceDiscoveryMessages](v5, "jumboServiceDiscoveryMessages")) || (v10 = -[WiFiAwarePublishConfiguration authenticationType](self, "authenticationType"), v10 != -[WiFiAwarePublishConfiguration authenticationType](v5, "authenticationType")) || !-[WiFiAwarePublishConfiguration datapathConfigurationEqual:](self, "datapathConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration fastDiscoveryConfigurationEqual:](self, "fastDiscoveryConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration internetSharingConfigurationEqual:](self, "internetSharingConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration multicastAddressConfigurationEqual:](self, "multicastAddressConfigurationEqual:", v5) || (v11 = -[WiFiAwarePublishConfiguration timeoutAfterSeconds](self, "timeoutAfterSeconds"), v11 != -[WiFiAwarePublishConfiguration timeoutAfterSeconds](v5, "timeoutAfterSeconds")) || !-[WiFiAwarePublishConfiguration channelConfigurationEqual:](self, "channelConfigurationEqual:", v5) || !-[WiFiAwarePublishConfiguration countryCodeEqual:](self, "countryCodeEqual:", v5) || !-[WiFiAwarePublishConfiguration multicastConfigurationEqual:](self, "multicastConfigurationEqual:", v5))
    {

LABEL_22:
      v15 = 0;
      goto LABEL_23;
    }

    v12 = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
    v13 = [(WiFiAwarePublishConfiguration *)v5 pairingMetadata];
    v14 = [v12 isEqual:v13];

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
  v18 = [(WiFiAwarePublishConfiguration *)self serviceName];
  v17 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
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

  v15 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  v5 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  v6 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  v7 = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  v8 = [(WiFiAwarePublishConfiguration *)self timeoutAfterSeconds];
  v9 = [(WiFiAwarePublishConfiguration *)self channelInfo];
  v10 = [(WiFiAwarePublishConfiguration *)self countryCode];
  v11 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  v12 = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  v13 = [v19 stringWithFormat:@"<WiFiAwarePublishConfiguration: serviceName=%@, serviceSpecificInfo=%@, furtherServiceDiscoveryRequired=%s, jumboMessages=%s, dataConfig=%@, fastDiscovery=%@, internetSharing=%@>, allowedDeviceIDs=%@, timeoutAfter=%ld, channelInfo=%@, cc=%@, multicastConfiguration=%@, pairingMetadata=%@>", v18, v17, v16, v4, v15, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwarePublishConfiguration alloc];
  v5 = [(WiFiAwarePublishConfiguration *)self serviceName];
  v6 = [(WiFiAwarePublishConfiguration *)v4 initWithServiceName:v5];

  v7 = [(WiFiAwarePublishConfiguration *)self serviceSpecificInfo];
  v8 = [v7 copy];
  [(WiFiAwarePublishConfiguration *)v6 setServiceSpecificInfo:v8];

  [(WiFiAwarePublishConfiguration *)v6 setFurtherServiceDiscoveryRequired:[(WiFiAwarePublishConfiguration *)self furtherServiceDiscoveryRequired]];
  [(WiFiAwarePublishConfiguration *)v6 setJumboServiceDiscoveryMessages:[(WiFiAwarePublishConfiguration *)self jumboServiceDiscoveryMessages]];
  v9 = [(WiFiAwarePublishConfiguration *)self datapathConfiguration];
  v10 = [v9 copy];
  [(WiFiAwarePublishConfiguration *)v6 setDatapathConfiguration:v10];

  [(WiFiAwarePublishConfiguration *)v6 setAuthenticationType:[(WiFiAwarePublishConfiguration *)self authenticationType]];
  v11 = [(WiFiAwarePublishConfiguration *)self fastDiscoveryConfiguration];
  v12 = [v11 copy];
  [(WiFiAwarePublishConfiguration *)v6 setFastDiscoveryConfiguration:v12];

  v13 = [(WiFiAwarePublishConfiguration *)self internetSharingConfiguration];
  v14 = [v13 copy];
  [(WiFiAwarePublishConfiguration *)v6 setInternetSharingConfiguration:v14];

  v15 = [(WiFiAwarePublishConfiguration *)self multicastAddress];
  v16 = [v15 copy];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastAddress:v16];

  v17 = [(WiFiAwarePublishConfiguration *)self allowedDeviceIDs];
  v18 = [v17 copy];
  [(WiFiAwarePublishConfiguration *)v6 setAllowedDeviceIDs:v18];

  [(WiFiAwarePublishConfiguration *)v6 setTimeoutAfterSeconds:[(WiFiAwarePublishConfiguration *)self timeoutAfterSeconds]];
  v19 = [(WiFiAwarePublishConfiguration *)self channelInfo];
  v20 = [v19 copy];
  [(WiFiAwarePublishConfiguration *)v6 setChannelInfo:v20];

  v21 = [(WiFiAwarePublishConfiguration *)self countryCode];
  v22 = [v21 copy];
  [(WiFiAwarePublishConfiguration *)v6 setCountryCode:v22];

  v23 = [(WiFiAwarePublishConfiguration *)self multicastConfiguration];
  v24 = [v23 copy];
  [(WiFiAwarePublishConfiguration *)v6 setMulticastConfiguration:v24];

  v25 = [(WiFiAwarePublishConfiguration *)self pairingMetadata];
  v26 = [v25 copy];
  [(WiFiAwarePublishConfiguration *)v6 setPairingMetadata:v26];

  return v6;
}

@end