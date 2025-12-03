@interface ICMonitoredAccountStore
+ (ICMonitoredAccountStore)sharedAccountStore;
- (BOOL)saveAccount:(id)account error:(id *)error;
- (ICMonitoredAccountStore)init;
- (id)_registerAndLoadAccountsIfNecessary;
- (id)acAccountStore;
- (id)activeStoreAccountWithError:(id *)error;
- (id)allStoreAccountsWithError:(id *)error;
- (id)localStoreAccountWithError:(id *)error;
- (id)primaryAppleAccountWithError:(id *)error;
- (id)storeAccountForAltDSID:(id)d error:(id *)error;
- (id)storeAccountForDSID:(id)d error:(id *)error;
- (id)storeAccountForHomeUserIdentifier:(id)identifier error:(id *)error;
- (id)storeAccountTypeWithError:(id *)error;
- (id)storeAccountWithIdentifier:(id)identifier error:(id *)error;
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
- (void)registerObserver:(id)observer;
@end

@implementation ICMonitoredAccountStore

+ (ICMonitoredAccountStore)sharedAccountStore
{
  if (sharedAccountStore_sOnceToken != -1)
  {
    dispatch_once(&sharedAccountStore_sOnceToken, &__block_literal_global_2422);
  }

  v3 = sharedAccountStore_sSharedAccountStore;

  return v3;
}

- (id)_registerAndLoadAccountsIfNecessary
{
  v45 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E6959A48] ic_canAccessAccountStore] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7013 debugDescription:@"Client is not entitled to access account store"];
    goto LABEL_43;
  }

  os_unfair_lock_lock(&self->_lock);
  accountStore = self->_accountStore;
  if (accountStore)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] setWithObject:*MEMORY[0x1E6959930]];
    if ([MEMORY[0x1E6959A48] ic_canAccessAppleAccounts])
    {
      [v5 addObject:*MEMORY[0x1E69597F8]];
    }

    v6 = [objc_alloc(MEMORY[0x1E6959A60]) initWithAccountTypes:v5 delegate:self];
    v7 = self->_accountStore;
    self->_accountStore = v6;

    if (self->_accountStore)
    {
      v4 = 0;
    }

    else
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create insance of account store", buf, 0xCu);
      }

      v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7407 debugDescription:@"Failed to create insance of account store"];
    }

    accountStore = self->_accountStore;
    if (!accountStore)
    {
      goto LABEL_38;
    }
  }

  obj = [(ACMonitoredAccountStore *)accountStore monitoredAccounts];
  if ([obj count])
  {
    goto LABEL_37;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering for account monitoring", buf, 0xCu);
  }

  v10 = self->_accountStore;
  v35 = v4;
  [(ACMonitoredAccountStore *)v10 registerSynchronouslyWithError:&v35];
  v11 = v35;

  if (v11)
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7407 underlyingError:v11 debugDescription:@"Failed to register with account store"];
    goto LABEL_36;
  }

  selfCopy3 = self;
  monitoredAccounts = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(monitoredAccounts, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = monitoredAccounts;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (!v13)
  {
    v29 = 0;
    goto LABEL_33;
  }

  v14 = v13;
  v29 = 0;
  v15 = *v32;
  v16 = *MEMORY[0x1E69597F8];
  v17 = *MEMORY[0x1E698B760];
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v31 + 1) + 8 * i);
      if ([v19 ic_isITunesAccount])
      {
        ic_description = [v19 ic_description];
        [v11 addObject:ic_description];
LABEL_25:

        continue;
      }

      accountType = [v19 accountType];
      identifier = [accountType identifier];
      v23 = [identifier isEqualToString:v16];

      if (v23 && [v19 aa_isAccountClass:v17])
      {
        [v19 ic_description];
        v29 = ic_description = v29;
        goto LABEL_25;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  }

  while (v14);
