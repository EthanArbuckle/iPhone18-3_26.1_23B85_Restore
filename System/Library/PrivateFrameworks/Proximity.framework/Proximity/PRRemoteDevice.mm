@interface PRRemoteDevice
- (BOOL)compareField:(id)field to:(id)to;
- (BOOL)isEqual:(id)equal;
- (PRRemoteDevice)initWithBTAdvAddress:(id)address;
- (PRRemoteDevice)initWithBeaconUUID:(id)d;
- (PRRemoteDevice)initWithCoder:(id)coder;
- (PRRemoteDevice)initWithCompanionUUID:(id)d;
- (PRRemoteDevice)initWithRoseMACAddress:(id)address;
- (PRRemoteDevice)initWithTestCompanionBtAdvAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRRemoteDevice

- (PRRemoteDevice)initWithBTAdvAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length] != 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:22 description:@"btAdvAddress must be kBtAdvAddressByteLength bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_btAdvAddress, address);
    v8->_deviceType = 4;
  }

  return v8;
}

- (PRRemoteDevice)initWithTestCompanionBtAdvAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length] != 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:34 description:@"btAdvAddress must be kBtAdvAddressByteLength bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_btAdvAddress, address);
    v8->_deviceType = 2;
  }

  return v8;
}

- (PRRemoteDevice)initWithCompanionUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_UUID, d);
    v8->_deviceType = 3;
  }

  return v8;
}

- (PRRemoteDevice)initWithBeaconUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_UUID, d);
    v8->_deviceType = 5;
  }

  return v8;
}

- (PRRemoteDevice)initWithRoseMACAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length] != 8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:70 description:@"roseMACAddress must be kRoseMacAddressLen bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_roseMACAddress, address);
    v8->_deviceType = 1;
  }

  return v8;
}

- (PRRemoteDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PRRemoteDevice;
  v5 = [(PRRemoteDevice *)&v13 init];
  if (v5)
  {
    v5->_deviceType = [coderCopy decodeIntegerForKey:@"deviceTypeKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"btAdvAddressKey"];
    btAdvAddress = v5->_btAdvAddress;
    v5->_btAdvAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roseMACAddressKey"];
    roseMACAddress = v5->_roseMACAddress;
    v5->_roseMACAddress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUIDKey"];
    UUID = v5->_UUID;
    v5->_UUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceTypeKey"];
  [coderCopy encodeObject:self->_btAdvAddress forKey:@"btAdvAddressKey"];
  [coderCopy encodeObject:self->_roseMACAddress forKey:@"roseMACAddressKey"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUIDKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRRemoteDevice allocWithZone:zone];
  [(PRRemoteDevice *)v4 setDeviceType:self->_deviceType];
  [(PRRemoteDevice *)v4 setBtAdvAddress:self->_btAdvAddress];
  [(PRRemoteDevice *)v4 setRoseMACAddress:self->_roseMACAddress];
  [(PRRemoteDevice *)v4 setUUID:self->_UUID];
  return v4;
}

- (id)description
{
  deviceType = self->_deviceType;
  if (deviceType > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2788F3D00[deviceType];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"RemoteDevice. Type: %@, BT Adv Address: %@, Rose MAC Address: %@, Companion UUID: %@", v5, self->_btAdvAddress, self->_roseMACAddress, self->_UUID, v2];

  return v6;
}

- (BOOL)compareField:(id)field to:(id)to
{
  fieldCopy = field;
  toCopy = to;
  v7 = toCopy;
  if (fieldCopy && toCopy)
  {
    v8 = [toCopy isEqual:fieldCopy];
  }

  else
  {
    v8 = (fieldCopy | toCopy) == 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceType = [v5 deviceType];
    deviceType2 = [(PRRemoteDevice *)self deviceType];
    btAdvAddress = [v5 btAdvAddress];
    btAdvAddress2 = [(PRRemoteDevice *)self btAdvAddress];
    v10 = [(PRRemoteDevice *)self compareField:btAdvAddress to:btAdvAddress2];

    roseMACAddress = [v5 roseMACAddress];
    roseMACAddress2 = [(PRRemoteDevice *)self roseMACAddress];
    LOBYTE(btAdvAddress2) = [(PRRemoteDevice *)self compareField:roseMACAddress to:roseMACAddress2];

    uUID = [v5 UUID];
    uUID2 = [(PRRemoteDevice *)self UUID];
    v15 = [(PRRemoteDevice *)self compareField:uUID to:uUID2];

    v16 = (deviceType == deviceType2) & v10 & btAdvAddress2 & v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end