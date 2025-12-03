@interface WiFiAwareFastDiscoveryConfiguration
- (BOOL)isEqual:(id)equal;
- (WiFiAwareFastDiscoveryConfiguration)init;
- (WiFiAwareFastDiscoveryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (WiFiAwareFastDiscoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WiFiAwareFastDiscoveryConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareFastDiscoveryConfiguration.instantCommunicationChannel"];
    [(WiFiAwareFastDiscoveryConfiguration *)v5 setInstantCommunicationChannel:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareFastDiscoveryConfiguration.peerBandInformation"];
    -[WiFiAwareFastDiscoveryConfiguration setPeerBandInformation:](v5, "setPeerBandInformation:", [v7 unsignedCharValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  instantCommunicationChannel = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  [coderCopy encodeObject:instantCommunicationChannel forKey:@"WiFiAwareFastDiscoveryConfiguration.instantCommunicationChannel"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareFastDiscoveryConfiguration peerBandInformation](self, "peerBandInformation")}];
  [coderCopy encodeObject:v6 forKey:@"WiFiAwareFastDiscoveryConfiguration.peerBandInformation"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WiFiAwareFastDiscoveryConfiguration);
  instantCommunicationChannel = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  v6 = [instantCommunicationChannel copy];
  [(WiFiAwareFastDiscoveryConfiguration *)v4 setInstantCommunicationChannel:v6];

  [(WiFiAwareFastDiscoveryConfiguration *)v4 setPeerBandInformation:[(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 0;
LABEL_11:
    v10 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    instantCommunicationChannel = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
    instantCommunicationChannel2 = [(WiFiAwareFastDiscoveryConfiguration *)v7 instantCommunicationChannel];
    if (instantCommunicationChannel != instantCommunicationChannel2)
    {
      instantCommunicationChannel3 = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
      instantCommunicationChannel4 = [(WiFiAwareFastDiscoveryConfiguration *)v7 instantCommunicationChannel];
      if (![instantCommunicationChannel3 isEqual:instantCommunicationChannel4])
      {

LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }
    }

    peerBandInformation = [(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation];
    peerBandInformation2 = [(WiFiAwareFastDiscoveryConfiguration *)v7 peerBandInformation];
    if (instantCommunicationChannel != instantCommunicationChannel2)
    {
    }

    if (peerBandInformation != peerBandInformation2)
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
  peerBandInformation = [(WiFiAwareFastDiscoveryConfiguration *)self peerBandInformation];
  instantCommunicationChannel = [(WiFiAwareFastDiscoveryConfiguration *)self instantCommunicationChannel];
  v6 = [v3 stringWithFormat:@"<enabled (peer band: %u, channel: %@)>", peerBandInformation, instantCommunicationChannel];

  return v6;
}

@end