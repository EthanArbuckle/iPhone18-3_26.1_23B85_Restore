@interface SPMemberCircleDataIntegrity
- (SPMemberCircleDataIntegrity)initWithCircleRecord:(id)record sharedBeaconRecord:(id)beaconRecord sharedBeaconNameRecord:(id)nameRecord sharedBeaconOwnerName:(id)name peerTrusts:(id)trusts sharedSecrets:(id)secrets keySyncRecord:(id)syncRecord observations:(id)self0 itemSharingKey:(id)self1 estimatedLocations:(id)self2;
- (SPMemberCircleDataIntegrity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPMemberCircleDataIntegrity

- (SPMemberCircleDataIntegrity)initWithCircleRecord:(id)record sharedBeaconRecord:(id)beaconRecord sharedBeaconNameRecord:(id)nameRecord sharedBeaconOwnerName:(id)name peerTrusts:(id)trusts sharedSecrets:(id)secrets keySyncRecord:(id)syncRecord observations:(id)self0 itemSharingKey:(id)self1 estimatedLocations:(id)self2
{
  recordCopy = record;
  obj = beaconRecord;
  beaconRecordCopy = beaconRecord;
  nameRecordCopy = nameRecord;
  nameRecordCopy2 = nameRecord;
  nameCopy = name;
  trustsCopy = trusts;
  trustsCopy2 = trusts;
  secretsCopy = secrets;
  secretsCopy2 = secrets;
  syncRecordCopy = syncRecord;
  observationsCopy = observations;
  keyCopy = key;
  locationsCopy = locations;
  v36.receiver = self;
  v36.super_class = SPMemberCircleDataIntegrity;
  v23 = [(SPMemberCircleDataIntegrity *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_circleRecord, record);
    objc_storeStrong(&v24->_sharedBeaconRecord, obj);
    objc_storeStrong(&v24->_sharedBeaconNameRecord, nameRecordCopy);
    objc_storeStrong(&v24->_sharedBeaconOwnerName, name);
    objc_storeStrong(&v24->_peerTrusts, trustsCopy);
    objc_storeStrong(&v24->_sharedSecrets, secretsCopy);
    objc_storeStrong(&v24->_keySyncRecord, syncRecord);
    objc_storeStrong(&v24->_observations, observations);
    objc_storeStrong(&v24->_itemSharingKey, key);
    objc_storeStrong(&v24->_estimatedLocations, locations);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [SPMemberCircleDataIntegrity alloc];
  circleRecord = [(SPMemberCircleDataIntegrity *)self circleRecord];
  sharedBeaconRecord = [(SPMemberCircleDataIntegrity *)self sharedBeaconRecord];
  sharedBeaconNameRecord = [(SPMemberCircleDataIntegrity *)self sharedBeaconNameRecord];
  sharedBeaconOwnerName = [(SPMemberCircleDataIntegrity *)self sharedBeaconOwnerName];
  peerTrusts = [(SPMemberCircleDataIntegrity *)self peerTrusts];
  sharedSecrets = [(SPMemberCircleDataIntegrity *)self sharedSecrets];
  keySyncRecord = [(SPMemberCircleDataIntegrity *)self keySyncRecord];
  observations = [(SPMemberCircleDataIntegrity *)self observations];
  itemSharingKey = [(SPMemberCircleDataIntegrity *)self itemSharingKey];
  estimatedLocations = [(SPMemberCircleDataIntegrity *)self estimatedLocations];
  v13 = [(SPMemberCircleDataIntegrity *)v16 initWithCircleRecord:circleRecord sharedBeaconRecord:sharedBeaconRecord sharedBeaconNameRecord:sharedBeaconNameRecord sharedBeaconOwnerName:sharedBeaconOwnerName peerTrusts:peerTrusts sharedSecrets:sharedSecrets keySyncRecord:keySyncRecord observations:observations itemSharingKey:itemSharingKey estimatedLocations:estimatedLocations];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  circleRecord = self->_circleRecord;
  coderCopy = coder;
  [coderCopy encodeObject:circleRecord forKey:@"circleRecord"];
  [coderCopy encodeObject:self->_sharedBeaconRecord forKey:@"sharedBeaconRecord"];
  [coderCopy encodeObject:self->_sharedBeaconNameRecord forKey:@"sharedBeaconNameRecord"];
  [coderCopy encodeObject:self->_sharedBeaconOwnerName forKey:@"sharedBeaconOwnerName"];
  [coderCopy encodeObject:self->_peerTrusts forKey:@"peerTrusts"];
  [coderCopy encodeObject:self->_sharedSecrets forKey:@"sharedSecrets"];
  [coderCopy encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [coderCopy encodeObject:self->_observations forKey:@"observations"];
  [coderCopy encodeObject:self->_itemSharingKey forKey:@"itemSharingKey"];
  [coderCopy encodeObject:self->_estimatedLocations forKey:@"estimatedLocations"];
}

- (SPMemberCircleDataIntegrity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"circleRecord"];
  circleRecord = self->_circleRecord;
  self->_circleRecord = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconRecord"];
  sharedBeaconRecord = self->_sharedBeaconRecord;
  self->_sharedBeaconRecord = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconNameRecord"];
  sharedBeaconNameRecord = self->_sharedBeaconNameRecord;
  self->_sharedBeaconNameRecord = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedBeaconOwnerName"];
  sharedBeaconOwnerName = self->_sharedBeaconOwnerName;
  self->_sharedBeaconOwnerName = v11;

  v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"peerTrusts"];
  peerTrusts = self->_peerTrusts;
  self->_peerTrusts = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecrets"];
  sharedSecrets = self->_sharedSecrets;
  self->_sharedSecrets = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v17;

  v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"observations"];
  observations = self->_observations;
  self->_observations = v19;

  v21 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSharingKey"];
  itemSharingKey = self->_itemSharingKey;
  self->_itemSharingKey = v21;

  v23 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"estimatedLocations"];

  estimatedLocations = self->_estimatedLocations;
  self->_estimatedLocations = v23;

  return self;
}

@end