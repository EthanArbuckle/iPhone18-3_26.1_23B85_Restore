@interface ICQDaemonPersisted
+ (NSDictionary)_placeholderPersistenceDictionary;
+ (NSMutableDictionary)_mutablePlaceholderPersistanceDictionary;
+ (id)_placeholderObject;
+ (id)persistedObject;
+ (id)userDefaults;
+ (void)clearPersistedObject;
- (BOOL)isExpired;
- (BOOL)isValidForAccount:(id)account;
- (ICQDaemonPersisted)initWithDictionary:(id)dictionary;
- (NSDate)expirationDate;
- (NSDictionary)_persistenceDictionary;
- (NSMutableDictionary)_mutablePersistenceDictionary;
- (NSNumber)_cachedQuotaAvailable;
- (double)_callbackIntervalFromServerObject:(id)object;
- (id)_initWithAccount:(id)account error:(id)error;
- (id)_initWithAccount:(id)account serverDictionary:(id)dictionary;
- (id)_initWithAccountAltDSID:(id)d error:(id)error;
- (void)persistObject;
@end

@implementation ICQDaemonPersisted

+ (void)clearPersistedObject
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Clearing persisted object for %{public}@", &v9, 0xCu);
  }

  userDefaults = [self userDefaults];
  persistenceKey = [self persistenceKey];
  [userDefaults removeObjectForKey:persistenceKey];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICQDaemonOfferPersistedNotificationName" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)userDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ICQDaemonPersisted_userDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userDefaults_onceToken != -1)
  {
    dispatch_once(&userDefaults_onceToken, block);
  }

  v2 = userDefaults_defaults;

  return v2;
}

