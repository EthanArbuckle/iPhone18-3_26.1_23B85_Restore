@interface RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithConfigurationIdentifier:(id)a3 assetIdentifier:(id)a4 assetServerToken:(id)a5;
+ (id)buildWithConfigurationIdentifier:(id)a3 assetIdentifier:(id)a4 assetServerToken:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithConfigurationIdentifier:(id)a3 assetIdentifier:(id)a4 assetServerToken:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusConfigurationIdentifier:v9];

  [v10 setStatusAssetIdentifier:v8];
  [v10 setStatusAssetServerToken:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithConfigurationIdentifier:(id)a3 assetIdentifier:(id)a4 assetServerToken:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusConfigurationIdentifier:v9];

  [v10 setStatusAssetIdentifier:v8];
  [v10 setStatusAssetServerToken:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"configuration-identifier" forKeyPath:@"statusConfigurationIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"asset-identifier" forKeyPath:@"statusAssetIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"asset-server-token" forKeyPath:@"statusAssetServerToken" isRequired:1 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusConfigurationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"configuration-identifier" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusAssetIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"asset-identifier" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self statusAssetServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"asset-server-token" value:v7 isRequired:1 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
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