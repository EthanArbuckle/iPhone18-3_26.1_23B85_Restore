@interface W5PeerDiscoveryConfiguration
- (W5PeerDiscoveryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5PeerDiscoveryConfiguration

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v4 = W5DescriptionForPeerDiscoveryFlags([(W5PeerDiscoveryConfiguration *)self discoveryFlags]);
  v5 = W5DescriptionForPeerControlFlags([(W5PeerDiscoveryConfiguration *)self controlFlags]);
  [v3 appendFormat:@"Discovery='%@' Control='%@'", v4, v5];

  v6 = [v3 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5PeerDiscoveryConfiguration allocWithZone:?]];
  [(W5PeerDiscoveryConfiguration *)v4 setDiscoveryFlags:self->_discoveryFlags];
  [(W5PeerDiscoveryConfiguration *)v4 setControlFlags:self->_controlFlags];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  controlFlags = self->_controlFlags;
  coderCopy = coder;
  [coderCopy encodeInteger:controlFlags forKey:@"_controlFlags"];
  [coderCopy encodeInteger:self->_discoveryFlags forKey:@"_discoveryFlags"];
}

- (W5PeerDiscoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = W5PeerDiscoveryConfiguration;
  v5 = [(W5PeerDiscoveryConfiguration *)&v7 init];
  if (v5)
  {
    v5->_controlFlags = [coderCopy decodeIntegerForKey:@"_controlFlags"];
    v5->_discoveryFlags = [coderCopy decodeIntegerForKey:@"_discoveryFlags"];
  }

  return v5;
}

@end