+ (id)persistedObject
{
  userDefaults = [self userDefaults];
  persistenceKey = [self persistenceKey];
  v5 = [userDefaults valueForKey:persistenceKey];

  if (v5)
  {
    v6 = [[self alloc] initWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __34__ICQDaemonPersisted_userDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [*(a1 + 32) persistenceDomain];
  v3 = [v2 initWithSuiteName:v5];
  v4 = userDefaults_defaults;
  userDefaults_defaults = v3;
}

+ (id)_placeholderObject
{
  v3 = [self alloc];
  _placeholderPersistenceDictionary = [self _placeholderPersistenceDictionary];
  v5 = [v3 initWithDictionary:_placeholderPersistenceDictionary];

  return v5;
}

- (void)persistObject
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    persistenceKey = [objc_opt_class() persistenceKey];
    persistenceDomain = [objc_opt_class() persistenceDomain];
    v13 = 138543874;
    v14 = v4;
    v15 = 2112;
    v16 = persistenceKey;
    v17 = 2112;
    v18 = persistenceDomain;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Persisting %{public}@ using key %@ at location %@", &v13, 0x20u);
  }

  _persistenceDictionary = [(ICQDaemonPersisted *)self _persistenceDictionary];
  userDefaults = [objc_opt_class() userDefaults];
  persistenceKey2 = [objc_opt_class() persistenceKey];
  [userDefaults setObject:_persistenceDictionary forKey:persistenceKey2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICQDaemonOfferPersistedNotificationName" object:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (NSDate)expirationDate
{
  retrievalDate = [(ICQDaemonPersisted *)self retrievalDate];
  [(ICQDaemonPersisted *)self callbackInterval];
  v4 = [retrievalDate dateByAddingTimeInterval:?];

  return v4;
}

- (BOOL)isExpired
{
  expirationDate = [(ICQDaemonPersisted *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

- (BOOL)isValidForAccount:(id)account
{
  accountCopy = account;
  accountAltDSID = [(ICQDaemonPersisted *)self accountAltDSID];
  aa_altDSID = [accountCopy aa_altDSID];

  LOBYTE(accountCopy) = [accountAltDSID isEqualToString:aa_altDSID];
  return accountCopy;
}

- (ICQDaemonPersisted)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = ICQDaemonPersisted;
  v5 = [(ICQDaemonPersisted *)&v23 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = v5;
      v5 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v6 = [dictionaryCopy objectForKey:@"retrievalDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = _ICQGetLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "bad retrieval date %@", buf, 0xCu);
        }

LABEL_9:

        v10 = [dictionaryCopy objectForKey:@"callbackInterval"];
        if (v10)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v12 = _ICQGetLogSystem();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v25 = v10;
              _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "bad callbackInterval %@", buf, 0xCu);
            }

            goto LABEL_17;
          }

          [v10 doubleValue];
        }

        else
        {
          [objc_opt_class() defaultCallbackInterval];
        }

        v5->_callbackInterval = v11;
LABEL_17:
        v13 = _ICQStringFromDictionaryKey(dictionaryCopy, @"altDSID", &stru_288431E38);
        accountAltDSID = v5->_accountAltDSID;
        v5->_accountAltDSID = v13;

        v15 = [dictionaryCopy objectForKey:@"serverDict"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          p_super = &v5->_serverDictionary->super;
          v5->_serverDictionary = v16;
        }

        else
        {
          v18 = _ICQGetLogSystem();
          p_super = v18;
          if (v15)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [(ICQDaemonPersisted *)v15 initWithDictionary:?];
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275572000, p_super, OS_LOG_TYPE_DEFAULT, "persisted offer missing server dict", buf, 2u);
          }
        }

        v5->_failedToFetchFromServer = _ICQIntegerFromDictionaryKey(dictionaryCopy, @"failedToFetchFromServer", 0) != 0;
        v19 = [dictionaryCopy objectForKey:@"failureDetails"];
        failureDetails = v5->_failureDetails;
        v5->_failureDetails = v19;

        if (!v5->_retrievalDate || !v5->_serverDictionary)
        {

          v5 = 0;
        }

        goto LABEL_30;
      }

      v8 = MEMORY[0x277CBEAA8];
      [v6 doubleValue];
      v7 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    }

    v9 = &v5->_retrievalDate->super;
    v5->_retrievalDate = v7;
    goto LABEL_9;
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_initWithAccount:(id)account serverDictionary:(id)dictionary
{
  accountCopy = account;
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ICQDaemonPersisted;
  v8 = [(ICQDaemonPersisted *)&v13 init];
  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(ICQDaemonPersisted *)v8 setRetrievalDate:date];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"callbackInterval"];
    [(ICQDaemonPersisted *)v8 _callbackIntervalFromServerObject:v10];
    [(ICQDaemonPersisted *)v8 setCallbackInterval:?];

    aa_altDSID = [accountCopy aa_altDSID];
    [(ICQDaemonPersisted *)v8 setAccountAltDSID:aa_altDSID];

    [(ICQDaemonPersisted *)v8 setServerDictionary:dictionaryCopy];
  }

  return v8;
}

- (id)_initWithAccount:(id)account error:(id)error
{
  errorCopy = error;
  aa_altDSID = [account aa_altDSID];
  v8 = [(ICQDaemonPersisted *)self _initWithAccountAltDSID:aa_altDSID error:errorCopy];

  return v8;
}

