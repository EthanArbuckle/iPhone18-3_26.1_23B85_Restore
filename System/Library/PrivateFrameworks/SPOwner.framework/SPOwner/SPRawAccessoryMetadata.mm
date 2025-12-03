@interface SPRawAccessoryMetadata
- (SPRawAccessoryMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRawAccessoryMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPRawAccessoryMetadata);
  productData = [(SPRawAccessoryMetadata *)self productData];
  v6 = [productData copy];
  [(SPRawAccessoryMetadata *)v4 setProductData:v6];

  manufacturerName = [(SPRawAccessoryMetadata *)self manufacturerName];
  v8 = [manufacturerName copy];
  [(SPRawAccessoryMetadata *)v4 setManufacturerName:v8];

  modelName = [(SPRawAccessoryMetadata *)self modelName];
  v10 = [modelName copy];
  [(SPRawAccessoryMetadata *)v4 setModelName:v10];

  reserved = [(SPRawAccessoryMetadata *)self reserved];
  v12 = [reserved copy];
  [(SPRawAccessoryMetadata *)v4 setReserved:v12];

  accessoryCategory = [(SPRawAccessoryMetadata *)self accessoryCategory];
  v14 = [accessoryCategory copy];
  [(SPRawAccessoryMetadata *)v4 setAccessoryCategory:v14];

  accessoryCapabilities = [(SPRawAccessoryMetadata *)self accessoryCapabilities];
  v16 = [accessoryCapabilities copy];
  [(SPRawAccessoryMetadata *)v4 setAccessoryCapabilities:v16];

  firmwareVersion = [(SPRawAccessoryMetadata *)self firmwareVersion];
  v18 = [firmwareVersion copy];
  [(SPRawAccessoryMetadata *)v4 setFirmwareVersion:v18];

  findMyVersion = [(SPRawAccessoryMetadata *)self findMyVersion];
  v20 = [findMyVersion copy];
  [(SPRawAccessoryMetadata *)v4 setFindMyVersion:v20];

  batteryType = [(SPRawAccessoryMetadata *)self batteryType];
  v22 = [batteryType copy];
  [(SPRawAccessoryMetadata *)v4 setBatteryType:v22];

  batteryLevel = [(SPRawAccessoryMetadata *)self batteryLevel];
  v24 = [batteryLevel copy];
  [(SPRawAccessoryMetadata *)v4 setBatteryLevel:v24];

  protocolVersion = [(SPRawAccessoryMetadata *)self protocolVersion];
  v26 = [protocolVersion copy];
  [(SPRawAccessoryMetadata *)v4 setProtocolVersion:v26];

  networkId = [(SPRawAccessoryMetadata *)self networkId];
  v28 = [networkId copy];
  [(SPRawAccessoryMetadata *)v4 setNetworkId:v28];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  productData = self->_productData;
  coderCopy = coder;
  [coderCopy encodeObject:productData forKey:@"productData"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_reserved forKey:@"reserved"];
  [coderCopy encodeObject:self->_accessoryCategory forKey:@"accessoryCategory"];
  [coderCopy encodeObject:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeObject:self->_findMyVersion forKey:@"findMyVersion"];
  [coderCopy encodeObject:self->_batteryType forKey:@"batteryType"];
  [coderCopy encodeObject:self->_batteryLevel forKey:@"batteryLevel"];
  [coderCopy encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [coderCopy encodeObject:self->_networkId forKey:@"networkId"];
}

- (SPRawAccessoryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productData"];
  productData = self->_productData;
  self->_productData = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  reserved = self->_reserved;
  self->_reserved = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryCategory"];
  accessoryCategory = self->_accessoryCategory;
  self->_accessoryCategory = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryCapabilities"];
  accessoryCapabilities = self->_accessoryCapabilities;
  self->_accessoryCapabilities = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyVersion"];
  findMyVersion = self->_findMyVersion;
  self->_findMyVersion = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryType"];
  batteryType = self->_batteryType;
  self->_batteryType = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevel"];
  batteryLevel = self->_batteryLevel;
  self->_batteryLevel = v23;

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v25;

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkId"];

  networkId = self->_networkId;
  self->_networkId = v27;

  return self;
}

@end