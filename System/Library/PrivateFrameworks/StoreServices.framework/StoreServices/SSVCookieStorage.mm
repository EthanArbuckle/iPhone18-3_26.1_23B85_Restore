@interface SSVCookieStorage
+ (BOOL)_bindStatement:(sqlite3_stmt *)statement withValues:(id)values;
+ (BOOL)_currentProcessShouldUseRescuedStorageLocationForLocation:(id)location;
+ (BOOL)_fileIsOwnedByRoot:(id)root;
+ (BOOL)_fileURLRepresentsSharedStorageLocation:(id)location;
+ (BOOL)_migrateToVersion2WithDatabase:(id)database;
+ (BOOL)_setupCookieDatabase:(id)database forCookieStorage:(id)storage;
+ (BOOL)responseHasSetCookies:(id)cookies;
+ (id)_getGlobalSetCookiesForResponse:(id)response;
+ (id)_getSetCookiesForResponse:(id)response;
+ (id)_getUserSetCookiesForResponse:(id)response;
+ (id)_rescuedStorageLocationForLocation:(id)location;
+ (id)_sharedStorageLocationPath;
+ (id)sharedStorage;
- (BOOL)_shouldAddITFECookieToURL:(id)l;
- (SSSQLiteDatabase)_database;
- (SSVCookieStorage)initWithStorageLocation:(id)location;
- (id)_accountForKey:(id)key;
- (id)_allCookieKeys;
- (id)_columnNameForCookieProperty:(id)property;
- (id)_copyCookieDictionaryForURL:(id)l key:(id)key;
- (id)_copyCookieObjectsForURL:(id)l key:(id)key;
- (id)_copyCookiesForPreparedSQLStatement:(sqlite3_stmt *)statement;
- (id)_copyCookiesWithKey:(id)key;
- (id)_copyPrivateCookieObjectsForURL:(id)l key:(id)key;
- (id)_copyPrivateCookiesForURL:(id)l key:(id)key;
- (id)_filterCookies:(id)cookies forURL:(id)l;
- (id)allCookiesForAccount:(id)account;
- (id)allCookiesForUserIdentifier:(id)identifier scope:(int64_t)scope;
- (id)cookieArrayBySettingFeatureEnablerWithArray:(id)array key:(id)key;
- (id)cookieHeadersForURL:(id)l account:(id)account;
- (id)cookieHeadersForURL:(id)l userIdentifier:(id)identifier scope:(int64_t)scope;
- (id)cookiesForURL:(id)l account:(id)account;
- (id)cookiesForURL:(id)l userIdentifier:(id)identifier scope:(int64_t)scope;
- (id)fetchDefaults;
- (void)_bindInsertStatement:(sqlite3_stmt *)statement forCookie:(id)cookie key:(id)key;
- (void)_cookieDatabaseDidChange;
- (void)_handleSharedCookieDatabaseDidChangeDarwinNotification;
- (void)_insertCookies:(id)cookies forKey:(id)key;
- (void)_setCookies:(id)cookies forKey:(id)key;
- (void)dealloc;
- (void)removeAllCookies;
- (void)removeCookiesWithAccount:(id)account;
- (void)removeCookiesWithProperties:(id)properties;
- (void)removeCookiesWithUserIdentifier:(id)identifier scope:(int64_t)scope;
- (void)setCookies:(id)cookies forAccount:(id)account;
- (void)setCookies:(id)cookies forUserIdentifier:(id)identifier;
- (void)setCookiesForHTTPResponse:(id)response account:(id)account;
- (void)setCookiesForHTTPResponse:(id)response userIdentifier:(id)identifier scope:(int64_t)scope;
- (void)setCookiesFromCookieStorage:(id)storage;
- (void)setFeatureEnablerInDictionary:(id)dictionary key:(id)key;
- (void)synchronizeFeatureEnablerCookieWithCookieValue:(id)value key:(id)key result:(id)result;
@end

@implementation SSVCookieStorage

- (SSVCookieStorage)initWithStorageLocation:(id)location
{
  v46 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (([locationCopy isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Storage location must be a file URL"];
  }

  v43.receiver = self;
  v43.super_class = SSVCookieStorage;
  v5 = [(SSVCookieStorage *)&v43 init];
  if (!v5)
  {
    v6 = locationCopy;
    goto LABEL_33;
  }

  if ([objc_opt_class() _currentProcessShouldUseRescuedStorageLocationForLocation:locationCopy])
  {
    v6 = [objc_opt_class() _rescuedStorageLocationForLocation:locationCopy];

    v7 = +[SSLogConfig sharedConfig];
    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v44 = 138412290;
      v45 = v6;
      LODWORD(v42) = 12;
      v41 = &v44;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v44, v42}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_15;
  }

  v6 = locationCopy;
LABEL_18:
  v5->_performingMigration = 0;
  absoluteString = [v6 absoluteString];
  v20 = [absoluteString containsString:@"backup"];

  if (!v20)
  {
    goto LABEL_31;
  }

  v21 = +[SSLogConfig sharedAccountsCookiesConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog2 | 2;
  }

  else
  {
    v23 = shouldLog2;
  }

  oSLogObject2 = [v21 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_29;
  }

  v25 = objc_opt_class();
  v44 = 138543362;
  v45 = v25;
  v26 = v25;
  LODWORD(v42) = 12;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v44, v42}];
    free(v27);
    SSFileLog(v21, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject2);
LABEL_29:
  }

  v5->_performingMigration = 1;
LABEL_31:
  v34 = dispatch_queue_create("com.apple.StoreServices.SSVCookieStorage", 0);
  dispatchQueue = v5->_dispatchQueue;
  v5->_dispatchQueue = v34;

  v36 = [v6 copy];
  storageLocation = v5->_storageLocation;
  v5->_storageLocation = v36;

  v38 = [objc_opt_class() _fileURLRepresentsSharedStorageLocation:v5->_storageLocation];
  v5->_usesSharedCookieDatabase = v38;
  if (v38)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _SSVCookieStorageHandleSharedCookieDatabaseDidChangeDarwinNotification, @"SSVCookieStorageSharedCookieDatabaseDidChangeDarwinNotification", 0, 1028);
  }

LABEL_33:

  return v5;
}

- (void)dealloc
{
  if (self->_usesSharedCookieDatabase)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SSVCookieStorageSharedCookieDatabaseDidChangeDarwinNotification", 0);
  }

  v4.receiver = self;
  v4.super_class = SSVCookieStorage;
  [(SSVCookieStorage *)&v4 dealloc];
}

+ (id)sharedStorage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSVCookieStorage_sharedStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStorage_sOnce != -1)
  {
    dispatch_once(&sharedStorage_sOnce, block);
  }

  v2 = sharedStorage_sSharedStorage;

  return v2;
}

void __33__SSVCookieStorage_sharedStorage__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _sharedStorageLocationPath];
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v3 = [v1 stringByDeletingLastPathComponent];
    [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

    v4 = objc_alloc(objc_opt_class());
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];
    v6 = [v4 initWithStorageLocation:v5];
    v7 = sharedStorage_sSharedStorage;
    sharedStorage_sSharedStorage = v6;
  }

  else
  {
    v2 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v8 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = objc_opt_class();
      v10 = *(&v19 + 4);
      LODWORD(v18) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_4;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v19, v18, v19}];
      free(v11);
      SSFileLog(v2, @"%@", v12, v13, v14, v15, v16, v17, v5);
    }
  }

