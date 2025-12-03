@interface RMModelConfigurationSchemaManagedSetting
+ (id)parseJSON:(id)n parentSchema:(id)schema;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToManagedSetting:(id)setting;
- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type;
- (RMModelConfigurationSchema)parentSchema;
- (RMModelConfigurationSchemaManagedSetting)initWithManagedSetting:(id)setting keyPath:(id)path valueType:(id)type invertBoolean:(BOOL)boolean managedSettingScope:(id)scope supportedOSOverride:(id)override parentSchema:(id)schema;
@end

@implementation RMModelConfigurationSchemaManagedSetting

- (RMModelConfigurationSchemaManagedSetting)initWithManagedSetting:(id)setting keyPath:(id)path valueType:(id)type invertBoolean:(BOOL)boolean managedSettingScope:(id)scope supportedOSOverride:(id)override parentSchema:(id)schema
{
  settingCopy = setting;
  pathCopy = path;
  typeCopy = type;
  scopeCopy = scope;
  overrideCopy = override;
  schemaCopy = schema;
  v25.receiver = self;
  v25.super_class = RMModelConfigurationSchemaManagedSetting;
  v19 = [(RMModelConfigurationSchemaManagedSetting *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_managedSettingKey, setting);
    objc_storeStrong(&v20->_keyPath, path);
    objc_storeStrong(&v20->_valueType, type);
    v20->_invertBoolean = boolean;
    objc_storeStrong(&v20->_managedSettingScope, scope);
    objc_storeStrong(&v20->_supportedOS, override);
    objc_storeWeak(&v20->_parentSchema, schemaCopy);
  }

  return v20;
}

+ (id)parseJSON:(id)n parentSchema:(id)schema
{
  nCopy = n;
  schemaCopy = schema;
  if (!nCopy)
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

  v7 = [nCopy objectForKeyedSubscript:@"setting"];
  v8 = [nCopy objectForKeyedSubscript:@"key-path"];
  v9 = [nCopy objectForKeyedSubscript:@"type"];
  v10 = [nCopy objectForKeyedSubscript:@"invert-BOOLean"];
  if (v10)
  {
    v11 = [nCopy objectForKeyedSubscript:@"invert-BOOLean"];
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v14 = [nCopy objectForKeyedSubscript:@"scope"];
  v15 = [nCopy objectForKeyedSubscript:@"supported-os"];
  v16 = [RMModelSchemaParser loadSupportedOSFromDictionary:v15];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && [RMModelSharedDefinitions allowedValueType:v9]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [[RMModelConfigurationSchemaManagedSetting alloc] initWithManagedSetting:v7 keyPath:v8 valueType:v9 invertBoolean:bOOLValue managedSettingScope:v14 supportedOSOverride:v16 parentSchema:schemaCopy];
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

- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type
{
  supportedOS = [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
  LOBYTE(type) = [RMModelPayloadUtilities isSupportedForPlatform:platform scope:scope enrollmentType:type supportedOS:supportedOS];

  return type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelConfigurationSchemaManagedSetting *)self isEqualToManagedSetting:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToManagedSetting:(id)setting
{
  settingCopy = setting;
  managedSettingKey = [(RMModelConfigurationSchemaManagedSetting *)self managedSettingKey];
  managedSettingKey2 = [settingCopy managedSettingKey];
  if ([managedSettingKey isEqualToString:managedSettingKey2])
  {
    keyPath = [(RMModelConfigurationSchemaManagedSetting *)self keyPath];
    keyPath2 = [settingCopy keyPath];
    if (![keyPath isEqualToString:keyPath2])
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    valueType = [(RMModelConfigurationSchemaManagedSetting *)self valueType];
    valueType2 = [settingCopy valueType];
    if (![valueType isEqualToString:valueType2] || (v11 = -[RMModelConfigurationSchemaManagedSetting invertBoolean](self, "invertBoolean"), v11 != objc_msgSend(settingCopy, "invertBoolean")))
    {
      v12 = 0;
LABEL_18:

      goto LABEL_19;
    }

    managedSettingScope = [(RMModelConfigurationSchemaManagedSetting *)self managedSettingScope];
    managedSettingScope2 = [settingCopy managedSettingScope];
    if (![managedSettingScope isEqualToString:managedSettingScope2])
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    supportedOS = [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
    if (supportedOS || ([settingCopy supportedOS], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(RMModelConfigurationSchemaManagedSetting *)self supportedOS];
      v15 = v21 = managedSettingScope2;
      [settingCopy supportedOS];
      v16 = v22 = managedSettingScope;
      v12 = [v15 isEqual:v16];

      managedSettingScope = v22;
      managedSettingScope2 = v21;
      v17 = supportedOS;
      if (supportedOS)
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