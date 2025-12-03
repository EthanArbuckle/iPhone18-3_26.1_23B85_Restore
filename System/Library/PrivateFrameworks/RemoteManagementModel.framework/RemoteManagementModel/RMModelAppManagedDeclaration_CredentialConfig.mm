@interface RMModelAppManagedDeclaration_CredentialConfig
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier assetReference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier assetReference:(id)reference;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAppManagedDeclaration_CredentialConfig

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Identifier";
  v7[1] = @"AssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier assetReference:(id)reference
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setPayloadIdentifier:identifierCopy];

  [v7 setPayloadAssetReference:referenceCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier assetReference:(id)reference
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setPayloadIdentifier:identifierCopy];

  [v7 setPayloadAssetReference:referenceCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAppManagedDeclaration_CredentialConfig allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"payloadIdentifier" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AssetReference" forKeyPath:@"payloadAssetReference" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadIdentifier = [(RMModelAppManagedDeclaration_CredentialConfig *)self payloadIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Identifier" value:payloadIdentifier isRequired:1 defaultValue:0];

  payloadAssetReference = [(RMModelAppManagedDeclaration_CredentialConfig *)self payloadAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AssetReference" value:payloadAssetReference isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelAppManagedDeclaration_CredentialConfig;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadAssetReference copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end