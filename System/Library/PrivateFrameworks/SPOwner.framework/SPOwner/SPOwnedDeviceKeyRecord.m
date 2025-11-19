@interface SPOwnedDeviceKeyRecord
- (SPOwnedDeviceKeyRecord)initWithCoder:(id)a3;
- (SPOwnedDeviceKeyRecord)initWithIdentifier:(id)a3 deviceIdentifier:(id)a4 advertisement:(id)a5 hashedAdvertisement:(id)a6 creationDate:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPOwnedDeviceKeyRecord

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeObject:self->_advertisement forKey:@"advertisement"];
  [v5 encodeObject:self->_hashedAdvertisement forKey:@"hashedAdvertisement"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SPOwnedDeviceKeyRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hashedAdvertisement"];
  hashedAdvertisement = self->_hashedAdvertisement;
  self->_hashedAdvertisement = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];

  creationDate = self->_creationDate;
  self->_creationDate = v13;

  return self;
}

- (SPOwnedDeviceKeyRecord)initWithIdentifier:(id)a3 deviceIdentifier:(id)a4 advertisement:(id)a5 hashedAdvertisement:(id)a6 creationDate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SPOwnedDeviceKeyRecord;
  v17 = [(SPOwnedDeviceKeyRecord *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_deviceIdentifier, a4);
    objc_storeStrong(&v18->_advertisement, a5);
    objc_storeStrong(&v18->_hashedAdvertisement, a6);
    objc_storeStrong(&v18->_creationDate, a7);
  }

  return v18;
}

@end