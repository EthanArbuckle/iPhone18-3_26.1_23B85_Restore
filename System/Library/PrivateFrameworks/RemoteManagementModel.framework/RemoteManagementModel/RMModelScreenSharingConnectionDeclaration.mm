@interface RMModelScreenSharingConnectionDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 connectionUUID:(id)a4 displayName:(id)a5 hostName:(id)a6 displayConfiguration:(id)a7;
+ (id)buildWithIdentifier:(id)a3 connectionUUID:(id)a4 displayName:(id)a5 hostName:(id)a6 port:(id)a7 displayConfiguration:(id)a8 authenticationCredentialsAssetReference:(id)a9;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelScreenSharingConnectionDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ConnectionUUID";
  v7[1] = @"DisplayName";
  v7[2] = @"HostName";
  v7[3] = @"Port";
  v7[4] = @"DisplayConfiguration";
  v7[5] = @"AuthenticationCredentialsAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_10 != -1)
  {
    [RMModelScreenSharingConnectionDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_10;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __60__RMModelScreenSharingConnectionDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467940 keyPath:@"$.payloadAuthenticationCredentialsAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_10;
  assetReferences_assetPaths_10 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 connectionUUID:(id)a4 displayName:(id)a5 hostName:(id)a6 port:(id)a7 displayConfiguration:(id)a8 authenticationCredentialsAssetReference:(id)a9
{
  v14 = a3;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = objc_opt_new();
  [v21 setDeclarationType:@"com.apple.configuration.screensharing.connection"];
  if (v14)
  {
    [v21 setDeclarationIdentifier:v14];
  }

  else
  {
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];
    [v21 setDeclarationIdentifier:v23];
  }

  [v21 setPayloadConnectionUUID:v20];

  [v21 setPayloadDisplayName:v19];
  [v21 setPayloadHostName:v18];

  [v21 setPayloadPort:v17];
  [v21 setPayloadDisplayConfiguration:v16];

  [v21 setPayloadAuthenticationCredentialsAssetReference:v15];
  [v21 updateServerToken];

  return v21;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 connectionUUID:(id)a4 displayName:(id)a5 hostName:(id)a6 displayConfiguration:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.screensharing.connection"];
  if (v11)
  {
    [v16 setDeclarationIdentifier:v11];
  }

  else
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];
    [v16 setDeclarationIdentifier:v18];
  }

  [v16 setPayloadConnectionUUID:v15];

  [v16 setPayloadDisplayName:v14];
  [v16 setPayloadHostName:v13];

  [v16 setPayloadDisplayConfiguration:v12];
  [v16 updateServerToken];

  return v16;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746B8D0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467958];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467970];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelScreenSharingConnectionDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ConnectionUUID" forKeyPath:@"payloadConnectionUUID" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"DisplayName" forKeyPath:@"payloadDisplayName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"DisplayConfiguration" forKeyPath:@"payloadDisplayConfiguration" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:a5]) && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5];
  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelScreenSharingConnectionDeclaration *)self payloadConnectionUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ConnectionUUID" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelScreenSharingConnectionDeclaration *)self payloadDisplayName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DisplayName" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMModelScreenSharingConnectionDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"HostName" value:v8 isRequired:1 defaultValue:0];

  v9 = [(RMModelScreenSharingConnectionDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Port" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelScreenSharingConnectionDeclaration *)self payloadDisplayConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RMModelScreenSharingConnectionDeclaration_serializePayloadWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"DisplayConfiguration" value:v10 dictSerializer:v14 isRequired:1 defaultValue:0];

  v11 = [(RMModelScreenSharingConnectionDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationCredentialsAssetReference" value:v11 isRequired:0 defaultValue:0];

  v12 = [v5 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RMModelScreenSharingConnectionDeclaration;
  v4 = [(RMModelDeclarationBase *)&v18 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadConnectionUUID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadDisplayName copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadHostName copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSNumber *)self->_payloadPort copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(RMModelScreenSharingConnectionDeclaration_DisplayConfiguration *)self->_payloadDisplayConfiguration copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v16 = v4[11];
  v4[11] = v15;

  return v4;
}

@end