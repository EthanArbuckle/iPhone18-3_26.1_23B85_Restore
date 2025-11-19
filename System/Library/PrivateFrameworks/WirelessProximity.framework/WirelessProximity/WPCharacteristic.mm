@interface WPCharacteristic
- (WPCharacteristic)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WPCharacteristic

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WPCharacteristic *)self uuid];
  v5 = [(WPCharacteristic *)self data];
  v6 = [v3 stringWithFormat:@"characteristic with uuid %@ and data %@", v4, v5];

  return v6;
}

- (WPCharacteristic)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WPCharacteristic;
  v5 = [(WPCharacteristic *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_properties = [v4 decodeIntegerForKey:@"kCharacteristicProperties"];
    v5->_permissions = [v4 decodeIntegerForKey:@"kAttributePermissions"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kData"];
    data = v5->_data;
    v5->_data = v8;

    v5->_writeType = [v4 decodeIntegerForKey:@"kWriteType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WPCharacteristic *)self uuid];
  [v6 encodeObject:v4 forKey:@"kUUID"];

  [v6 encodeInteger:-[WPCharacteristic properties](self forKey:{"properties"), @"kCharacteristicProperties"}];
  [v6 encodeInteger:-[WPCharacteristic permissions](self forKey:{"permissions"), @"kAttributePermissions"}];
  v5 = [(WPCharacteristic *)self data];
  [v6 encodeObject:v5 forKey:@"kData"];

  [v6 encodeInteger:-[WPCharacteristic writeType](self forKey:{"writeType"), @"kWriteType"}];
}

@end