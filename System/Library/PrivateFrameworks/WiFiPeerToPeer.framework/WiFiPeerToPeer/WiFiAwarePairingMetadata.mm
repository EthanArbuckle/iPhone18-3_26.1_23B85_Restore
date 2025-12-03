@interface WiFiAwarePairingMetadata
- (WiFiAwarePairingMetadata)initWithBundleID:(id)d selfPairingName:(id)name peerDeviceName:(id)deviceName storageClass:(int64_t)class lifetime:(double)lifetime pairingClient:(int64_t)client;
- (WiFiAwarePairingMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePairingMetadata

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"WiFiAwarePairingMetadata.bundldeID"];
  [coderCopy encodeObject:self->_selfPairingName forKey:@"WiFiAwarePairingMetadata.selfPairingName"];
  [coderCopy encodeObject:self->_peerDeviceName forKey:@"WiFiAwarePairingMetadata.peerDeviceName"];
  [coderCopy encodeInteger:self->_storageClass forKey:@"WiFiAwarePairingMetadata.storageClass"];
  [coderCopy encodeDouble:@"WiFiAwarePairingMetadata.lifetime" forKey:self->_lifetime];
  [coderCopy encodeInteger:self->_pairingClient forKey:@"WiFiAwarePairingMetadata.pairingClient"];
}

- (WiFiAwarePairingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"WiFiAwarePairingMetadata.bundldeID"];
  v6 = [coderCopy decodeObjectForKey:@"WiFiAwarePairingMetadata.selfPairingName"];
  v7 = [coderCopy decodeObjectForKey:@"WiFiAwarePairingMetadata.peerDeviceName"];
  v8 = [coderCopy decodeIntegerForKey:@"WiFiAwarePairingMetadata.storageClass"];
  [coderCopy decodeDoubleForKey:@"WiFiAwarePairingMetadata.lifetime"];
  v10 = v9;
  v11 = [coderCopy decodeIntegerForKey:@"WiFiAwarePairingMetadata.pairingClient"];

  v12 = [(WiFiAwarePairingMetadata *)self initWithBundleID:v5 selfPairingName:v6 peerDeviceName:v7 storageClass:v8 lifetime:v11 pairingClient:v10];
  return v12;
}

- (WiFiAwarePairingMetadata)initWithBundleID:(id)d selfPairingName:(id)name peerDeviceName:(id)deviceName storageClass:(int64_t)class lifetime:(double)lifetime pairingClient:(int64_t)client
{
  dCopy = d;
  nameCopy = name;
  deviceNameCopy = deviceName;
  if (lifetime <= 0.0 && class == 2 || client == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = WiFiAwarePairingMetadata;
    v21 = [(WiFiAwarePairingMetadata *)&v24 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_bundleID, d);
      objc_storeStrong(&v22->_selfPairingName, name);
      objc_storeStrong(&v22->_peerDeviceName, deviceName);
      v22->_storageClass = class;
      v22->_lifetime = lifetime;
      v22->_pairingClient = client;
    }

    self = v22;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  bundleID = [(WiFiAwarePairingMetadata *)selfCopy bundleID];
  selfPairingName = [(WiFiAwarePairingMetadata *)selfCopy selfPairingName];
  peerDeviceName = [(WiFiAwarePairingMetadata *)selfCopy peerDeviceName];
  storageClass = [(WiFiAwarePairingMetadata *)selfCopy storageClass];
  [(WiFiAwarePairingMetadata *)selfCopy lifetime];
  v9 = [(WiFiAwarePairingMetadata *)selfCopy initWithBundleID:bundleID selfPairingName:selfPairingName peerDeviceName:peerDeviceName storageClass:storageClass lifetime:[(WiFiAwarePairingMetadata *)selfCopy pairingClient] pairingClient:v8];

  return v9;
}

@end