LABEL_4:
}

- (id)allCookiesForAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [v5 uniqueIdentifier];
  v8 = [(SSVCookieStorage *)self allCookiesForUserIdentifier:uniqueIdentifier scope:accountScope];

  return v8;
}

- (id)allCookiesForUserIdentifier:(id)identifier scope:(int64_t)scope
{
  v5 = [SSVCookieKey keyWithIdentifier:identifier scope:scope];
  v6 = [(SSVCookieStorage *)self _copyCookiesWithKey:v5];
  v7 = [(SSVCookieStorage *)self cookieArrayBySettingFeatureEnablerWithArray:v6 key:v5];

  return v7;
}

- (id)cookieHeadersForURL:(id)l account:(id)account
{
  lCopy = l;
  accountCopy = account;
  v8 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [v8 uniqueIdentifier];
  v11 = [(SSVCookieStorage *)self cookieHeadersForURL:lCopy userIdentifier:uniqueIdentifier scope:accountScope];

  return v11;
}

- (id)cookieHeadersForURL:(id)l userIdentifier:(id)identifier scope:(int64_t)scope
{
  lCopy = l;
  identifierCopy = identifier;
  v10 = [SSVCookieKey keyWithIdentifier:identifierCopy scope:scope];
  v11 = [(SSVCookieStorage *)self _copyCookieDictionaryForURL:lCopy key:v10];
  if ([(SSVCookieStorage *)self _shouldAddITFECookieToURL:lCopy])
  {
    [(SSVCookieStorage *)self setFeatureEnablerInDictionary:v11 key:v10];
  }

  if ([v11 count])
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __61__SSVCookieStorage_cookieHeadersForURL_userIdentifier_scope___block_invoke;
    v19 = &unk_1E84AF8D0;
    v21 = v22;
    v13 = v12;
    v20 = v13;
    [v11 enumerateKeysAndObjectsUsingBlock:&v16];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v13, @"Cookie", 0, v16, v17, v18, v19}];

    _Block_object_dispose(v22, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __61__SSVCookieStorage_cookieHeadersForURL_userIdentifier_scope___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) >= 1)
  {
    [*(a1 + 32) appendString:@"; "];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@"="];
  [*(a1 + 32) appendString:v5];
  ++*(*(*(a1 + 40) + 8) + 24);
}

- (id)cookiesForURL:(id)l account:(id)account
{
  lCopy = l;
  accountCopy = account;
  v8 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [v8 uniqueIdentifier];
  v11 = [(SSVCookieStorage *)self cookiesForURL:lCopy userIdentifier:uniqueIdentifier scope:accountScope];

  return v11;
}

- (id)cookiesForURL:(id)l userIdentifier:(id)identifier scope:(int64_t)scope
{
  lCopy = l;
  v9 = [SSVCookieKey keyWithIdentifier:identifier scope:scope];
  v10 = [(SSVCookieStorage *)self _copyCookieObjectsForURL:lCopy key:v9];
  v11 = [(SSVCookieStorage *)self _shouldAddITFECookieToURL:lCopy];

  if (v11)
  {
    v12 = [(SSVCookieStorage *)self cookieArrayBySettingFeatureEnablerWithArray:v10 key:v9];

    v10 = v12;
  }

  return v10;
}

- (void)removeAllCookies
{
  v35 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    ams_iTunesAccounts = [ams_sharedAccountStore ams_iTunesAccounts];
    v33[0] = ams_iTunesAccounts;
    ams_iTunesSandboxAccounts = [ams_sharedAccountStore ams_iTunesSandboxAccounts];
    v33[1] = ams_iTunesSandboxAccounts;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];

    v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = *v25;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                [v16 ams_removeAllCookies];
                if ([v16 isDirty])
                {
                  v17 = [ams_sharedAccountStore ams_saveAccount:v16 verifyCredentials:0];
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __36__SSVCookieStorage_removeAllCookies__block_invoke;
    v21 = &unk_1E84B0F48;
    objc_copyWeak(&v22, &location);
    [_database prepareStatementForSQL:@"DELETE FROM cookies" cache:0 usingBlock:&v18];

    [(SSVCookieStorage *)self _cookieDatabaseDidChange:v18];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __36__SSVCookieStorage_removeAllCookies__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _database];
  [v3 statementHasRowAfterStepping:a2];
}

- (void)removeCookiesWithProperties:(id)properties
{
  v34 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    [ams_sharedAccountStore ams_removeCookiesMatchingProperties:propertiesCopy error:0];
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = propertiesCopy;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v5)
    {
      v6 = *v26;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v9 = [(SSVCookieStorage *)self _columnNameForCookieProperty:v8];
          if (v9)
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@=?)", v9];
            [v19 addObject:v10];

            v11 = [v4 objectForKey:v8];
            [v18 addObject:v11];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v5);
    }

    if ([v19 count])
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = [v19 componentsJoinedByString:@" AND "];
      v14 = [v12 initWithFormat:@"DELETE FROM cookies WHERE %@", v13];

      objc_initWeak(&location, self);
      _database = [(SSVCookieStorage *)self _database];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __48__SSVCookieStorage_removeCookiesWithProperties___block_invoke;
      v20[3] = &unk_1E84B0F70;
      objc_copyWeak(&v23, &location);
      v22 = &v29;
      v21 = v18;
      [_database prepareStatementForSQL:v14 cache:0 usingBlock:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    [(SSVCookieStorage *)self _cookieDatabaseDidChange];
    if ((v30[3] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid property value(s)"];
    }

    _Block_object_dispose(&v29, 8);
  }
}

void __48__SSVCookieStorage_removeCookiesWithProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [objc_opt_class() _bindStatement:a2 withValues:*(a1 + 32)];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    do
    {
      v4 = [WeakRetained _database];
      v5 = [v4 statementHasRowAfterStepping:a2];
    }

    while ((v5 & 1) != 0);
  }
}

- (void)removeCookiesWithAccount:(id)account
{
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
    accountCopy = v7;
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [accountCopy uniqueIdentifier];
  [(SSVCookieStorage *)self removeCookiesWithUserIdentifier:uniqueIdentifier scope:accountScope];
}

- (void)removeCookiesWithUserIdentifier:(id)identifier scope:(int64_t)scope
{
  location[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
    {
      v22 = [SSVCookieKey keyWithIdentifier:identifierCopy scope:scope];
      v23 = [(SSVCookieStorage *)self _accountForKey:v22];
      v24 = v23;
      if (v23)
      {
        [v23 ams_removeAllCookies];
        if ([v24 isDirty])
        {
          ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
          v26 = [ams_sharedAccountStore ams_saveAccount:v24 verifyCredentials:0];
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM cookies WHERE user=? AND user_scope=?"];
      objc_initWeak(location, self);
      _database = [(SSVCookieStorage *)self _database];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __58__SSVCookieStorage_removeCookiesWithUserIdentifier_scope___block_invoke;
      v28[3] = &unk_1E84B0F98;
      objc_copyWeak(v30, location);
      v29 = identifierCopy;
      v30[1] = scope;
      [_database prepareStatementForSQL:v7 cache:0 usingBlock:v28];

      [(SSVCookieStorage *)self _cookieDatabaseDidChange];
      objc_destroyWeak(v30);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsCookiesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v13 = *(location + 4);
      LODWORD(v27) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v27}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
    }
  }
}

void __58__SSVCookieStorage_removeCookiesWithUserIdentifier_scope___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_opt_class();
  v10[0] = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v5 _bindStatement:a2 withValues:v7];

  do
  {
    v8 = [WeakRetained _database];
    v9 = [v8 statementHasRowAfterStepping:a2];
  }

  while ((v9 & 1) != 0);
}

