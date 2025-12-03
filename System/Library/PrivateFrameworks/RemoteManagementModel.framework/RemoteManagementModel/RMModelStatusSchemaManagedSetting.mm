@interface RMModelStatusSchemaManagedSetting
+ (id)parseJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToManagedSetting:(id)setting;
- (RMModelStatusSchemaManagedSetting)initWithManagedSetting:(id)setting valueType:(id)type invertBoolean:(BOOL)boolean;
@end

@implementation RMModelStatusSchemaManagedSetting

- (RMModelStatusSchemaManagedSetting)initWithManagedSetting:(id)setting valueType:(id)type invertBoolean:(BOOL)boolean
{
  settingCopy = setting;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = RMModelStatusSchemaManagedSetting;
  v11 = [(RMModelStatusSchemaManagedSetting *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_managedSettingKey, setting);
    objc_storeStrong(&v12->_valueType, type);
    v12->_invertBoolean = boolean;
  }

  return v12;
}

+ (id)parseJSON:(id)n
{
  nCopy = n;
  if (!nCopy)
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

  v4 = [nCopy objectForKeyedSubscript:@"setting"];
  v5 = [nCopy objectForKeyedSubscript:@"type"];
  v6 = [nCopy objectForKeyedSubscript:@"invert-BOOLean"];
  if (v6)
  {
    v7 = [nCopy objectForKeyedSubscript:@"invert-BOOLean"];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [RMModelSharedDefinitions allowedValueType:v5])
  {
    v9 = [[RMModelStatusSchemaManagedSetting alloc] initWithManagedSetting:v4 valueType:v5 invertBoolean:bOOLValue];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelStatusSchemaManagedSetting *)self isEqualToManagedSetting:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToManagedSetting:(id)setting
{
  settingCopy = setting;
  managedSettingKey = [(RMModelStatusSchemaManagedSetting *)self managedSettingKey];
  managedSettingKey2 = [settingCopy managedSettingKey];
  if ([managedSettingKey isEqualToString:managedSettingKey2])
  {
    valueType = [(RMModelStatusSchemaManagedSetting *)self valueType];
    valueType2 = [settingCopy valueType];
    if ([valueType isEqualToString:valueType2])
    {
      invertBoolean = [(RMModelStatusSchemaManagedSetting *)self invertBoolean];
      v10 = invertBoolean ^ [settingCopy invertBoolean] ^ 1;
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