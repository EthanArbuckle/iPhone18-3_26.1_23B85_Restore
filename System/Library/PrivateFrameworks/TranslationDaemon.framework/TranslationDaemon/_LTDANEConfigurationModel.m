@interface _LTDANEConfigurationModel
- (_LTDANEConfigurationModel)initWithDictionary:(id)a3;
- (int64_t)capabilityForSubType:(id)a3;
@end

@implementation _LTDANEConfigurationModel

- (_LTDANEConfigurationModel)initWithDictionary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _LTDANEConfigurationModel;
  v6 = [(_LTDANEConfigurationModel *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_root, a3);
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

- (int64_t)capabilityForSubType:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_capabilities objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_capabilities objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v8 = [v6 integerValue];

  return v8;
}

@end