LABEL_33:

  v24 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  self = selfCopy3;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v11 count];
    *buf = 138544130;
    selfCopy4 = selfCopy3;
    v38 = 2048;
    v39 = v25;
    v40 = 2114;
    v41 = v11;
    v42 = 2114;
    v43 = v29;
    _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Initially loaded %lu iTunes accounts %{public}@. primaryICloudAccount = %{public}@", buf, 0x2Au);
  }

  v4 = 0;
LABEL_36:

LABEL_37:
LABEL_38:
  if (v4)
  {
    v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v38 = 2114;
      v39 = v4;
      _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to register for account monitoring. err=%{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_43:

  return v4;
}

uint64_t __45__ICMonitoredAccountStore_sharedAccountStore__block_invoke()
{
  sharedAccountStore_sSharedAccountStore = objc_alloc_init(ICMonitoredAccountStore);

  return MEMORY[0x1EEE66BB8]();
}

- (ICMonitoredAccountStore)init
{
  v12.receiver = self;
  v12.super_class = ICMonitoredAccountStore;
  v2 = [(ICMonitoredAccountStore *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.iTunesCloud.ICMonitoredAccountStore.observerCallbackQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_lock._os_unfair_lock_opaque = 0;
    v8 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__ICMonitoredAccountStore_init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICMonitoredAccountStore_accountCredentialChanged___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __52__ICMonitoredAccountStore_accountCredentialChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_description];
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling notification for credentials update for account: %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 16);
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 monitoredAccountStore:*(a1 + 32) didChangeCredentialsForAccount:{*(a1 + 40), v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ICMonitoredAccountStore_accountWasRemoved___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_async(queue, v7);
}

void __45__ICMonitoredAccountStore_accountWasRemoved___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_description];
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling notification for removed account: %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 16);
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 monitoredAccountStore:*(a1 + 32) didRemoveAccount:{*(a1 + 40), v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ICMonitoredAccountStore_accountWasModified___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = modifiedCopy;
  v6 = modifiedCopy;
  dispatch_async(queue, v7);
}

void __46__ICMonitoredAccountStore_accountWasModified___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_description];
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling notification for updated account: %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 16);
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 monitoredAccountStore:*(a1 + 32) didUpdateAccount:{*(a1 + 40), v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ICMonitoredAccountStore_accountWasAdded___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = addedCopy;
  v6 = addedCopy;
  dispatch_async(queue, v7);
}

void __43__ICMonitoredAccountStore_accountWasAdded___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_description];
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling notification for added account: %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 16);
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 monitoredAccountStore:*(a1 + 32) didAddAccount:{*(a1 + 40), v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)saveAccount:(id)account error:(id *)error
{
  accountCopy = account;
  _registerAndLoadAccountsIfNecessary = [(ICMonitoredAccountStore *)self _registerAndLoadAccountsIfNecessary];
  if (!_registerAndLoadAccountsIfNecessary)
  {
    accountStore = self->_accountStore;
    v11 = 0;
    [(ACMonitoredAccountStore *)accountStore saveVerifiedAccount:accountCopy error:&v11];
    _registerAndLoadAccountsIfNecessary = v11;
  }

  if (error)
  {
    _registerAndLoadAccountsIfNecessary = _registerAndLoadAccountsIfNecessary;
    *error = _registerAndLoadAccountsIfNecessary;
  }

  v9 = _registerAndLoadAccountsIfNecessary == 0;

  return v9;
}

