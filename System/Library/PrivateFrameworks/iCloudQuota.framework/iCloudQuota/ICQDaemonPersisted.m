@interface ICQDaemonPersisted
+ (NSDictionary)_placeholderPersistenceDictionary;
+ (NSMutableDictionary)_mutablePlaceholderPersistanceDictionary;
+ (id)_placeholderObject;
+ (id)persistedObject;
+ (id)userDefaults;
+ (void)clearPersistedObject;
- (BOOL)isExpired;
- (BOOL)isValidForAccount:(id)a3;
- (ICQDaemonPersisted)initWithDictionary:(id)a3;
- (NSDate)expirationDate;
- (NSDictionary)_persistenceDictionary;
- (NSMutableDictionary)_mutablePersistenceDictionary;
- (NSNumber)_cachedQuotaAvailable;
- (double)_callbackIntervalFromServerObject:(id)a3;
- (id)_initWithAccount:(id)a3 error:(id)a4;
- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4;
- (id)_initWithAccountAltDSID:(id)a3 error:(id)a4;
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

  v5 = [a1 userDefaults];
  v6 = [a1 persistenceKey];
  [v5 removeObjectForKey:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"ICQDaemonOfferPersistedNotificationName" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)userDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ICQDaemonPersisted_userDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (userDefaults_onceToken != -1)
  {
    dispatch_once(&userDefaults_onceToken, block);
  }

  v2 = userDefaults_defaults;

  return v2;
}

+ (id)persistedObject
{
  v3 = [a1 userDefaults];
  v4 = [a1 persistenceKey];
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    v6 = [[a1 alloc] initWithDictionary:v5];
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
  v3 = [a1 alloc];
  v4 = [a1 _placeholderPersistenceDictionary];
  v5 = [v3 initWithDictionary:v4];

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
    v6 = [objc_opt_class() persistenceKey];
    v7 = [objc_opt_class() persistenceDomain];
    v13 = 138543874;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Persisting %{public}@ using key %@ at location %@", &v13, 0x20u);
  }

  v8 = [(ICQDaemonPersisted *)self _persistenceDictionary];
  v9 = [objc_opt_class() userDefaults];
  v10 = [objc_opt_class() persistenceKey];
  [v9 setObject:v8 forKey:v10];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"ICQDaemonOfferPersistedNotificationName" object:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (NSDate)expirationDate
{
  v3 = [(ICQDaemonPersisted *)self retrievalDate];
  [(ICQDaemonPersisted *)self callbackInterval];
  v4 = [v3 dateByAddingTimeInterval:?];

  return v4;
}

- (BOOL)isExpired
{
  v2 = [(ICQDaemonPersisted *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (BOOL)isValidForAccount:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonPersisted *)self accountAltDSID];
  v6 = [v4 aa_altDSID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (ICQDaemonPersisted)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    v6 = [v4 objectForKey:@"retrievalDate"];
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

        v10 = [v4 objectForKey:@"callbackInterval"];
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
        v13 = _ICQStringFromDictionaryKey(v4, @"altDSID", &stru_288431E38);
        accountAltDSID = v5->_accountAltDSID;
        v5->_accountAltDSID = v13;

        v15 = [v4 objectForKey:@"serverDict"];
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

        v5->_failedToFetchFromServer = _ICQIntegerFromDictionaryKey(v4, @"failedToFetchFromServer", 0) != 0;
        v19 = [v4 objectForKey:@"failureDetails"];
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

- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ICQDaemonPersisted;
  v8 = [(ICQDaemonPersisted *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [(ICQDaemonPersisted *)v8 setRetrievalDate:v9];

    v10 = [v7 objectForKeyedSubscript:@"callbackInterval"];
    [(ICQDaemonPersisted *)v8 _callbackIntervalFromServerObject:v10];
    [(ICQDaemonPersisted *)v8 setCallbackInterval:?];

    v11 = [v6 aa_altDSID];
    [(ICQDaemonPersisted *)v8 setAccountAltDSID:v11];

    [(ICQDaemonPersisted *)v8 setServerDictionary:v7];
  }

  return v8;
}

- (id)_initWithAccount:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = [a3 aa_altDSID];
  v8 = [(ICQDaemonPersisted *)self _initWithAccountAltDSID:v7 error:v6];

  return v8;
}

- (id)_initWithAccountAltDSID:(id)a3 error:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = ICQDaemonPersisted;
  v8 = [(ICQDaemonPersisted *)&v21 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [(ICQDaemonPersisted *)v8 setRetrievalDate:v9];

    [objc_opt_class() defaultCallbackInterval];
    [(ICQDaemonPersisted *)v8 setCallbackInterval:?];
    [(ICQDaemonPersisted *)v8 setAccountAltDSID:v6];
    v10 = [objc_opt_class() _placeholderPersistenceDictionary];
    [(ICQDaemonPersisted *)v8 setServerDictionary:v10];

    [(ICQDaemonPersisted *)v8 setFailedToFetchFromServer:1];
    if (v7)
    {
      v22[0] = @"ErrorDomain";
      v11 = [v7 domain];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &stru_288431E38;
      }

      v23[0] = v13;
      v22[1] = @"ErrorCode";
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      v23[1] = v14;
      v22[2] = @"ErrorDescription";
      v15 = [v7 localizedDescription];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
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

- (double)_callbackIntervalFromServerObject:(id)a3
{
  v3 = a3;
  [objc_opt_class() defaultCallbackInterval];
  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [v3 doubleValue];
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
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = [v2 objectForKeyedSubscript:@"quotaInfo"];
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
  v2 = [a1 _mutablePlaceholderPersistanceDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)_persistenceDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ICQDaemonPersisted *)self _mutablePersistenceDictionary];
  v4 = [v3 copy];

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
    v9 = [(ICQDaemonPersisted *)self accountAltDSID];
    v10 = [v8 _initWithAccountAltDSID:v9 error:0];
    v11 = [v10 _mutablePersistenceDictionary];
    v12 = [v11 copy];

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