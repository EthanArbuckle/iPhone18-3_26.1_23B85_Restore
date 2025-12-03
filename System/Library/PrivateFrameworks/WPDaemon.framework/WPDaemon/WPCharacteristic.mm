@interface WPCharacteristic
- (WPCharacteristic)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WPCharacteristic

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(WPCharacteristic *)self uuid];
  data = [(WPCharacteristic *)self data];
  v6 = [v3 stringWithFormat:@"characteristic with uuid %@ and data %@", uuid, data];

  return v6;
}

- (WPCharacteristic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WPCharacteristic;
  v5 = [(WPCharacteristic *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_properties = [coderCopy decodeIntegerForKey:@"kCharacteristicProperties"];
    v5->_permissions = [coderCopy decodeIntegerForKey:@"kAttributePermissions"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kData"];
    data = v5->_data;
    v5->_data = v8;

    v5->_writeType = [coderCopy decodeIntegerForKey:@"kWriteType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(WPCharacteristic *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"kUUID"];

  [coderCopy encodeInteger:-[WPCharacteristic properties](self forKey:{"properties"), @"kCharacteristicProperties"}];
  [coderCopy encodeInteger:-[WPCharacteristic permissions](self forKey:{"permissions"), @"kAttributePermissions"}];
  data = [(WPCharacteristic *)self data];
  [coderCopy encodeObject:data forKey:@"kData"];

  [coderCopy encodeInteger:-[WPCharacteristic writeType](self forKey:{"writeType"), @"kWriteType"}];
}

@end