+ (BOOL)responseHasSetCookies:(id)cookies
{
  cookiesCopy = cookies;
  v5 = [self _getSetCookiesForResponse:cookiesCopy];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = [self _getUserSetCookiesForResponse:cookiesCopy];

    if ([v7 count])
    {
      v6 = 1;
      v5 = v7;
    }

    else
    {
      v5 = [self _getGlobalSetCookiesForResponse:cookiesCopy];

      v6 = [v5 count] != 0;
    }
  }

  return v6;
}

- (void)setCookies:(id)cookies forAccount:(id)account
{
  cookiesCopy = cookies;
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [v7 uniqueIdentifier];
  v10 = [SSVCookieKey keyWithIdentifier:uniqueIdentifier scope:accountScope];

  [(SSVCookieStorage *)self _setCookies:cookiesCopy forKey:v10];
}

- (void)setCookies:(id)cookies forUserIdentifier:(id)identifier
{
  cookiesCopy = cookies;
  v7 = [SSVCookieKey keyWithIdentifier:identifier scope:0];
  [(SSVCookieStorage *)self _setCookies:cookiesCopy forKey:v7];
}

- (void)setCookiesForHTTPResponse:(id)response account:(id)account
{
  responseCopy = response;
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy)
  {
    accountScope = [accountCopy accountScope];
  }

  else
  {
    accountScope = 0;
  }

  uniqueIdentifier = [v7 uniqueIdentifier];
  [(SSVCookieStorage *)self setCookiesForHTTPResponse:responseCopy userIdentifier:uniqueIdentifier scope:accountScope];
}

- (void)setCookiesForHTTPResponse:(id)response userIdentifier:(id)identifier scope:(int64_t)scope
{
  responseCopy = response;
  identifierCopy = identifier;
  v9 = [objc_opt_class() _getSetCookiesForResponse:responseCopy];
  if ([v9 count])
  {
    v10 = [SSVCookieKey keyWithIdentifier:identifierCopy scope:scope];
    [(SSVCookieStorage *)self _setCookies:v9 forKey:v10];
  }

  v11 = [objc_opt_class() _getUserSetCookiesForResponse:responseCopy];

  if ([v11 count])
  {
    v12 = [SSVCookieKey keyWithIdentifier:identifierCopy scope:scope];
    [(SSVCookieStorage *)self _setCookies:v11 forKey:v12];
  }

  v13 = [objc_opt_class() _getGlobalSetCookiesForResponse:responseCopy];

  if ([v13 count])
  {
    v14 = [SSVCookieKey keyWithIdentifier:&unk_1F507A1C8 scope:scope];
    [(SSVCookieStorage *)self _setCookies:v13 forKey:v14];
  }
}

- (void)setCookiesFromCookieStorage:(id)storage
{
  storageCopy = storage;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _database = [storageCopy _database];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__SSVCookieStorage_setCookiesFromCookieStorage___block_invoke;
  v15[3] = &unk_1E84B0FC0;
  v7 = storageCopy;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  [_database performTransactionWithBlock:v15];

  objc_initWeak(&location, self);
  _database2 = [(SSVCookieStorage *)self _database];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SSVCookieStorage_setCookiesFromCookieStorage___block_invoke_2;
  v11[3] = &unk_1E84B1010;
  objc_copyWeak(&v13, &location);
  v10 = v8;
  v12 = v10;
  [_database2 performTransactionWithBlock:v11];

  [(SSVCookieStorage *)self _cookieDatabaseDidChange];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __48__SSVCookieStorage_setCookiesFromCookieStorage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _allCookieKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) _copyCookiesWithKey:v7];
        if (v8)
        {
          [*(a1 + 40) setObject:v8 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t __48__SSVCookieStorage_setCookiesFromCookieStorage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SSVCookieStorage_setCookiesFromCookieStorage___block_invoke_3;
  v5[3] = &unk_1E84B0FE8;
  v5[4] = WeakRetained;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  return 1;
}

- (void)_handleSharedCookieDatabaseDidChangeDarwinNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SSVCookieStorageSharedCookiesDidChangeNotification" object:self];
}

- (void)setFeatureEnablerInDictionary:(id)dictionary key:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"itfe"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SSVCookieStorage_setFeatureEnablerInDictionary_key___block_invoke;
  v11[3] = &unk_1E84B1038;
  v12 = v8;
  v13 = dictionaryCopy;
  v9 = dictionaryCopy;
  v10 = v8;
  [(SSVCookieStorage *)self synchronizeFeatureEnablerCookieWithCookieValue:v10 key:keyCopy result:v11];
}

void __54__SSVCookieStorage_setFeatureEnablerInDictionary_key___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (v5 || !*(a1 + 32))
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      v7 = v5;
      v6 = [v5 value];
      [*(a1 + 40) setObject:v6 forKeyedSubscript:@"itfe"];
    }

    else
    {
      v7 = 0;
      [*(a1 + 40) removeObjectForKey:@"itfe"];
    }

    v5 = v7;
  }

LABEL_8:
}

- (id)cookieArrayBySettingFeatureEnablerWithArray:(id)array key:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [array mutableCopy];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v25 = keyCopy;
    v10 = *v31;
    v11 = -1;
    while (2)
    {
      v12 = 0;
      v13 = v11 + 1;
      v11 += v9;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v30 + 1) + 8 * v12);
        name = [v14 name];
        v16 = [name isEqualToString:@"itfe"];

        if (v16)
        {
          v17 = v14;
          goto LABEL_11;
        }

        ++v12;
        ++v13;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v17 = 0;
    v13 = v11;
LABEL_11:
    self = selfCopy;
    keyCopy = v25;
  }

  else
  {
    v17 = 0;
    v13 = -1;
  }

  value = [v17 value];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__SSVCookieStorage_cookieArrayBySettingFeatureEnablerWithArray_key___block_invoke;
  v26[3] = &unk_1E84B1060;
  v27 = v17;
  v19 = v7;
  v28 = v19;
  v29 = v13;
  v20 = v17;
  [(SSVCookieStorage *)self synchronizeFeatureEnablerCookieWithCookieValue:value key:keyCopy result:v26];

  v21 = v28;
  v22 = v19;

  return v19;
}

void __68__SSVCookieStorage_cookieArrayBySettingFeatureEnablerWithArray_key___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    if (v5 || !v7)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 40);
      v9 = v6;
      if (v7)
      {
        [v8 setObject:v6 atIndexedSubscript:*(a1 + 48)];
      }

      else
      {
        [v8 addObject:v6];
      }
    }

    else
    {
      v9 = 0;
      [*(a1 + 40) removeObjectAtIndex:*(a1 + 48)];
    }

    v6 = v9;
  }

LABEL_10:
}

- (BOOL)_shouldAddITFECookieToURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = host;
  if (host && ([host hasPrefix:@"."] & 1) == 0)
  {
    v6 = [@"." stringByAppendingString:v5];

    v5 = v6;
  }

  scheme = [lCopy scheme];
  v8 = [scheme isEqualToString:@"https"];

  LOBYTE(scheme) = [v5 hasSuffix:@".apple.com"];
  return v8 & scheme;
}

