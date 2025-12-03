@interface RMModelAppManagedDeclaration_Attributes
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithAssociatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads cellularSliceUUID:(id)d contentFilterUUID:(id)iD dnsProxyUUID:(id)uID hideable:(id)hideable lockable:(id)lockable relayUUID:(id)self0 tapToPayScreenLock:(id)self1 VPNUUID:(id)self2;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithAssociatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads cellularSliceUUID:(id)d contentFilterUUID:(id)iD dnsProxyUUID:(id)uID hideable:(id)hideable lockable:(id)lockable relayUUID:(id)self0 tapToPayScreenLock:(id)self1 VPNUUID:(id)self2
{
  nUUIDCopy = nUUID;
  lockCopy = lock;
  uUIDCopy = uUID;
  lockableCopy = lockable;
  hideableCopy = hideable;
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  downloadsCopy = downloads;
  domainsCopy = domains;
  v26 = objc_opt_new();
  [v26 setPayloadAssociatedDomains:domainsCopy];

  v27 = MEMORY[0x277CBEC28];
  if (downloadsCopy)
  {
    v28 = downloadsCopy;
  }

  else
  {
    v28 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadAssociatedDomainsEnableDirectDownloads:{v28, uUIDCopy}];

  [v26 setPayloadCellularSliceUUID:dCopy];
  [v26 setPayloadContentFilterUUID:iDCopy];

  [v26 setPayloadDNSProxyUUID:uIDCopy];
  v29 = MEMORY[0x277CBEC38];
  if (hideableCopy)
  {
    v30 = hideableCopy;
  }

  else
  {
    v30 = MEMORY[0x277CBEC38];
  }

  [v26 setPayloadHideable:v30];

  if (lockableCopy)
  {
    v31 = lockableCopy;
  }

  else
  {
    v31 = v29;
  }

  [v26 setPayloadLockable:v31];

  [v26 setPayloadRelayUUID:v35];
  if (lockCopy)
  {
    v32 = lockCopy;
  }

  else
  {
    v32 = v27;
  }

  [v26 setPayloadTapToPayScreenLock:v32];

  [v26 setPayloadVPNUUID:nUUIDCopy];

  return v26;
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

  v11 = +[RMModelAppManagedDeclaration_Attributes allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AssociatedDomains" forKeyPath:@"payloadAssociatedDomains" validator:&__block_literal_global_477 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"AssociatedDomainsEnableDirectDownloads" forKeyPath:@"payloadAssociatedDomainsEnableDirectDownloads" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"CellularSliceUUID" forKeyPath:@"payloadCellularSliceUUID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ContentFilterUUID" forKeyPath:@"payloadContentFilterUUID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DNSProxyUUID" forKeyPath:@"payloadDNSProxyUUID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Hideable" forKeyPath:@"payloadHideable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Lockable" forKeyPath:@"payloadLockable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"RelayUUID" forKeyPath:@"payloadRelayUUID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"TapToPayScreenLock" forKeyPath:@"payloadTapToPayScreenLock" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VPNUUID" forKeyPath:@"payloadVPNUUID" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadAssociatedDomains = [(RMModelAppManagedDeclaration_Attributes *)self payloadAssociatedDomains];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AssociatedDomains" value:payloadAssociatedDomains itemSerializer:&__block_literal_global_508 isRequired:0 defaultValue:0];

  payloadAssociatedDomainsEnableDirectDownloads = [(RMModelAppManagedDeclaration_Attributes *)self payloadAssociatedDomainsEnableDirectDownloads];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AssociatedDomainsEnableDirectDownloads" value:payloadAssociatedDomainsEnableDirectDownloads isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadCellularSliceUUID = [(RMModelAppManagedDeclaration_Attributes *)self payloadCellularSliceUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CellularSliceUUID" value:payloadCellularSliceUUID isRequired:0 defaultValue:0];

  payloadContentFilterUUID = [(RMModelAppManagedDeclaration_Attributes *)self payloadContentFilterUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ContentFilterUUID" value:payloadContentFilterUUID isRequired:0 defaultValue:0];

  payloadDNSProxyUUID = [(RMModelAppManagedDeclaration_Attributes *)self payloadDNSProxyUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DNSProxyUUID" value:payloadDNSProxyUUID isRequired:0 defaultValue:0];

  payloadHideable = [(RMModelAppManagedDeclaration_Attributes *)self payloadHideable];
  v12 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Hideable" value:payloadHideable isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadLockable = [(RMModelAppManagedDeclaration_Attributes *)self payloadLockable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Lockable" value:payloadLockable isRequired:0 defaultValue:v12];

  payloadRelayUUID = [(RMModelAppManagedDeclaration_Attributes *)self payloadRelayUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"RelayUUID" value:payloadRelayUUID isRequired:0 defaultValue:0];

  payloadTapToPayScreenLock = [(RMModelAppManagedDeclaration_Attributes *)self payloadTapToPayScreenLock];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"TapToPayScreenLock" value:payloadTapToPayScreenLock isRequired:0 defaultValue:v7];

  payloadVPNUUID = [(RMModelAppManagedDeclaration_Attributes *)self payloadVPNUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VPNUUID" value:payloadVPNUUID isRequired:0 defaultValue:0];

  v17 = [v4 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = RMModelAppManagedDeclaration_Attributes;
  v4 = [(RMModelPayloadBase *)&v26 copyWithZone:zone];
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