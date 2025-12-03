@interface RMModelStatusSoftwareUpdatePendingVersion
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithOsVersion:(id)version buildVersion:(id)buildVersion;
+ (id)buildWithOsVersion:(id)version buildVersion:(id)buildVersion targetLocalDateTime:(id)time;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusSoftwareUpdatePendingVersion

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"os-version";
  v7[1] = @"build-version";
  v7[2] = @"target-local-date-time";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithOsVersion:(id)version buildVersion:(id)buildVersion targetLocalDateTime:(id)time
{
  timeCopy = time;
  buildVersionCopy = buildVersion;
  versionCopy = version;
  v10 = objc_opt_new();
  [v10 setStatusOsVersion:versionCopy];

  [v10 setStatusBuildVersion:buildVersionCopy];
  [v10 setStatusTargetLocalDateTime:timeCopy];

  return v10;
}

+ (id)buildRequiredOnlyWithOsVersion:(id)version buildVersion:(id)buildVersion
{
  buildVersionCopy = buildVersion;
  versionCopy = version;
  v7 = objc_opt_new();
  [v7 setStatusOsVersion:versionCopy];

  [v7 setStatusBuildVersion:buildVersionCopy];

  return v7;
}

+ (id)supportedOS
{
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746CEF0;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469FB0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469FC8];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746CF08;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469FE0];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469FF8];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746CF38;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A010];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A028];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746CF20;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A040];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A058];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746CF50;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A070];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A088];
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

  v11 = +[RMModelStatusSoftwareUpdatePendingVersion allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"os-version" forKeyPath:@"statusOsVersion" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"build-version" forKeyPath:@"statusBuildVersion" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"target-local-date-time" forKeyPath:@"statusTargetLocalDateTime" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusOsVersion = [(RMModelStatusSoftwareUpdatePendingVersion *)self statusOsVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"os-version" value:statusOsVersion isRequired:1 defaultValue:0];

  statusBuildVersion = [(RMModelStatusSoftwareUpdatePendingVersion *)self statusBuildVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"build-version" value:statusBuildVersion isRequired:1 defaultValue:0];

  statusTargetLocalDateTime = [(RMModelStatusSoftwareUpdatePendingVersion *)self statusTargetLocalDateTime];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"target-local-date-time" value:statusTargetLocalDateTime isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelStatusSoftwareUpdatePendingVersion;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_statusOsVersion copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusBuildVersion copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusTargetLocalDateTime copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end