- (void)synchronizeFeatureEnablerCookieWithCookieValue:(id)value key:(id)key result:(id)result
{
  v89[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  resultCopy = result;
  fetchDefaults = [(SSVCookieStorage *)self fetchDefaults];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __78__SSVCookieStorage_synchronizeFeatureEnablerCookieWithCookieValue_key_result___block_invoke;
  v78[3] = &unk_1E84AC258;
  v13 = v12;
  v79 = v13;
  [fetchDefaults enumerateKeysAndObjectsUsingBlock:v78];
  if (MGGetBoolAnswer())
  {
    v14 = [v13 count];
    if (!valueCopy || v14)
    {
      if ([v13 count])
      {
        v73 = keyCopy;
        v31 = [valueCopy componentsSeparatedByString:@"+"];
        v32 = [v13 count];
        v70 = v31;
        if (v32 != [v31 count])
        {
          goto LABEL_28;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v74 objects:v87 count:16];
        if (v34)
        {
          v35 = v34;
          v68 = resultCopy;
          v71 = valueCopy;
          v36 = 0;
          v37 = *v75;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v75 != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = [fetchDefaults objectForKeyedSubscript:*(*(&v74 + 1) + 8 * i)];
              bOOLValue = [v39 BOOLValue];

              v36 |= bOOLValue ^ 1;
            }

            v35 = [v33 countByEnumeratingWithState:&v74 objects:v87 count:16];
          }

          while (v35);

          valueCopy = v71;
          resultCopy = v68;
          if (v36)
          {
LABEL_28:
            v69 = [v13 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v41 = [v69 componentsJoinedByString:@"+"];
            v42 = objc_alloc(MEMORY[0x1E696AC58]);
            v43 = *MEMORY[0x1E696A420];
            v85[0] = *MEMORY[0x1E696A438];
            v85[1] = v43;
            v86[0] = @"itfe";
            v86[1] = @".apple.com";
            v44 = *MEMORY[0x1E696A468];
            v85[2] = *MEMORY[0x1E696A448];
            v85[3] = v44;
            v86[2] = @"/";
            v86[3] = v41;
            v72 = v41;
            v86[4] = MEMORY[0x1E695E118];
            v45 = *MEMORY[0x1E696A428];
            v85[4] = *MEMORY[0x1E696A460];
            v85[5] = v45;
            v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:31536000.0];
            v86[5] = v46;
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:6];
            v48 = [v42 initWithProperties:v47];

            v67 = v48;
            v84 = v48;
            v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
            keyCopy = v73;
            [(SSVCookieStorage *)self _setCookies:v49 forKey:v73];

            v50 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v50)
            {
              v50 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [v50 shouldLog];
            if ([v50 shouldLogToDisk])
            {
              v52 = shouldLog | 2;
            }

            else
            {
              v52 = shouldLog;
            }

            oSLogObject = [v50 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
            {
              v54 = v52;
            }

            else
            {
              v54 = v52 & 2;
            }

            if (v54)
            {
              v55 = objc_opt_class();
              v80 = 138412546;
              v81 = v55;
              v82 = 2112;
              v83 = v72;
              v56 = valueCopy;
              v57 = v55;
              LODWORD(v66) = 22;
              v58 = _os_log_send_and_compose_impl();

              valueCopy = v56;
              v59 = v70;
              if (!v58)
              {
LABEL_41:

                resultCopy[2](resultCopy, 1, v67);
                goto LABEL_17;
              }

              oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v58 encoding:{4, &v80, v66}];
              free(v58);
              SSFileLog(v50, @"%@", v60, v61, v62, v63, v64, v65, oSLogObject);
            }

            else
            {
              v59 = v70;
            }

            goto LABEL_41;
          }
        }

        else
        {
        }

        keyCopy = v73;
      }

      resultCopy[2](resultCopy, 0, 0);
      goto LABEL_17;
    }
  }

  v88 = *MEMORY[0x1E696A438];
  v89[0] = @"itfe";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  [(SSVCookieStorage *)self removeCookiesWithProperties:v15];

  v16 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog2 | 2;
  }

  else
  {
    v18 = shouldLog2;
  }

  oSLogObject2 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = objc_opt_class();
  v80 = 138412290;
  v81 = v21;
  v22 = valueCopy;
  v23 = v21;
  LODWORD(v66) = 12;
  v24 = _os_log_send_and_compose_impl();

  valueCopy = v22;
  if (v24)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v80, v66}];
    free(v24);
    SSFileLog(v16, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject2);
LABEL_15:
  }

  resultCopy[2](resultCopy, 1, 0);
LABEL_17:
}

void __78__SSVCookieStorage_synchronizeFeatureEnablerCookieWithCookieValue_key_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 BOOLValue])
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (id)fetchDefaults
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"features", @"com.apple.storeservices.itfe");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = CFPreferencesCopyAppValue(@"additionalFeatures", @"com.apple.storeservices.itfe");
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v2 mutableCopy];
        [v4 addEntriesFromDictionary:v3];

        v2 = v4;
      }
    }

    v2 = v2;

    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accountForKey:(id)key
{
  keyCopy = key;
  scope = [keyCopy scope];
  v5 = MEMORY[0x1E698C4C0];
  if (scope)
  {
    v5 = MEMORY[0x1E698C4C8];
  }

  v6 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*v5];
  identifier = [keyCopy identifier];
  if (identifier && (v8 = identifier, [keyCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToNumber:", &unk_1F507A1C8), v9, v8, !v10))
  {
    identifier2 = [keyCopy identifier];
    ams_localiTunesAccount = [v6 ams_iTunesAccountWithDSID:identifier2];
  }

  else
  {
    ams_localiTunesAccount = [v6 ams_localiTunesAccount];
  }

  return ams_localiTunesAccount;
}

- (id)_allCookieKeys
{
  v37 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v30 = 0u;
    ams_iTunesAccounts = [ams_sharedAccountStore ams_iTunesAccounts];
    v35[0] = ams_iTunesAccounts;
    ams_iTunesSandboxAccounts = [ams_sharedAccountStore ams_iTunesSandboxAccounts];
    v35[1] = ams_iTunesSandboxAccounts;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

    v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v21 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                ams_DSID = [v16 ams_DSID];
                if (ams_DSID)
                {
                  v18 = +[SSVCookieKey keyWithIdentifier:scope:](SSVCookieKey, "keyWithIdentifier:scope:", ams_DSID, [v16 ams_isSandboxAccount]);
                  [v5 addObject:v18];
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__SSVCookieStorage__allCookieKeys__block_invoke;
    v22[3] = &unk_1E84B1088;
    objc_copyWeak(&v24, &location);
    v5 = array;
    v23 = v5;
    [_database prepareStatementForSQL:@"SELECT DISTINCT user cache:user_scope FROM cookies;" usingBlock:{0, v22}];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __34__SSVCookieStorage__allCookieKeys__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _database];
  v5 = [v4 statementHasRowAfterStepping:a2];

  if (v5)
  {
    do
    {
      v6 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v7 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 1);
      v8 = v7;
      if (v6 && v7)
      {
        v9 = +[SSVCookieKey keyWithIdentifier:scope:](SSVCookieKey, "keyWithIdentifier:scope:", v6, [v7 integerValue]);
        [*(a1 + 32) addObject:v9];
      }

      v10 = [WeakRetained _database];
      v11 = [v10 statementHasRowAfterStepping:a2];
    }

    while ((v11 & 1) != 0);
  }
}

- (void)_bindInsertStatement:(sqlite3_stmt *)statement forCookie:(id)cookie key:(id)key
{
  cookieCopy = cookie;
  keyCopy = key;
  sqlite3_bind_int(statement, 1, [cookieCopy isSessionOnly]);
  domain = [cookieCopy domain];
  sqlite3_bind_text(statement, 2, [domain UTF8String], -1, 0);

  expiresDate = [cookieCopy expiresDate];
  [expiresDate timeIntervalSinceReferenceDate];
  sqlite3_bind_int(statement, 3, v10);

  name = [cookieCopy name];
  sqlite3_bind_text(statement, 4, [name UTF8String], -1, 0);

  path = [cookieCopy path];
  sqlite3_bind_text(statement, 5, [path UTF8String], -1, 0);

  sqlite3_bind_int(statement, 6, [cookieCopy isSecure]);
  identifier = [keyCopy identifier];
  if (identifier)
  {
    identifier2 = [keyCopy identifier];
    sqlite3_bind_int64(statement, 7, [identifier2 longLongValue]);
  }

  else
  {
    sqlite3_bind_int64(statement, 7, 0);
  }

  sqlite3_bind_int(statement, 8, [keyCopy scope]);
  value = [cookieCopy value];
  sqlite3_bind_text(statement, 9, [value UTF8String], -1, 0);

  sqlite3_bind_int(statement, 10, [cookieCopy version]);
}

+ (BOOL)_bindStatement:(sqlite3_stmt *)statement withValues:(id)values
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  valuesCopy = values;
  v6 = [valuesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 1;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sqlite3_bind_text(statement, v9, [v11 UTF8String], -1, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sqlite3_bind_int(statement, v9, [v11 intValue]);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v13 = 0;
              goto LABEL_16;
            }

            [v11 timeIntervalSinceReferenceDate];
            sqlite3_bind_double(statement, v9, v12);
          }
        }

        ++v9;
      }

      v7 = [valuesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_16:

  return v13;
}

