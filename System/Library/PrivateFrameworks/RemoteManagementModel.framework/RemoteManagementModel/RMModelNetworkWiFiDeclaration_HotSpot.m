@interface RMModelNetworkWiFiDeclaration_HotSpot
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithDisplayedOperatorName:(id)a3 domainName:(id)a4 roamingConsortiumOIs:(id)a5 serviceProviderRoamingEnabled:(id)a6 HESSID:(id)a7 naiRealmNames:(id)a8 mccAndMNCs:(id)a9;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithDisplayedOperatorName:(id)a3 domainName:(id)a4 roamingConsortiumOIs:(id)a5 serviceProviderRoamingEnabled:(id)a6 HESSID:(id)a7 naiRealmNames:(id)a8 mccAndMNCs:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_opt_new();
  [v22 setPayloadDisplayedOperatorName:v21];

  [v22 setPayloadDomainName:v20];
  [v22 setPayloadRoamingConsortiumOIs:v19];

  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v22 setPayloadServiceProviderRoamingEnabled:v23];

  [v22 setPayloadHESSID:v17];
  [v22 setPayloadNAIRealmNames:v16];

  [v22 setPayloadMCCAndMNCs:v15];

  return v22;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelNetworkWiFiDeclaration_HotSpot allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"DisplayedOperatorName" forKeyPath:@"payloadDisplayedOperatorName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"DomainName" forKeyPath:@"payloadDomainName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"RoamingConsortiumOIs" forKeyPath:@"payloadRoamingConsortiumOIs" validator:&__block_literal_global_388 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"ServiceProviderRoamingEnabled" forKeyPath:@"payloadServiceProviderRoamingEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"HESSID" forKeyPath:@"payloadHESSID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"NAIRealmNames" forKeyPath:@"payloadNAIRealmNames" validator:&__block_literal_global_399 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"MCCAndMNCs" forKeyPath:@"payloadMCCAndMNCs" validator:&__block_literal_global_404 isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadDisplayedOperatorName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DisplayedOperatorName" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadDomainName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DomainName" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadRoamingConsortiumOIs];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"RoamingConsortiumOIs" value:v7 itemSerializer:&__block_literal_global_406 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadServiceProviderRoamingEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ServiceProviderRoamingEnabled" value:v8 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadHESSID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HESSID" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadNAIRealmNames];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"NAIRealmNames" value:v10 itemSerializer:&__block_literal_global_408 isRequired:0 defaultValue:0];

  v11 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self payloadMCCAndMNCs];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"MCCAndMNCs" value:v11 itemSerializer:&__block_literal_global_410 isRequired:0 defaultValue:0];

  v12 = [v4 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = RMModelNetworkWiFiDeclaration_HotSpot;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:a3];
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