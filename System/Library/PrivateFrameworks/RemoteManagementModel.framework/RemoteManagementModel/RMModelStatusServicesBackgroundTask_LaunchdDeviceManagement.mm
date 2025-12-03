@interface RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithConfigurationIdentifier:(id)identifier assetIdentifier:(id)assetIdentifier assetServerToken:(id)token;
+ (id)buildWithConfigurationIdentifier:(id)identifier assetIdentifier:(id)assetIdentifier assetServerToken:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"configuration-identifier";
  v7[1] = @"asset-identifier";
  v7[2] = @"asset-server-token";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithConfigurationIdentifier:(id)identifier assetIdentifier:(id)assetIdentifier assetServerToken:(id)token
{
  tokenCopy = token;
  assetIdentifierCopy = assetIdentifier;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [v10 setStatusConfigurationIdentifier:identifierCopy];

  [v10 setStatusAssetIdentifier:assetIdentifierCopy];
  [v10 setStatusAssetServerToken:tokenCopy];

  return v10;
}

+ (id)buildRequiredOnlyWithConfigurationIdentifier:(id)identifier assetIdentifier:(id)assetIdentifier assetServerToken:(id)token
{
  tokenCopy = token;
  assetIdentifierCopy = assetIdentifier;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [v10 setStatusConfigurationIdentifier:identifierCopy];

  [v10 setStatusAssetIdentifier:assetIdentifierCopy];
  [v10 setStatusAssetServerToken:tokenCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"configuration-identifier" forKeyPath:@"statusConfigurationIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"asset-identifier" forKeyPath:@"statusAssetIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"asset-server-token" forKeyPath:@"statusAssetServerToken" isRequired:1 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusConfigurationIdentifier = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusConfigurationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"configuration-identifier" value:statusConfigurationIdentifier isRequired:1 defaultValue:0];

  statusAssetIdentifier = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusAssetIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"asset-identifier" value:statusAssetIdentifier isRequired:1 defaultValue:0];

  statusAssetServerToken = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusAssetServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"asset-server-token" value:statusAssetServerToken isRequired:1 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_statusConfigurationIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusAssetIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusAssetServerToken copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end