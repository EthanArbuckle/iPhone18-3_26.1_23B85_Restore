@interface UNSNotificationContactService
+ (id)sharedInstance;
- (BOOL)canAddToCuratedContacts:(id)a3 bundleIdentifier:(id)a4;
- (UNSNotificationContactService)initWithResolver:(id)a3;
- (id)_matchForContact:(id)a3 bundleIdentifier:(id)a4;
- (id)curatedContactForContact:(id)a3 bundleIdentifier:(id)a4 keysToFetch:(id)a5;
- (id)curatedContactMatchDetailsForContact:(id)a3 bundleIdentifier:(id)a4;
- (id)newCuratedContactForContact:(id)a3 imageData:(id)a4 bundleIdentifier:(id)a5;
- (id)updateServiceWithContact:(id)a3 bundleIdentifier:(id)a4;
- (void)_setResult:(id)a3 forContact:(id)a4 bundleIdentifier:(id)a5;
- (void)didAddToCuratedContactsForContact:(id)a3 bundleIdentifier:(id)a4 cnContactIdentifier:(id)a5;
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

- (UNSNotificationContactService)initWithResolver:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = UNSNotificationContactService;
  v6 = [(UNSNotificationContactService *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    resultsByServiceRecord = v6->_resultsByServiceRecord;
    v6->_resultsByServiceRecord = v7;

    [(NSCache *)v6->_resultsByServiceRecord setCountLimit:100];
    objc_storeStrong(&v6->_resolver, a3);
    v9 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v9 setIncludeAcceptedIntroductions:1];
    v10 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v9];
    curatedContactStore = v6->_curatedContactStore;
    v6->_curatedContactStore = v10;
  }

  return v6;
}

- (id)updateServiceWithContact:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isCNContactIdentifierSuggested])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 cnContactIdentifier];
  }

  resolver = self->_resolver;
  v10 = [v6 handleType];
  if (v10 == 1)
  {
    v11 = [v6 handle];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 handleType];
  if (v12 == 2)
  {
    v13 = [v6 handle];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 customIdentifier];
  if ([v6 handleType])
  {
    v15 = [(UNSCNContactResolver *)resolver resultForContactIdentifier:v8 emailAddress:v11 phoneNumber:v13 userIdentifier:v14 username:0 bundleIdentifier:v7];
  }

  else
  {
    [v6 handle];
    v16 = v22 = self;
    v15 = [(UNSCNContactResolver *)resolver resultForContactIdentifier:v8 emailAddress:v11 phoneNumber:v13 userIdentifier:v14 username:v16 bundleIdentifier:v7];

    self = v22;
  }

  if (v12 == 2)
  {
  }

  if (v10 == 1)
  {
  }

  if (v15 && ([v15 isSuggestedContact] & 1) == 0)
  {
    v17 = [v6 mutableCopy];
    [v15 cnContactFullname];
    v19 = v18 = self;
    [v17 setCnContactFullname:v19];

    v20 = [v15 cnContactIdentifier];
    [v17 setCnContactIdentifier:v20];

    [v17 setCnContactIdentifierSuggested:{objc_msgSend(v15, "isMatchTypeSuggested")}];
    [(UNSNotificationContactService *)v18 _setResult:v15 forContact:v17 bundleIdentifier:v7];
  }

  else
  {
    [(UNSNotificationContactService *)self _setResult:0 forContact:v6 bundleIdentifier:v7];
    v17 = 0;
  }

  return v17;
}

