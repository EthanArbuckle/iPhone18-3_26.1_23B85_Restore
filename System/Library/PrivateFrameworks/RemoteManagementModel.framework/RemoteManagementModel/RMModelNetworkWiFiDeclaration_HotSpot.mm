@interface RMModelNetworkWiFiDeclaration_HotSpot
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithDisplayedOperatorName:(id)name domainName:(id)domainName roamingConsortiumOIs:(id)is serviceProviderRoamingEnabled:(id)enabled HESSID:(id)d naiRealmNames:(id)names mccAndMNCs:(id)cs;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkWiFiDeclaration_HotSpot

+ (NSSet)allowedPayloadKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DisplayedOperatorName";
  v7[1] = @"DomainName";
  v7[2] = @"RoamingConsortiumOIs";
  v7[3] = @"ServiceProviderRoamingEnabled";
  v7[4] = @"HESSID";
  v7[5] = @"NAIRealmNames";
  v7[6] = @"MCCAndMNCs";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDisplayedOperatorName:(id)name domainName:(id)domainName roamingConsortiumOIs:(id)is serviceProviderRoamingEnabled:(id)enabled HESSID:(id)d naiRealmNames:(id)names mccAndMNCs:(id)cs
{
  csCopy = cs;
  namesCopy = names;
  dCopy = d;
  enabledCopy = enabled;
  isCopy = is;
  domainNameCopy = domainName;
  nameCopy = name;
  v22 = objc_opt_new();
  [v22 setPayloadDisplayedOperatorName:nameCopy];

  [v22 setPayloadDomainName:domainNameCopy];
  [v22 setPayloadRoamingConsortiumOIs:isCopy];

  if (enabledCopy)
  {
    v23 = enabledCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v22 setPayloadServiceProviderRoamingEnabled:v23];

  [v22 setPayloadHESSID:dCopy];
  [v22 setPayloadNAIRealmNames:namesCopy];

  [v22 setPayloadMCCAndMNCs:csCopy];

  return v22;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelNetworkWiFiDeclaration_HotSpot allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DisplayedOperatorName" forKeyPath:@"payloadDisplayedOperatorName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DomainName" forKeyPath:@"payloadDomainName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"RoamingConsortiumOIs" forKeyPath:@"payloadRoamingConsortiumOIs" validator:&__block_literal_global_388 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"ServiceProviderRoamingEnabled" forKeyPath:@"payloadServiceProviderRoamingEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HESSID" forKeyPath:@"payloadHESSID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"NAIRealmNames" forKeyPath:@"payloadNAIRealmNames" validator:&__block_literal_global_399 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"MCCAndMNCs" forKeyPath:@"payloadMCCAndMNCs" validator:&__block_literal_global_404 isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadDisplayedOperatorName = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadDisplayedOperatorName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DisplayedOperatorName" value:payloadDisplayedOperatorName isRequired:0 defaultValue:0];

  payloadDomainName = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadDomainName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DomainName" value:payloadDomainName isRequired:0 defaultValue:0];

  payloadRoamingConsortiumOIs = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadRoamingConsortiumOIs];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"RoamingConsortiumOIs" value:payloadRoamingConsortiumOIs itemSerializer:&__block_literal_global_406 isRequired:0 defaultValue:0];

  payloadServiceProviderRoamingEnabled = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadServiceProviderRoamingEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ServiceProviderRoamingEnabled" value:payloadServiceProviderRoamingEnabled isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadHESSID = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadHESSID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HESSID" value:payloadHESSID isRequired:0 defaultValue:0];

  payloadNAIRealmNames = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadNAIRealmNames];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"NAIRealmNames" value:payloadNAIRealmNames itemSerializer:&__block_literal_global_408 isRequired:0 defaultValue:0];

  payloadMCCAndMNCs = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadMCCAndMNCs];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"MCCAndMNCs" value:payloadMCCAndMNCs itemSerializer:&__block_literal_global_410 isRequired:0 defaultValue:0];

  v12 = [v4 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RMModelNetworkWiFiDeclaration_HotSpot;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadDisplayedOperatorName copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadDomainName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadRoamingConsortiumOIs copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_payloadServiceProviderRoamingEnabled copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_payloadHESSID copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSArray *)self->_payloadNAIRealmNames copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSArray *)self->_payloadMCCAndMNCs copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end