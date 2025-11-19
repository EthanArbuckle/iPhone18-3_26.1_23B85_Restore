@interface SPRawAccessoryMetadata
- (SPRawAccessoryMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRawAccessoryMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPRawAccessoryMetadata);
  v5 = [(SPRawAccessoryMetadata *)self productData];
  v6 = [v5 copy];
  [(SPRawAccessoryMetadata *)v4 setProductData:v6];

  v7 = [(SPRawAccessoryMetadata *)self manufacturerName];
  v8 = [v7 copy];
  [(SPRawAccessoryMetadata *)v4 setManufacturerName:v8];

  v9 = [(SPRawAccessoryMetadata *)self modelName];
  v10 = [v9 copy];
  [(SPRawAccessoryMetadata *)v4 setModelName:v10];

  v11 = [(SPRawAccessoryMetadata *)self reserved];
  v12 = [v11 copy];
  [(SPRawAccessoryMetadata *)v4 setReserved:v12];

  v13 = [(SPRawAccessoryMetadata *)self accessoryCategory];
  v14 = [v13 copy];
  [(SPRawAccessoryMetadata *)v4 setAccessoryCategory:v14];

  v15 = [(SPRawAccessoryMetadata *)self accessoryCapabilities];
  v16 = [v15 copy];
  [(SPRawAccessoryMetadata *)v4 setAccessoryCapabilities:v16];

  v17 = [(SPRawAccessoryMetadata *)self firmwareVersion];
  v18 = [v17 copy];
  [(SPRawAccessoryMetadata *)v4 setFirmwareVersion:v18];

  v19 = [(SPRawAccessoryMetadata *)self findMyVersion];
  v20 = [v19 copy];
  [(SPRawAccessoryMetadata *)v4 setFindMyVersion:v20];

  v21 = [(SPRawAccessoryMetadata *)self batteryType];
  v22 = [v21 copy];
  [(SPRawAccessoryMetadata *)v4 setBatteryType:v22];

  v23 = [(SPRawAccessoryMetadata *)self batteryLevel];
  v24 = [v23 copy];
  [(SPRawAccessoryMetadata *)v4 setBatteryLevel:v24];

  v25 = [(SPRawAccessoryMetadata *)self protocolVersion];
  v26 = [v25 copy];
  [(SPRawAccessoryMetadata *)v4 setProtocolVersion:v26];

  v27 = [(SPRawAccessoryMetadata *)self networkId];
  v28 = [v27 copy];
  [(SPRawAccessoryMetadata *)v4 setNetworkId:v28];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  productData = self->_productData;
  v5 = a3;
  [v5 encodeObject:productData forKey:@"productData"];
  [v5 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v5 encodeObject:self->_modelName forKey:@"modelName"];
  [v5 encodeObject:self->_reserved forKey:@"reserved"];
  [v5 encodeObject:self->_accessoryCategory forKey:@"accessoryCategory"];
  [v5 encodeObject:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [v5 encodeObject:self->_findMyVersion forKey:@"findMyVersion"];
  [v5 encodeObject:self->_batteryType forKey:@"batteryType"];
  [v5 encodeObject:self->_batteryLevel forKey:@"batteryLevel"];
  [v5 encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [v5 encodeObject:self->_networkId forKey:@"networkId"];
}

- (SPRawAccessoryMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productData"];
  productData = self->_productData;
  self->_productData = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  reserved = self->_reserved;
  self->_reserved = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryCategory"];
  accessoryCategory = self->_accessoryCategory;
  self->_accessoryCategory = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryCapabilities"];
  accessoryCapabilities = self->_accessoryCapabilities;
  self->_accessoryCapabilities = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyVersion"];
  findMyVersion = self->_findMyVersion;
  self->_findMyVersion = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryType"];
  batteryType = self->_batteryType;
  self->_batteryType = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevel"];
  batteryLevel = self->_batteryLevel;
  self->_batteryLevel = v23;

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v25;

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkId"];

  networkId = self->_networkId;
  self->_networkId = v27;

  return self;
}

@end