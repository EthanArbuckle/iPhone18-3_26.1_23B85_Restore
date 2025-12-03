@interface SPOwnedCircleDataIntegrity
- (SPOwnedCircleDataIntegrity)initWithCircleRecord:(id)record beaconRecord:(id)beaconRecord peerTrusts:(id)trusts sharedSecrets:(id)secrets keySyncRecord:(id)syncRecord observations:(id)observations itemSharingKey:(id)key estimatedLocations:(id)self0;
- (SPOwnedCircleDataIntegrity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOwnedCircleDataIntegrity

- (SPOwnedCircleDataIntegrity)initWithCircleRecord:(id)record beaconRecord:(id)beaconRecord peerTrusts:(id)trusts sharedSecrets:(id)secrets keySyncRecord:(id)syncRecord observations:(id)observations itemSharingKey:(id)key estimatedLocations:(id)self0
{
  recordCopy = record;
  beaconRecordCopy = beaconRecord;
  trustsCopy = trusts;
  secretsCopy = secrets;
  syncRecordCopy = syncRecord;
  observationsCopy = observations;
  keyCopy = key;
  locationsCopy = locations;
  v28.receiver = self;
  v28.super_class = SPOwnedCircleDataIntegrity;
  v19 = [(SPOwnedCircleDataIntegrity *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_circleRecord, record);
    objc_storeStrong(&v20->_beaconRecord, beaconRecord);
    objc_storeStrong(&v20->_peerTrusts, trusts);
    objc_storeStrong(&v20->_sharedSecrets, secrets);
    objc_storeStrong(&v20->_keySyncRecord, syncRecord);
    objc_storeStrong(&v20->_observations, observations);
    objc_storeStrong(&v20->_itemSharingKey, key);
    objc_storeStrong(&v20->_estimatedLocations, locations);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPOwnedCircleDataIntegrity alloc];
  circleRecord = [(SPOwnedCircleDataIntegrity *)self circleRecord];
  beaconRecord = [(SPOwnedCircleDataIntegrity *)self beaconRecord];
  peerTrusts = [(SPOwnedCircleDataIntegrity *)self peerTrusts];
  sharedSecrets = [(SPOwnedCircleDataIntegrity *)self sharedSecrets];
  keySyncRecord = [(SPOwnedCircleDataIntegrity *)self keySyncRecord];
  observations = [(SPOwnedCircleDataIntegrity *)self observations];
  itemSharingKey = [(SPOwnedCircleDataIntegrity *)self itemSharingKey];
  estimatedLocations = [(SPOwnedCircleDataIntegrity *)self estimatedLocations];
  v13 = [(SPOwnedCircleDataIntegrity *)v4 initWithCircleRecord:circleRecord beaconRecord:beaconRecord peerTrusts:peerTrusts sharedSecrets:sharedSecrets keySyncRecord:keySyncRecord observations:observations itemSharingKey:itemSharingKey estimatedLocations:estimatedLocations];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  circleRecord = self->_circleRecord;
  coderCopy = coder;
  [coderCopy encodeObject:circleRecord forKey:@"circleRecord"];
  [coderCopy encodeObject:self->_beaconRecord forKey:@"beaconRecord"];
  [coderCopy encodeObject:self->_peerTrusts forKey:@"peerTrusts"];
  [coderCopy encodeObject:self->_sharedSecrets forKey:@"sharedSecrets"];
  [coderCopy encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [coderCopy encodeObject:self->_observations forKey:@"observations"];
  [coderCopy encodeObject:self->_itemSharingKey forKey:@"itemSharingKey"];
  [coderCopy encodeObject:self->_estimatedLocations forKey:@"estimatedLocations"];
}

- (SPOwnedCircleDataIntegrity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"circleRecord"];
  circleRecord = self->_circleRecord;
  self->_circleRecord = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconRecord"];
  beaconRecord = self->_beaconRecord;
  self->_beaconRecord = v7;

  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"peerTrusts"];
  peerTrusts = self->_peerTrusts;
  self->_peerTrusts = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecrets"];
  sharedSecrets = self->_sharedSecrets;
  self->_sharedSecrets = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v13;

  v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"observations"];
  observations = self->_observations;
  self->_observations = v15;

  v17 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSharingKey"];
  itemSharingKey = self->_itemSharingKey;
  self->_itemSharingKey = v17;

  v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"estimatedLocations"];

  estimatedLocations = self->_estimatedLocations;
  self->_estimatedLocations = v19;

  return self;
}

@end