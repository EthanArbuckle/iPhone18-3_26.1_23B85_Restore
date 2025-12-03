@interface SPOwnedDeviceKeyRecord
- (SPOwnedDeviceKeyRecord)initWithCoder:(id)coder;
- (SPOwnedDeviceKeyRecord)initWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier advertisement:(id)advertisement hashedAdvertisement:(id)hashedAdvertisement creationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOwnedDeviceKeyRecord

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_advertisement forKey:@"advertisement"];
  [coderCopy encodeObject:self->_hashedAdvertisement forKey:@"hashedAdvertisement"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SPOwnedDeviceKeyRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashedAdvertisement"];
  hashedAdvertisement = self->_hashedAdvertisement;
  self->_hashedAdvertisement = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];

  creationDate = self->_creationDate;
  self->_creationDate = v13;

  return self;
}

- (SPOwnedDeviceKeyRecord)initWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier advertisement:(id)advertisement hashedAdvertisement:(id)hashedAdvertisement creationDate:(id)date
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  advertisementCopy = advertisement;
  hashedAdvertisementCopy = hashedAdvertisement;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = SPOwnedDeviceKeyRecord;
  v17 = [(SPOwnedDeviceKeyRecord *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_deviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v18->_advertisement, advertisement);
    objc_storeStrong(&v18->_hashedAdvertisement, hashedAdvertisement);
    objc_storeStrong(&v18->_creationDate, date);
  }

  return v18;
}

@end