@interface RMModelStatusAccountListCardDAV
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name hostname:(id)hostname port:(id)port username:(id)username;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusAccountListCardDAV

+ (NSSet)allowedStatusKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"visible-name";
  v7[4] = @"hostname";
  v7[5] = @"port";
  v7[6] = @"username";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name hostname:(id)hostname port:(id)port username:(id)username
{
  usernameCopy = username;
  portCopy = port;
  hostnameCopy = hostname;
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
  [v22 setStatusVisibleName:nameCopy];

  [v22 setStatusHostname:hostnameCopy];
  [v22 setStatusPort:portCopy];

  [v22 setStatusUsername:usernameCopy];

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
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746BD50;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468090];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874680A8];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746BD98;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874680C0];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874680D8];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746BD68;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874680F0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468108];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746BDB0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468120];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468138];
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
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelStatusAccountListCardDAV allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"visible-name" forKeyPath:@"statusVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"hostname" forKeyPath:@"statusHostname" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"port" forKeyPath:@"statusPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"username" forKeyPath:@"statusUsername" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusIdentifier = [(RMModelStatusAccountListCardDAV *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusAccountListCardDAV *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusAccountListCardDAV *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusVisibleName = [(RMModelStatusAccountListCardDAV *)self statusVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"visible-name" value:statusVisibleName isRequired:0 defaultValue:0];

  statusHostname = [(RMModelStatusAccountListCardDAV *)self statusHostname];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"hostname" value:statusHostname isRequired:0 defaultValue:0];

  statusPort = [(RMModelStatusAccountListCardDAV *)self statusPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"port" value:statusPort isRequired:0 defaultValue:0];

  statusUsername = [(RMModelStatusAccountListCardDAV *)self statusUsername];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"username" value:statusUsername isRequired:0 defaultValue:0];

  v12 = [v4 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RMModelStatusAccountListCardDAV;
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

  v11 = [(NSString *)self->_statusVisibleName copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusHostname copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSNumber *)self->_statusPort copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusUsername copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end