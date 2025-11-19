@interface RMModelDiskManagementSettingsDeclaration_Restrictions
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithExternalStorage:(id)a3 networkStorage:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelDiskManagementSettingsDeclaration_Restrictions

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ExternalStorage";
  v7[1] = @"NetworkStorage";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithExternalStorage:(id)a3 networkStorage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadExternalStorage:v6];

  [v7 setPayloadNetworkStorage:v5];

  return v7;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelDiskManagementSettingsDeclaration_Restrictions allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = 0;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ExternalStorage" forKeyPath:@"payloadExternalStorage" isRequired:0 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"NetworkStorage" forKeyPath:@"payloadNetworkStorage" isRequired:0 defaultValue:0 error:a5];
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadExternalStorage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ExternalStorage" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadNetworkStorage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"NetworkStorage" value:v6 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (void)combineWithOther:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadExternalStorage];
  v6 = [v4 payloadExternalStorage];
  v15[0] = @"Allowed";
  v15[1] = @"ReadOnly";
  v15[2] = @"Disallowed";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v8 = [RMModelConfigurationBase combineEnumLast:v5 other:v6 enums:v7];
  [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self setPayloadExternalStorage:v8];

  v9 = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadNetworkStorage];
  v10 = [v4 payloadNetworkStorage];

  v14[0] = @"Allowed";
  v14[1] = @"ReadOnly";
  v14[2] = @"Disallowed";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12 = [RMModelConfigurationBase combineEnumLast:v9 other:v10 enums:v11];
  [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self setPayloadNetworkStorage:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelDiskManagementSettingsDeclaration_Restrictions;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadExternalStorage copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadNetworkStorage copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end