@interface RMModelStatusPackageList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier name:(id)name version:(id)version state:(id)state reasons:(id)reasons;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusPackageList

+ (NSSet)allowedStatusKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"name";
  v7[4] = @"version";
  v7[5] = @"state";
  v7[6] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier name:(id)name version:(id)version state:(id)state reasons:(id)reasons
{
  reasonsCopy = reasons;
  stateCopy = state;
  versionCopy = version;
  nameCopy = name;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v22 = objc_opt_new();
  [v22 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v23 = removedCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v22 setStatusRemoved:v23];

  [v22 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v22 setStatusName:nameCopy];

  [v22 setStatusVersion:versionCopy];
  [v22 setStatusState:stateCopy];

  [v22 setStatusReasons:reasonsCopy];

  return v22;
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
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746CAD0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699B0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699C8];
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

  v12 = +[RMModelStatusPackageList allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"reasons" forKeyPath:@"statusReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  statusIdentifier = [(RMModelStatusPackageList *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusPackageList *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusPackageList *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusName = [(RMModelStatusPackageList *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"name" value:statusName isRequired:0 defaultValue:0];

  statusVersion = [(RMModelStatusPackageList *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"version" value:statusVersion isRequired:0 defaultValue:0];

  statusState = [(RMModelStatusPackageList *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:statusState isRequired:0 defaultValue:0];

  statusReasons = [(RMModelStatusPackageList *)self statusReasons];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__RMModelStatusPackageList_serializePayloadWithType___block_invoke;
  v15[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:statusReasons itemSerializer:v15 isRequired:0 defaultValue:0];

  v13 = [v5 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RMModelStatusPackageList;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:zone];
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

  v13 = [(NSString *)self->_statusVersion copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusState copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSArray *)self->_statusReasons copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end