- (id)_columnNameForCookieProperty:(id)property
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = xmmword_1E84B10A8;
  v11[1] = *&off_1E84B10B8;
  v11[2] = xmmword_1E84B10C8;
  v12 = @"version";
  v10[0] = *MEMORY[0x1E696A418];
  v10[1] = *MEMORY[0x1E696A420];
  v10[2] = *MEMORY[0x1E696A438];
  v10[3] = *MEMORY[0x1E696A448];
  v10[4] = *MEMORY[0x1E696A460];
  v10[5] = *MEMORY[0x1E696A468];
  v4 = 0;
  v10[6] = *MEMORY[0x1E696A470];
  while (![property isEqualToString:v10[v4]])
  {
    if (++v4 == 7)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = *(v11 + v4 * 8);
LABEL_6:
  v6 = v5;
  for (i = 6; i != -1; --i)
  {
  }

  for (j = 48; j != -8; j -= 8)
  {
  }

  return v6;
}

- (void)_cookieDatabaseDidChange
{
  if (self->_usesSharedCookieDatabase)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSVCookieStorageSharedCookieDatabaseDidChangeDarwinNotification", 0, 0, 1u);
  }
}

- (id)_copyCookieDictionaryForURL:(id)l key:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  keyCopy = key;
  host = [lCopy host];
  if (host)
  {
    v22 = keyCopy;
    v9 = [(SSVCookieStorage *)self _copyPrivateCookiesForURL:lCopy key:keyCopy];
    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    v11 = [mEMORY[0x1E696AC60] cookiesForURL:lCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          name = [v17 name];
          v19 = [v9 objectForKey:name];

          if (!v19)
          {
            value = [v17 value];
            [v9 setObject:value forKey:name];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    keyCopy = v22;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_copyCookieObjectsForURL:(id)l key:(id)key
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  keyCopy = key;
  host = [lCopy host];
  if (host)
  {
    v31 = host;
    v32 = keyCopy;
    v9 = [(SSVCookieStorage *)self _copyPrivateCookieObjectsForURL:lCopy key:keyCopy];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          name = [v16 name];
          [v10 setObject:v16 forKey:name];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    v19 = [mEMORY[0x1E696AC60] cookiesForURL:lCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          name2 = [v25 name];
          v27 = [v10 objectForKey:name2];

          if (!v27)
          {
            [v10 setObject:v25 forKey:name2];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v22);
    }

    allValues = [v10 allValues];
    v29 = [allValues copy];

    host = v31;
    keyCopy = v32;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)_copyCookiesForPreparedSQLStatement:(sqlite3_stmt *)statement
{
  v33[4] = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  _database = [(SSVCookieStorage *)self _database];
  v6 = [_database statementHasRowAfterStepping:statement];

  if (v6)
  {
    v25 = *MEMORY[0x1E696A418];
    v24 = *MEMORY[0x1E696A460];
    v27 = *MEMORY[0x1E696A470];
    v23 = *MEMORY[0x1E696A428];
    v7 = *MEMORY[0x1E696A420];
    v8 = *MEMORY[0x1E696A438];
    v9 = *MEMORY[0x1E696A448];
    v10 = *MEMORY[0x1E696A468];
    do
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (sqlite3_column_int(statement, 0))
      {
        [v11 setObject:MEMORY[0x1E695E118] forKey:v25];
      }

      if (sqlite3_column_int(statement, 5))
      {
        [v11 setObject:MEMORY[0x1E695E118] forKey:v24];
      }

      v12 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(statement, 7)}];
      [v11 setObject:v12 forKey:v27];

      v13 = SSSQLiteCopyFoundationValueForStatementColumn(statement, 2);
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x1E695DF00];
        [v13 doubleValue];
        v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
        [v11 setObject:v16 forKey:v23];
      }

      v32[0] = v7;
      v32[1] = v8;
      v33[0] = &unk_1F507A1E0;
      v33[1] = &unk_1F507A1F8;
      v32[2] = v9;
      v32[3] = v10;
      v33[2] = &unk_1F507A210;
      v33[3] = &unk_1F507A228;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:{4, v23}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __56__SSVCookieStorage__copyCookiesForPreparedSQLStatement___block_invoke;
      v29[3] = &unk_1E84B10E8;
      statementCopy = statement;
      v18 = v11;
      v30 = v18;
      [v17 enumerateKeysAndObjectsUsingBlock:v29];
      v19 = [objc_alloc(MEMORY[0x1E696AC58]) initWithProperties:v18];
      if (v19)
      {
        [v26 addObject:v19];
      }

      _database2 = [(SSVCookieStorage *)selfCopy _database];
      v21 = [_database2 statementHasRowAfterStepping:statement];
    }

    while ((v21 & 1) != 0);
  }

  return v26;
}

void __56__SSVCookieStorage__copyCookiesForPreparedSQLStatement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = SSSQLiteCopyFoundationValueForStatementColumn(*(a1 + 40), [a3 intValue]);
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (id)_copyCookiesWithKey:(id)key
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    v14 = [(SSVCookieStorage *)self _accountForKey:keyCopy];
    ams_cookies = [v14 ams_cookies];
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__42;
    v28 = __Block_byref_object_dispose__42;
    v29 = 0;
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __40__SSVCookieStorage__copyCookiesWithKey___block_invoke;
    v19 = &unk_1E84B1110;
    objc_copyWeak(&v22, &location);
    v6 = keyCopy;
    v20 = v6;
    v21 = &v24;
    [_database prepareStatementForSQL:@"SELECT discard cache:domain usingBlock:{expire_time, name, path, secure, value, version FROM cookies WHERE user=? AND user_scope=?;", 0, &v16}];

    if ([(SSVCookieStorage *)self performingMigration:v16])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsCookiesConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = [v25[5] count];
        identifier = [v6 identifier];
        v12 = AMSHashIfNeeded();
        *buf = 138543874;
        v31 = v9;
        v32 = 2048;
        v33 = v10;
        v34 = 2114;
        v35 = v12;
        _os_log_impl(&dword_1D48BA000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Someone is migrating the cookies. We found %lu cookie(s) in the database for %{public}@.", buf, 0x20u);
      }
    }

    ams_cookies = v25[5];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v24, 8);
  }

  return ams_cookies;
}

