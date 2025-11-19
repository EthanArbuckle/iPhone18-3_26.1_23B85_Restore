@interface WiFiAwarePairingMetadata
- (WiFiAwarePairingMetadata)initWithBundleID:(id)a3 selfPairingName:(id)a4 peerDeviceName:(id)a5 storageClass:(int64_t)a6 lifetime:(double)a7 pairingClient:(int64_t)a8;
- (WiFiAwarePairingMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePairingMetadata

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"WiFiAwarePairingMetadata.bundldeID"];
  [v5 encodeObject:self->_selfPairingName forKey:@"WiFiAwarePairingMetadata.selfPairingName"];
  [v5 encodeObject:self->_peerDeviceName forKey:@"WiFiAwarePairingMetadata.peerDeviceName"];
  [v5 encodeInteger:self->_storageClass forKey:@"WiFiAwarePairingMetadata.storageClass"];
  [v5 encodeDouble:@"WiFiAwarePairingMetadata.lifetime" forKey:self->_lifetime];
  [v5 encodeInteger:self->_pairingClient forKey:@"WiFiAwarePairingMetadata.pairingClient"];
}

- (WiFiAwarePairingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"WiFiAwarePairingMetadata.bundldeID"];
  v6 = [v4 decodeObjectForKey:@"WiFiAwarePairingMetadata.selfPairingName"];
  v7 = [v4 decodeObjectForKey:@"WiFiAwarePairingMetadata.peerDeviceName"];
  v8 = [v4 decodeIntegerForKey:@"WiFiAwarePairingMetadata.storageClass"];
  [v4 decodeDoubleForKey:@"WiFiAwarePairingMetadata.lifetime"];
  v10 = v9;
  v11 = [v4 decodeIntegerForKey:@"WiFiAwarePairingMetadata.pairingClient"];

  v12 = [(WiFiAwarePairingMetadata *)self initWithBundleID:v5 selfPairingName:v6 peerDeviceName:v7 storageClass:v8 lifetime:v11 pairingClient:v10];
  return v12;
}

- (WiFiAwarePairingMetadata)initWithBundleID:(id)a3 selfPairingName:(id)a4 peerDeviceName:(id)a5 storageClass:(int64_t)a6 lifetime:(double)a7 pairingClient:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a7 <= 0.0 && a6 == 2 || a8 == 0)
  {
    v20 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = WiFiAwarePairingMetadata;
    v21 = [(WiFiAwarePairingMetadata *)&v24 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_bundleID, a3);
      objc_storeStrong(&v22->_selfPairingName, a4);
      objc_storeStrong(&v22->_peerDeviceName, a5);
      v22->_storageClass = a6;
      v22->_lifetime = a7;
      v22->_pairingClient = a8;
    }

    self = v22;
    v20 = self;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(WiFiAwarePairingMetadata *)v3 bundleID];
  v5 = [(WiFiAwarePairingMetadata *)v3 selfPairingName];
  v6 = [(WiFiAwarePairingMetadata *)v3 peerDeviceName];
  v7 = [(WiFiAwarePairingMetadata *)v3 storageClass];
  [(WiFiAwarePairingMetadata *)v3 lifetime];
  v9 = [(WiFiAwarePairingMetadata *)v3 initWithBundleID:v4 selfPairingName:v5 peerDeviceName:v6 storageClass:v7 lifetime:[(WiFiAwarePairingMetadata *)v3 pairingClient] pairingClient:v8];

  return v9;
}

@end