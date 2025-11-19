@interface RMModelAppManagedDeclaration_Attributes
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithAssociatedDomains:(id)a3 associatedDomainsEnableDirectDownloads:(id)a4 cellularSliceUUID:(id)a5 contentFilterUUID:(id)a6 dnsProxyUUID:(id)a7 hideable:(id)a8 lockable:(id)a9 relayUUID:(id)a10 tapToPayScreenLock:(id)a11 VPNUUID:(id)a12;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAppManagedDeclaration_Attributes

+ (NSSet)allowedPayloadKeys
{
  v7[10] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"AssociatedDomains";
  v7[1] = @"AssociatedDomainsEnableDirectDownloads";
  v7[2] = @"CellularSliceUUID";
  v7[3] = @"ContentFilterUUID";
  v7[4] = @"DNSProxyUUID";
  v7[5] = @"Hideable";
  v7[6] = @"Lockable";
  v7[7] = @"RelayUUID";
  v7[8] = @"TapToPayScreenLock";
  v7[9] = @"VPNUUID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:10];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithAssociatedDomains:(id)a3 associatedDomainsEnableDirectDownloads:(id)a4 cellularSliceUUID:(id)a5 contentFilterUUID:(id)a6 dnsProxyUUID:(id)a7 hideable:(id)a8 lockable:(id)a9 relayUUID:(id)a10 tapToPayScreenLock:(id)a11 VPNUUID:(id)a12
{
  v36 = a12;
  v18 = a11;
  v34 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = objc_opt_new();
  [v26 setPayloadAssociatedDomains:v25];

  v27 = MEMORY[0x277CBEC28];
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadAssociatedDomainsEnableDirectDownloads:{v28, v34}];

  [v26 setPayloadCellularSliceUUID:v23];
  [v26 setPayloadContentFilterUUID:v22];

  [v26 setPayloadDNSProxyUUID:v21];
  v29 = MEMORY[0x277CBEC38];
  if (v20)
  {
    v30 = v20;
  }

  else
  {
    v30 = MEMORY[0x277CBEC38];
  }

  [v26 setPayloadHideable:v30];

  if (v19)
  {
    v31 = v19;
  }

  else
  {
    v31 = v29;
  }

  [v26 setPayloadLockable:v31];

  [v26 setPayloadRelayUUID:v35];
  if (v18)
  {
    v32 = v18;
  }

  else
  {
    v32 = v27;
  }

  [v26 setPayloadTapToPayScreenLock:v32];

  [v26 setPayloadVPNUUID:v36];

  return v26;
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

  v11 = +[RMModelAppManagedDeclaration_Attributes allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"AssociatedDomains" forKeyPath:@"payloadAssociatedDomains" validator:&__block_literal_global_477 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"AssociatedDomainsEnableDirectDownloads" forKeyPath:@"payloadAssociatedDomainsEnableDirectDownloads" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"CellularSliceUUID" forKeyPath:@"payloadCellularSliceUUID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ContentFilterUUID" forKeyPath:@"payloadContentFilterUUID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"DNSProxyUUID" forKeyPath:@"payloadDNSProxyUUID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Hideable" forKeyPath:@"payloadHideable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Lockable" forKeyPath:@"payloadLockable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"RelayUUID" forKeyPath:@"payloadRelayUUID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"TapToPayScreenLock" forKeyPath:@"payloadTapToPayScreenLock" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"VPNUUID" forKeyPath:@"payloadVPNUUID" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAppManagedDeclaration_Attributes *)self payloadAssociatedDomains];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AssociatedDomains" value:v5 itemSerializer:&__block_literal_global_508 isRequired:0 defaultValue:0];

  v6 = [(RMModelAppManagedDeclaration_Attributes *)self payloadAssociatedDomainsEnableDirectDownloads];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AssociatedDomainsEnableDirectDownloads" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(RMModelAppManagedDeclaration_Attributes *)self payloadCellularSliceUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CellularSliceUUID" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelAppManagedDeclaration_Attributes *)self payloadContentFilterUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ContentFilterUUID" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelAppManagedDeclaration_Attributes *)self payloadDNSProxyUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DNSProxyUUID" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelAppManagedDeclaration_Attributes *)self payloadHideable];
  v12 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Hideable" value:v11 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v13 = [(RMModelAppManagedDeclaration_Attributes *)self payloadLockable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Lockable" value:v13 isRequired:0 defaultValue:v12];

  v14 = [(RMModelAppManagedDeclaration_Attributes *)self payloadRelayUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"RelayUUID" value:v14 isRequired:0 defaultValue:0];

  v15 = [(RMModelAppManagedDeclaration_Attributes *)self payloadTapToPayScreenLock];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"TapToPayScreenLock" value:v15 isRequired:0 defaultValue:v7];

  v16 = [(RMModelAppManagedDeclaration_Attributes *)self payloadVPNUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VPNUUID" value:v16 isRequired:0 defaultValue:0];

  v17 = [v4 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = RMModelAppManagedDeclaration_Attributes;
  v4 = [(RMModelPayloadBase *)&v26 copyWithZone:a3];
  v5 = [(NSArray *)self->_payloadAssociatedDomains copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadAssociatedDomainsEnableDirectDownloads copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadCellularSliceUUID copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadContentFilterUUID copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_payloadDNSProxyUUID copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSNumber *)self->_payloadHideable copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSNumber *)self->_payloadLockable copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSString *)self->_payloadRelayUUID copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSNumber *)self->_payloadTapToPayScreenLock copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSString *)self->_payloadVPNUUID copy];
  v24 = v4[11];
  v4[11] = v23;

  return v4;
}

@end