- (id)curatedContactMatchDetailsForContact:(id)a3 bundleIdentifier:(id)a4
{
  v4 = [(UNSNotificationContactService *)self _matchForContact:a3 bundleIdentifier:a4];
  v5 = v4;
  if (v4 && ([v4 isSuggestedContact] & 1) == 0)
  {
    v7 = [UNSNotificationContactServiceMatchDetails alloc];
    v8 = [v5 cnContactIdentifier];
    v9 = [v5 cnContactFullname];
    v6 = -[UNSNotificationContactServiceMatchDetails initWithCnContactIdentifier:cnContactFullname:isSuggestedContact:](v7, "initWithCnContactIdentifier:cnContactFullname:isSuggestedContact:", v8, v9, [v5 isMatchTypeSuggested]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)curatedContactForContact:(id)a3 bundleIdentifier:(id)a4 keysToFetch:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UNSNotificationContactService *)self _matchForContact:v8 bundleIdentifier:a4];
  v11 = v10;
  if (v10 && ([v10 isStrongestMatch] & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = [v12 cnContactIdentifier];
  if ([v13 length])
  {
    curatedContactStore = self->_curatedContactStore;
    v18 = 0;
    v15 = [(CNContactStore *)curatedContactStore unifiedContactWithIdentifier:v13 keysToFetch:v9 error:&v18];
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

- (BOOL)canAddToCuratedContacts:(id)a3 bundleIdentifier:(id)a4
{
  v4 = [(UNSNotificationContactService *)self _matchForContact:a3 bundleIdentifier:a4];
  v5 = [v4 isStrongestMatch];

  return v5 ^ 1;
}

- (id)newCuratedContactForContact:(id)a3 imageData:(id)a4 bundleIdentifier:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 displayName];
  if ([v10 length])
  {
    v11 = [MEMORY[0x277CBDA58] contactWithDisplayName:v10 handleStrings:MEMORY[0x277CBEBF8]];
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBDB38]);
  }

  v13 = [v7 handleType];
  if (!v13)
  {
    v21 = objc_alloc(MEMORY[0x277CBDBB0]);
    v22 = [v7 handle];
    v23 = [v7 customIdentifier];
    v24 = [v7 serviceName];
    v31 = v9;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v16 = [v21 initWithUrlString:0 username:v22 userIdentifier:v23 service:v24 displayname:v10 teamIdentifier:0 bundleIdentifiers:v25];

    v26 = objc_alloc(MEMORY[0x277CBDB20]);
    v27 = [v16 service];
    v17 = [v26 initWithLabel:v27 value:v16];

    v30 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v12 setSocialProfiles:v20];
    goto LABEL_10;
  }

  if (v13 == 2)
  {
    v18 = objc_alloc(MEMORY[0x277CBDB70]);
    v19 = [v7 handle];
    v16 = [v18 initWithStringValue:v19];

    v17 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v16];
    v32 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v12 setPhoneNumbers:v20];
LABEL_10:

    goto LABEL_11;
  }

  if (v13 != 1)
  {
    goto LABEL_12;
  }

  v14 = MEMORY[0x277CBDB20];
  v15 = [v7 handle];
  v16 = [v14 labeledValueWithLabel:0 value:v15];

  v33[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v12 setEmailAddresses:v17];
LABEL_11:

LABEL_12:
  if (v8)
  {
    [v12 setImageData:v8];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)didAddToCuratedContactsForContact:(id)a3 bundleIdentifier:(id)a4 cnContactIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSNotificationContactService *)self _matchForContact:v8 bundleIdentifier:v9];
  if ([v11 isMatchTypeSuggested])
  {
    v12 = [(UNSCNContactResolver *)self->_resolver confirm:0 match:v11];
  }

  v13 = [(UNSCNContactResolver *)self->_resolver resultForContactIdentifier:v10 emailAddress:0 phoneNumber:0 userIdentifier:0 username:0 bundleIdentifier:v9];
  if (!v13)
  {
    v14 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationContactService didAddToCuratedContactsForContact:bundleIdentifier:cnContactIdentifier:];
    }
  }

  [(UNSNotificationContactService *)self _setResult:v13 forContact:v8 bundleIdentifier:v9];
}

- (id)_matchForContact:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(UNSNotificationContactServiceRecord);
  [(UNSNotificationContactServiceRecord *)v8 setContact:v6];
  [(UNSNotificationContactServiceRecord *)v8 setBundleIdentifier:v7];
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(NSCache *)v9->_resultsByServiceRecord objectForKey:v8];
  objc_sync_exit(v9);

  return v10;
}

- (void)_setResult:(id)a3 forContact:(id)a4 bundleIdentifier:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(UNSNotificationContactServiceRecord);
  [(UNSNotificationContactServiceRecord *)v10 setContact:v8];
  [(UNSNotificationContactServiceRecord *)v10 setBundleIdentifier:v9];
  v11 = self;
  objc_sync_enter(v11);
  resultsByServiceRecord = v11->_resultsByServiceRecord;
  if (v13)
  {
    [(NSCache *)resultsByServiceRecord setObject:v13 forKey:v10];
  }

  else
  {
    [(NSCache *)resultsByServiceRecord removeObjectForKey:v10];
  }

  objc_sync_exit(v11);
}

@end