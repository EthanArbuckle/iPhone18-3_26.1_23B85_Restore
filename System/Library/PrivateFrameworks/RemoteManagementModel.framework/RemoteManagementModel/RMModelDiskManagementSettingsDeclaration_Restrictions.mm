@interface RMModelDiskManagementSettingsDeclaration_Restrictions
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithExternalStorage:(id)storage networkStorage:(id)networkStorage;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithExternalStorage:(id)storage networkStorage:(id)networkStorage
{
  networkStorageCopy = networkStorage;
  storageCopy = storage;
  v7 = objc_opt_new();
  [v7 setPayloadExternalStorage:storageCopy];

  [v7 setPayloadNetworkStorage:networkStorageCopy];

  return v7;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelDiskManagementSettingsDeclaration_Restrictions allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = 0;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ExternalStorage" forKeyPath:@"payloadExternalStorage" isRequired:0 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"NetworkStorage" forKeyPath:@"payloadNetworkStorage" isRequired:0 defaultValue:0 error:error];
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadExternalStorage = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadExternalStorage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ExternalStorage" value:payloadExternalStorage isRequired:0 defaultValue:0];

  payloadNetworkStorage = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadNetworkStorage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"NetworkStorage" value:payloadNetworkStorage isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  v15[3] = *MEMORY[0x277D85DE8];
  otherCopy = other;
  payloadExternalStorage = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadExternalStorage];
  payloadExternalStorage2 = [otherCopy payloadExternalStorage];
  v15[0] = @"Allowed";
  v15[1] = @"ReadOnly";
  v15[2] = @"Disallowed";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v8 = [RMModelConfigurationBase combineEnumLast:payloadExternalStorage other:payloadExternalStorage2 enums:v7];
  [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self setPayloadExternalStorage:v8];

  payloadNetworkStorage = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self payloadNetworkStorage];
  payloadNetworkStorage2 = [otherCopy payloadNetworkStorage];

  v14[0] = @"Allowed";
  v14[1] = @"ReadOnly";
  v14[2] = @"Disallowed";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12 = [RMModelConfigurationBase combineEnumLast:payloadNetworkStorage other:payloadNetworkStorage2 enums:v11];
  [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self setPayloadNetworkStorage:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelDiskManagementSettingsDeclaration_Restrictions;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadExternalStorage copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadNetworkStorage copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end