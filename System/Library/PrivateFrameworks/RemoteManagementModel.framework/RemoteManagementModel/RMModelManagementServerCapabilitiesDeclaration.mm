@interface RMModelManagementServerCapabilitiesDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier version:(id)version supportedFeatures:(id)features;
+ (id)buildWithIdentifier:(id)identifier version:(id)version supportedFeatures:(id)features;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelManagementServerCapabilitiesDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Version";
  v7[1] = @"SupportedFeatures";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier version:(id)version supportedFeatures:(id)features
{
  identifierCopy = identifier;
  featuresCopy = features;
  versionCopy = version;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.management.server-capabilities"];
  if (identifierCopy)
  {
    [v10 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setDeclarationIdentifier:uUIDString];
  }

  [v10 setPayloadVersion:versionCopy];

  [v10 setPayloadSupportedFeatures:featuresCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier version:(id)version supportedFeatures:(id)features
{
  identifierCopy = identifier;
  featuresCopy = features;
  versionCopy = version;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.management.server-capabilities"];
  if (identifierCopy)
  {
    [v10 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setDeclarationIdentifier:uUIDString];
  }

  [v10 setPayloadVersion:versionCopy];

  [v10 setPayloadSupportedFeatures:featuresCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B450;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467088];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874670A0];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B468;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874670B8];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874670D0];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B480;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874670E8];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467100];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B498;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467118];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467130];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B4B0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467148];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467160];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B4C8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467178];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467190];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelManagementServerCapabilitiesDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Version" forKeyPath:@"payloadVersion" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SupportedFeatures" forKeyPath:@"payloadSupportedFeatures" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadVersion = [(RMModelManagementServerCapabilitiesDeclaration *)self payloadVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Version" value:payloadVersion isRequired:1 defaultValue:0];

  payloadSupportedFeatures = [(RMModelManagementServerCapabilitiesDeclaration *)self payloadSupportedFeatures];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__RMModelManagementServerCapabilitiesDeclaration_serializePayloadWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SupportedFeatures" value:payloadSupportedFeatures dictSerializer:v10 isRequired:1 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelManagementServerCapabilitiesDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadVersion copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelAnyPayload *)self->_payloadSupportedFeatures copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end