@interface RMModelAccountExchangeDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 enabledProtocolTypes:(id)a4;
+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 enabledProtocolTypes:(id)a5 userIdentityAssetReference:(id)a6 hostName:(id)a7 port:(id)a8 path:(id)a9 externalHostName:(id)a10 externalPort:(id)a11 externalPath:(id)a12 oAuth:(id)a13 authenticationCredentialsAssetReference:(id)a14 authenticationIdentityAssetReference:(id)a15 SMIME:(id)a16 mailServiceActive:(id)a17 lockMailService:(id)a18 contactsServiceActive:(id)a19 lockContactsService:(id)a20 calendarServiceActive:(id)a21 lockCalendarService:(id)a22 remindersServiceActive:(id)a23 lockRemindersService:(id)a24 notesServiceActive:(id)a25 lockNotesService:(id)a26;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelAccountExchangeDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[23] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleName";
  v7[1] = @"EnabledProtocolTypes";
  v7[2] = @"UserIdentityAssetReference";
  v7[3] = @"HostName";
  v7[4] = @"Port";
  v7[5] = @"Path";
  v7[6] = @"ExternalHostName";
  v7[7] = @"ExternalPort";
  v7[8] = @"External Path";
  v7[9] = @"OAuth";
  v7[10] = @"AuthenticationCredentialsAssetReference";
  v7[11] = @"AuthenticationIdentityAssetReference";
  v7[12] = @"SMIME";
  v7[13] = @"MailServiceActive";
  v7[14] = @"LockMailService";
  v7[15] = @"ContactsServiceActive";
  v7[16] = @"LockContactsService";
  v7[17] = @"CalendarServiceActive";
  v7[18] = @"LockCalendarService";
  v7[19] = @"RemindersServiceActive";
  v7[20] = @"LockRemindersService";
  v7[21] = @"NotesServiceActive";
  v7[22] = @"LockNotesService";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:23];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_1 != -1)
  {
    [RMModelAccountExchangeDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_1;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __52__RMModelAccountExchangeDeclaration_assetReferences__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465AF8 keyPath:@"$.payloadUserIdentityAssetReference"];
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465B10 keyPath:@"$.payloadAuthenticationCredentialsAssetReference", v0];
  v8[1] = v1;
  v2 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465B28 keyPath:@"$.payloadAuthenticationIdentityAssetReference"];
  v8[2] = v2;
  v3 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465B40 keyPath:@"$.payloadSMIME.payloadSigning.payloadIdentityAssetReference"];
  v8[3] = v3;
  v4 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465B58 keyPath:@"$.payloadSMIME.payloadEncryption.payloadIdentityAssetReference"];
  v8[4] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = assetReferences_assetPaths_1;
  assetReferences_assetPaths_1 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 enabledProtocolTypes:(id)a5 userIdentityAssetReference:(id)a6 hostName:(id)a7 port:(id)a8 path:(id)a9 externalHostName:(id)a10 externalPort:(id)a11 externalPath:(id)a12 oAuth:(id)a13 authenticationCredentialsAssetReference:(id)a14 authenticationIdentityAssetReference:(id)a15 SMIME:(id)a16 mailServiceActive:(id)a17 lockMailService:(id)a18 contactsServiceActive:(id)a19 lockContactsService:(id)a20 calendarServiceActive:(id)a21 lockCalendarService:(id)a22 remindersServiceActive:(id)a23 lockRemindersService:(id)a24 notesServiceActive:(id)a25 lockNotesService:(id)a26
{
  v26 = a3;
  v74 = a26;
  v27 = a25;
  v28 = a24;
  v73 = a23;
  v29 = a22;
  v30 = a21;
  v72 = a20;
  v71 = a19;
  v70 = a18;
  v69 = a17;
  v68 = a16;
  v67 = a15;
  v66 = a14;
  v65 = a13;
  v64 = a12;
  v62 = a11;
  v57 = a10;
  v54 = a9;
  v56 = a8;
  v31 = a7;
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v35 = objc_opt_new();
  [v35 setDeclarationType:@"com.apple.configuration.account.exchange"];
  if (v26)
  {
    [v35 setDeclarationIdentifier:v26];
  }

  else
  {
    v36 = [MEMORY[0x277CCAD78] UUID];
    [v36 UUIDString];
    v61 = v30;
    v37 = v29;
    v38 = v28;
    v40 = v39 = v27;
    [v35 setDeclarationIdentifier:v40];

    v27 = v39;
    v28 = v38;
    v29 = v37;
    v30 = v61;

    v26 = 0;
  }

  [v35 setPayloadVisibleName:v34];

  [v35 setPayloadEnabledProtocolTypes:v33];
  [v35 setPayloadUserIdentityAssetReference:v32];

  [v35 setPayloadHostName:v31];
  [v35 setPayloadPort:v56];

  [v35 setPayloadPath:v54];
  [v35 setPayloadExternalHostName:v57];

  [v35 setPayloadExternalPort:v62];
  [v35 setPayloadExternalPath:v64];

  [v35 setPayloadOAuth:v65];
  [v35 setPayloadAuthenticationCredentialsAssetReference:v66];

  [v35 setPayloadAuthenticationIdentityAssetReference:v67];
  [v35 setPayloadSMIME:v68];

  v41 = MEMORY[0x277CBEC38];
  if (v69)
  {
    v42 = v69;
  }

  else
  {
    v42 = MEMORY[0x277CBEC38];
  }

  [v35 setPayloadMailServiceActive:v42];

  v43 = MEMORY[0x277CBEC28];
  if (v70)
  {
    v44 = v70;
  }

  else
  {
    v44 = MEMORY[0x277CBEC28];
  }

  [v35 setPayloadLockMailService:v44];

  if (v71)
  {
    v45 = v71;
  }

  else
  {
    v45 = v41;
  }

  [v35 setPayloadContactsServiceActive:v45];

  if (v72)
  {
    v46 = v72;
  }

  else
  {
    v46 = v43;
  }

  [v35 setPayloadLockContactsService:v46];

  if (v30)
  {
    v47 = v30;
  }

  else
  {
    v47 = v41;
  }

  [v35 setPayloadCalendarServiceActive:v47];

  if (v29)
  {
    v48 = v29;
  }

  else
  {
    v48 = v43;
  }

  [v35 setPayloadLockCalendarService:v48];

  if (v73)
  {
    v49 = v73;
  }

  else
  {
    v49 = v41;
  }

  [v35 setPayloadRemindersServiceActive:v49];

  if (v28)
  {
    v50 = v28;
  }

  else
  {
    v50 = v43;
  }

  [v35 setPayloadLockRemindersService:v50];

  if (v27)
  {
    v51 = v27;
  }

  else
  {
    v51 = v41;
  }

  [v35 setPayloadNotesServiceActive:v51];

  if (v74)
  {
    v52 = v74;
  }

  else
  {
    v52 = v43;
  }

  [v35 setPayloadLockNotesService:v52];

  [v35 updateServerToken];

  return v35;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 enabledProtocolTypes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.account.exchange"];
  if (v5)
  {
    [v7 setDeclarationIdentifier:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [v7 setDeclarationIdentifier:v9];
  }

  [v7 setPayloadEnabledProtocolTypes:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746A9D0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465B70];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465B88];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746AA18;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465BA0];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465BB8];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746A9E8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465BD0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465BE8];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746AA30;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465C00];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465C18];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelAccountExchangeDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"EnabledProtocolTypes" forKeyPath:@"payloadEnabledProtocolTypes" validator:&__block_literal_global_166 isRequired:1 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"UserIdentityAssetReference" forKeyPath:@"payloadUserIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Path" forKeyPath:@"payloadPath" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ExternalHostName" forKeyPath:@"payloadExternalHostName" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"ExternalPort" forKeyPath:@"payloadExternalPort" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"External Path" forKeyPath:@"payloadExternalPath" isRequired:0 defaultValue:0 error:a5]
     && (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"OAuth" forKeyPath:@"payloadOAuth" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5])
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AuthenticationIdentityAssetReference" forKeyPath:@"payloadAuthenticationIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]
     && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"SMIME" forKeyPath:@"payloadSMIME" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5])
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"MailServiceActive" forKeyPath:@"payloadMailServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"LockMailService" forKeyPath:@"payloadLockMailService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"ContactsServiceActive" forKeyPath:@"payloadContactsServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"LockContactsService" forKeyPath:@"payloadLockContactsService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"CalendarServiceActive" forKeyPath:@"payloadCalendarServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"LockCalendarService" forKeyPath:@"payloadLockCalendarService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"RemindersServiceActive" forKeyPath:@"payloadRemindersServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"LockRemindersService" forKeyPath:@"payloadLockRemindersService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"NotesServiceActive" forKeyPath:@"payloadNotesServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"LockNotesService" forKeyPath:@"payloadLockNotesService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];

  return v14;
}

