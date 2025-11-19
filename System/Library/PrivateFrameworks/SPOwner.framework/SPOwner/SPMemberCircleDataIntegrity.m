@interface SPMemberCircleDataIntegrity
- (SPMemberCircleDataIntegrity)initWithCircleRecord:(id)a3 sharedBeaconRecord:(id)a4 sharedBeaconNameRecord:(id)a5 sharedBeaconOwnerName:(id)a6 peerTrusts:(id)a7 sharedSecrets:(id)a8 keySyncRecord:(id)a9 observations:(id)a10 itemSharingKey:(id)a11 estimatedLocations:(id)a12;
- (SPMemberCircleDataIntegrity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPMemberCircleDataIntegrity

- (SPMemberCircleDataIntegrity)initWithCircleRecord:(id)a3 sharedBeaconRecord:(id)a4 sharedBeaconNameRecord:(id)a5 sharedBeaconOwnerName:(id)a6 peerTrusts:(id)a7 sharedSecrets:(id)a8 keySyncRecord:(id)a9 observations:(id)a10 itemSharingKey:(id)a11 estimatedLocations:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = SPMemberCircleDataIntegrity;
  v23 = [(SPMemberCircleDataIntegrity *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_circleRecord, a3);
    objc_storeStrong(&v24->_sharedBeaconRecord, obj);
    objc_storeStrong(&v24->_sharedBeaconNameRecord, v27);
    objc_storeStrong(&v24->_sharedBeaconOwnerName, a6);
    objc_storeStrong(&v24->_peerTrusts, v28);
    objc_storeStrong(&v24->_sharedSecrets, v29);
    objc_storeStrong(&v24->_keySyncRecord, a9);
    objc_storeStrong(&v24->_observations, a10);
    objc_storeStrong(&v24->_itemSharingKey, a11);
    objc_storeStrong(&v24->_estimatedLocations, a12);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [SPMemberCircleDataIntegrity alloc];
  v15 = [(SPMemberCircleDataIntegrity *)self circleRecord];
  v4 = [(SPMemberCircleDataIntegrity *)self sharedBeaconRecord];
  v5 = [(SPMemberCircleDataIntegrity *)self sharedBeaconNameRecord];
  v6 = [(SPMemberCircleDataIntegrity *)self sharedBeaconOwnerName];
  v7 = [(SPMemberCircleDataIntegrity *)self peerTrusts];
  v8 = [(SPMemberCircleDataIntegrity *)self sharedSecrets];
  v9 = [(SPMemberCircleDataIntegrity *)self keySyncRecord];
  v10 = [(SPMemberCircleDataIntegrity *)self observations];
  v11 = [(SPMemberCircleDataIntegrity *)self itemSharingKey];
  v12 = [(SPMemberCircleDataIntegrity *)self estimatedLocations];
  v13 = [(SPMemberCircleDataIntegrity *)v16 initWithCircleRecord:v15 sharedBeaconRecord:v4 sharedBeaconNameRecord:v5 sharedBeaconOwnerName:v6 peerTrusts:v7 sharedSecrets:v8 keySyncRecord:v9 observations:v10 itemSharingKey:v11 estimatedLocations:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  circleRecord = self->_circleRecord;
  v5 = a3;
  [v5 encodeObject:circleRecord forKey:@"circleRecord"];
  [v5 encodeObject:self->_sharedBeaconRecord forKey:@"sharedBeaconRecord"];
  [v5 encodeObject:self->_sharedBeaconNameRecord forKey:@"sharedBeaconNameRecord"];
  [v5 encodeObject:self->_sharedBeaconOwnerName forKey:@"sharedBeaconOwnerName"];
  [v5 encodeObject:self->_peerTrusts forKey:@"peerTrusts"];
  [v5 encodeObject:self->_sharedSecrets forKey:@"sharedSecrets"];
  [v5 encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [v5 encodeObject:self->_observations forKey:@"observations"];
  [v5 encodeObject:self->_itemSharingKey forKey:@"itemSharingKey"];
  [v5 encodeObject:self->_estimatedLocations forKey:@"estimatedLocations"];
}

- (SPMemberCircleDataIntegrity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"circleRecord"];
  circleRecord = self->_circleRecord;
  self->_circleRecord = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconRecord"];
  sharedBeaconRecord = self->_sharedBeaconRecord;
  self->_sharedBeaconRecord = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconNameRecord"];
  sharedBeaconNameRecord = self->_sharedBeaconNameRecord;
  self->_sharedBeaconNameRecord = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconOwnerName"];
  sharedBeaconOwnerName = self->_sharedBeaconOwnerName;
  self->_sharedBeaconOwnerName = v11;

  v13 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"peerTrusts"];
  peerTrusts = self->_peerTrusts;
  self->_peerTrusts = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecrets"];
  sharedSecrets = self->_sharedSecrets;
  self->_sharedSecrets = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v17;

  v19 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"observations"];
  observations = self->_observations;
  self->_observations = v19;

  v21 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSharingKey"];
  itemSharingKey = self->_itemSharingKey;
  self->_itemSharingKey = v21;

  v23 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"estimatedLocations"];

  estimatedLocations = self->_estimatedLocations;
  self->_estimatedLocations = v23;

  return self;
}

@end