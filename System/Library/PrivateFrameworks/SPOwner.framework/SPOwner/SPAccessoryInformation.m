@interface SPAccessoryInformation
- (SPAccessoryInformation)initWithCoder:(id)a3;
- (SPAccessoryInformation)initWithProductData:(id)a3 manufacturerName:(id)a4 modelName:(id)a5 firmwareVersion:(id)a6 protocolVersion:(id)a7 accessoryCategory:(unint64_t)a8 accessoryCapabilities:(unsigned int)a9 batteryType:(unsigned __int8)a10 batteryState:(unsigned __int8)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAccessoryInformation

- (SPAccessoryInformation)initWithProductData:(id)a3 manufacturerName:(id)a4 modelName:(id)a5 firmwareVersion:(id)a6 protocolVersion:(id)a7 accessoryCategory:(unint64_t)a8 accessoryCapabilities:(unsigned int)a9 batteryType:(unsigned __int8)a10 batteryState:(unsigned __int8)a11
{
  v18 = a3;
  v19 = a4;
  v25 = a5;
  v24 = a6;
  v20 = a7;
  v26.receiver = self;
  v26.super_class = SPAccessoryInformation;
  v21 = [(SPAccessoryInformation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_productData, a3);
    objc_storeStrong(&v22->_manufacturerName, a4);
    objc_storeStrong(&v22->_modelName, a5);
    objc_storeStrong(&v22->_firmwareVersion, a6);
    objc_storeStrong(&v22->_protocolVersion, a7);
    v22->_accessoryCategory = a8;
    v22->_accessoryCapabilities = a9;
    v22->_batteryType = a10;
    v22->_batteryState = a11;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPAccessoryInformation alloc];
  WORD2(v6) = *&self->_batteryType;
  LODWORD(v6) = self->_accessoryCapabilities;
  return [SPAccessoryInformation initWithProductData:v4 manufacturerName:"initWithProductData:manufacturerName:modelName:firmwareVersion:protocolVersion:accessoryCategory:accessoryCapabilities:batteryType:batteryState:" modelName:self->_productData firmwareVersion:self->_manufacturerName protocolVersion:self->_modelName accessoryCategory:self->_firmwareVersion accessoryCapabilities:self->_protocolVersion batteryType:self->_accessoryCategory batteryState:v6];
}

- (void)encodeWithCoder:(id)a3
{
  productData = self->_productData;
  v5 = a3;
  [v5 encodeObject:productData forKey:@"productData"];
  [v5 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v5 encodeObject:self->_modelName forKey:@"modelName"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [v5 encodeObject:self->_protocolVersion forKey:@"protocolVersion"];
  [v5 encodeInt64:self->_accessoryCategory forKey:@"accessoryCategory"];
  [v5 encodeInt32:self->_accessoryCapabilities forKey:@"accessoryCapabilities"];
  [v5 encodeInt32:self->_batteryType forKey:@"batteryType"];
  [v5 encodeInt32:self->_batteryState forKey:@"batteryState"];
}

- (SPAccessoryInformation)initWithCoder:(id)a3
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

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v13;

  self->_accessoryCategory = [v4 decodeInt64ForKey:@"accessoryCategory"];
  self->_accessoryCapabilities = [v4 decodeInt32ForKey:@"accessoryCapabilities"];
  self->_batteryType = [v4 decodeInt32ForKey:@"batteryType"];
  v15 = [v4 decodeInt32ForKey:@"batteryState"];

  self->_batteryState = v15;
  return self;
}

@end