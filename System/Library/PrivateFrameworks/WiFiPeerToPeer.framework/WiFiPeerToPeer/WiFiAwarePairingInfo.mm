@interface WiFiAwarePairingInfo
- (WiFiAwarePairingInfo)initWithCoder:(id)coder;
- (WiFiAwarePairingInfo)initWithPeerDeviceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WiFiAwarePairingInfo

- (WiFiAwarePairingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairingMetadata.peerDeviceName"];

  v6 = [(WiFiAwarePairingInfo *)self initWithPeerDeviceName:v5];
  return v6;
}

- (WiFiAwarePairingInfo)initWithPeerDeviceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = WiFiAwarePairingInfo;
  v6 = [(WiFiAwarePairingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerDeviceName, name);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  peerDeviceName = [(WiFiAwarePairingInfo *)selfCopy peerDeviceName];
  v5 = [(WiFiAwarePairingInfo *)selfCopy initWithPeerDeviceName:peerDeviceName];

  return v5;
}

@end