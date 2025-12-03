@interface RMModelStatusAccountListExchange
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name hostname:(id)hostname port:(id)port username:(id)username isMailEnabled:(id)self0 areCalendarsEnabled:(id)self1 areContactsEnabled:(id)self2 areNotesEnabled:(id)self3 areRemindersEnabled:(id)self4;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusAccountListExchange

+ (NSSet)allowedStatusKeys
{
  v7[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"visible-name";
  v7[4] = @"hostname";
  v7[5] = @"port";
  v7[6] = @"username";
  v7[7] = @"is-mail-enabled";
  v7[8] = @"are-calendars-enabled";
  v7[9] = @"are-contacts-enabled";
  v7[10] = @"are-notes-enabled";
  v7[11] = @"are-reminders-enabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:12];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name hostname:(id)hostname port:(id)port username:(id)username isMailEnabled:(id)self0 areCalendarsEnabled:(id)self1 areContactsEnabled:(id)self2 areNotesEnabled:(id)self3 areRemindersEnabled:(id)self4
{
  remindersEnabledCopy = remindersEnabled;
  notesEnabledCopy = notesEnabled;
  contactsEnabledCopy = contactsEnabled;
  calendarsEnabledCopy = calendarsEnabled;
  enabledCopy = enabled;
  usernameCopy = username;
  portCopy = port;
  hostnameCopy = hostname;
  nameCopy = name;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v28 = objc_opt_new();
  [v28 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v29 = removedCopy;
  }

  else
  {
    v29 = MEMORY[0x277CBEC28];
  }

  [v28 setStatusRemoved:v29];

  [v28 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v28 setStatusVisibleName:nameCopy];

  [v28 setStatusHostname:hostnameCopy];
  [v28 setStatusPort:portCopy];

  [v28 setStatusUsername:usernameCopy];
  [v28 setStatusIsMailEnabled:enabledCopy];

  [v28 setStatusAreCalendarsEnabled:calendarsEnabledCopy];
  [v28 setStatusAreContactsEnabled:contactsEnabledCopy];

  [v28 setStatusAreNotesEnabled:notesEnabledCopy];
  [v28 setStatusAreRemindersEnabled:remindersEnabledCopy];

  return v28;
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
  v21[0] = &unk_28746BDC8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468150];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468168];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746BE10;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468180];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468198];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746BDE0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874681B0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874681C8];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746BE28;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874681E0];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874681F8];
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

  v11 = +[RMModelStatusAccountListExchange allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"visible-name" forKeyPath:@"statusVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"hostname" forKeyPath:@"statusHostname" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"port" forKeyPath:@"statusPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"username" forKeyPath:@"statusUsername" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"is-mail-enabled" forKeyPath:@"statusIsMailEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-calendars-enabled" forKeyPath:@"statusAreCalendarsEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-contacts-enabled" forKeyPath:@"statusAreContactsEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-notes-enabled" forKeyPath:@"statusAreNotesEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-reminders-enabled" forKeyPath:@"statusAreRemindersEnabled" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusIdentifier = [(RMModelStatusAccountListExchange *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusAccountListExchange *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusAccountListExchange *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusVisibleName = [(RMModelStatusAccountListExchange *)self statusVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"visible-name" value:statusVisibleName isRequired:0 defaultValue:0];

  statusHostname = [(RMModelStatusAccountListExchange *)self statusHostname];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"hostname" value:statusHostname isRequired:0 defaultValue:0];

  statusPort = [(RMModelStatusAccountListExchange *)self statusPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"port" value:statusPort isRequired:0 defaultValue:0];

  statusUsername = [(RMModelStatusAccountListExchange *)self statusUsername];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"username" value:statusUsername isRequired:0 defaultValue:0];

  statusIsMailEnabled = [(RMModelStatusAccountListExchange *)self statusIsMailEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"is-mail-enabled" value:statusIsMailEnabled isRequired:0 defaultValue:0];

  statusAreCalendarsEnabled = [(RMModelStatusAccountListExchange *)self statusAreCalendarsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-calendars-enabled" value:statusAreCalendarsEnabled isRequired:0 defaultValue:0];

  statusAreContactsEnabled = [(RMModelStatusAccountListExchange *)self statusAreContactsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-contacts-enabled" value:statusAreContactsEnabled isRequired:0 defaultValue:0];

  statusAreNotesEnabled = [(RMModelStatusAccountListExchange *)self statusAreNotesEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-notes-enabled" value:statusAreNotesEnabled isRequired:0 defaultValue:0];

  statusAreRemindersEnabled = [(RMModelStatusAccountListExchange *)self statusAreRemindersEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-reminders-enabled" value:statusAreRemindersEnabled isRequired:0 defaultValue:0];

  v17 = [v4 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30.receiver = self;
  v30.super_class = RMModelStatusAccountListExchange;
  v4 = [(RMModelPayloadBase *)&v30 copyWithZone:zone];
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

  v19 = [(NSNumber *)self->_statusIsMailEnabled copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSNumber *)self->_statusAreCalendarsEnabled copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSNumber *)self->_statusAreContactsEnabled copy];
  v24 = v4[11];
  v4[11] = v23;

  v25 = [(NSNumber *)self->_statusAreNotesEnabled copy];
  v26 = v4[12];
  v4[12] = v25;

  v27 = [(NSNumber *)self->_statusAreRemindersEnabled copy];
  v28 = v4[13];
  v4[13] = v27;

  return v4;
}

@end