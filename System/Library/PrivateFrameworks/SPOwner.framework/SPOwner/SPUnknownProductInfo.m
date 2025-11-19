@interface SPUnknownProductInfo
- (SPUnknownProductInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUnknownProductInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPUnknownProductInfo *)self modelName];
  v6 = [v5 copy];
  [v4 setModelName:v6];

  v7 = [(SPUnknownProductInfo *)self manufacturerName];
  v8 = [v7 copy];
  [v4 setManufacturerName:v8];

  v9 = [(SPUnknownProductInfo *)self learnModeMetadata];
  v10 = [v9 copy];
  [v4 setLearnModeMetadata:v10];

  v11 = [(SPUnknownProductInfo *)self disableMetadata];
  v12 = [v11 copy];
  [v4 setDisableMetadata:v12];

  [v4 setCapabilities:{-[SPUnknownProductInfo capabilities](self, "capabilities")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  modelName = self->_modelName;
  v5 = a3;
  [v5 encodeObject:modelName forKey:@"modelName"];
  [v5 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v5 encodeObject:self->_learnModeMetadata forKey:@"learnModeMetadata"];
  [v5 encodeObject:self->_disableMetadata forKey:@"disableMetadata"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [v5 encodeObject:v6 forKey:@"capabilities"];
}

- (SPUnknownProductInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnModeMetadata"];
  learnModeMetadata = self->_learnModeMetadata;
  self->_learnModeMetadata = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disableMetadata"];
  disableMetadata = self->_disableMetadata;
  self->_disableMetadata = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];

  self->_capabilities = [v13 unsignedIntegerValue];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPUnknownProductInfo *)self manufacturerName];
  v6 = [(SPUnknownProductInfo *)self modelName];
  v7 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@>", v4, self, v5, v6];

  return v7;
}

@end