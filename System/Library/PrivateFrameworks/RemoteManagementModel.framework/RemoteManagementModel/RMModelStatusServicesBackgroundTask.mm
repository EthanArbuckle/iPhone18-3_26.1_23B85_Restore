@interface RMModelStatusServicesBackgroundTask
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier uid:(id)uid path:(id)path state:(id)state type:(id)type;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed codeSignature:(id)signature uid:(id)uid path:(id)path state:(id)state type:(id)type launchd:(id)self0;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusServicesBackgroundTask

+ (NSSet)allowedStatusKeys
{
  v7[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"code-signature";
  v7[3] = @"uid";
  v7[4] = @"path";
  v7[5] = @"state";
  v7[6] = @"type";
  v7[7] = @"launchd";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed codeSignature:(id)signature uid:(id)uid path:(id)path state:(id)state type:(id)type launchd:(id)self0
{
  launchdCopy = launchd;
  typeCopy = type;
  stateCopy = state;
  pathCopy = path;
  uidCopy = uid;
  signatureCopy = signature;
  removedCopy = removed;
  identifierCopy = identifier;
  v24 = objc_opt_new();
  [v24 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v25 = removedCopy;
  }

  else
  {
    v25 = MEMORY[0x277CBEC28];
  }

  [v24 setStatusRemoved:v25];

  [v24 setStatusCodeSignature:signatureCopy];
  [v24 setStatusUid:uidCopy];

  [v24 setStatusPath:pathCopy];
  [v24 setStatusState:stateCopy];

  [v24 setStatusType:typeCopy];
  [v24 setStatusLaunchd:launchdCopy];

  return v24;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier uid:(id)uid path:(id)path state:(id)state type:(id)type
{
  typeCopy = type;
  stateCopy = state;
  pathCopy = path;
  uidCopy = uid;
  identifierCopy = identifier;
  v16 = objc_opt_new();
  [v16 setStatusIdentifier:identifierCopy];

  [v16 setStatusUid:uidCopy];
  [v16 setStatusPath:pathCopy];

  [v16 setStatusState:stateCopy];
  [v16 setStatusType:typeCopy];

  return v16;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746CD28;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CB0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CC8];
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
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusServicesBackgroundTask allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"code-signature" forKeyPath:@"statusCodeSignature" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"uid" forKeyPath:@"statusUid" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"path" forKeyPath:@"statusPath" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"state" forKeyPath:@"statusState" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"type" forKeyPath:@"statusType" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"launchd" forKeyPath:@"statusLaunchd" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  statusIdentifier = [(RMModelStatusServicesBackgroundTask *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusServicesBackgroundTask *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusCodeSignature = [(RMModelStatusServicesBackgroundTask *)self statusCodeSignature];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"code-signature" value:statusCodeSignature isRequired:0 defaultValue:0];

  statusUid = [(RMModelStatusServicesBackgroundTask *)self statusUid];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"uid" value:statusUid isRequired:1 defaultValue:0];

  statusPath = [(RMModelStatusServicesBackgroundTask *)self statusPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"path" value:statusPath isRequired:1 defaultValue:0];

  statusState = [(RMModelStatusServicesBackgroundTask *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:statusState isRequired:1 defaultValue:0];

  statusType = [(RMModelStatusServicesBackgroundTask *)self statusType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"type" value:statusType isRequired:1 defaultValue:0];

  statusLaunchd = [(RMModelStatusServicesBackgroundTask *)self statusLaunchd];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__RMModelStatusServicesBackgroundTask_serializePayloadWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"launchd" value:statusLaunchd dictSerializer:v16 isRequired:0 defaultValue:0];

  v14 = [v5 copy];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = RMModelStatusServicesBackgroundTask;
  v4 = [(RMModelPayloadBase *)&v22 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusCodeSignature copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_statusUid copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusPath copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusState copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusType copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(RMModelStatusServicesBackgroundTask_Launchd *)self->_statusLaunchd copy];
  v20 = v4[9];
  v4[9] = v19;

  return v4;
}

uint64_t __90__RMModelStatusServicesBackgroundTask_Launchd_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end