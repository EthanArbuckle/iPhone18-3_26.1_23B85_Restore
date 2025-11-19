@interface RMModelStatusSchemaManagedSetting
+ (id)parseJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToManagedSetting:(id)a3;
- (RMModelStatusSchemaManagedSetting)initWithManagedSetting:(id)a3 valueType:(id)a4 invertBoolean:(BOOL)a5;
@end

@implementation RMModelStatusSchemaManagedSetting

- (RMModelStatusSchemaManagedSetting)initWithManagedSetting:(id)a3 valueType:(id)a4 invertBoolean:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RMModelStatusSchemaManagedSetting;
  v11 = [(RMModelStatusSchemaManagedSetting *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_managedSettingKey, a3);
    objc_storeStrong(&v12->_valueType, a4);
    v12->_invertBoolean = a5;
  }

  return v12;
}

+ (id)parseJSON:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchemaManagedSetting parseJSON:parentSchema:];
    }

    goto LABEL_7;
  }

  v4 = [v3 objectForKeyedSubscript:@"setting"];
  v5 = [v3 objectForKeyedSubscript:@"type"];
  v6 = [v3 objectForKeyedSubscript:@"invert-BOOLean"];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"invert-BOOLean"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [RMModelSharedDefinitions allowedValueType:v5])
  {
    v9 = [[RMModelStatusSchemaManagedSetting alloc] initWithManagedSetting:v4 valueType:v5 invertBoolean:v8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchemaManagedSetting parseJSON:parentSchema:];
    }

    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelStatusSchemaManagedSetting *)self isEqualToManagedSetting:v4];
  }

  return v5;
}

- (BOOL)isEqualToManagedSetting:(id)a3
{
  v4 = a3;
  v5 = [(RMModelStatusSchemaManagedSetting *)self managedSettingKey];
  v6 = [v4 managedSettingKey];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMModelStatusSchemaManagedSetting *)self valueType];
    v8 = [v4 valueType];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(RMModelStatusSchemaManagedSetting *)self invertBoolean];
      v10 = v9 ^ [v4 invertBoolean] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end