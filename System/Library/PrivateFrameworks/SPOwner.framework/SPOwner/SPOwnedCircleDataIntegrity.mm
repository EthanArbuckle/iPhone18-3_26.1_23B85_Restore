@interface SPOwnedCircleDataIntegrity
- (SPOwnedCircleDataIntegrity)initWithCircleRecord:(id)a3 beaconRecord:(id)a4 peerTrusts:(id)a5 sharedSecrets:(id)a6 keySyncRecord:(id)a7 observations:(id)a8 itemSharingKey:(id)a9 estimatedLocations:(id)a10;
- (SPOwnedCircleDataIntegrity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPOwnedCircleDataIntegrity

- (SPOwnedCircleDataIntegrity)initWithCircleRecord:(id)a3 beaconRecord:(id)a4 peerTrusts:(id)a5 sharedSecrets:(id)a6 keySyncRecord:(id)a7 observations:(id)a8 itemSharingKey:(id)a9 estimatedLocations:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = SPOwnedCircleDataIntegrity;
  v19 = [(SPOwnedCircleDataIntegrity *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_circleRecord, a3);
    objc_storeStrong(&v20->_beaconRecord, a4);
    objc_storeStrong(&v20->_peerTrusts, a5);
    objc_storeStrong(&v20->_sharedSecrets, a6);
    objc_storeStrong(&v20->_keySyncRecord, a7);
    objc_storeStrong(&v20->_observations, a8);
    objc_storeStrong(&v20->_itemSharingKey, a9);
    objc_storeStrong(&v20->_estimatedLocations, a10);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPOwnedCircleDataIntegrity alloc];
  v5 = [(SPOwnedCircleDataIntegrity *)self circleRecord];
  v6 = [(SPOwnedCircleDataIntegrity *)self beaconRecord];
  v7 = [(SPOwnedCircleDataIntegrity *)self peerTrusts];
  v8 = [(SPOwnedCircleDataIntegrity *)self sharedSecrets];
  v9 = [(SPOwnedCircleDataIntegrity *)self keySyncRecord];
  v10 = [(SPOwnedCircleDataIntegrity *)self observations];
  v11 = [(SPOwnedCircleDataIntegrity *)self itemSharingKey];
  v12 = [(SPOwnedCircleDataIntegrity *)self estimatedLocations];
  v13 = [(SPOwnedCircleDataIntegrity *)v4 initWithCircleRecord:v5 beaconRecord:v6 peerTrusts:v7 sharedSecrets:v8 keySyncRecord:v9 observations:v10 itemSharingKey:v11 estimatedLocations:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  circleRecord = self->_circleRecord;
  v5 = a3;
  [v5 encodeObject:circleRecord forKey:@"circleRecord"];
  [v5 encodeObject:self->_beaconRecord forKey:@"beaconRecord"];
  [v5 encodeObject:self->_peerTrusts forKey:@"peerTrusts"];
  [v5 encodeObject:self->_sharedSecrets forKey:@"sharedSecrets"];
  [v5 encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [v5 encodeObject:self->_observations forKey:@"observations"];
  [v5 encodeObject:self->_itemSharingKey forKey:@"itemSharingKey"];
  [v5 encodeObject:self->_estimatedLocations forKey:@"estimatedLocations"];
}

- (SPOwnedCircleDataIntegrity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"circleRecord"];
  circleRecord = self->_circleRecord;
  self->_circleRecord = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconRecord"];
  beaconRecord = self->_beaconRecord;
  self->_beaconRecord = v7;

  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"peerTrusts"];
  peerTrusts = self->_peerTrusts;
  self->_peerTrusts = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecrets"];
  sharedSecrets = self->_sharedSecrets;
  self->_sharedSecrets = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v13;

  v15 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"observations"];
  observations = self->_observations;
  self->_observations = v15;

  v17 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSharingKey"];
  itemSharingKey = self->_itemSharingKey;
  self->_itemSharingKey = v17;

  v19 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"estimatedLocations"];

  estimatedLocations = self->_estimatedLocations;
  self->_estimatedLocations = v19;

  return self;
}

@end