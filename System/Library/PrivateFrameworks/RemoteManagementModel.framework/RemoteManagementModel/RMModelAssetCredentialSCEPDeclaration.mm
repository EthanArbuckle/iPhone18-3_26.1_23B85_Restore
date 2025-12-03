@interface RMModelAssetCredentialSCEPDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier reference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier reference:(id)reference authentication:(id)authentication accessible:(id)accessible;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAssetCredentialSCEPDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Reference";
  v7[1] = @"Authentication";
  v7[2] = @"Accessible";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier reference:(id)reference authentication:(id)authentication accessible:(id)accessible
{
  identifierCopy = identifier;
  accessibleCopy = accessible;
  authenticationCopy = authentication;
  referenceCopy = reference;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.asset.credential.scep"];
  if (identifierCopy)
  {
    [v13 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v13 setDeclarationIdentifier:uUIDString];
  }

  [v13 setPayloadReference:referenceCopy];

  [v13 setPayloadAuthentication:authenticationCopy];
  if (accessibleCopy)
  {
    v16 = accessibleCopy;
  }

  else
  {
    v16 = @"Default";
  }

  [v13 setPayloadAccessible:v16];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier reference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.asset.credential.scep"];
  if (identifierCopy)
  {
    [v7 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setDeclarationIdentifier:uUIDString];
  }

  [v7 setPayloadReference:referenceCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746AFA0;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874667A0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874667B8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746AFB8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874667D0];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874667E8];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746AFD0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466800];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466818];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746AFE8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466830];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466848];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B000;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466860];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466878];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B018;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466890];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874668A8];
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

  v12 = +[RMModelAssetCredentialSCEPDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = type;
  v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Reference" forKeyPath:@"payloadReference" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error]&& (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Authentication" forKeyPath:@"payloadAuthentication" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error]) && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Accessible" forKeyPath:@"payloadAccessible" isRequired:0 defaultValue:@"Default" error:error];

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadReference = [(RMModelAssetCredentialSCEPDeclaration *)self payloadReference];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__RMModelAssetCredentialSCEPDeclaration_serializePayloadWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Reference" value:payloadReference dictSerializer:v13 isRequired:1 defaultValue:0];

  payloadAuthentication = [(RMModelAssetCredentialSCEPDeclaration *)self payloadAuthentication];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__RMModelAssetCredentialSCEPDeclaration_serializePayloadWithType___block_invoke_2;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Authentication" value:payloadAuthentication dictSerializer:v11 isRequired:0 defaultValue:0];

  payloadAccessible = [(RMModelAssetCredentialSCEPDeclaration *)self payloadAccessible];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Accessible" value:payloadAccessible isRequired:0 defaultValue:@"Default"];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelAssetCredentialSCEPDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:zone];
  v5 = [(RMModelAssetBaseReference *)self->_payloadReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelAssetBaseAuthentication *)self->_payloadAuthentication copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadAccessible copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end