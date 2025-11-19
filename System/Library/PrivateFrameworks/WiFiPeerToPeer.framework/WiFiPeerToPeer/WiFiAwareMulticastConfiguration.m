@interface WiFiAwareMulticastConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)multicastAddressConfigurationEqual:(id)a3;
- (WiFiAwareMulticastConfiguration)init;
- (WiFiAwareMulticastConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareMulticastConfiguration

- (WiFiAwareMulticastConfiguration)init
{
  v4.receiver = self;
  v4.super_class = WiFiAwareMulticastConfiguration;
  v2 = [(WiFiAwareMulticastConfiguration *)&v4 init];
  [(WiFiAwareMulticastConfiguration *)v2 setMulticastAddress:0];
  [(WiFiAwareMulticastConfiguration *)v2 setDynamicLinkRate:0];
  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  [v5 encodeObject:v4 forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];

  [v5 encodeBool:-[WiFiAwareMulticastConfiguration dynamicLinkRate](self forKey:{"dynamicLinkRate"), @"WiFiAwarePublishConfiguration.dynamicLinkRate"}];
}

- (WiFiAwareMulticastConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareMulticastConfiguration *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];
  [(WiFiAwareMulticastConfiguration *)v5 setMulticastAddress:v6];

  v7 = [v4 decodeBoolForKey:@"WiFiAwarePublishConfiguration.dynamicLinkRate"];
  [(WiFiAwareMulticastConfiguration *)v5 setDynamicLinkRate:v7];
  return v5;
}

- (BOOL)multicastAddressConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  v6 = [v4 multicastAddress];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
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
LABEL_7:
    v7 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  if ([(WiFiAwareMulticastConfiguration *)self multicastAddressConfigurationEqual:v5])
  {
    v6 = [(WiFiAwareMulticastConfiguration *)self dynamicLinkRate];
    if (v6 == [(WiFiAwareMulticastConfiguration *)v5 dynamicLinkRate])
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  v5 = [(WiFiAwareMulticastConfiguration *)self dynamicLinkRate];
  v6 = "NO";
  if (v5)
  {
    v6 = "YES";
  }

  v7 = [v3 stringWithFormat:@"<WiFiAwareMulticastConfiguration: multicastAddress=%@, dynamicLinkRate=%s>", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WiFiAwareMulticastConfiguration);
  v5 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  v6 = [v5 copy];
  [(WiFiAwareMulticastConfiguration *)v4 setMulticastAddress:v6];

  [(WiFiAwareMulticastConfiguration *)v4 setDynamicLinkRate:[(WiFiAwareMulticastConfiguration *)self dynamicLinkRate]];
  return v4;
}

@end