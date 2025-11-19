@interface WiFiAwarePairingInfo
- (WiFiAwarePairingInfo)initWithCoder:(id)a3;
- (WiFiAwarePairingInfo)initWithPeerDeviceName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WiFiAwarePairingInfo

- (WiFiAwarePairingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairingMetadata.peerDeviceName"];

  v6 = [(WiFiAwarePairingInfo *)self initWithPeerDeviceName:v5];
  return v6;
}

- (WiFiAwarePairingInfo)initWithPeerDeviceName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WiFiAwarePairingInfo;
  v6 = [(WiFiAwarePairingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerDeviceName, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(WiFiAwarePairingInfo *)v3 peerDeviceName];
  v5 = [(WiFiAwarePairingInfo *)v3 initWithPeerDeviceName:v4];

  return v5;
}

@end