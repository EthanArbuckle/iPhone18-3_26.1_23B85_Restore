@interface WiFiAwareFastDiscoveryConfiguration
- (BOOL)isEqual:(id)a3;
- (WiFiAwareFastDiscoveryConfiguration)init;
- (WiFiAwareFastDiscoveryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareFastDiscoveryConfiguration

- (WiFiAwareFastDiscoveryConfiguration)init
{
  v6.receiver = self;
  v6.super_class = WiFiAwareFastDiscoveryConfiguration;
  v2 = [(WiFiAwareFastDiscoveryConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    instantCommunicationChannel = v2->_instantCommunicationChannel;
    v2->_instantCommunicationChannel = 0;

    v3->_peerBandInformation = 0;
  }

  return v3;
}

- (WiFiAwareFastDiscoveryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareFastDiscoveryConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareFastDiscoveryConfiguration.instantCommunicationChannel"];
    [(WiFiAwareFastDiscoveryConfiguration *)v5 setInstantCommunicationChannel:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareFastDiscoveryConfiguration.peerBandInformation"];
    -[WiFiAwareFastDiscoveryConfiguration setPeerBandInformation:](v5, "setPeerBandInformation:", [v7 unsignedCharValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  [v4 encodeObject:v5 forKey:@"WiFiAwareFastDiscoveryConfiguration.instantCommunicationChannel"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareFastDiscoveryConfiguration peerBandInformation](self, "peerBandInformation")}];
  [v4 encodeObject:v6 forKey:@"WiFiAwareFastDiscoveryConfiguration.peerBandInformation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WiFiAwareFastDiscoveryConfiguration);
  v5 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  v6 = [v5 copy];
  [(WiFiAwareFastDiscoveryConfiguration *)v4 setInstantCommunicationChannel:v6];

  [(WiFiAwareFastDiscoveryConfiguration *)v4 setPeerBandInformation:[(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v7 = 0;
LABEL_11:
    v10 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
    v9 = [(WiFiAwareFastDiscoveryConfiguration *)v7 instantCommunicationChannel];
    if (v8 != v9)
    {
      v3 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
      v4 = [(WiFiAwareFastDiscoveryConfiguration *)v7 instantCommunicationChannel];
      if (![v3 isEqual:v4])
      {

LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }
    }

    v11 = [(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation];
    v12 = [(WiFiAwareFastDiscoveryConfiguration *)v7 peerBandInformation];
    if (v8 != v9)
    {
    }

    if (v11 != v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v7 = 0;
LABEL_13:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation];
  v5 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  v6 = [v3 stringWithFormat:@"<enabled (peer band: %u, channel: %@)>", v4, v5];

  return v6;
}

@end