@interface SBKStoreAuthenticationController
+ (id)lastFailedSyncAccountIdentifier;
+ (id)lastFailedSyncAccountName;
+ (id)lastSyncedAccountIdentifier;
+ (id)lastSyncedAccountName;
+ (void)clearLastSyncnedAccount;
- (BOOL)isAuthenticationValidForTransaction:(id)transaction error:(id *)error;
- (BOOL)shouldForceAuthenticationForTransaction:(id)transaction;
- (SBKStoreAuthenticationController)initWithStoreAccount:(id)account;
- (id)authenticationErrorsForTransaction:(id)transaction;
- (void)saveAccountToLastFailedSyncDefaults;
- (void)saveAccountToLastSyncedDefaults;
@end

@implementation SBKStoreAuthenticationController

- (void)saveAccountToLastFailedSyncDefaults
{
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  storeAccount = [(SBKStoreAuthenticationController *)self storeAccount];
  accountName = [storeAccount accountName];
  [v3 setObject:accountName forKey:@"SBKSync.SyncFailureLastAccountName"];

  v8 = +[SBKPreferences storeBookkeeperPreferences];
  storeAccount2 = [(SBKStoreAuthenticationController *)self storeAccount];
  uniqueIdentifier = [storeAccount2 uniqueIdentifier];
  [v8 setObject:uniqueIdentifier forKey:@"SBKSync.SyncFailureLastAccountIdentifier"];
}

- (void)saveAccountToLastSyncedDefaults
{
  v3 = +[SBKPreferences storeBookkeeperPreferences];
  storeAccount = [(SBKStoreAuthenticationController *)self storeAccount];
  accountName = [storeAccount accountName];
  [v3 setObject:accountName forKey:@"SBKSync.LastAccountName"];

  v8 = +[SBKPreferences storeBookkeeperPreferences];
  storeAccount2 = [(SBKStoreAuthenticationController *)self storeAccount];
  uniqueIdentifier = [storeAccount2 uniqueIdentifier];
  [v8 setObject:uniqueIdentifier forKey:@"SBKSync.LastAccountIdentifier"];
}

- (id)authenticationErrorsForTransaction:(id)transaction
{
  v24 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  storeAccount = [(SBKStoreAuthenticationController *)self storeAccount];
  accountName = [storeAccount accountName];

  storeAccount2 = [(SBKStoreAuthenticationController *)self storeAccount];
  uniqueIdentifier = [storeAccount2 uniqueIdentifier];

  lastSyncedAccountName = [objc_opt_class() lastSyncedAccountName];
  lastSyncedAccountIdentifier = [objc_opt_class() lastSyncedAccountIdentifier];
  if (lastSyncedAccountIdentifier)
  {
    v11 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (uniqueIdentifier)
    {
      if (v12)
      {
        v18 = 138412802;
        v19 = lastSyncedAccountIdentifier;
        v20 = 2112;
        v21 = uniqueIdentifier;
        v22 = 2112;
        v23 = transactionCopy;
        _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "AccountIdentifier mismatch: %@ vs %@ [transaction = %@]", &v18, 0x20u);
      }

      v13 = [SBKStoreError storeAccountMismatchErrorWithPreviousStoreAccountName:lastSyncedAccountName currentStoreAccountName:accountName transaction:transactionCopy underlyingError:0];
    }

    else
    {
      if (v12)
      {
        v18 = 138412546;
        v19 = lastSyncedAccountIdentifier;
        v20 = 2112;
        v21 = transactionCopy;
        _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "No longer logged in Use Alert %@ [transaction = %@]", &v18, 0x16u);
      }

      v13 = [SBKStoreError storeLoggedOutErrorWithPreviousStoreAccountName:lastSyncedAccountName transaction:transactionCopy underlyingError:0];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = uniqueIdentifier;
      v20 = 2112;
      v21 = transactionCopy;
      _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_DEFAULT, "First Use Alert %@ [transaction = %@]", &v18, 0x16u);
    }

    v13 = [SBKStoreError noStoreAccountErrorWithTransaction:transactionCopy underlyingError:0];
  }

  v15 = v13;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)shouldForceAuthenticationForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([(SBKStoreAuthenticationController *)self shouldAuthenticate])
  {
    v5 = [(SBKStoreAuthenticationController *)self authenticationErrorsForTransaction:transactionCopy];
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

- (BOOL)isAuthenticationValidForTransaction:(id)transaction error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if ([(SBKStoreAuthenticationController *)self shouldAuthenticate])
  {
    v7 = os_log_create("com.apple.amp.StoreBookkeeper", "Store");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = transactionCopy;
      _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Doesn't matter what the DISD is set to since authentication is forced for transaction: %@", &v15, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    storeAccount = [(SBKStoreAuthenticationController *)self storeAccount];
    uniqueIdentifier = [storeAccount uniqueIdentifier];

    lastSyncedAccountIdentifier = [objc_opt_class() lastSyncedAccountIdentifier];
    v12 = lastSyncedAccountIdentifier;
    if (uniqueIdentifier && lastSyncedAccountIdentifier && ([uniqueIdentifier isEqual:lastSyncedAccountIdentifier] & 1) != 0 || -[SBKStoreAuthenticationController shouldForceAuthenticationForTransaction:](self, "shouldForceAuthenticationForTransaction:", transactionCopy))
    {
      v8 = 1;
    }

    else if (error)
    {
      [(SBKStoreAuthenticationController *)self authenticationErrorsForTransaction:transactionCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (SBKStoreAuthenticationController)initWithStoreAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SBKStoreAuthenticationController;
  v6 = [(SBKStoreAuthenticationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeAccount, account);
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