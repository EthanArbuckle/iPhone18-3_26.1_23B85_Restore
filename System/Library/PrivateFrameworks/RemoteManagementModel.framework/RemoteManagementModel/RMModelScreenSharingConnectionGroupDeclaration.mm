@interface RMModelScreenSharingConnectionGroupDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier connectionGroupUUID:(id)d groupName:(id)name members:(id)members;
+ (id)buildWithIdentifier:(id)identifier connectionGroupUUID:(id)d groupName:(id)name members:(id)members;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelScreenSharingConnectionGroupDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ConnectionGroupUUID";
  v7[1] = @"GroupName";
  v7[2] = @"Members";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier connectionGroupUUID:(id)d groupName:(id)name members:(id)members
{
  identifierCopy = identifier;
  membersCopy = members;
  nameCopy = name;
  dCopy = d;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.screensharing.connection.group"];
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

  [v13 setPayloadConnectionGroupUUID:dCopy];

  [v13 setPayloadGroupName:nameCopy];
  [v13 setPayloadMembers:membersCopy];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier connectionGroupUUID:(id)d groupName:(id)name members:(id)members
{
  identifierCopy = identifier;
  membersCopy = members;
  nameCopy = name;
  dCopy = d;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.screensharing.connection.group"];
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

  [v13 setPayloadConnectionGroupUUID:dCopy];

  [v13 setPayloadGroupName:nameCopy];
  [v13 setPayloadMembers:membersCopy];

  [v13 updateServerToken];

  return v13;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746B930;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467988];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874679A0];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelScreenSharingConnectionGroupDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ConnectionGroupUUID" forKeyPath:@"payloadConnectionGroupUUID" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"GroupName" forKeyPath:@"payloadGroupName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Members" forKeyPath:@"payloadMembers" validator:&__block_literal_global_17 isRequired:1 defaultValue:0 error:error];
  return v13;
}

uint64_t __100__RMModelScreenSharingConnectionGroupDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadConnectionGroupUUID = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadConnectionGroupUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ConnectionGroupUUID" value:payloadConnectionGroupUUID isRequired:1 defaultValue:0];

  payloadGroupName = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadGroupName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"GroupName" value:payloadGroupName isRequired:1 defaultValue:0];

  payloadMembers = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadMembers];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"Members" value:payloadMembers itemSerializer:&__block_literal_global_42 isRequired:1 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelScreenSharingConnectionGroupDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadConnectionGroupUUID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadGroupName copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSArray *)self->_payloadMembers copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end