- (id)_initWithAccountAltDSID:(id)d error:(id)error
{
  v23[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = ICQDaemonPersisted;
  v8 = [(ICQDaemonPersisted *)&v21 init];
  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(ICQDaemonPersisted *)v8 setRetrievalDate:date];

    [objc_opt_class() defaultCallbackInterval];
    [(ICQDaemonPersisted *)v8 setCallbackInterval:?];
    [(ICQDaemonPersisted *)v8 setAccountAltDSID:dCopy];
    _placeholderPersistenceDictionary = [objc_opt_class() _placeholderPersistenceDictionary];
    [(ICQDaemonPersisted *)v8 setServerDictionary:_placeholderPersistenceDictionary];

    [(ICQDaemonPersisted *)v8 setFailedToFetchFromServer:1];
    if (errorCopy)
    {
      v22[0] = @"ErrorDomain";
      domain = [errorCopy domain];
      v12 = domain;
      if (domain)
      {
        v13 = domain;
      }

      else
      {
        v13 = &stru_288431E38;
      }

      v23[0] = v13;
      v22[1] = @"ErrorCode";
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v23[1] = v14;
      v22[2] = @"ErrorDescription";
      localizedDescription = [errorCopy localizedDescription];
      v16 = localizedDescription;
      if (localizedDescription)
      {
        v17 = localizedDescription;
      }

      else
      {
        v17 = &stru_288431E38;
      }

      v23[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
      [(ICQDaemonPersisted *)v8 setFailureDetails:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (NSMutableDictionary)_mutablePlaceholderPersistanceDictionary
{
  v2 = [&unk_288443F18 mutableCopy];

  return v2;
}

- (NSMutableDictionary)_mutablePersistenceDictionary
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (self->_retrievalDate && self->_serverDictionary)
  {
    v14[0] = self->_retrievalDate;
    v13[0] = @"retrievalDate";
    v13[1] = @"callbackInterval";
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_callbackInterval];
    v4 = v3;
    accountAltDSID = @"invalid";
    serverDictionary = self->_serverDictionary;
    if (self->_accountAltDSID)
    {
      accountAltDSID = self->_accountAltDSID;
    }

    v14[1] = v3;
    v14[2] = accountAltDSID;
    v13[2] = @"altDSID";
    v13[3] = @"serverDict";
    v14[3] = serverDictionary;
    v13[4] = @"failedToFetchFromServer";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_failedToFetchFromServer];
    v14[4] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
    v9 = [v8 mutableCopy];

    failureDetails = self->_failureDetails;
    if (failureDetails)
    {
      [v9 setObject:failureDetails forKeyedSubscript:@"failureDetails"];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (double)_callbackIntervalFromServerObject:(id)object
{
  objectCopy = object;
  [objc_opt_class() defaultCallbackInterval];
  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    [objectCopy doubleValue];
    if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [objectCopy doubleValue];
      v5 = 3600.0;
      if (v7 >= 3600.0)
      {
        v5 = v7;
        if (v7 > 2592000.0)
        {
          v5 = 2592000.0;
        }
      }
    }
  }

  return v5;
}

- (NSNumber)_cachedQuotaAvailable
{
  serverDictionary = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = [serverDictionary objectForKeyedSubscript:@"quotaInfo"];
  v4 = [v3 objectForKeyedSubscript:@"totalAvailable"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
    }

    else
    {
      v5 = 0;
    }

    v4 = v5;
  }

  return v4;
}

+ (NSDictionary)_placeholderPersistenceDictionary
{
  _mutablePlaceholderPersistanceDictionary = [self _mutablePlaceholderPersistanceDictionary];
  v3 = [_mutablePlaceholderPersistanceDictionary copy];

  return v3;
}

- (NSDictionary)_persistenceDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  _mutablePersistenceDictionary = [(ICQDaemonPersisted *)self _mutablePersistenceDictionary];
  v4 = [_mutablePersistenceDictionary copy];

  v5 = [MEMORY[0x277CCAC58] propertyList:v4 isValidForFormat:200];
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "validated persistence dictionary", &v15, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "persistence dictionary is invalid: %@", &v15, 0xCu);
    }

    v8 = objc_alloc(objc_opt_class());
    accountAltDSID = [(ICQDaemonPersisted *)self accountAltDSID];
    v10 = [v8 _initWithAccountAltDSID:accountAltDSID error:0];
    _mutablePersistenceDictionary2 = [v10 _mutablePersistenceDictionary];
    v12 = [_mutablePersistenceDictionary2 copy];

    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "returning failure dictionary: %{public}@", &v15, 0xCu);
    }

    v4 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "bad server dict %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end