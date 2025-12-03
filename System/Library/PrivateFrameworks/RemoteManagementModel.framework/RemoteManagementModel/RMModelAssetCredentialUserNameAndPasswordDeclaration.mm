@interface RMModelAssetCredentialUserNameAndPasswordDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier reference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier reference:(id)reference authentication:(id)authentication;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAssetCredentialUserNameAndPasswordDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Reference";
  v7[1] = @"Authentication";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier reference:(id)reference authentication:(id)authentication
{
  identifierCopy = identifier;
  authenticationCopy = authentication;
  referenceCopy = reference;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.asset.credential.userpassword"];
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

  [v10 setPayloadReference:referenceCopy];

  [v10 setPayloadAuthentication:authenticationCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier reference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.asset.credential.userpassword"];
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
  v29[0] = &unk_28746B030;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874668C0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874668D8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B048;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874668F0];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466908];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B060;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466920];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466938];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B078;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466950];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466968];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B090;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466980];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466998];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B0A8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874669B0];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874669C8];
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

  v12 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = type;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Reference" forKeyPath:@"payloadReference" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error])
  {
    LOWORD(v17) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Authentication" forKeyPath:@"payloadAuthentication" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error];
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
  payloadReference = [(RMModelAssetCredentialUserNameAndPasswordDeclaration *)self payloadReference];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__RMModelAssetCredentialUserNameAndPasswordDeclaration_serializePayloadWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Reference" value:payloadReference dictSerializer:v12 isRequired:1 defaultValue:0];

  payloadAuthentication = [(RMModelAssetCredentialUserNameAndPasswordDeclaration *)self payloadAuthentication];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__RMModelAssetCredentialUserNameAndPasswordDeclaration_serializePayloadWithType___block_invoke_2;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Authentication" value:payloadAuthentication dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelAssetCredentialUserNameAndPasswordDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:zone];
  v5 = [(RMModelAssetBaseReference *)self->_payloadReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelAssetBaseAuthentication *)self->_payloadAuthentication copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end