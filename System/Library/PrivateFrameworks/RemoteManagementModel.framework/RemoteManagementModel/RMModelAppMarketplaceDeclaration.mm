@interface RMModelAppMarketplaceDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier distributorID:(id)d marketplaceURL:(id)l;
+ (id)buildWithIdentifier:(id)identifier distributorID:(id)d marketplaceURL:(id)l;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAppMarketplaceDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DistributorID";
  v7[1] = @"MarketplaceURL";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier distributorID:(id)d marketplaceURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.app.marketplace"];
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

  [v10 setPayloadDistributorID:dCopy];

  [v10 setPayloadMarketplaceURL:lCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier distributorID:(id)d marketplaceURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.app.marketplace"];
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

  [v10 setPayloadDistributorID:dCopy];

  [v10 setPayloadMarketplaceURL:lCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = &unk_28746AD30;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466320];
  v14[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466338];
  v14[1] = v3;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466350];
  v14[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v15[1] = &unk_28746AD78;
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466368];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466380];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466398];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAppMarketplaceDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DistributorID" forKeyPath:@"payloadDistributorID" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"MarketplaceURL" forKeyPath:@"payloadMarketplaceURL" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadDistributorID = [(RMModelAppMarketplaceDeclaration *)self payloadDistributorID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DistributorID" value:payloadDistributorID isRequired:1 defaultValue:0];

  payloadMarketplaceURL = [(RMModelAppMarketplaceDeclaration *)self payloadMarketplaceURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"MarketplaceURL" value:payloadMarketplaceURL isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelAppMarketplaceDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadDistributorID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadMarketplaceURL copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end