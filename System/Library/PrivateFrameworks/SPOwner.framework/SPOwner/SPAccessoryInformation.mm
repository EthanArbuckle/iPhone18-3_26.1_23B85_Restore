@interface SPAccessoryInformation
- (SPAccessoryInformation)initWithCoder:(id)coder;
- (SPAccessoryInformation)initWithProductData:(id)data manufacturerName:(id)name modelName:(id)modelName firmwareVersion:(id)version protocolVersion:(id)protocolVersion accessoryCategory:(unint64_t)category accessoryCapabilities:(unsigned int)capabilities batteryType:(unsigned __int8)self0 batteryState:(unsigned __int8)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAccessoryInformation

- (SPAccessoryInformation)initWithProductData:(id)data manufacturerName:(id)name modelName:(id)modelName firmwareVersion:(id)version protocolVersion:(id)protocolVersion accessoryCategory:(unint64_t)category accessoryCapabilities:(unsigned int)capabilities batteryType:(unsigned __int8)self0 batteryState:(unsigned __int8)self1
{
  dataCopy = data;
  nameCopy = name;
  modelNameCopy = modelName;
  versionCopy = version;
  protocolVersionCopy = protocolVersion;
  v26.receiver = self;
  v26.super_class = SPAccessoryInformation;
  v21 = [(SPAccessoryInformation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_productData, data);
    objc_storeStrong(&v22->_manufacturerName, name);
    objc_storeStrong(&v22->_modelName, modelName);
    objc_storeStrong(&v22->_firmwareVersion, version);
    objc_storeStrong(&v22->_protocolVersion, protocolVersion);
    v22->_accessoryCategory = category;
    v22->_accessoryCapabilities = capabilities;
    v22->_batteryType = type;
    v22->_batteryState = state;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAccessoryInformation alloc];
  WORD2(v6) = *&self->_batteryType;
  LODWORD(v6) = self->_accessoryCapabilities;
  return [SPAccessoryInformation initWithProductData:v4 manufacturerName:"initWithProductData:manufacturerName:modelName:firmwareVersion:protocolVersion:accessoryCategory:accessoryCapabilities:batteryType:batteryState:" modelName:self->_productData firmwareVersion:self->_manufacturerName protocolVersion:self->_modelName accessoryCategory:self->_firmwareVersion accessoryCapabilities:self->_protocolVersion batteryType:self->_accessoryCategory batteryState:v6];
}

- (void)encodeWithCoder:(id)coder
{
  productData = self->_productData;
  coderCopy = coder;
  [coderCopy encodeObject:productData forKey:@"productData"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [coderCopy encodeInt64:self->_accessoryCategory forKey:@"accessoryCategory"];
  [coderCopy encodeInt32:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [coderCopy encodeInt32:self->_batteryType forKey:@"batteryType"];
  [coderCopy encodeInt32:self->_batteryState forKey:@"batteryState"];
}

- (SPAccessoryInformation)initWithCoder:(id)coder
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

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v13;

  self->_accessoryCategory = [coderCopy decodeInt64ForKey:@"accessoryCategory"];
  self->_accessoryCapabilities = [coderCopy decodeInt32ForKey:@"accessoryCapabilities"];
  self->_batteryType = [coderCopy decodeInt32ForKey:@"batteryType"];
  v15 = [coderCopy decodeInt32ForKey:@"batteryState"];

  self->_batteryState = v15;
  return self;
}

@end