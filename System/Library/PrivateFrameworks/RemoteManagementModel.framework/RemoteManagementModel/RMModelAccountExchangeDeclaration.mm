@interface RMModelAccountExchangeDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier enabledProtocolTypes:(id)types;
+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name enabledProtocolTypes:(id)types userIdentityAssetReference:(id)reference hostName:(id)hostName port:(id)port path:(id)path externalHostName:(id)self0 externalPort:(id)self1 externalPath:(id)self2 oAuth:(id)self3 authenticationCredentialsAssetReference:(id)self4 authenticationIdentityAssetReference:(id)self5 SMIME:(id)self6 mailServiceActive:(id)self7 lockMailService:(id)self8 contactsServiceActive:(id)self9 lockContactsService:(id)contactsService calendarServiceActive:(id)calendarServiceActive lockCalendarService:(id)calendarService remindersServiceActive:(id)remindersServiceActive lockRemindersService:(id)remindersService notesServiceActive:(id)notesServiceActive lockNotesService:(id)notesService;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
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

+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name enabledProtocolTypes:(id)types userIdentityAssetReference:(id)reference hostName:(id)hostName port:(id)port path:(id)path externalHostName:(id)self0 externalPort:(id)self1 externalPath:(id)self2 oAuth:(id)self3 authenticationCredentialsAssetReference:(id)self4 authenticationIdentityAssetReference:(id)self5 SMIME:(id)self6 mailServiceActive:(id)self7 lockMailService:(id)self8 contactsServiceActive:(id)self9 lockContactsService:(id)contactsService calendarServiceActive:(id)calendarServiceActive lockCalendarService:(id)calendarService remindersServiceActive:(id)remindersServiceActive lockRemindersService:(id)remindersService notesServiceActive:(id)notesServiceActive lockNotesService:(id)notesService
{
  identifierCopy = identifier;
  notesServiceCopy = notesService;
  notesServiceActiveCopy = notesServiceActive;
  remindersServiceCopy = remindersService;
  remindersServiceActiveCopy = remindersServiceActive;
  calendarServiceCopy = calendarService;
  calendarServiceActiveCopy = calendarServiceActive;
  contactsServiceCopy = contactsService;
  serviceActiveCopy = serviceActive;
  serviceCopy = service;
  activeCopy = active;
  eCopy = e;
  identityAssetReferenceCopy = identityAssetReference;
  assetReferenceCopy = assetReference;
  authCopy = auth;
  externalPathCopy = externalPath;
  externalPortCopy = externalPort;
  externalHostNameCopy = externalHostName;
  pathCopy = path;
  portCopy = port;
  hostNameCopy = hostName;
  referenceCopy = reference;
  typesCopy = types;
  nameCopy = name;
  v35 = objc_opt_new();
  [v35 setDeclarationType:@"com.apple.configuration.account.exchange"];
  if (identifierCopy)
  {
    [v35 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [uUID UUIDString];
    v61 = calendarServiceActiveCopy;
    v37 = calendarServiceCopy;
    v38 = remindersServiceCopy;
    v40 = v39 = notesServiceActiveCopy;
    [v35 setDeclarationIdentifier:v40];

    notesServiceActiveCopy = v39;
    remindersServiceCopy = v38;
    calendarServiceCopy = v37;
    calendarServiceActiveCopy = v61;

    identifierCopy = 0;
  }

  [v35 setPayloadVisibleName:nameCopy];

  [v35 setPayloadEnabledProtocolTypes:typesCopy];
  [v35 setPayloadUserIdentityAssetReference:referenceCopy];

  [v35 setPayloadHostName:hostNameCopy];
  [v35 setPayloadPort:portCopy];

  [v35 setPayloadPath:pathCopy];
  [v35 setPayloadExternalHostName:externalHostNameCopy];

  [v35 setPayloadExternalPort:externalPortCopy];
  [v35 setPayloadExternalPath:externalPathCopy];

  [v35 setPayloadOAuth:authCopy];
  [v35 setPayloadAuthenticationCredentialsAssetReference:assetReferenceCopy];

  [v35 setPayloadAuthenticationIdentityAssetReference:identityAssetReferenceCopy];
  [v35 setPayloadSMIME:eCopy];

  v41 = MEMORY[0x277CBEC38];
  if (activeCopy)
  {
    v42 = activeCopy;
  }

  else
  {
    v42 = MEMORY[0x277CBEC38];
  }

  [v35 setPayloadMailServiceActive:v42];

  v43 = MEMORY[0x277CBEC28];
  if (serviceCopy)
  {
    v44 = serviceCopy;
  }

  else
  {
    v44 = MEMORY[0x277CBEC28];
  }

  [v35 setPayloadLockMailService:v44];

  if (serviceActiveCopy)
  {
    v45 = serviceActiveCopy;
  }

  else
  {
    v45 = v41;
  }

  [v35 setPayloadContactsServiceActive:v45];

  if (contactsServiceCopy)
  {
    v46 = contactsServiceCopy;
  }

  else
  {
    v46 = v43;
  }

  [v35 setPayloadLockContactsService:v46];

  if (calendarServiceActiveCopy)
  {
    v47 = calendarServiceActiveCopy;
  }

  else
  {
    v47 = v41;
  }

  [v35 setPayloadCalendarServiceActive:v47];

  if (calendarServiceCopy)
  {
    v48 = calendarServiceCopy;
  }

  else
  {
    v48 = v43;
  }

  [v35 setPayloadLockCalendarService:v48];

  if (remindersServiceActiveCopy)
  {
    v49 = remindersServiceActiveCopy;
  }

  else
  {
    v49 = v41;
  }

  [v35 setPayloadRemindersServiceActive:v49];

  if (remindersServiceCopy)
  {
    v50 = remindersServiceCopy;
  }

  else
  {
    v50 = v43;
  }

  [v35 setPayloadLockRemindersService:v50];

  if (notesServiceActiveCopy)
  {
    v51 = notesServiceActiveCopy;
  }

  else
  {
    v51 = v41;
  }

  [v35 setPayloadNotesServiceActive:v51];

  if (notesServiceCopy)
  {
    v52 = notesServiceCopy;
  }

  else
  {
    v52 = v43;
  }

  [v35 setPayloadLockNotesService:v52];

  [v35 updateServerToken];

  return v35;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier enabledProtocolTypes:(id)types
{
  identifierCopy = identifier;
  typesCopy = types;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.account.exchange"];
  if (identifierCopy)
  {
    [v7 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setDeclarationIdentifier:uUIDString];
  }

  [v7 setPayloadEnabledProtocolTypes:typesCopy];

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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelAccountExchangeDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"EnabledProtocolTypes" forKeyPath:@"payloadEnabledProtocolTypes" validator:&__block_literal_global_166 isRequired:1 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"UserIdentityAssetReference" forKeyPath:@"payloadUserIdentityAssetReference" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Path" forKeyPath:@"payloadPath" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ExternalHostName" forKeyPath:@"payloadExternalHostName" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"ExternalPort" forKeyPath:@"payloadExternalPort" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"External Path" forKeyPath:@"payloadExternalPath" isRequired:0 defaultValue:0 error:error]
     && (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"OAuth" forKeyPath:@"payloadOAuth" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error])
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error]
     && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationIdentityAssetReference" forKeyPath:@"payloadAuthenticationIdentityAssetReference" isRequired:0 defaultValue:0 error:error]
     && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SMIME" forKeyPath:@"payloadSMIME" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error])
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"MailServiceActive" forKeyPath:@"payloadMailServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"LockMailService" forKeyPath:@"payloadLockMailService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"ContactsServiceActive" forKeyPath:@"payloadContactsServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"LockContactsService" forKeyPath:@"payloadLockContactsService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"CalendarServiceActive" forKeyPath:@"payloadCalendarServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"LockCalendarService" forKeyPath:@"payloadLockCalendarService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RemindersServiceActive" forKeyPath:@"payloadRemindersServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"LockRemindersService" forKeyPath:@"payloadLockRemindersService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"NotesServiceActive" forKeyPath:@"payloadNotesServiceActive" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]
     && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"LockNotesService" forKeyPath:@"payloadLockNotesService" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];

  return v14;
}

