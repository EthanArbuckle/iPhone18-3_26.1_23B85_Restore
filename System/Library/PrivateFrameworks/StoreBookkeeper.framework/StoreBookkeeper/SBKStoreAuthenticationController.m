@interface SBKStoreAuthenticationController
+ (id)lastFailedSyncAccountIdentifier;
+ (id)lastFailedSyncAccountName;
+ (id)lastSyncedAccountIdentifier;
+ (id)lastSyncedAccountName;
+ (void)clearLastSyncnedAccount;
- (BOOL)isAuthenticationValidForTransaction:(id)a3 error:(id *)a4;
- (BOOL)shouldForceAuthenticationForTransaction:(id)a3;
- (SBKStoreAuthenticationController)initWithStoreAccount:(id)a3;
- (id)authenticationErrorsForTransaction:(id)a3;
- (void)saveAccountToLastFailedSyncDefaults;
- (void)saveAccountToLastSyncedDefaults;
@end

@implementation SBKStoreAuthenticationController

- (void)saveAccountToLastFailedSyncDefaults
{
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  v4 = [(SBKStoreAuthenticationController *)self storeAccount];
  v5 = [v4 accountName];
  [v3 setObject:v5 forKey:@"SBKSync.SyncFailureLastAccountName"];

  v8 = +[SBKPreferences storeBookkeeperPreferences];
  v6 = [(SBKStoreAuthenticationController *)self storeAccount];
  v7 = [v6 uniqueIdentifier];
  [v8 setObject:v7 forKey:@"SBKSync.SyncFailureLastAccountIdentifier"];
}

- (void)saveAccountToLastSyncedDefaults
{
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  v4 = [(SBKStoreAuthenticationController *)self storeAccount];
  v5 = [v4 accountName];
  [v3 setObject:v5 forKey:@"SBKSync.LastAccountName"];

  v8 = +[SBKPreferences storeBookkeeperPreferences];
  v6 = [(SBKStoreAuthenticationController *)self storeAccount];
  v7 = [v6 uniqueIdentifier];
  [v8 setObject:v7 forKey:@"SBKSync.LastAccountIdentifier"];
}

- (id)authenticationErrorsForTransaction:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBKStoreAuthenticationController *)self storeAccount];
  v6 = [v5 accountName];

  v7 = [(SBKStoreAuthenticationController *)self storeAccount];
  v8 = [v7 uniqueIdentifier];

  v9 = [objc_opt_class() lastSyncedAccountName];
  v10 = [objc_opt_class() lastSyncedAccountIdentifier];
  if (v10)
  {
    v11 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v12)
      {
        v18 = 138412802;
        v19 = v10;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "AccountIdentifier mismatch: %@ vs %@ [transaction = %@]", &v18, 0x20u);
      }

      v13 = [SBKStoreError storeAccountMismatchErrorWithPreviousStoreAccountName:v9 currentStoreAccountName:v6 transaction:v4 underlyingError:0];
    }

    else
    {
      if (v12)
      {
        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "No longer logged in Use Alert %@ [transaction = %@]", &v18, 0x16u);
      }

      v13 = [SBKStoreError storeLoggedOutErrorWithPreviousStoreAccountName:v9 transaction:v4 underlyingError:0];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_DEFAULT, "First Use Alert %@ [transaction = %@]", &v18, 0x16u);
    }

    v13 = [SBKStoreError noStoreAccountErrorWithTransaction:v4 underlyingError:0];
  }

  v15 = v13;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)shouldForceAuthenticationForTransaction:(id)a3
{
  v4 = a3;
  if ([(SBKStoreAuthenticationController *)self shouldAuthenticate])
  {
    v5 = [(SBKStoreAuthenticationController *)self authenticationErrorsForTransaction:v4];
    v6 = v5;
    if (v5)
    {
      if (([v5 code] & 0xFFFFFFFFFFFFFFFDLL) == 0xFFFFFFFFFFFFFC14)
      {
        v7 = -1;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)isAuthenticationValidForTransaction:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SBKStoreAuthenticationController *)self shouldAuthenticate])
  {
    v7 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Doesn't matter what the DISD is set to since authentication is forced for transaction: %@", &v15, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v9 = [(SBKStoreAuthenticationController *)self storeAccount];
    v10 = [v9 uniqueIdentifier];

    v11 = [objc_opt_class() lastSyncedAccountIdentifier];
    v12 = v11;
    if (v10 && v11 && ([v10 isEqual:v11] & 1) != 0 || -[SBKStoreAuthenticationController shouldForceAuthenticationForTransaction:](self, "shouldForceAuthenticationForTransaction:", v6))
    {
      v8 = 1;
    }

    else if (a4)
    {
      [(SBKStoreAuthenticationController *)self authenticationErrorsForTransaction:v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (SBKStoreAuthenticationController)initWithStoreAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBKStoreAuthenticationController;
  v6 = [(SBKStoreAuthenticationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeAccount, a3);
  }

  return v7;
}

+ (id)lastFailedSyncAccountName
{
  v2 = +[SBKPreferences storeBookkeeperPreferences];
  v3 = [v2 objectForKey:@"SBKSync.SyncFailureLastAccountName" withDefaultValue:0];

  return v3;
}

+ (id)lastFailedSyncAccountIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  v4 = [v3 objectForKey:@"SBKSync.SyncFailureLastAccountIdentifier" withDefaultValue:0];
  v5 = [v2 numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];

  return v5;
}

+ (id)lastSyncedAccountName
{
  v2 = +[SBKPreferences storeBookkeeperPreferences];
  v3 = [v2 objectForKey:@"SBKSync.LastAccountName" withDefaultValue:0];

  return v3;
}

+ (id)lastSyncedAccountIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  v4 = [v3 objectForKey:@"SBKSync.LastAccountIdentifier" withDefaultValue:0];
  v5 = [v2 numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];

  return v5;
}

+ (void)clearLastSyncnedAccount
{
  v2 = +[SBKPreferences storeBookkeeperPreferences];
  [v2 setObject:0 forKey:@"SBKSync.LastAccountName"];

  v3 = +[SBKPreferences storeBookkeeperPreferences];
  [v3 setObject:0 forKey:@"SBKSync.LastAccountIdentifier"];
}

@end