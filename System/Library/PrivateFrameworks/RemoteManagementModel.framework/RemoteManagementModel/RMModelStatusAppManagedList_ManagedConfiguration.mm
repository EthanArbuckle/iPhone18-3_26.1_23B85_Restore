@interface RMModelStatusAppManagedList_ManagedConfiguration
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithAppConfigState:(id)a3 extensionConfigState:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelStatusAppManagedList_ManagedConfiguration

+ (NSSet)allowedStatusKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"app-config-state";
  v7[1] = @"extension-config-state";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithAppConfigState:(id)a3 extensionConfigState:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setStatusAppConfigState:v6];

  [v7 setStatusExtensionConfigState:v5];

  return v7;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusAppManagedList_ManagedConfiguration allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = a4;
  v14 = 0;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"app-config-state" forKeyPath:@"statusAppConfigState" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5])
  {
    LOWORD(v17) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"extension-config-state" forKeyPath:@"statusExtensionConfigState" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5];
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelStatusAppManagedList_ManagedConfiguration *)self statusAppConfigState];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RMModelStatusAppManagedList_ManagedConfiguration_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"app-config-state" value:v6 dictSerializer:v12 isRequired:0 defaultValue:0];

  v7 = [(RMModelStatusAppManagedList_ManagedConfiguration *)self statusExtensionConfigState];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__RMModelStatusAppManagedList_ManagedConfiguration_serializeWithType___block_invoke_2;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v11 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"extension-config-state" value:v7 dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelStatusAppManagedList_ManagedConfiguration;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(RMModelStatusAppManagedList_ManagedConfigurationState *)self->_statusAppConfigState copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelStatusAppManagedList_ManagedConfigurationExtensionConfigState *)self->_statusExtensionConfigState copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end