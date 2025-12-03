@interface SPDiscoveredAccessoryMetadata
- (SPDiscoveredAccessoryMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDiscoveredAccessoryMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  productData = [(SPDiscoveredAccessoryMetadata *)self productData];
  v6 = [productData copy];
  [v4 setProductData:v6];

  manufacturerName = [(SPDiscoveredAccessoryMetadata *)self manufacturerName];
  v8 = [manufacturerName copy];
  [v4 setManufacturerName:v8];

  modelName = [(SPDiscoveredAccessoryMetadata *)self modelName];
  v10 = [modelName copy];
  [v4 setModelName:v10];

  firmwareVersion = [(SPDiscoveredAccessoryMetadata *)self firmwareVersion];
  v12 = [firmwareVersion copy];
  [v4 setFirmwareVersion:v12];

  findMyVersion = [(SPDiscoveredAccessoryMetadata *)self findMyVersion];
  v14 = [findMyVersion copy];
  [v4 setFindMyVersion:v14];

  protocolVersion = [(SPDiscoveredAccessoryMetadata *)self protocolVersion];
  v16 = [protocolVersion copy];
  [v4 setProtocolVersion:v16];

  [v4 setAccessoryCategory:{-[SPDiscoveredAccessoryMetadata accessoryCategory](self, "accessoryCategory")}];
  [v4 setAccessoryCapabilities:{-[SPDiscoveredAccessoryMetadata accessoryCapabilities](self, "accessoryCapabilities")}];
  [v4 setBatteryType:{-[SPDiscoveredAccessoryMetadata batteryType](self, "batteryType")}];
  [v4 setBatteryState:{-[SPDiscoveredAccessoryMetadata batteryState](self, "batteryState")}];
  [v4 setCapabilities:{-[SPDiscoveredAccessoryMetadata capabilities](self, "capabilities")}];
  rawMetadata = [(SPDiscoveredAccessoryMetadata *)self rawMetadata];
  [v4 setRawMetadata:rawMetadata];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  productData = self->_productData;
  coderCopy = coder;
  [coderCopy encodeObject:productData forKey:@"productData"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeObject:self->_findMyVersion forKey:@"findMyVersion"];
  [coderCopy encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [coderCopy encodeInt64:self->_accessoryCategory forKey:@"accessoryCategory"];
  [coderCopy encodeInt32:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [coderCopy encodeInt32:self->_batteryType forKey:@"batteryType"];
  [coderCopy encodeInt32:self->_batteryState forKey:@"batteryState"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [coderCopy encodeObject:v5 forKey:@"capabilities"];

  [coderCopy encodeObject:self->_rawMetadata forKey:@"rawMetadata"];
}

- (SPDiscoveredAccessoryMetadata)initWithCoder:(id)coder
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

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyVersion"];
  findMyVersion = self->_findMyVersion;
  self->_findMyVersion = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v15;

  self->_accessoryCategory = [coderCopy decodeInt64ForKey:@"accessoryCategory"];
  self->_accessoryCapabilities = [coderCopy decodeInt32ForKey:@"accessoryCapabilities"];
  self->_batteryType = [coderCopy decodeInt32ForKey:@"batteryType"];
  self->_batteryState = [coderCopy decodeInt32ForKey:@"batteryState"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v17 unsignedIntegerValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawMetadata"];

  rawMetadata = self->_rawMetadata;
  self->_rawMetadata = v18;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  manufacturerName = [(SPDiscoveredAccessoryMetadata *)self manufacturerName];
  modelName = [(SPDiscoveredAccessoryMetadata *)self modelName];
  firmwareVersion = [(SPDiscoveredAccessoryMetadata *)self firmwareVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@ fwVersion: %@ capabilities: %u>", v4, self, manufacturerName, modelName, firmwareVersion, -[SPDiscoveredAccessoryMetadata accessoryCapabilities](self, "accessoryCapabilities")];

  return v8;
}

@end