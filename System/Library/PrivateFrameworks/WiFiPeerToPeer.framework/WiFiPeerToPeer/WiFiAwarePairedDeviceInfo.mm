@interface WiFiAwarePairedDeviceInfo
- (WiFiAwarePairedDeviceInfo)initWithCoder:(id)coder;
- (WiFiAwarePairedDeviceInfo)initWithName:(id)name pairingName:(id)pairingName vendorName:(id)vendorName modelName:(id)modelName attributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePairedDeviceInfo

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"WiFiAwarePairedDeviceInfo.name"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceID];
  [coderCopy encodeObject:v5 forKey:@"WiFiAwarePairedDeviceInfo.deviceID"];

  [coderCopy encodeObject:self->_pairingName forKey:@"WiFiAwarePairedDeviceInfo.pairingName"];
  [coderCopy encodeObject:self->_vendorName forKey:@"WiFiAwarePairedDeviceInfo.vendorName"];
  [coderCopy encodeObject:self->_modelName forKey:@"WiFiAwarePairedDeviceInfo.modelName"];
  [coderCopy encodeObject:self->_attributes forKey:@"WiFiAwarePairedDeviceInfo.attributes"];
}

- (WiFiAwarePairedDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.deviceID"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.pairingName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.vendorName"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.modelName"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePairedDeviceInfo.attributes"];

  v12 = [(WiFiAwarePairedDeviceInfo *)self initWithName:v5 pairingName:v8 vendorName:v9 modelName:v10 attributes:v11];
  [(WiFiAwarePairedDeviceInfo *)v12 setDeviceID:unsignedIntegerValue];

  return v12;
}

- (WiFiAwarePairedDeviceInfo)initWithName:(id)name pairingName:(id)pairingName vendorName:(id)vendorName modelName:(id)modelName attributes:(id)attributes
{
  nameCopy = name;
  pairingNameCopy = pairingName;
  vendorNameCopy = vendorName;
  modelNameCopy = modelName;
  attributesCopy = attributes;
  name = self->_name;
  self->_name = nameCopy;
  v18 = nameCopy;

  pairingName = self->_pairingName;
  self->_pairingName = pairingNameCopy;
  v20 = pairingNameCopy;

  vendorName = self->_vendorName;
  self->_vendorName = vendorNameCopy;
  v22 = vendorNameCopy;

  modelName = self->_modelName;
  self->_modelName = modelNameCopy;
  v24 = modelNameCopy;

  attributes = self->_attributes;
  self->_attributes = attributesCopy;

  return self;
}

@end