@interface RMModelStatusAccountListExchange
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 visibleName:(id)a6 hostname:(id)a7 port:(id)a8 username:(id)a9 isMailEnabled:(id)a10 areCalendarsEnabled:(id)a11 areContactsEnabled:(id)a12 areNotesEnabled:(id)a13 areRemindersEnabled:(id)a14;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 visibleName:(id)a6 hostname:(id)a7 port:(id)a8 username:(id)a9 isMailEnabled:(id)a10 areCalendarsEnabled:(id)a11 areContactsEnabled:(id)a12 areNotesEnabled:(id)a13 areRemindersEnabled:(id)a14
{
  v34 = a14;
  v19 = a13;
  v33 = a12;
  v32 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = objc_opt_new();
  [v28 setStatusIdentifier:v27];

  if (v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = MEMORY[0x277CBEC28];
  }

  [v28 setStatusRemoved:v29];

  [v28 setStatusDeclarationIdentifier:v25];
  [v28 setStatusVisibleName:v24];

  [v28 setStatusHostname:v23];
  [v28 setStatusPort:v22];

  [v28 setStatusUsername:v21];
  [v28 setStatusIsMailEnabled:v20];

  [v28 setStatusAreCalendarsEnabled:v32];
  [v28 setStatusAreContactsEnabled:v33];

  [v28 setStatusAreNotesEnabled:v19];
  [v28 setStatusAreRemindersEnabled:v34];

  return v28;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusIdentifier:v3];

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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusAccountListExchange allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"visible-name" forKeyPath:@"statusVisibleName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"hostname" forKeyPath:@"statusHostname" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"port" forKeyPath:@"statusPort" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"username" forKeyPath:@"statusUsername" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"is-mail-enabled" forKeyPath:@"statusIsMailEnabled" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"are-calendars-enabled" forKeyPath:@"statusAreCalendarsEnabled" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"are-contacts-enabled" forKeyPath:@"statusAreContactsEnabled" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"are-notes-enabled" forKeyPath:@"statusAreNotesEnabled" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"are-reminders-enabled" forKeyPath:@"statusAreRemindersEnabled" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusAccountListExchange *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusAccountListExchange *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v7 = [(RMModelStatusAccountListExchange *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-identifier" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelStatusAccountListExchange *)self statusVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"visible-name" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusAccountListExchange *)self statusHostname];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"hostname" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelStatusAccountListExchange *)self statusPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"port" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelStatusAccountListExchange *)self statusUsername];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"username" value:v11 isRequired:0 defaultValue:0];

  v12 = [(RMModelStatusAccountListExchange *)self statusIsMailEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"is-mail-enabled" value:v12 isRequired:0 defaultValue:0];

  v13 = [(RMModelStatusAccountListExchange *)self statusAreCalendarsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-calendars-enabled" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelStatusAccountListExchange *)self statusAreContactsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-contacts-enabled" value:v14 isRequired:0 defaultValue:0];

  v15 = [(RMModelStatusAccountListExchange *)self statusAreNotesEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-notes-enabled" value:v15 isRequired:0 defaultValue:0];

  v16 = [(RMModelStatusAccountListExchange *)self statusAreRemindersEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-reminders-enabled" value:v16 isRequired:0 defaultValue:0];

  v17 = [v4 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = RMModelStatusAccountListExchange;
  v4 = [(RMModelPayloadBase *)&v30 copyWithZone:a3];
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