@interface RMModelScreenSharingConnectionGroupDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 connectionGroupUUID:(id)a4 groupName:(id)a5 members:(id)a6;
+ (id)buildWithIdentifier:(id)a3 connectionGroupUUID:(id)a4 groupName:(id)a5 members:(id)a6;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 connectionGroupUUID:(id)a4 groupName:(id)a5 members:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.screensharing.connection.group"];
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

  [v13 setPayloadConnectionGroupUUID:v12];

  [v13 setPayloadGroupName:v11];
  [v13 setPayloadMembers:v10];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 connectionGroupUUID:(id)a4 groupName:(id)a5 members:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.screensharing.connection.group"];
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

  [v13 setPayloadConnectionGroupUUID:v12];

  [v13 setPayloadGroupName:v11];
  [v13 setPayloadMembers:v10];

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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelScreenSharingConnectionGroupDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ConnectionGroupUUID" forKeyPath:@"payloadConnectionGroupUUID" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"GroupName" forKeyPath:@"payloadGroupName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"Members" forKeyPath:@"payloadMembers" validator:&__block_literal_global_17 isRequired:1 defaultValue:0 error:a5];
  return v13;
}

uint64_t __100__RMModelScreenSharingConnectionGroupDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadConnectionGroupUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ConnectionGroupUUID" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadGroupName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"GroupName" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelScreenSharingConnectionGroupDeclaration *)self payloadMembers];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"Members" value:v7 itemSerializer:&__block_literal_global_42 isRequired:1 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelScreenSharingConnectionGroupDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:a3];
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