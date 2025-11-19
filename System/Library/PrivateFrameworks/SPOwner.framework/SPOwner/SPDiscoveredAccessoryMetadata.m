@interface SPDiscoveredAccessoryMetadata
- (SPDiscoveredAccessoryMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDiscoveredAccessoryMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPDiscoveredAccessoryMetadata *)self productData];
  v6 = [v5 copy];
  [v4 setProductData:v6];

  v7 = [(SPDiscoveredAccessoryMetadata *)self manufacturerName];
  v8 = [v7 copy];
  [v4 setManufacturerName:v8];

  v9 = [(SPDiscoveredAccessoryMetadata *)self modelName];
  v10 = [v9 copy];
  [v4 setModelName:v10];

  v11 = [(SPDiscoveredAccessoryMetadata *)self firmwareVersion];
  v12 = [v11 copy];
  [v4 setFirmwareVersion:v12];

  v13 = [(SPDiscoveredAccessoryMetadata *)self findMyVersion];
  v14 = [v13 copy];
  [v4 setFindMyVersion:v14];

  v15 = [(SPDiscoveredAccessoryMetadata *)self protocolVersion];
  v16 = [v15 copy];
  [v4 setProtocolVersion:v16];

  [v4 setAccessoryCategory:{-[SPDiscoveredAccessoryMetadata accessoryCategory](self, "accessoryCategory")}];
  [v4 setAccessoryCapabilities:{-[SPDiscoveredAccessoryMetadata accessoryCapabilities](self, "accessoryCapabilities")}];
  [v4 setBatteryType:{-[SPDiscoveredAccessoryMetadata batteryType](self, "batteryType")}];
  [v4 setBatteryState:{-[SPDiscoveredAccessoryMetadata batteryState](self, "batteryState")}];
  [v4 setCapabilities:{-[SPDiscoveredAccessoryMetadata capabilities](self, "capabilities")}];
  v17 = [(SPDiscoveredAccessoryMetadata *)self rawMetadata];
  [v4 setRawMetadata:v17];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  productData = self->_productData;
  v6 = a3;
  [v6 encodeObject:productData forKey:@"productData"];
  [v6 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v6 encodeObject:self->_modelName forKey:@"modelName"];
  [v6 encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [v6 encodeObject:self->_findMyVersion forKey:@"findMyVersion"];
  [v6 encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [v6 encodeInt64:self->_accessoryCategory forKey:@"accessoryCategory"];
  [v6 encodeInt32:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [v6 encodeInt32:self->_batteryType forKey:@"batteryType"];
  [v6 encodeInt32:self->_batteryState forKey:@"batteryState"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [v6 encodeObject:v5 forKey:@"capabilities"];

  [v6 encodeObject:self->_rawMetadata forKey:@"rawMetadata"];
}

- (SPDiscoveredAccessoryMetadata)initWithCoder:(id)a3
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

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyVersion"];
  findMyVersion = self->_findMyVersion;
  self->_findMyVersion = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v15;

  self->_accessoryCategory = [v4 decodeInt64ForKey:@"accessoryCategory"];
  self->_accessoryCapabilities = [v4 decodeInt32ForKey:@"accessoryCapabilities"];
  self->_batteryType = [v4 decodeInt32ForKey:@"batteryType"];
  self->_batteryState = [v4 decodeInt32ForKey:@"batteryState"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v17 unsignedIntegerValue];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawMetadata"];

  rawMetadata = self->_rawMetadata;
  self->_rawMetadata = v18;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPDiscoveredAccessoryMetadata *)self manufacturerName];
  v6 = [(SPDiscoveredAccessoryMetadata *)self modelName];
  v7 = [(SPDiscoveredAccessoryMetadata *)self firmwareVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@ fwVersion: %@ capabilities: %u>", v4, self, v5, v6, v7, -[SPDiscoveredAccessoryMetadata accessoryCapabilities](self, "accessoryCapabilities")];

  return v8;
}

@end