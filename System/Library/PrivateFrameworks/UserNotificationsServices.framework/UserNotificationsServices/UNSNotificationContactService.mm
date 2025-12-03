@interface UNSNotificationContactService
+ (id)sharedInstance;
- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier;
- (UNSNotificationContactService)initWithResolver:(id)resolver;
- (id)_matchForContact:(id)contact bundleIdentifier:(id)identifier;
- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier;
- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier;
- (id)updateServiceWithContact:(id)contact bundleIdentifier:(id)identifier;
- (void)_setResult:(id)result forContact:(id)contact bundleIdentifier:(id)identifier;
- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier;
@end

@implementation UNSNotificationContactService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNSNotificationContactService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __47__UNSNotificationContactService_sharedInstance__block_invoke()
{
  v0 = [UNSNotificationContactService alloc];
  v3 = objc_alloc_init(UNSCNContactResolver);
  v1 = [(UNSNotificationContactService *)v0 initWithResolver:v3];
  v2 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v1;
}

- (UNSNotificationContactService)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v13.receiver = self;
  v13.super_class = UNSNotificationContactService;
  v6 = [(UNSNotificationContactService *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    resultsByServiceRecord = v6->_resultsByServiceRecord;
    v6->_resultsByServiceRecord = v7;

    [(NSCache *)v6->_resultsByServiceRecord setCountLimit:100];
    objc_storeStrong(&v6->_resolver, resolver);
    v9 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v9 setIncludeAcceptedIntroductions:1];
    v10 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v9];
    curatedContactStore = v6->_curatedContactStore;
    v6->_curatedContactStore = v10;
  }

  return v6;
}

- (id)updateServiceWithContact:(id)contact bundleIdentifier:(id)identifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  if ([contactCopy isCNContactIdentifierSuggested])
  {
    cnContactIdentifier = 0;
  }

  else
  {
    cnContactIdentifier = [contactCopy cnContactIdentifier];
  }

  resolver = self->_resolver;
  handleType = [contactCopy handleType];
  if (handleType == 1)
  {
    handle = [contactCopy handle];
  }

  else
  {
    handle = 0;
  }

  handleType2 = [contactCopy handleType];
  if (handleType2 == 2)
  {
    handle2 = [contactCopy handle];
  }

  else
  {
    handle2 = 0;
  }

  customIdentifier = [contactCopy customIdentifier];
  if ([contactCopy handleType])
  {
    v15 = [(UNSCNContactResolver *)resolver resultForContactIdentifier:cnContactIdentifier emailAddress:handle phoneNumber:handle2 userIdentifier:customIdentifier username:0 bundleIdentifier:identifierCopy];
  }

  else
  {
    [contactCopy handle];
    v16 = v22 = self;
    v15 = [(UNSCNContactResolver *)resolver resultForContactIdentifier:cnContactIdentifier emailAddress:handle phoneNumber:handle2 userIdentifier:customIdentifier username:v16 bundleIdentifier:identifierCopy];

    self = v22;
  }

  if (handleType2 == 2)
  {
  }

  if (handleType == 1)
  {
  }

  if (v15 && ([v15 isSuggestedContact] & 1) == 0)
  {
    v17 = [contactCopy mutableCopy];
    [v15 cnContactFullname];
    v19 = v18 = self;
    [v17 setCnContactFullname:v19];

    cnContactIdentifier2 = [v15 cnContactIdentifier];
    [v17 setCnContactIdentifier:cnContactIdentifier2];

    [v17 setCnContactIdentifierSuggested:{objc_msgSend(v15, "isMatchTypeSuggested")}];
    [(UNSNotificationContactService *)v18 _setResult:v15 forContact:v17 bundleIdentifier:identifierCopy];
  }

  else
  {
    [(UNSNotificationContactService *)self _setResult:0 forContact:contactCopy bundleIdentifier:identifierCopy];
    v17 = 0;
  }

  return v17;
}

- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier
{
  v4 = [(UNSNotificationContactService *)self _matchForContact:contact bundleIdentifier:identifier];
  v5 = v4;
  if (v4 && ([v4 isSuggestedContact] & 1) == 0)
  {
    v7 = [UNSNotificationContactServiceMatchDetails alloc];
    cnContactIdentifier = [v5 cnContactIdentifier];
    cnContactFullname = [v5 cnContactFullname];
    v6 = -[UNSNotificationContactServiceMatchDetails initWithCnContactIdentifier:cnContactFullname:isSuggestedContact:](v7, "initWithCnContactIdentifier:cnContactFullname:isSuggestedContact:", cnContactIdentifier, cnContactFullname, [v5 isMatchTypeSuggested]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch
{
  contactCopy = contact;
  fetchCopy = fetch;
  v10 = [(UNSNotificationContactService *)self _matchForContact:contactCopy bundleIdentifier:identifier];
  v11 = v10;
  if (v10 && ([v10 isStrongestMatch] & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = contactCopy;
  }

  cnContactIdentifier = [v12 cnContactIdentifier];
  if ([cnContactIdentifier length])
  {
    curatedContactStore = self->_curatedContactStore;
    v18 = 0;
    v15 = [(CNContactStore *)curatedContactStore unifiedContactWithIdentifier:cnContactIdentifier keysToFetch:fetchCopy error:&v18];
    if (v18)
    {
      v16 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [UNSNotificationContactService curatedContactForContact:bundleIdentifier:keysToFetch:];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier
{
  v4 = [(UNSNotificationContactService *)self _matchForContact:contacts bundleIdentifier:identifier];
  isStrongestMatch = [v4 isStrongestMatch];

  return isStrongestMatch ^ 1;
}

- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier
{
  v33[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  dataCopy = data;
  identifierCopy = identifier;
  displayName = [contactCopy displayName];
  if ([displayName length])
  {
    v11 = [MEMORY[0x277CBDA58] contactWithDisplayName:displayName handleStrings:MEMORY[0x277CBEBF8]];
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBDB38]);
  }

  handleType = [contactCopy handleType];
  if (!handleType)
  {
    v21 = objc_alloc(MEMORY[0x277CBDBB0]);
    handle = [contactCopy handle];
    customIdentifier = [contactCopy customIdentifier];
    serviceName = [contactCopy serviceName];
    v31 = identifierCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v16 = [v21 initWithUrlString:0 username:handle userIdentifier:customIdentifier service:serviceName displayname:displayName teamIdentifier:0 bundleIdentifiers:v25];

    v26 = objc_alloc(MEMORY[0x277CBDB20]);
    service = [v16 service];
    v17 = [v26 initWithLabel:service value:v16];

    v30 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v12 setSocialProfiles:v20];
    goto LABEL_10;
  }

  if (handleType == 2)
  {
    v18 = objc_alloc(MEMORY[0x277CBDB70]);
    handle2 = [contactCopy handle];
    v16 = [v18 initWithStringValue:handle2];

    v17 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v16];
    v32 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v12 setPhoneNumbers:v20];
LABEL_10:

    goto LABEL_11;
  }

  if (handleType != 1)
  {
    goto LABEL_12;
  }

  v14 = MEMORY[0x277CBDB20];
  handle3 = [contactCopy handle];
  v16 = [v14 labeledValueWithLabel:0 value:handle3];

  v33[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v12 setEmailAddresses:v17];
LABEL_11:

LABEL_12:
  if (dataCopy)
  {
    [v12 setImageData:dataCopy];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  contactIdentifierCopy = contactIdentifier;
  v11 = [(UNSNotificationContactService *)self _matchForContact:contactCopy bundleIdentifier:identifierCopy];
  if ([v11 isMatchTypeSuggested])
  {
    v12 = [(UNSCNContactResolver *)self->_resolver confirm:0 match:v11];
  }

  v13 = [(UNSCNContactResolver *)self->_resolver resultForContactIdentifier:contactIdentifierCopy emailAddress:0 phoneNumber:0 userIdentifier:0 username:0 bundleIdentifier:identifierCopy];
  if (!v13)
  {
    v14 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationContactService didAddToCuratedContactsForContact:bundleIdentifier:cnContactIdentifier:];
    }
  }

  [(UNSNotificationContactService *)self _setResult:v13 forContact:contactCopy bundleIdentifier:identifierCopy];
}

- (id)_matchForContact:(id)contact bundleIdentifier:(id)identifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  v8 = objc_alloc_init(UNSNotificationContactServiceRecord);
  [(UNSNotificationContactServiceRecord *)v8 setContact:contactCopy];
  [(UNSNotificationContactServiceRecord *)v8 setBundleIdentifier:identifierCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSCache *)selfCopy->_resultsByServiceRecord objectForKey:v8];
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)_setResult:(id)result forContact:(id)contact bundleIdentifier:(id)identifier
{
  resultCopy = result;
  contactCopy = contact;
  identifierCopy = identifier;
  v10 = objc_alloc_init(UNSNotificationContactServiceRecord);
  [(UNSNotificationContactServiceRecord *)v10 setContact:contactCopy];
  [(UNSNotificationContactServiceRecord *)v10 setBundleIdentifier:identifierCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultsByServiceRecord = selfCopy->_resultsByServiceRecord;
  if (resultCopy)
  {
    [(NSCache *)resultsByServiceRecord setObject:resultCopy forKey:v10];
  }

  else
  {
    [(NSCache *)resultsByServiceRecord removeObjectForKey:v10];
  }

  objc_sync_exit(selfCopy);
}

@end