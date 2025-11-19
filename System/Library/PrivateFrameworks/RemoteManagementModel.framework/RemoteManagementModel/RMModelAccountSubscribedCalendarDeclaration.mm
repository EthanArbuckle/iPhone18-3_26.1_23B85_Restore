@interface RMModelAccountSubscribedCalendarDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 calendarURL:(id)a4;
+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 calendarURL:(id)a5 authenticationCredentialsAssetReference:(id)a6;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelAccountSubscribedCalendarDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleName";
  v7[1] = @"CalendarURL";
  v7[2] = @"AuthenticationCredentialsAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_5 != -1)
  {
    [RMModelAccountSubscribedCalendarDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_5;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __62__RMModelAccountSubscribedCalendarDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465F78 keyPath:@"$.payloadAuthenticationCredentialsAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_5;
  assetReferences_assetPaths_5 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 calendarURL:(id)a5 authenticationCredentialsAssetReference:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.account.subscribed-calendar"];
  if (v9)
  {
    [v13 setDeclarationIdentifier:v9];
  }

  else
  {
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    [v13 setDeclarationIdentifier:v15];
  }

  [v13 setPayloadVisibleName:v12];

  [v13 setPayloadCalendarURL:v11];
  [v13 setPayloadAuthenticationCredentialsAssetReference:v10];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 calendarURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.account.subscribed-calendar"];
  if (v5)
  {
    [v7 setDeclarationIdentifier:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [v7 setDeclarationIdentifier:v9];
  }

  [v7 setPayloadCalendarURL:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746ABB0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465F90];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465FA8];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746ABF8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465FC0];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465FD8];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746ABC8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465FF0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466008];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746AC10;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466020];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466038];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountSubscribedCalendarDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"CalendarURL" forKeyPath:@"payloadCalendarURL" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountSubscribedCalendarDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VisibleName" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelAccountSubscribedCalendarDeclaration *)self payloadCalendarURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CalendarURL" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelAccountSubscribedCalendarDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:v7 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelAccountSubscribedCalendarDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadVisibleName copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadCalendarURL copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end