uint64_t __87__RMModelAccountExchangeDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAccountExchangeDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"VisibleName" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountExchangeDeclaration *)self payloadEnabledProtocolTypes];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"EnabledProtocolTypes" value:v7 itemSerializer:&__block_literal_global_236 isRequired:1 defaultValue:0];

  v8 = [(RMModelAccountExchangeDeclaration *)self payloadUserIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserIdentityAssetReference" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelAccountExchangeDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"HostName" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelAccountExchangeDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Port" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelAccountExchangeDeclaration *)self payloadPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Path" value:v11 isRequired:0 defaultValue:0];

  v12 = [(RMModelAccountExchangeDeclaration *)self payloadExternalHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExternalHostName" value:v12 isRequired:0 defaultValue:0];

  v13 = [(RMModelAccountExchangeDeclaration *)self payloadExternalPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"ExternalPort" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelAccountExchangeDeclaration *)self payloadExternalPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"External Path" value:v14 isRequired:0 defaultValue:0];

  v15 = [(RMModelAccountExchangeDeclaration *)self payloadOAuth];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__RMModelAccountExchangeDeclaration_serializePayloadWithType___block_invoke_2;
  v35[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v36 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"OAuth" value:v15 dictSerializer:v35 isRequired:0 defaultValue:0];

  v16 = [(RMModelAccountExchangeDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationCredentialsAssetReference" value:v16 isRequired:0 defaultValue:0];

  v17 = [(RMModelAccountExchangeDeclaration *)self payloadAuthenticationIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationIdentityAssetReference" value:v17 isRequired:0 defaultValue:0];

  v18 = [(RMModelAccountExchangeDeclaration *)self payloadSMIME];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__RMModelAccountExchangeDeclaration_serializePayloadWithType___block_invoke_3;
  v33[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v34 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SMIME" value:v18 dictSerializer:v33 isRequired:0 defaultValue:0];

  v19 = [(RMModelAccountExchangeDeclaration *)self payloadMailServiceActive];
  v20 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"MailServiceActive" value:v19 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v21 = [(RMModelAccountExchangeDeclaration *)self payloadLockMailService];
  v22 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockMailService" value:v21 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v23 = [(RMModelAccountExchangeDeclaration *)self payloadContactsServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"ContactsServiceActive" value:v23 isRequired:0 defaultValue:v20];

  v24 = [(RMModelAccountExchangeDeclaration *)self payloadLockContactsService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockContactsService" value:v24 isRequired:0 defaultValue:v22];

  v25 = [(RMModelAccountExchangeDeclaration *)self payloadCalendarServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"CalendarServiceActive" value:v25 isRequired:0 defaultValue:v20];

  v26 = [(RMModelAccountExchangeDeclaration *)self payloadLockCalendarService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockCalendarService" value:v26 isRequired:0 defaultValue:v22];

  v27 = [(RMModelAccountExchangeDeclaration *)self payloadRemindersServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RemindersServiceActive" value:v27 isRequired:0 defaultValue:v20];

  v28 = [(RMModelAccountExchangeDeclaration *)self payloadLockRemindersService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockRemindersService" value:v28 isRequired:0 defaultValue:v22];

  v29 = [(RMModelAccountExchangeDeclaration *)self payloadNotesServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"NotesServiceActive" value:v29 isRequired:0 defaultValue:v20];

  v30 = [(RMModelAccountExchangeDeclaration *)self payloadLockNotesService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockNotesService" value:v30 isRequired:0 defaultValue:v22];

  v31 = [v5 copy];

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v52.receiver = self;
  v52.super_class = RMModelAccountExchangeDeclaration;
  v4 = [(RMModelDeclarationBase *)&v52 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadVisibleName copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_payloadEnabledProtocolTypes copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadUserIdentityAssetReference copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadHostName copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSNumber *)self->_payloadPort copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSString *)self->_payloadPath copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(NSString *)self->_payloadExternalHostName copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(NSNumber *)self->_payloadExternalPort copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(NSString *)self->_payloadExternalPath copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(RMModelAccountExchangeDeclaration_OAuth *)self->_payloadOAuth copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v26 = v4[16];
  v4[16] = v25;

  v27 = [(NSString *)self->_payloadAuthenticationIdentityAssetReference copy];
  v28 = v4[17];
  v4[17] = v27;

  v29 = [(RMModelAccountExchangeDeclaration_SMIME *)self->_payloadSMIME copy];
  v30 = v4[18];
  v4[18] = v29;

  v31 = [(NSNumber *)self->_payloadMailServiceActive copy];
  v32 = v4[19];
  v4[19] = v31;

  v33 = [(NSNumber *)self->_payloadLockMailService copy];
  v34 = v4[20];
  v4[20] = v33;

  v35 = [(NSNumber *)self->_payloadContactsServiceActive copy];
  v36 = v4[21];
  v4[21] = v35;

  v37 = [(NSNumber *)self->_payloadLockContactsService copy];
  v38 = v4[22];
  v4[22] = v37;

  v39 = [(NSNumber *)self->_payloadCalendarServiceActive copy];
  v40 = v4[23];
  v4[23] = v39;

  v41 = [(NSNumber *)self->_payloadLockCalendarService copy];
  v42 = v4[24];
  v4[24] = v41;

  v43 = [(NSNumber *)self->_payloadRemindersServiceActive copy];
  v44 = v4[25];
  v4[25] = v43;

  v45 = [(NSNumber *)self->_payloadLockRemindersService copy];
  v46 = v4[26];
  v4[26] = v45;

  v47 = [(NSNumber *)self->_payloadNotesServiceActive copy];
  v48 = v4[27];
  v4[27] = v47;

  v49 = [(NSNumber *)self->_payloadLockNotesService copy];
  v50 = v4[28];
  v4[28] = v49;

  return v4;
}

@end