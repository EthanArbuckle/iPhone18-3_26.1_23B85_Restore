@interface WiFiAwarePairedDeviceInfo
- (WiFiAwarePairedDeviceInfo)initWithCoder:(id)a3;
- (WiFiAwarePairedDeviceInfo)initWithName:(id)a3 pairingName:(id)a4 vendorName:(id)a5 modelName:(id)a6 attributes:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePairedDeviceInfo

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"WiFiAwarePairedDeviceInfo.name"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceID];
  [v6 encodeObject:v5 forKey:@"WiFiAwarePairedDeviceInfo.deviceID"];

  [v6 encodeObject:self->_pairingName forKey:@"WiFiAwarePairedDeviceInfo.pairingName"];
  [v6 encodeObject:self->_vendorName forKey:@"WiFiAwarePairedDeviceInfo.vendorName"];
  [v6 encodeObject:self->_modelName forKey:@"WiFiAwarePairedDeviceInfo.modelName"];
  [v6 encodeObject:self->_attributes forKey:@"WiFiAwarePairedDeviceInfo.attributes"];
}

- (WiFiAwarePairedDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.deviceID"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.pairingName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.vendorName"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.modelName"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.attributes"];

  v12 = [(WiFiAwarePairedDeviceInfo *)self initWithName:v5 pairingName:v8 vendorName:v9 modelName:v10 attributes:v11];
  [(WiFiAwarePairedDeviceInfo *)v12 setDeviceID:v7];

  return v12;
}

- (WiFiAwarePairedDeviceInfo)initWithName:(id)a3 pairingName:(id)a4 vendorName:(id)a5 modelName:(id)a6 attributes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  name = self->_name;
  self->_name = v12;
  v18 = v12;

  pairingName = self->_pairingName;
  self->_pairingName = v13;
  v20 = v13;

  vendorName = self->_vendorName;
  self->_vendorName = v14;
  v22 = v14;

  modelName = self->_modelName;
  self->_modelName = v15;
  v24 = v15;

  attributes = self->_attributes;
  self->_attributes = v16;

  return self;
}

@end