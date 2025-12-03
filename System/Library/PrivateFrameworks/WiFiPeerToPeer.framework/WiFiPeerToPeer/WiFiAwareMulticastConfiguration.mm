@interface WiFiAwareMulticastConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)multicastAddressConfigurationEqual:(id)equal;
- (WiFiAwareMulticastConfiguration)init;
- (WiFiAwareMulticastConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  multicastAddress = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  [coderCopy encodeObject:multicastAddress forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];

  [coderCopy encodeBool:-[WiFiAwareMulticastConfiguration dynamicLinkRate](self forKey:{"dynamicLinkRate"), @"WiFiAwarePublishConfiguration.dynamicLinkRate"}];
}

- (WiFiAwareMulticastConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WiFiAwareMulticastConfiguration *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishConfiguration.multicastAddress"];
  [(WiFiAwareMulticastConfiguration *)v5 setMulticastAddress:v6];

  v7 = [coderCopy decodeBoolForKey:@"WiFiAwarePublishConfiguration.dynamicLinkRate"];
  [(WiFiAwareMulticastConfiguration *)v5 setDynamicLinkRate:v7];
  return v5;
}

- (BOOL)multicastAddressConfigurationEqual:(id)equal
{
  equalCopy = equal;
  multicastAddress = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  multicastAddress2 = [equalCopy multicastAddress];
  if (multicastAddress == multicastAddress2)
  {
    v9 = 1;
  }

  else
  {
    multicastAddress3 = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
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

  v5 = equalCopy;
  if ([(WiFiAwareMulticastConfiguration *)self multicastAddressConfigurationEqual:v5])
  {
    dynamicLinkRate = [(WiFiAwareMulticastConfiguration *)self dynamicLinkRate];
    if (dynamicLinkRate == [(WiFiAwareMulticastConfiguration *)v5 dynamicLinkRate])
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
  multicastAddress = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  dynamicLinkRate = [(WiFiAwareMulticastConfiguration *)self dynamicLinkRate];
  v6 = "NO";
  if (dynamicLinkRate)
  {
    v6 = "YES";
  }

  v7 = [v3 stringWithFormat:@"<WiFiAwareMulticastConfiguration: multicastAddress=%@, dynamicLinkRate=%s>", multicastAddress, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WiFiAwareMulticastConfiguration);
  multicastAddress = [(WiFiAwareMulticastConfiguration *)self multicastAddress];
  v6 = [multicastAddress copy];
  [(WiFiAwareMulticastConfiguration *)v4 setMulticastAddress:v6];

  [(WiFiAwareMulticastConfiguration *)v4 setDynamicLinkRate:[(WiFiAwareMulticastConfiguration *)self dynamicLinkRate]];
  return v4;
}

@end