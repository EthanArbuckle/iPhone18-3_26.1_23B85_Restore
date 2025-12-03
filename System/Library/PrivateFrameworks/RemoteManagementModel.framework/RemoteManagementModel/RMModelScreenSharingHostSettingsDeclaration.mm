@interface RMModelScreenSharingHostSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier maximumVirtualDisplays:(id)displays portBase:(id)base preventCopyFilesFromHost:(id)host preventCopyFilesToHost:(id)toHost preventHighPerformanceConnections:(id)connections;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelScreenSharingHostSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"MaximumVirtualDisplays";
  v7[1] = @"PortBase";
  v7[2] = @"PreventCopyFilesFromHost";
  v7[3] = @"PreventCopyFilesToHost";
  v7[4] = @"PreventHighPerformanceConnections";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier maximumVirtualDisplays:(id)displays portBase:(id)base preventCopyFilesFromHost:(id)host preventCopyFilesToHost:(id)toHost preventHighPerformanceConnections:(id)connections
{
  identifierCopy = identifier;
  connectionsCopy = connections;
  toHostCopy = toHost;
  hostCopy = host;
  baseCopy = base;
  displaysCopy = displays;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.screensharing.host.settings"];
  if (identifierCopy)
  {
    [v19 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v19 setDeclarationIdentifier:uUIDString];
  }

  [v19 setPayloadMaximumVirtualDisplays:displaysCopy];

  [v19 setPayloadPortBase:baseCopy];
  v22 = MEMORY[0x277CBEC28];
  if (hostCopy)
  {
    v23 = hostCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v19 setPayloadPreventCopyFilesFromHost:v23];

  if (toHostCopy)
  {
    v24 = toHostCopy;
  }

  else
  {
    v24 = v22;
  }

  [v19 setPayloadPreventCopyFilesToHost:v24];

  if (connectionsCopy)
  {
    v25 = connectionsCopy;
  }

  else
  {
    v25 = v22;
  }

  [v19 setPayloadPreventHighPerformanceConnections:v25];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.screensharing.host.settings"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746B990;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874679B8];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874679D0];
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

  v11 = +[RMModelScreenSharingHostSettingsDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MaximumVirtualDisplays" forKeyPath:@"payloadMaximumVirtualDisplays" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"PortBase" forKeyPath:@"payloadPortBase" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PreventCopyFilesFromHost" forKeyPath:@"payloadPreventCopyFilesFromHost" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PreventCopyFilesToHost" forKeyPath:@"payloadPreventCopyFilesToHost" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PreventHighPerformanceConnections" forKeyPath:@"payloadPreventHighPerformanceConnections" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadMaximumVirtualDisplays = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadMaximumVirtualDisplays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MaximumVirtualDisplays" value:payloadMaximumVirtualDisplays isRequired:0 defaultValue:0];

  payloadPortBase = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPortBase];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"PortBase" value:payloadPortBase isRequired:0 defaultValue:0];

  payloadPreventCopyFilesFromHost = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventCopyFilesFromHost];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventCopyFilesFromHost" value:payloadPreventCopyFilesFromHost isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadPreventCopyFilesToHost = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventCopyFilesToHost];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventCopyFilesToHost" value:payloadPreventCopyFilesToHost isRequired:0 defaultValue:v8];

  payloadPreventHighPerformanceConnections = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventHighPerformanceConnections];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventHighPerformanceConnections" value:payloadPreventHighPerformanceConnections isRequired:0 defaultValue:v8];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelScreenSharingHostSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v16 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadMaximumVirtualDisplays copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_payloadPortBase copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadPreventCopyFilesFromHost copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSNumber *)self->_payloadPreventCopyFilesToHost copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSNumber *)self->_payloadPreventHighPerformanceConnections copy];
  v14 = v4[10];
  v4[10] = v13;

  return v4;
}

@end