@interface RMModelSoftwareUpdateEnforcementSpecificDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier targetOSVersion:(id)version targetLocalDateTime:(id)time;
+ (id)buildWithIdentifier:(id)identifier targetOSVersion:(id)version targetBuildVersion:(id)buildVersion targetLocalDateTime:(id)time detailsURL:(id)l;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelSoftwareUpdateEnforcementSpecificDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"TargetOSVersion";
  v7[1] = @"TargetBuildVersion";
  v7[2] = @"TargetLocalDateTime";
  v7[3] = @"DetailsURL";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier targetOSVersion:(id)version targetBuildVersion:(id)buildVersion targetLocalDateTime:(id)time detailsURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  timeCopy = time;
  buildVersionCopy = buildVersion;
  versionCopy = version;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.softwareupdate.enforcement.specific"];
  if (identifierCopy)
  {
    [v16 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v16 setDeclarationIdentifier:uUIDString];
  }

  [v16 setPayloadTargetOSVersion:versionCopy];

  [v16 setPayloadTargetBuildVersion:buildVersionCopy];
  [v16 setPayloadTargetLocalDateTime:timeCopy];

  [v16 setPayloadDetailsURL:lCopy];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier targetOSVersion:(id)version targetLocalDateTime:(id)time
{
  identifierCopy = identifier;
  timeCopy = time;
  versionCopy = version;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.softwareupdate.enforcement.specific"];
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

  [v10 setPayloadTargetOSVersion:versionCopy];

  [v10 setPayloadTargetLocalDateTime:timeCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746BBE8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467DF0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E08];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746BC00;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E20];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E38];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746BC30;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E50];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E68];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746BC18;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E80];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467E98];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746BC48;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467EB0];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467EC8];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v26[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelSoftwareUpdateEnforcementSpecificDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TargetOSVersion" forKeyPath:@"payloadTargetOSVersion" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TargetBuildVersion" forKeyPath:@"payloadTargetBuildVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TargetLocalDateTime" forKeyPath:@"payloadTargetLocalDateTime" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DetailsURL" forKeyPath:@"payloadDetailsURL" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadTargetOSVersion = [(RMModelSoftwareUpdateEnforcementSpecificDeclaration *)self payloadTargetOSVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"TargetOSVersion" value:payloadTargetOSVersion isRequired:1 defaultValue:0];

  payloadTargetBuildVersion = [(RMModelSoftwareUpdateEnforcementSpecificDeclaration *)self payloadTargetBuildVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"TargetBuildVersion" value:payloadTargetBuildVersion isRequired:0 defaultValue:0];

  payloadTargetLocalDateTime = [(RMModelSoftwareUpdateEnforcementSpecificDeclaration *)self payloadTargetLocalDateTime];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"TargetLocalDateTime" value:payloadTargetLocalDateTime isRequired:1 defaultValue:0];

  payloadDetailsURL = [(RMModelSoftwareUpdateEnforcementSpecificDeclaration *)self payloadDetailsURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DetailsURL" value:payloadDetailsURL isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelSoftwareUpdateEnforcementSpecificDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadTargetOSVersion copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadTargetBuildVersion copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadTargetLocalDateTime copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadDetailsURL copy];
  v12 = v4[9];
  v4[9] = v11;

  return v4;
}

@end