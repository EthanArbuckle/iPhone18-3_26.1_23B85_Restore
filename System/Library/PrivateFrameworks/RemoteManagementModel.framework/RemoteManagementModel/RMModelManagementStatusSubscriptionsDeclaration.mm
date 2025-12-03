@interface RMModelManagementStatusSubscriptionsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier statusItems:(id)items;
+ (id)buildWithIdentifier:(id)identifier statusItems:(id)items;
+ (id)combineConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelManagementStatusSubscriptionsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"StatusItems";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier statusItems:(id)items
{
  identifierCopy = identifier;
  itemsCopy = items;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.management.status-subscriptions"];
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

  [v7 setPayloadStatusItems:itemsCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier statusItems:(id)items
{
  identifierCopy = identifier;
  itemsCopy = items;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.management.status-subscriptions"];
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

  [v7 setPayloadStatusItems:itemsCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)combineConfigurations:(id)configurations
{
  v17 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = configurationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 combineWithOther:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B4E0;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874671A8];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874671C0];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B4F8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874671D8];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874671F0];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B528;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467208];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467220];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B510;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467238];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467250];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B540;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467268];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467280];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B558;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467298];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874672B0];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v8 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v11 = [v8 setWithArray:allKeys];

  v12 = +[RMModelManagementStatusSubscriptionsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v15) = type;
  LOBYTE(self) = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"StatusItems" forKeyPath:@"payloadStatusItems" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v15 error:error];

  return self;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadStatusItems = [(RMModelManagementStatusSubscriptionsDeclaration *)self payloadStatusItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__RMModelManagementStatusSubscriptionsDeclaration_serializePayloadWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e82___NSDictionary_16__0__RMModelManagementStatusSubscriptionsDeclaration_StatusItem_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"StatusItems" value:payloadStatusItems itemSerializer:v9 isRequired:1 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadStatusItems = [(RMModelManagementStatusSubscriptionsDeclaration *)self payloadStatusItems];
  payloadStatusItems2 = [otherCopy payloadStatusItems];

  v6 = [RMModelConfigurationBase combineSetUnion:payloadStatusItems other:payloadStatusItems2];
  [(RMModelManagementStatusSubscriptionsDeclaration *)self setPayloadStatusItems:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelManagementStatusSubscriptionsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_payloadStatusItems copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end