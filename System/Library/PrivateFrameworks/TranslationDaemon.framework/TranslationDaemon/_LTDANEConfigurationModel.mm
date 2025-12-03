@interface _LTDANEConfigurationModel
- (_LTDANEConfigurationModel)initWithDictionary:(id)dictionary;
- (int64_t)capabilityForSubType:(id)type;
@end

@implementation _LTDANEConfigurationModel

- (_LTDANEConfigurationModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = _LTDANEConfigurationModel;
  v6 = [(_LTDANEConfigurationModel *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_root, dictionary);
    v8 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"FamilyCapability"];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = v8;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v12 = [(NSDictionary *)v11 lt_ensureTypesForKeys:v9 values:v10], v13 = v11, (v12 & 1) == 0))
    {

      v13 = MEMORY[0x277CBEC10];
    }

    capabilities = v7->_capabilities;
    v7->_capabilities = v13;

    v15 = v7;
  }

  return v7;
}

- (int64_t)capabilityForSubType:(id)type
{
  typeCopy = type;
  v5 = [(NSDictionary *)self->_capabilities objectForKeyedSubscript:typeCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_capabilities objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  integerValue = [v6 integerValue];

  return integerValue;
}

@end