@interface PKTrustedDeviceEnrollmentInfo
- (PKTrustedDeviceEnrollmentInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTrustedDeviceEnrollmentInfo

- (PKTrustedDeviceEnrollmentInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKTrustedDeviceEnrollmentInfo;
  v5 = [(PKTrustedDeviceEnrollmentInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSerialNumber"];
    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v14;

    v5->_supportsAccessExpressMode = [v4 decodeBoolForKey:@"supportsAccessExpressMode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_deviceSerialNumber forKey:@"deviceSerialNumber"];
  [v5 encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [v5 encodeBool:self->_supportsAccessExpressMode forKey:@"supportsAccessExpressMode"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PKTrustedDeviceEnrollmentInfo;
  v4 = [(PKTrustedDeviceEnrollmentInfo *)&v9 description];
  v5 = v4;
  if (self->_supportsAccessExpressMode)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"[%@ Device Name: %@, Serial Number: %@, UDID: %@, Product Type: %@, Secure Element Idetifier: %@, Supports Access Express Mode: %@]", v4, *&self->_deviceName, *&self->_deviceUDID, self->_secureElementIdentifier, v6];

  return v7;
}

@end