- (id)storeAccountTypeWithError:(id *)error
{
  if (!self->_cachedStoreAccountType)
  {
    accountStore = self->_accountStore;
    v13 = 0;
    v11 = [(ACMonitoredAccountStore *)accountStore ic_storeAccountTypeWithError:&v13];
    v5 = v13;
    cachedStoreAccountType = self->_cachedStoreAccountType;
    self->_cachedStoreAccountType = v11;

    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (error)
  {
LABEL_3:
    v6 = v5;
    *error = v5;
  }

LABEL_4:
  v7 = self->_cachedStoreAccountType;
  v8 = v7;

  return v7;
}

- (id)primaryAppleAccountWithError:(id *)error
{
  _registerAndLoadAccountsIfNecessary = [(ICMonitoredAccountStore *)self _registerAndLoadAccountsIfNecessary];
  if (_registerAndLoadAccountsIfNecessary)
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  monitoredAccounts = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
  v6 = [monitoredAccounts msv_firstWhere:&__block_literal_global_10];

  if (error)
  {
LABEL_3:
    v7 = _registerAndLoadAccountsIfNecessary;
    *error = _registerAndLoadAccountsIfNecessary;
  }

LABEL_4:

  return v6;
}

- (id)storeAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v14 = 0;
  v7 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v14];
  v8 = v14;
  v9 = 0;
  if (!v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ICMonitoredAccountStore_storeAccountWithIdentifier_error___block_invoke;
    v12[3] = &unk_1E7BF3928;
    v13 = identifierCopy;
    v9 = [v7 msv_firstWhere:v12];
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

uint64_t __60__ICMonitoredAccountStore_storeAccountWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isEqual:v3];
  }

  return v4;
}

- (id)storeAccountForHomeUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v14 = 0;
  v7 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v14];
  v8 = v14;
  v9 = 0;
  if (!v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__ICMonitoredAccountStore_storeAccountForHomeUserIdentifier_error___block_invoke;
    v12[3] = &unk_1E7BF3928;
    v13 = identifierCopy;
    v9 = [v7 msv_firstWhere:v12];
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

uint64_t __67__ICMonitoredAccountStore_storeAccountForHomeUserIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ic_homeUserIdentifiers];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)storeAccountForAltDSID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v7 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v14];
  v8 = v14;
  v9 = 0;
  if (!v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__ICMonitoredAccountStore_storeAccountForAltDSID_error___block_invoke;
    v12[3] = &unk_1E7BF3928;
    v13 = dCopy;
    v9 = [v7 msv_firstWhere:v12];
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

uint64_t __56__ICMonitoredAccountStore_storeAccountForAltDSID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ic_altDSID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

- (id)storeAccountForDSID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v7 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v14];
  v8 = v14;
  v9 = 0;
  if (!v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__ICMonitoredAccountStore_storeAccountForDSID_error___block_invoke;
    v12[3] = &unk_1E7BF3928;
    v13 = dCopy;
    v9 = [v7 msv_firstWhere:v12];
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

uint64_t __53__ICMonitoredAccountStore_storeAccountForDSID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ic_DSID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

- (id)localStoreAccountWithError:(id *)error
{
  v9 = 0;
  v4 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v9];
  v5 = v9;
  v6 = 0;
  if (!v5)
  {
    v6 = [v4 msv_firstWhere:&__block_literal_global_8_2413];
  }

  if (error)
  {
    v7 = v5;
    *error = v5;
  }

  return v6;
}

- (id)activeStoreAccountWithError:(id *)error
{
  v9 = 0;
  v4 = [(ICMonitoredAccountStore *)self allStoreAccountsWithError:&v9];
  v5 = v9;
  v6 = 0;
  if (!v5)
  {
    v6 = [v4 msv_firstWhere:&__block_literal_global_6];
  }

  if (error)
  {
    v7 = v5;
    *error = v5;
  }

  return v6;
}

- (id)allStoreAccountsWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  _registerAndLoadAccountsIfNecessary = [(ICMonitoredAccountStore *)self _registerAndLoadAccountsIfNecessary];
  if (_registerAndLoadAccountsIfNecessary)
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  monitoredAccounts = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(monitoredAccounts, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = monitoredAccounts;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 ic_isITunesAccount])
        {
          [v6 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if (error)
  {
LABEL_3:
    v7 = _registerAndLoadAccountsIfNecessary;
    *error = _registerAndLoadAccountsIfNecessary;
  }

LABEL_4:

  return v6;
}

- (id)acAccountStore
{
  _registerAndLoadAccountsIfNecessary = [(ICMonitoredAccountStore *)self _registerAndLoadAccountsIfNecessary];
  accountStore = self->_accountStore;

  return accountStore;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICMonitoredAccountStore_registerObserver___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

@end