@interface SPUnknownProductInfo
- (SPUnknownProductInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUnknownProductInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  modelName = [(SPUnknownProductInfo *)self modelName];
  v6 = [modelName copy];
  [v4 setModelName:v6];

  manufacturerName = [(SPUnknownProductInfo *)self manufacturerName];
  v8 = [manufacturerName copy];
  [v4 setManufacturerName:v8];

  learnModeMetadata = [(SPUnknownProductInfo *)self learnModeMetadata];
  v10 = [learnModeMetadata copy];
  [v4 setLearnModeMetadata:v10];

  disableMetadata = [(SPUnknownProductInfo *)self disableMetadata];
  v12 = [disableMetadata copy];
  [v4 setDisableMetadata:v12];

  [v4 setCapabilities:{-[SPUnknownProductInfo capabilities](self, "capabilities")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  modelName = self->_modelName;
  coderCopy = coder;
  [coderCopy encodeObject:modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_learnModeMetadata forKey:@"learnModeMetadata"];
  [coderCopy encodeObject:self->_disableMetadata forKey:@"disableMetadata"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [coderCopy encodeObject:v6 forKey:@"capabilities"];
}

- (SPUnknownProductInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learnModeMetadata"];
  learnModeMetadata = self->_learnModeMetadata;
  self->_learnModeMetadata = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disableMetadata"];
  disableMetadata = self->_disableMetadata;
  self->_disableMetadata = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];

  self->_capabilities = [v13 unsignedIntegerValue];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  manufacturerName = [(SPUnknownProductInfo *)self manufacturerName];
  modelName = [(SPUnknownProductInfo *)self modelName];
  v7 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@>", v4, self, manufacturerName, modelName];

  return v7;
}

@end