@interface PKTrustedDeviceEnrollmentInfo
- (PKTrustedDeviceEnrollmentInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTrustedDeviceEnrollmentInfo

- (PKTrustedDeviceEnrollmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKTrustedDeviceEnrollmentInfo;
  v5 = [(PKTrustedDeviceEnrollmentInfo *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSerialNumber"];
    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v14;

    v5->_supportsAccessExpressMode = [coderCopy decodeBoolForKey:@"supportsAccessExpressMode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_deviceSerialNumber forKey:@"deviceSerialNumber"];
  [coderCopy encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeBool:self->_supportsAccessExpressMode forKey:@"supportsAccessExpressMode"];
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