void __40__SSVCookieStorage__copyCookiesWithKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) identifier];
  SSSQLiteBindFoundationValueToStatement(a2, 1, v4);

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "scope")}];
  SSSQLiteBindFoundationValueToStatement(a2, 2, v5);

  v6 = [WeakRetained _copyCookiesForPreparedSQLStatement:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_copyPrivateCookiesForURL:(id)l key:(id)key
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  keyCopy = key;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    v29 = [(SSVCookieStorage *)self _accountForKey:keyCopy];
    if (!-[SSVCookieStorage _stopIncludingLocalCookies](self, "_stopIncludingLocalCookies") && ([v29 ams_isLocalAccount] & 1) == 0)
    {
      v10 = +[SSVCookieKey keyWithIdentifier:scope:](SSVCookieKey, "keyWithIdentifier:scope:", &unk_1F507A1C8, [keyCopy scope]);
      v28 = [(SSVCookieStorage *)self _accountForKey:v10];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      ams_cookies = [v28 ams_cookies];
      v12 = [(SSVCookieStorage *)self _filterCookies:ams_cookies forURL:lCopy];

      v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v13)
      {
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            value = [v16 value];
            name = [v16 name];
            [v8 setObject:value forKeyedSubscript:name];
          }

          v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    ams_cookies2 = [v29 ams_cookies];
    v20 = [(SSVCookieStorage *)self _filterCookies:ams_cookies2 forURL:lCopy];

    v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = *v37;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v36 + 1) + 8 * j);
          value2 = [v24 value];
          name2 = [v24 name];
          [v8 setObject:value2 forKeyedSubscript:name2];
        }

        v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v21);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__SSVCookieStorage__copyPrivateCookiesForURL_key___block_invoke;
    v30[3] = &unk_1E84B1138;
    objc_copyWeak(&v34, &location);
    v31 = lCopy;
    v32 = keyCopy;
    v33 = v8;
    [_database prepareStatementForSQL:@"SELECT name cache:value FROM cookies WHERE ((NOT secure OR secure=?) AND ((user=? AND user_scope=?) OR (user=-1)) AND ((expire_time=0) OR (expire_time>=?)) AND (SUBSTR(? usingBlock:{-LENGTH(domain))=domain) AND (SUBSTR(?, 1, LENGTH(path))=path))", 1, v30}];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __50__SSVCookieStorage__copyPrivateCookiesForURL_key___block_invoke(id *a1, sqlite3_stmt *a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v4 = [a1[4] host];
  if (([v4 hasPrefix:@"."] & 1) == 0)
  {
    v5 = [@"." stringByAppendingString:v4];

    v4 = v5;
  }

  v6 = [a1[4] scheme];
  sqlite3_bind_int(a2, 1, [v6 isEqualToString:@"https"]);

  v7 = [a1[5] identifier];
  if (v7)
  {
    v8 = [a1[5] identifier];
    sqlite3_bind_int64(a2, 2, [v8 longLongValue]);
  }

  else
  {
    sqlite3_bind_int64(a2, 2, 0);
  }

  sqlite3_bind_int(a2, 3, [a1[5] scope]);
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_int(a2, 4, Current);
  sqlite3_bind_text(a2, 5, [v4 UTF8String], -1, 0);
  v10 = [a1[4] path];
  sqlite3_bind_text(a2, 6, [v10 UTF8String], -1, 0);

  v11 = [WeakRetained _database];
  v12 = [v11 statementHasRowAfterStepping:a2];

  if (v12)
  {
    do
    {
      v13 = sqlite3_column_text(a2, 0);
      v14 = sqlite3_column_text(a2, 1);
      if (v13)
      {
        v15 = v14;
        if (v14)
        {
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v13];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
          [a1[6] setObject:v17 forKey:v16];
        }
      }

      v18 = [WeakRetained _database];
      v19 = [v18 statementHasRowAfterStepping:a2];
    }

    while ((v19 & 1) != 0);
  }
}

- (id)_copyPrivateCookieObjectsForURL:(id)l key:(id)key
{
  v51 = *MEMORY[0x1E69E9840];
  lCopy = l;
  keyCopy = key;
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = [(SSVCookieStorage *)self _accountForKey:keyCopy];
    if (!-[SSVCookieStorage _stopIncludingLocalCookies](self, "_stopIncludingLocalCookies") && ([v28 ams_isLocalAccount] & 1) == 0)
    {
      v11 = +[SSVCookieKey keyWithIdentifier:scope:](SSVCookieKey, "keyWithIdentifier:scope:", &unk_1F507A1C8, [keyCopy scope]);
      v27 = [(SSVCookieStorage *)self _accountForKey:v11];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      ams_cookies = [v27 ams_cookies];
      v13 = [(SSVCookieStorage *)self _filterCookies:ams_cookies forURL:lCopy];

      v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v14)
      {
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            name = [v17 name];
            [v10 setObject:v17 forKeyedSubscript:name];
          }

          v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v14);
      }
    }

    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v41 = 0u;
    ams_cookies2 = [v28 ams_cookies];
    v20 = [(SSVCookieStorage *)self _filterCookies:ams_cookies2 forURL:lCopy];

    v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v21)
    {
      v22 = *v42;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v41 + 1) + 8 * j);
          name2 = [v24 name];
          [v10 setObject:v24 forKeyedSubscript:name2];
        }

        v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v21);
    }

    allValues = [v10 allValues];
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__42;
    v39 = __Block_byref_object_dispose__42;
    v40 = 0;
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__SSVCookieStorage__copyPrivateCookieObjectsForURL_key___block_invoke;
    v29[3] = &unk_1E84B1160;
    objc_copyWeak(&v33, &location);
    v30 = lCopy;
    v31 = keyCopy;
    v32 = &v35;
    [_database prepareStatementForSQL:@"SELECT discard cache:domain usingBlock:{expire_time, name, path, secure, value, version FROM cookies WHERE ((NOT secure OR secure=?) AND ((user=? AND user_scope=?) OR (user=-1)) AND ((expire_time=0) OR (expire_time>=?)) AND (SUBSTR(?, -LENGTH(domain))=domain) AND (SUBSTR(?, 1, LENGTH(path))=path))", 1, v29}];

    allValues = v36[5];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v35, 8);
  }

  return allValues;
}

