@interface RMModelScreenSharingHostSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 maximumVirtualDisplays:(id)a4 portBase:(id)a5 preventCopyFilesFromHost:(id)a6 preventCopyFilesToHost:(id)a7 preventHighPerformanceConnections:(id)a8;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 maximumVirtualDisplays:(id)a4 portBase:(id)a5 preventCopyFilesFromHost:(id)a6 preventCopyFilesToHost:(id)a7 preventHighPerformanceConnections:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.screensharing.host.settings"];
  if (v13)
  {
    [v19 setDeclarationIdentifier:v13];
  }

  else
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    [v19 setDeclarationIdentifier:v21];
  }

  [v19 setPayloadMaximumVirtualDisplays:v18];

  [v19 setPayloadPortBase:v17];
  v22 = MEMORY[0x277CBEC28];
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v19 setPayloadPreventCopyFilesFromHost:v23];

  if (v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v22;
  }

  [v19 setPayloadPreventCopyFilesToHost:v24];

  if (v14)
  {
    v25 = v14;
  }

  else
  {
    v25 = v22;
  }

  [v19 setPayloadPreventHighPerformanceConnections:v25];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.screensharing.host.settings"];
  if (v3)
  {
    [v4 setDeclarationIdentifier:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    [v4 setDeclarationIdentifier:v6];
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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelScreenSharingHostSettingsDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"MaximumVirtualDisplays" forKeyPath:@"payloadMaximumVirtualDisplays" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"PortBase" forKeyPath:@"payloadPortBase" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"PreventCopyFilesFromHost" forKeyPath:@"payloadPreventCopyFilesFromHost" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"PreventCopyFilesToHost" forKeyPath:@"payloadPreventCopyFilesToHost" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"PreventHighPerformanceConnections" forKeyPath:@"payloadPreventHighPerformanceConnections" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadMaximumVirtualDisplays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MaximumVirtualDisplays" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPortBase];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"PortBase" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventCopyFilesFromHost];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventCopyFilesFromHost" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventCopyFilesToHost];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventCopyFilesToHost" value:v9 isRequired:0 defaultValue:v8];

  v10 = [(RMModelScreenSharingHostSettingsDeclaration *)self payloadPreventHighPerformanceConnections];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PreventHighPerformanceConnections" value:v10 isRequired:0 defaultValue:v8];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RMModelScreenSharingHostSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v16 copyWithZone:a3];
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