@interface PRRemoteDevice
- (BOOL)compareField:(id)a3 to:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PRRemoteDevice)initWithBTAdvAddress:(id)a3;
- (PRRemoteDevice)initWithBeaconUUID:(id)a3;
- (PRRemoteDevice)initWithCoder:(id)a3;
- (PRRemoteDevice)initWithCompanionUUID:(id)a3;
- (PRRemoteDevice)initWithRoseMACAddress:(id)a3;
- (PRRemoteDevice)initWithTestCompanionBtAdvAddress:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRemoteDevice

- (PRRemoteDevice)initWithBTAdvAddress:(id)a3
{
  v6 = a3;
  if ([v6 length] != 6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:22 description:@"btAdvAddress must be kBtAdvAddressByteLength bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_btAdvAddress, a3);
    v8->_deviceType = 4;
  }

  return v8;
}

- (PRRemoteDevice)initWithTestCompanionBtAdvAddress:(id)a3
{
  v6 = a3;
  if ([v6 length] != 6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:34 description:@"btAdvAddress must be kBtAdvAddressByteLength bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_btAdvAddress, a3);
    v8->_deviceType = 2;
  }

  return v8;
}

- (PRRemoteDevice)initWithCompanionUUID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_UUID, a3);
    v8->_deviceType = 3;
  }

  return v8;
}

- (PRRemoteDevice)initWithBeaconUUID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_UUID, a3);
    v8->_deviceType = 5;
  }

  return v8;
}

- (PRRemoteDevice)initWithRoseMACAddress:(id)a3
{
  v6 = a3;
  if ([v6 length] != 8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRemoteDevice.mm" lineNumber:70 description:@"roseMACAddress must be kRoseMacAddressLen bytes long."];
  }

  v11.receiver = self;
  v11.super_class = PRRemoteDevice;
  v7 = [(PRRemoteDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_roseMACAddress, a3);
    v8->_deviceType = 1;
  }

  return v8;
}

- (PRRemoteDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PRRemoteDevice;
  v5 = [(PRRemoteDevice *)&v13 init];
  if (v5)
  {
    v5->_deviceType = [v4 decodeIntegerForKey:@"deviceTypeKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"btAdvAddressKey"];
    btAdvAddress = v5->_btAdvAddress;
    v5->_btAdvAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roseMACAddressKey"];
    roseMACAddress = v5->_roseMACAddress;
    v5->_roseMACAddress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUIDKey"];
    UUID = v5->_UUID;
    v5->_UUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_deviceType forKey:@"deviceTypeKey"];
  [v4 encodeObject:self->_btAdvAddress forKey:@"btAdvAddressKey"];
  [v4 encodeObject:self->_roseMACAddress forKey:@"roseMACAddressKey"];
  [v4 encodeObject:self->_UUID forKey:@"UUIDKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRRemoteDevice allocWithZone:a3];
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

- (BOOL)compareField:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 isEqual:v5];
  }

  else
  {
    v8 = (v5 | v6) == 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 deviceType];
    v7 = [(PRRemoteDevice *)self deviceType];
    v8 = [v5 btAdvAddress];
    v9 = [(PRRemoteDevice *)self btAdvAddress];
    v10 = [(PRRemoteDevice *)self compareField:v8 to:v9];

    v11 = [v5 roseMACAddress];
    v12 = [(PRRemoteDevice *)self roseMACAddress];
    LOBYTE(v9) = [(PRRemoteDevice *)self compareField:v11 to:v12];

    v13 = [v5 UUID];
    v14 = [(PRRemoteDevice *)self UUID];
    v15 = [(PRRemoteDevice *)self compareField:v13 to:v14];

    v16 = (v6 == v7) & v10 & v9 & v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end