void __56__SSVCookieStorage__copyPrivateCookieObjectsForURL_key___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) host];
  if (([v4 hasPrefix:@"."] & 1) == 0)
  {
    v5 = [@"." stringByAppendingString:v4];

    v4 = v5;
  }

  v6 = [*(a1 + 32) scheme];
  sqlite3_bind_int(a2, 1, [v6 isEqualToString:@"https"]);

  v7 = [*(a1 + 40) identifier];
  if (v7)
  {
    v8 = [*(a1 + 40) identifier];
    sqlite3_bind_int64(a2, 2, [v8 longLongValue]);
  }

  else
  {
    sqlite3_bind_int64(a2, 2, 0);
  }

  sqlite3_bind_int(a2, 3, [*(a1 + 40) scope]);
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_int(a2, 4, Current);
  sqlite3_bind_text(a2, 5, [v4 UTF8String], -1, 0);
  v10 = [*(a1 + 32) path];
  sqlite3_bind_text(a2, 6, [v10 UTF8String], -1, 0);

  v11 = [WeakRetained _copyCookiesForPreparedSQLStatement:a2];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (SSSQLiteDatabase)_database
{
  database = self->__database;
  if (!database)
  {
    v4 = [SSSQLiteDatabase alloc];
    v5 = [(SSSQLiteDatabase *)v4 initWithDatabaseURL:self->_storageLocation readOnly:0 protectionType:*MEMORY[0x1E696A388]];
    v6 = self->__database;
    self->__database = v5;

    objc_initWeak(&location, self);
    v7 = self->__database;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __29__SSVCookieStorage__database__block_invoke;
    v9[3] = &unk_1E84B1188;
    objc_copyWeak(&v10, &location);
    [(SSSQLiteDatabase *)v7 setSetupBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    database = self->__database;
  }

  return database;
}

void __29__SSVCookieStorage__database__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [objc_opt_class() _setupCookieDatabase:v4 forCookieStorage:WeakRetained];
  }
}

+ (BOOL)_fileURLRepresentsSharedStorageLocation:(id)location
{
  path = [location path];
  if ([path length])
  {
    v4 = [path stringByReplacingOccurrencesOfString:@"rescued." withString:&stru_1F503F418];

    _sharedStorageLocationPath = [objc_opt_class() _sharedStorageLocationPath];
    if (_sharedStorageLocationPath)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:_sharedStorageLocationPath];
    }

    else
    {
      v6 = 0;
    }

    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v7 = [v6 isEqual:v8];
  }

  else
  {
    v7 = 0;
    v4 = path;
  }

  return v7;
}

- (id)_filterCookies:(id)cookies forURL:(id)l
{
  cookiesCopy = cookies;
  lCopy = l;
  if (!lCopy)
  {
    [SSVCookieStorage _filterCookies:a2 forURL:self];
  }

  v9 = MEMORY[0x1E695E0F0];
  if (cookiesCopy)
  {
    v9 = cookiesCopy;
  }

  v10 = v9;

  host = [lCopy host];
  if (([host hasPrefix:@"."] & 1) == 0)
  {
    v12 = [@"." stringByAppendingString:host];

    host = v12;
  }

  path = [lCopy path];
  scheme = [lCopy scheme];
  v15 = [scheme isEqualToString:@"https"];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__SSVCookieStorage__filterCookies_forURL___block_invoke;
  v20[3] = &unk_1E84B11B0;
  v23 = v15;
  v21 = host;
  v22 = path;
  v16 = path;
  v17 = host;
  v18 = [v10 _ss_filterUsingTest:v20];

  return v18;
}

uint64_t __42__SSVCookieStorage__filterCookies_forURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSecure])
  {
    v4 = *(a1 + 48) == [v3 isSecure];
  }

  else
  {
    v4 = 1;
  }

  v5 = [v3 expiresDate];
  if (v5)
  {
    v6 = [v3 expiresDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7 >= CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 32);
  v10 = [v3 domain];
  v11 = [v9 hasSuffix:v10];

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = [v3 path];
    v14 = [v12 hasPrefix:v13];
  }

  else
  {
    v14 = 1;
  }

  if (!v8 || !v4)
  {
    v11 = 0;
  }

  return v11 & v14;
}

