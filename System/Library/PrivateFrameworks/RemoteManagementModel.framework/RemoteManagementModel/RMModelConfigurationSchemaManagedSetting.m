@interface RMModelConfigurationSchemaManagedSetting
+ (id)parseJSON:(id)a3 parentSchema:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToManagedSetting:(id)a3;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (RMModelConfigurationSchema)parentSchema;
- (RMModelConfigurationSchemaManagedSetting)initWithManagedSetting:(id)a3 keyPath:(id)a4 valueType:(id)a5 invertBoolean:(BOOL)a6 managedSettingScope:(id)a7 supportedOSOverride:(id)a8 parentSchema:(id)a9;
@end

@implementation RMModelConfigurationSchemaManagedSetting

- (RMModelConfigurationSchemaManagedSetting)initWithManagedSetting:(id)a3 keyPath:(id)a4 valueType:(id)a5 invertBoolean:(BOOL)a6 managedSettingScope:(id)a7 supportedOSOverride:(id)a8 parentSchema:(id)a9
{
  v24 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = RMModelConfigurationSchemaManagedSetting;
  v19 = [(RMModelConfigurationSchemaManagedSetting *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_managedSettingKey, a3);
    objc_storeStrong(&v20->_keyPath, a4);
    objc_storeStrong(&v20->_valueType, a5);
    v20->_invertBoolean = a6;
    objc_storeStrong(&v20->_managedSettingScope, a7);
    objc_storeStrong(&v20->_supportedOS, a8);
    objc_storeWeak(&v20->_parentSchema, v18);
  }

  return v20;
}

+ (id)parseJSON:(id)a3 parentSchema:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_19;
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

  v7 = [v5 objectForKeyedSubscript:@"setting"];
  v8 = [v5 objectForKeyedSubscript:@"key-path"];
  v9 = [v5 objectForKeyedSubscript:@"type"];
  v10 = [v5 objectForKeyedSubscript:@"invert-BOOLean"];
  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"invert-BOOLean"];
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v14 = [v5 objectForKeyedSubscript:@"scope"];
  v15 = [v5 objectForKeyedSubscript:@"supported-os"];
  v16 = [RMModelSchemaParser loadSupportedOSFromDictionary:v15];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && [RMModelSharedDefinitions allowedValueType:v9]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [[RMModelConfigurationSchemaManagedSetting alloc] initWithManagedSetting:v7 keyPath:v8 valueType:v9 invertBoolean:v12 managedSettingScope:v14 supportedOSOverride:v16 parentSchema:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchemaManagedSetting parseJSON:parentSchema:];
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
  LOBYTE(a5) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 enrollmentType:a5 supportedOS:v8];

  return a5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelConfigurationSchemaManagedSetting *)self isEqualToManagedSetting:v4];
  }

  return v5;
}

- (BOOL)isEqualToManagedSetting:(id)a3
{
  v4 = a3;
  v5 = [(RMModelConfigurationSchemaManagedSetting *)self managedSettingKey];
  v6 = [v4 managedSettingKey];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMModelConfigurationSchemaManagedSetting *)self keyPath];
    v8 = [v4 keyPath];
    if (![v7 isEqualToString:v8])
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v9 = [(RMModelConfigurationSchemaManagedSetting *)self valueType];
    v10 = [v4 valueType];
    if (![v9 isEqualToString:v10] || (v11 = -[RMModelConfigurationSchemaManagedSetting invertBoolean](self, "invertBoolean"), v11 != objc_msgSend(v4, "invertBoolean")))
    {
      v12 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v13 = [(RMModelConfigurationSchemaManagedSetting *)self managedSettingScope];
    v14 = [v4 managedSettingScope];
    if (![v13 isEqualToString:v14])
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v23 = [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
    if (v23 || ([v4 supportedOS], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
      v15 = v21 = v14;
      [v4 supportedOS];
      v16 = v22 = v13;
      v12 = [v15 isEqual:v16];

      v13 = v22;
      v14 = v21;
      v17 = v23;
      if (v23)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
      v12 = 1;
    }

    v17 = v20;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (RMModelConfigurationSchema)parentSchema
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSchema);

  return WeakRetained;
}

@end