uint64_t __87__RMModelAccountExchangeDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadVisibleName = [(RMModelAccountExchangeDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"VisibleName" value:payloadVisibleName isRequired:0 defaultValue:0];

  payloadEnabledProtocolTypes = [(RMModelAccountExchangeDeclaration *)self payloadEnabledProtocolTypes];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"EnabledProtocolTypes" value:payloadEnabledProtocolTypes itemSerializer:&__block_literal_global_236 isRequired:1 defaultValue:0];

  payloadUserIdentityAssetReference = [(RMModelAccountExchangeDeclaration *)self payloadUserIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserIdentityAssetReference" value:payloadUserIdentityAssetReference isRequired:0 defaultValue:0];

  payloadHostName = [(RMModelAccountExchangeDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"HostName" value:payloadHostName isRequired:0 defaultValue:0];

  payloadPort = [(RMModelAccountExchangeDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadPath = [(RMModelAccountExchangeDeclaration *)self payloadPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Path" value:payloadPath isRequired:0 defaultValue:0];

  payloadExternalHostName = [(RMModelAccountExchangeDeclaration *)self payloadExternalHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExternalHostName" value:payloadExternalHostName isRequired:0 defaultValue:0];

  payloadExternalPort = [(RMModelAccountExchangeDeclaration *)self payloadExternalPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"ExternalPort" value:payloadExternalPort isRequired:0 defaultValue:0];

  payloadExternalPath = [(RMModelAccountExchangeDeclaration *)self payloadExternalPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"External Path" value:payloadExternalPath isRequired:0 defaultValue:0];

  payloadOAuth = [(RMModelAccountExchangeDeclaration *)self payloadOAuth];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__RMModelAccountExchangeDeclaration_serializePayloadWithType___block_invoke_2;
  v35[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"OAuth" value:payloadOAuth dictSerializer:v35 isRequired:0 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelAccountExchangeDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  payloadAuthenticationIdentityAssetReference = [(RMModelAccountExchangeDeclaration *)self payloadAuthenticationIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationIdentityAssetReference" value:payloadAuthenticationIdentityAssetReference isRequired:0 defaultValue:0];

  payloadSMIME = [(RMModelAccountExchangeDeclaration *)self payloadSMIME];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__RMModelAccountExchangeDeclaration_serializePayloadWithType___block_invoke_3;
  v33[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SMIME" value:payloadSMIME dictSerializer:v33 isRequired:0 defaultValue:0];

  payloadMailServiceActive = [(RMModelAccountExchangeDeclaration *)self payloadMailServiceActive];
  v20 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"MailServiceActive" value:payloadMailServiceActive isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadLockMailService = [(RMModelAccountExchangeDeclaration *)self payloadLockMailService];
  v22 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockMailService" value:payloadLockMailService isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadContactsServiceActive = [(RMModelAccountExchangeDeclaration *)self payloadContactsServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"ContactsServiceActive" value:payloadContactsServiceActive isRequired:0 defaultValue:v20];

  payloadLockContactsService = [(RMModelAccountExchangeDeclaration *)self payloadLockContactsService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockContactsService" value:payloadLockContactsService isRequired:0 defaultValue:v22];

  payloadCalendarServiceActive = [(RMModelAccountExchangeDeclaration *)self payloadCalendarServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"CalendarServiceActive" value:payloadCalendarServiceActive isRequired:0 defaultValue:v20];

  payloadLockCalendarService = [(RMModelAccountExchangeDeclaration *)self payloadLockCalendarService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockCalendarService" value:payloadLockCalendarService isRequired:0 defaultValue:v22];

  payloadRemindersServiceActive = [(RMModelAccountExchangeDeclaration *)self payloadRemindersServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RemindersServiceActive" value:payloadRemindersServiceActive isRequired:0 defaultValue:v20];

  payloadLockRemindersService = [(RMModelAccountExchangeDeclaration *)self payloadLockRemindersService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockRemindersService" value:payloadLockRemindersService isRequired:0 defaultValue:v22];

  payloadNotesServiceActive = [(RMModelAccountExchangeDeclaration *)self payloadNotesServiceActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"NotesServiceActive" value:payloadNotesServiceActive isRequired:0 defaultValue:v20];

  payloadLockNotesService = [(RMModelAccountExchangeDeclaration *)self payloadLockNotesService];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"LockNotesService" value:payloadLockNotesService isRequired:0 defaultValue:v22];

  v31 = [v5 copy];

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v52.receiver = self;
  v52.super_class = RMModelAccountExchangeDeclaration;
  v4 = [(RMModelDeclarationBase *)&v52 copyWithZone:zone];
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