+ (id)_getGlobalSetCookiesForResponse:(id)response
{
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v5 = [allHeaderFields objectForKey:@"X-Apple-Set-Cookie"];

  if ([v5 length])
  {
    allHeaderFields2 = [responseCopy allHeaderFields];
    v7 = [allHeaderFields2 mutableCopy];

    [v7 setObject:v5 forKey:@"Set-Cookie"];
    v8 = MEMORY[0x1E696AC58];
    v9 = [responseCopy URL];
    v10 = [v8 cookiesWithResponseHeaderFields:v7 forURL:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_getSetCookiesForResponse:(id)response
{
  v3 = MEMORY[0x1E696AC58];
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v6 = [responseCopy URL];

  v7 = [v3 cookiesWithResponseHeaderFields:allHeaderFields forURL:v6];

  return v7;
}

+ (id)_getUserSetCookiesForResponse:(id)response
{
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v5 = [allHeaderFields objectForKey:@"X-Apple-Set-User-Cookie"];

  if ([v5 length])
  {
    allHeaderFields2 = [responseCopy allHeaderFields];
    v7 = [allHeaderFields2 mutableCopy];

    [v7 setObject:v5 forKey:@"Set-Cookie"];
    v8 = MEMORY[0x1E696AC58];
    v9 = [responseCopy URL];
    v10 = [v8 cookiesWithResponseHeaderFields:v7 forURL:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_insertCookies:(id)cookies forKey:(id)key
{
  cookiesCopy = cookies;
  keyCopy = key;
  objc_initWeak(&location, self);
  _database = [(SSVCookieStorage *)self _database];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SSVCookieStorage__insertCookies_forKey___block_invoke;
  v11[3] = &unk_1E84B11D8;
  objc_copyWeak(&v14, &location);
  v9 = cookiesCopy;
  v12 = v9;
  v10 = keyCopy;
  v13 = v10;
  [_database prepareStatementForSQL:@"INSERT OR REPLACE INTO cookies (discard cache:domain usingBlock:{expire_time, name, path, secure, user, user_scope, value, version) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 1, v11}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__SSVCookieStorage__insertCookies_forKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [WeakRetained _bindInsertStatement:a2 forCookie:*(*(&v11 + 1) + 8 * v9) key:{*(a1 + 40), v11}];
        v10 = [WeakRetained _database];
        [v10 statementHasRowAfterStepping:a2];

        sqlite3_reset(a2);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_setCookies:(id)cookies forKey:(id)key
{
  cookiesCopy = cookies;
  keyCopy = key;
  if ([MEMORY[0x1E698C890] useNewCookieStorage] && !-[SSVCookieStorage performingMigration](self, "performingMigration"))
  {
    v9 = [(SSVCookieStorage *)self _accountForKey:keyCopy];
    v10 = v9;
    if (v9)
    {
      [v9 ams_addCookies:cookiesCopy];
      if ([v10 isDirty])
      {
        ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
        v12 = [ams_sharedAccountStore ams_saveAccount:v10 verifyCredentials:0];

        [v12 waitUntilFinished];
      }
    }
  }

  else
  {
    objc_initWeak(&location, self);
    _database = [(SSVCookieStorage *)self _database];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __39__SSVCookieStorage__setCookies_forKey___block_invoke;
    v16 = &unk_1E84B1200;
    objc_copyWeak(&v19, &location);
    v17 = cookiesCopy;
    v18 = keyCopy;
    [_database performTransactionWithBlock:&v13];

    [(SSVCookieStorage *)self _cookieDatabaseDidChange:v13];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

uint64_t __39__SSVCookieStorage__setCookies_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _insertCookies:*(a1 + 32) forKey:*(a1 + 40)];

  return 1;
}

+ (BOOL)_setupCookieDatabase:(id)database forCookieStorage:(id)storage
{
  databaseCopy = database;
  storageCopy = storage;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__SSVCookieStorage__setupCookieDatabase_forCookieStorage___block_invoke;
  v14[3] = &unk_1E84B1250;
  objc_copyWeak(v17, &location);
  v8 = databaseCopy;
  v15 = v8;
  v16 = &v19;
  v17[1] = self;
  [v8 performTransactionWithBlock:v14];
  v9 = [v8 executeSQL:@"PRAGMA journal_mode=WAL;"];
  *(v20 + 24) = v9;
  if (storageCopy)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__SSVCookieStorage__setupCookieDatabase_forCookieStorage___block_invoke_2;
    v12[3] = &unk_1E84AC050;
    v13 = storageCopy;
    dispatch_async(v10, v12);

    v9 = *(v20 + 24);
  }

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);

  return v9 & 1;
}

uint64_t __58__SSVCookieStorage__setupCookieDatabase_forCookieStorage___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) userVersion];
  v4 = 0;
  v5 = off_1E84AB000;
  while (1)
  {
    if (!v3)
    {
      v6 = [WeakRetained _migrateToVersion1WithDatabase:*(a1 + 32)];
      v3 = 1;
      goto LABEL_8;
    }

    if (v3 == 1)
    {
      v6 = [WeakRetained _migrateToVersion2WithDatabase:*(a1 + 32)];
      v3 = 2;
LABEL_8:
      *(*(*(a1 + 40) + 8) + 24) = v6;
      goto LABEL_9;
    }

    if (v3 == 2)
    {
      break;
    }

LABEL_9:
    if (((v4 | *(*(*(a1 + 40) + 8) + 24)) & 1) == 0)
    {
      v7 = [(__objc2_class *)v5[75] sharedStoreServicesConfig];
      if (!v7)
      {
        v7 = [(__objc2_class *)v5[75] sharedConfig];
      }

      v8 = v5;
      v9 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v11 = [v7 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 2;
      }

      if (v12)
      {
        v13 = objc_opt_class();
        v55 = 138543362;
        v56 = v13;
        v14 = v13;
        LODWORD(v52) = 12;
        v51 = &v55;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
          goto LABEL_22;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v55, v52}];
        free(v15);
        SSFileLog(v7, @"%@", v16, v17, v18, v19, v20, v21, v11);
      }

LABEL_22:
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) executeSQL:@"DROP TABLE cookies;"];
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v3 = 0;
      }

      v4 = 1;
      v5 = v8;
    }
  }

  v22 = *(*(*(a1 + 40) + 8) + 24);
  if ((v4 & v22) == 1)
  {
    v23 = [(__objc2_class *)v5[75] sharedStoreServicesConfig];
    if (!v23)
    {
      v23 = [(__objc2_class *)v5[75] sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v55 = 138543362;
      v56 = v27;
      v28 = v27;
      LODWORD(v52) = 12;
      v51 = &v55;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v55, v52}];
        free(v29);
        SSFileLog(v23, @"%@", v30, v31, v32, v33, v34, v35, v26);
        goto LABEL_36;
      }
    }

    else
    {
LABEL_36:
    }

    LOBYTE(v22) = *(*(*(a1 + 40) + 8) + 24);
  }

  if ((v22 & 1) == 0)
  {
    v38 = [(__objc2_class *)v5[75] sharedStoreServicesConfig];
    if (!v38)
    {
      v38 = [(__objc2_class *)v5[75] sharedConfig];
    }

    v39 = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      v40 = v39 | 2;
    }

    else
    {
      v40 = v39;
    }

    v41 = [v38 OSLogObject];
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      v55 = 138412290;
      v56 = v42;
      LODWORD(v52) = 12;
      v43 = _os_log_send_and_compose_impl();

      if (!v43)
      {
LABEL_51:

        v37 = *(*(*(a1 + 40) + 8) + 24);
        goto LABEL_52;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v55, v52}];
      free(v43);
      SSFileLog(v38, @"%@", v44, v45, v46, v47, v48, v49, v41);
    }

    goto LABEL_51;
  }

  v36 = *(a1 + 32);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __58__SSVCookieStorage__setupCookieDatabase_forCookieStorage___block_invoke_208;
  v53[3] = &unk_1E84B1228;
  v54 = v36;
  [v54 prepareStatementForSQL:@"DELETE FROM cookies WHERE ((expire_time!=0) AND (expire_time<?))" cache:0 usingBlock:v53];
  [*(a1 + 32) setUserVersion:2];
  v37 = *(*(*(a1 + 40) + 8) + 24);

LABEL_52:
  return v37 & 1;
}

uint64_t __58__SSVCookieStorage__setupCookieDatabase_forCookieStorage___block_invoke_208(uint64_t a1, sqlite3_stmt *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 1, Current);
  do
  {
    result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  }

  while ((result & 1) != 0);
  return result;
}

+ (BOOL)_migrateToVersion2WithDatabase:(id)database
{
  databaseCopy = database;
  if (![databaseCopy executeSQL:{@"CREATE TABLE IF NOT EXISTS tmp_cookies (discard INTEGER DEFAULT 0, domain TEXT NOT NULL, expire_time REAL, name TEXT NOT NULL, path TEXT NOT NULL, secure INTEGER, user INTEGER DEFAULT 0, user_scope INTEGER DEFAULT 0, value TEXT NOT NULL, version INTEGER DEFAULT 1, PRIMARY KEY(name, domain, path, user, user_scope));"}])
  {
    goto LABEL_6;
  }

  if (([databaseCopy executeSQL:{@"INSERT INTO tmp_cookies (discard, domain, expire_time, name, path, secure, user, value, version) SELECT discard, domain, expire_time, name, path, secure, user, value, version FROM cookies;"}] & 1) == 0)
  {
    [databaseCopy executeSQL:@"DROP TABLE tmp_cookies;"];
    goto LABEL_6;
  }

  if (![databaseCopy executeSQL:@"DROP TABLE cookies;"])
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [databaseCopy executeSQL:@"ALTER TABLE tmp_cookies RENAME TO cookies;"];
LABEL_7:

  return v4;
}

+ (id)_sharedStorageLocationPath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Cookies", @"com.apple.itunesstored.2.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

+ (BOOL)_currentProcessShouldUseRescuedStorageLocationForLocation:(id)location
{
  locationCopy = location;
  if ([self _fileIsOwnedByRoot:locationCopy])
  {
    v5 = [self _rescuedStorageLocationForLocation:locationCopy];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v5 path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v9 = [self _currentProcessIsRoot] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (BOOL)_fileIsOwnedByRoot:(id)root
{
  v3 = MEMORY[0x1E696AC08];
  rootCopy = root;
  defaultManager = [v3 defaultManager];
  path = [rootCopy path];

  v7 = [defaultManager attributesOfItemAtPath:path error:0];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A358]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_rescuedStorageLocationForLocation:(id)location
{
  locationCopy = location;
  if ([self _fileIsOwnedByRoot:locationCopy])
  {
    pathExtension = [locationCopy pathExtension];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"rescued.", pathExtension];
    path = [locationCopy path];
    v8 = [path stringByReplacingOccurrencesOfString:pathExtension withString:v6];

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = [self _rescuedStorageLocationForLocation:v9];
  }

  else
  {
    v10 = locationCopy;
  }

  return v10;
}

- (void)_filterCookies:(uint64_t)a1 forURL:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSVCookieStorage.m" lineNumber:919 description:{@"Invalid parameter not satisfying: %@", @"url"}];
}

@end