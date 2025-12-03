@interface RMModelStatusAppManagedList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier name:(id)name externalVersionId:(id)id version:(id)version shortVersion:(id)shortVersion state:(id)self0 updateState:(id)self1 configState:(id)self2 reasons:(id)self3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusAppManagedList

+ (NSSet)allowedStatusKeys
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"name";
  v7[4] = @"external-version-id";
  v7[5] = @"version";
  v7[6] = @"short-version";
  v7[7] = @"state";
  v7[8] = @"update-state";
  v7[9] = @"config-state";
  v7[10] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:11];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier name:(id)name externalVersionId:(id)id version:(id)version shortVersion:(id)shortVersion state:(id)self0 updateState:(id)self1 configState:(id)self2 reasons:(id)self3
{
  reasonsCopy = reasons;
  configStateCopy = configState;
  updateStateCopy = updateState;
  stateCopy = state;
  shortVersionCopy = shortVersion;
  versionCopy = version;
  idCopy = id;
  nameCopy = name;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v26 = objc_opt_new();
  [v26 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v27 = removedCopy;
  }

  else
  {
    v27 = MEMORY[0x277CBEC28];
  }

  [v26 setStatusRemoved:{v27, identifier}];

  [v26 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v26 setStatusName:nameCopy];

  [v26 setStatusExternalVersionId:idCopy];
  [v26 setStatusVersion:versionCopy];

  [v26 setStatusShortVersion:shortVersionCopy];
  [v26 setStatusState:stateCopy];

  [v26 setStatusUpdateState:updateStateCopy];
  [v26 setStatusConfigState:configStateCopy];

  [v26 setStatusReasons:reasonsCopy];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setStatusIdentifier:identifierCopy];

  return v4;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746C098;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874685D0];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874685E8];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746C0B0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468600];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468618];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746C0E0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468630];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468648];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746C0F8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468660];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468678];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusAppManagedList allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"external-version-id" forKeyPath:@"statusExternalVersionId" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"short-version" forKeyPath:@"statusShortVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"update-state" forKeyPath:@"statusUpdateState" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"config-state" forKeyPath:@"statusConfigState" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]))
  {
    LOWORD(v17) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"reasons" forKeyPath:@"statusReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v17 error:error];
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
  statusIdentifier = [(RMModelStatusAppManagedList *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusAppManagedList *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusAppManagedList *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusName = [(RMModelStatusAppManagedList *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"name" value:statusName isRequired:0 defaultValue:0];

  statusExternalVersionId = [(RMModelStatusAppManagedList *)self statusExternalVersionId];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"external-version-id" value:statusExternalVersionId isRequired:0 defaultValue:0];

  statusVersion = [(RMModelStatusAppManagedList *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"version" value:statusVersion isRequired:0 defaultValue:0];

  statusShortVersion = [(RMModelStatusAppManagedList *)self statusShortVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"short-version" value:statusShortVersion isRequired:0 defaultValue:0];

  statusState = [(RMModelStatusAppManagedList *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:statusState isRequired:0 defaultValue:0];

  statusUpdateState = [(RMModelStatusAppManagedList *)self statusUpdateState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"update-state" value:statusUpdateState isRequired:0 defaultValue:0];

  statusConfigState = [(RMModelStatusAppManagedList *)self statusConfigState];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__RMModelStatusAppManagedList_serializePayloadWithType___block_invoke;
  v21[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"config-state" value:statusConfigState dictSerializer:v21 isRequired:0 defaultValue:0];

  statusReasons = [(RMModelStatusAppManagedList *)self statusReasons];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__RMModelStatusAppManagedList_serializePayloadWithType___block_invoke_2;
  v19[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:statusReasons itemSerializer:v19 isRequired:0 defaultValue:0];

  v17 = [v5 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = RMModelStatusAppManagedList;
  v4 = [(RMModelPayloadBase *)&v28 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusDeclarationIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusName copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_statusExternalVersionId copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusVersion copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusShortVersion copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSString *)self->_statusState copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSString *)self->_statusUpdateState copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(RMModelStatusAppManagedList_ManagedConfiguration *)self->_statusConfigState copy];
  v24 = v4[11];
  v4[11] = v23;

  v25 = [(NSArray *)self->_statusReasons copy];
  v26 = v4[12];
  v4[12] = v25;

  return v4;
}

@end