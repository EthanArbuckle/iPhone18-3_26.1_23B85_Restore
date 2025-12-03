@interface ICUserIdentityStoreACAccountBackend
- (BOOL)disableLockerAccountDSID:(id)d error:(id *)error;
- (BOOL)replaceIdentityProperties:(id)properties forDSID:(id)d error:(id *)error;
- (BOOL)setIdentityProperties:(id)properties forDSID:(id)d error:(id *)error;
- (BOOL)setLocalStoreAccountProperties:(id)properties error:(id *)error;
- (BOOL)updateActiveAccountDSID:(id)d error:(id *)error;
- (BOOL)updateActiveLockerAccountDSID:(id)d error:(id *)error;
- (ICUserIdentityStoreACAccountBackend)init;
- (ICUserIdentityStoreBackendDelegate)delegate;
- (id)_newLocalStoreAccountPropertiesFromAccount:(id)account;
- (id)_newUserIdentityPropertiesForAccount:(id)account;
- (id)_userIdentityPropertiesForAccount:(id)account;
- (id)accountDSIDForAltDSID:(id)d error:(id *)error;
- (id)activeAccountDSIDWithError:(id *)error;
- (id)activeLockerAccountDSIDWithError:(id *)error;
- (id)allManageableStoreAccountDSIDsWithError:(id *)error;
- (id)allStoreAccountDSIDsWithError:(id *)error;
- (id)allStoreAccountsWithError:(id *)error;
- (id)defaultMediaAccountDSIDWithError:(id *)error;
- (id)identityPropertiesForDSID:(id)d error:(id *)error;
- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)error;
- (id)localStoreAccountPropertiesWithError:(id *)error;
- (id)localStoreAccountWithError:(id *)error;
- (id)storeAccountForDSID:(id)d error:(id *)error;
- (id)verificationContextForAccountEstablishmentWithError:(id *)error;
- (id)verificationContextForDSID:(id)d error:(id *)error;
- (void)_applyIdentityProperties:(id)properties toAccount:(id)account;
- (void)_applyLocalStoreAccountProperties:(id)properties toAccount:(id)account;
- (void)_notifyDelegateOfBackendChange;
- (void)_synchronize;
- (void)monitoredAccountStore:(id)store didAddAccount:(id)account;
- (void)monitoredAccountStore:(id)store didChangeCredentialsForAccount:(id)account;
- (void)monitoredAccountStore:(id)store didRemoveAccount:(id)account;
- (void)monitoredAccountStore:(id)store didUpdateAccount:(id)account;
- (void)removeIdentityForDSID:(id)d completion:(id)completion;
- (void)synchronize;
@end

@implementation ICUserIdentityStoreACAccountBackend

- (ICUserIdentityStoreACAccountBackend)init
{
  v15.receiver = self;
  v15.super_class = ICUserIdentityStoreACAccountBackend;
  v2 = [(ICUserIdentityStoreACAccountBackend *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.iTunesCloud.ICUserIdentityStoreACAccountBackend.callbackQueue", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICUserIdentityStoreACAccountBackend.accountStoreDelegateQueue", v6);
    accountStoreDelegateQueue = v2->_accountStoreDelegateQueue;
    v2->_accountStoreDelegateQueue = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
    v9 = +[ICMonitoredAccountStore sharedAccountStore];
    monitoredAccountStore = v2->_monitoredAccountStore;
    v2->_monitoredAccountStore = v9;

    v11 = v2->_accountStoreDelegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__ICUserIdentityStoreACAccountBackend_init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v14 = v2;
    dispatch_async(v11, block);
  }

  return v2;
}

void __43__ICUserIdentityStoreACAccountBackend_init__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v2 = *(*(a1 + 32) + 8);
  v21 = 0;
  v3 = [v2 activeStoreAccountWithError:&v21];
  v4 = v21;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to initialize active account, error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = [v3 ic_DSID];
    v8 = *(a1 + 32);
    v5 = *(v8 + 32);
    *(v8 + 32) = v7;
  }

  v9 = *(*(a1 + 32) + 8);
  v20 = v4;
  v10 = [v9 primaryAppleAccountWithError:&v20];
  v11 = v20;

  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  *(v12 + 24) = v10;

  if (v11)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to initialize primary apple account, error=%{public}@", buf, 0x16u);
    }
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v19 = *(v17 + 24);
    v18 = *(v17 + 32);
    *buf = 138543874;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Initialized with active account DSID %{public}@, primaryAppleAccount %{public}@", buf, 0x20u);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  [*(*(a1 + 32) + 8) registerObserver:?];
}

- (void)synchronize
{
  os_unfair_lock_lock(&self->_lock);
  [(ICUserIdentityStoreACAccountBackend *)self _synchronize];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_synchronize
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Synchronizing with account store", buf, 0xCu);
  }

  identityPropertiesCache = self->_identityPropertiesCache;
  self->_identityPropertiesCache = 0;

  activeAccountDSID = self->_activeAccountDSID;
  self->_activeAccountDSID = 0;

  primaryICloudAccount = self->_primaryICloudAccount;
  self->_primaryICloudAccount = 0;

  monitoredAccountStore = self->_monitoredAccountStore;
  v18 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore activeStoreAccountWithError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1B4491000, &v10->super.super, OS_LOG_TYPE_ERROR, "%{public}@ Failed to initialize active account, error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    ic_DSID = [v8 ic_DSID];
    v10 = self->_activeAccountDSID;
    self->_activeAccountDSID = ic_DSID;
  }

  v12 = self->_monitoredAccountStore;
  v17 = v9;
  v13 = [(ICMonitoredAccountStore *)v12 primaryAppleAccountWithError:&v17];
  v14 = v17;

  v15 = self->_primaryICloudAccount;
  self->_primaryICloudAccount = v13;

  if (v14)
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to initialize primary apple account, error=%{public}@", buf, 0x16u);
    }
  }
}

- (ICUserIdentityStoreBackendDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_newUserIdentityPropertiesForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(ICMutableUserIdentityProperties);
  ic_altDSID = [accountCopy ic_altDSID];
  [(ICMutableUserIdentityProperties *)v4 setAlternateDSID:ic_altDSID];

  ic_DSID = [accountCopy ic_DSID];
  [(ICMutableUserIdentityProperties *)v4 setDSID:ic_DSID];

  ic_firstName = [accountCopy ic_firstName];
  [(ICMutableUserIdentityProperties *)v4 setFirstName:ic_firstName];

  ic_lastName = [accountCopy ic_lastName];
  [(ICMutableUserIdentityProperties *)v4 setLastName:ic_lastName];

  -[ICMutableUserIdentityProperties setManagedAppleID:](v4, "setManagedAppleID:", [accountCopy ic_isManagedAppleID]);
  -[ICMutableUserIdentityProperties setSandboxed:](v4, "setSandboxed:", [accountCopy ic_isSandboxed]);
  ic_storefront = [accountCopy ic_storefront];
  [(ICMutableUserIdentityProperties *)v4 setStorefrontIdentifier:ic_storefront];

  -[ICMutableUserIdentityProperties setSubscriptionStatusEnabled:](v4, "setSubscriptionStatusEnabled:", [accountCopy ic_isSubscriptionStatusEnabled]);
  username = [accountCopy username];
  [(ICMutableUserIdentityProperties *)v4 setUsername:username];

  ic_ageVerificationExpirationDate = [accountCopy ic_ageVerificationExpirationDate];
  [(ICMutableUserIdentityProperties *)v4 setAgeVerificationExpirationDate:ic_ageVerificationExpirationDate];

  ic_mergeWithCloudLibraryPreference = [accountCopy ic_mergeWithCloudLibraryPreference];
  [(ICMutableUserIdentityProperties *)v4 setMergeToCloudLibraryPreference:ic_mergeWithCloudLibraryPreference];

  ic_homeUserIdentifiers = [accountCopy ic_homeUserIdentifiers];
  [(ICMutableUserIdentityProperties *)v4 setHomeUserIdentifiers:ic_homeUserIdentifiers];

  ic_cloudLibraryStateReason = [accountCopy ic_cloudLibraryStateReason];
  [(ICMutableUserIdentityProperties *)v4 setCloudLibraryStateReason:ic_cloudLibraryStateReason];

  ic_privateListeningEnabled = [accountCopy ic_privateListeningEnabled];
  [(ICMutableUserIdentityProperties *)v4 setPrivateListeningEnabled:ic_privateListeningEnabled];

  -[ICMutableUserIdentityProperties setActiveLocker:](v4, "setActiveLocker:", [accountCopy ic_isActiveLockerAccount]);
  -[ICMutableUserIdentityProperties setActive:](v4, "setActive:", [accountCopy ic_isActive]);
  ic_privateListeningEnabledForHomeUsers = [accountCopy ic_privateListeningEnabledForHomeUsers];
  [(ICMutableUserIdentityProperties *)v4 setPrivateListeningEnabledForHomeUsers:ic_privateListeningEnabledForHomeUsers];

  ic_privacyAcknowledgementVersions = [accountCopy ic_privacyAcknowledgementVersions];
  [(ICMutableUserIdentityProperties *)v4 setPrivacyAcknowledgementVersions:ic_privacyAcknowledgementVersions];

  -[ICMutableUserIdentityProperties setU18MinorAccount:](v4, "setU18MinorAccount:", [accountCopy ic_isU18MinorAccount]);
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v20 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (v20)
  {
    -[ICMutableUserIdentityProperties setCloudBackupEnabled:](v4, "setCloudBackupEnabled:", [accountCopy ic_isCloudBackupEnabled]);
    aa_personID = [accountCopy aa_personID];
    [(ICMutableUserIdentityProperties *)v4 setICloudPersonID:aa_personID];
  }

  v22 = [(ICMutableUserIdentityProperties *)v4 copy];

  return v22;
}

- (id)_userIdentityPropertiesForAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v6 = [(NSMutableDictionary *)self->_identityPropertiesCache objectForKey:identifier];
  if (!v6)
  {
    v6 = [(ICUserIdentityStoreACAccountBackend *)self _newUserIdentityPropertiesForAccount:accountCopy];
    identityPropertiesCache = self->_identityPropertiesCache;
    if (!identityPropertiesCache)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v9 = self->_identityPropertiesCache;
      self->_identityPropertiesCache = v8;

      identityPropertiesCache = self->_identityPropertiesCache;
    }

    [(NSMutableDictionary *)identityPropertiesCache setObject:v6 forKey:identifier];
  }

  return v6;
}

- (id)_newLocalStoreAccountPropertiesFromAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(ICMutableLocalStoreAccountProperties);
  ic_storefront = [accountCopy ic_storefront];

  if (ic_storefront)
  {
    v6 = ic_storefront;
  }

  else
  {
    v6 = &stru_1F2C4A680;
  }

  [(ICMutableLocalStoreAccountProperties *)v4 setStorefrontIdentifier:v6];

  v7 = [(ICMutableLocalStoreAccountProperties *)v4 copy];
  return v7;
}

- (void)_applyLocalStoreAccountProperties:(id)properties toAccount:(id)account
{
  accountCopy = account;
  storefrontIdentifier = [properties storefrontIdentifier];
  [accountCopy ic_setStorefront:storefrontIdentifier];
}

- (void)_applyIdentityProperties:(id)properties toAccount:(id)account
{
  accountCopy = account;
  propertiesCopy = properties;
  alternateDSID = [propertiesCopy alternateDSID];
  [accountCopy ic_setAltDSID:alternateDSID];

  dSID = [propertiesCopy DSID];
  [accountCopy ic_setDSID:dSID];

  firstName = [propertiesCopy firstName];
  [accountCopy ic_setFirstName:firstName];

  lastName = [propertiesCopy lastName];
  [accountCopy ic_setLastName:lastName];

  [accountCopy ic_setManagedAppleID:{objc_msgSend(propertiesCopy, "isManagedAppleID")}];
  [accountCopy ic_setSandboxed:{objc_msgSend(propertiesCopy, "isSandboxed")}];
  storefrontIdentifier = [propertiesCopy storefrontIdentifier];
  [accountCopy ic_setStorefront:storefrontIdentifier];

  [accountCopy ic_setSubscriptionStatusEnabled:{objc_msgSend(propertiesCopy, "isSubscriptionStatusEnabled")}];
  username = [propertiesCopy username];
  [accountCopy setUsername:username];

  mergeToCloudLibraryPreference = [propertiesCopy mergeToCloudLibraryPreference];
  [accountCopy ic_setMergeWithCloudLibraryPreference:mergeToCloudLibraryPreference];

  cloudLibraryStateReason = [propertiesCopy cloudLibraryStateReason];
  [accountCopy ic_setCloudLibraryStateReason:cloudLibraryStateReason];

  privateListeningEnabled = [propertiesCopy privateListeningEnabled];
  [accountCopy ic_setPrivateListeningEnabled:privateListeningEnabled];

  isActiveLocker = [propertiesCopy isActiveLocker];
  [accountCopy ic_setActiveLockerAccount:isActiveLocker];
}

- (void)_notifyDelegateOfBackendChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ICUserIdentityStoreACAccountBackend__notifyDelegateOfBackendChange__block_invoke;
  v6[3] = &unk_1E7BFA078;
  v7 = WeakRetained;
  selfCopy = self;
  v5 = WeakRetained;
  dispatch_async(callbackQueue, v6);
}

- (void)monitoredAccountStore:(id)store didChangeCredentialsForAccount:(id)account
{
  accountCopy = account;
  accountStoreDelegateQueue = self->_accountStoreDelegateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didChangeCredentialsForAccount___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = accountCopy;
  v7 = accountCopy;
  dispatch_async(accountStoreDelegateQueue, v8);
}

void __92__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didChangeCredentialsForAccount___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if ([*(a1 + 40) ic_isITunesAccount])
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) ic_description];
      v5 = ICCreateLoggableValueForDSID(*(*(a1 + 32) + 32));
      v16 = 138543874;
      v17 = v3;
      v18 = 2114;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling credentials-changed notification for iTunes account %{public}@. _activeAccountDSID=%@", &v16, 0x20u);
    }

    if ([*(a1 + 40) ic_isActive] & 1) != 0 || (+[ICDeviceInfo currentDeviceInfo](ICDeviceInfo, "currentDeviceInfo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "supportsMultipleITunesAccounts"), v6, (v7))
    {
      [*(a1 + 32) _notifyDelegateOfBackendChange];
    }
  }

  else
  {
    v8 = [*(a1 + 40) accountType];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:*MEMORY[0x1E69597F8]];

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) ic_description];
        v14 = [*(*(a1 + 32) + 24) ic_description];
        v16 = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling credentials-changed notification for Apple account %{public}@. _primaryICloudAccount=%@", &v16, 0x20u);
      }

      if ([*(a1 + 40) aa_isAccountClass:*MEMORY[0x1E698B760]] && !*(*(a1 + 32) + 24))
      {
        v15 = [0 identifier];
        if (v15)
        {
          [*(*(a1 + 32) + 16) removeObjectForKey:v15];
        }

        objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
      }
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (void)monitoredAccountStore:(id)store didRemoveAccount:(id)account
{
  accountCopy = account;
  accountStoreDelegateQueue = self->_accountStoreDelegateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didRemoveAccount___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = accountCopy;
  v7 = accountCopy;
  dispatch_async(accountStoreDelegateQueue, v8);
}

void __78__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didRemoveAccount___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if (![*(a1 + 40) ic_isITunesAccount])
  {
    v17 = [*(a1 + 40) accountType];
    v18 = [v17 identifier];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69597F8]];

    if (v19)
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        v22 = [*(a1 + 40) ic_description];
        v23 = [*(*(a1 + 32) + 24) ic_description];
        v37 = 138543874;
        v38 = v21;
        v39 = 2114;
        v40 = v22;
        v41 = 2112;
        v42 = v23;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-removed notification for Apple account %{public}@. _primaryICloudAccount=%@", &v37, 0x20u);
      }

      if (([*(a1 + 40) aa_isAccountClass:*MEMORY[0x1E698B760]] & 1) == 0)
      {
        v24 = *(*(a1 + 32) + 24);
        v25 = *(a1 + 40);
        v26 = v24;
        v27 = v26;
        if (v25 == v26)
        {
        }

        else
        {
          v28 = [v25 isEqual:v26];

          if (!v28)
          {
            goto LABEL_16;
          }
        }
      }

      v29 = 0;
      v33 = *(a1 + 32);
      v6 = *(v33 + 24);
      *(v33 + 24) = 0;
      goto LABEL_25;
    }

LABEL_16:
    v29 = 0;
    goto LABEL_26;
  }

  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_description];
    v5 = ICCreateLoggableValueForDSID(*(*(a1 + 32) + 32));
    v37 = 138543874;
    v38 = v3;
    v39 = 2114;
    v40 = v4;
    v41 = 2112;
    v42 = v5;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-removed notification for iTunes account %{public}@. _activeAccountDSID=%@", &v37, 0x20u);
  }

  v6 = [*(a1 + 40) ic_DSID];
  if ([*(a1 + 40) ic_isActive])
  {
    goto LABEL_18;
  }

  v7 = *(*(a1 + 32) + 32);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_18;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
LABEL_18:
    v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v37 = 138543362;
      v38 = v31;
      _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ The active account was removed", &v37, 0xCu);
    }

    v32 = *(a1 + 32);
    v14 = *(v32 + 32);
    *(v32 + 32) = 0;
    goto LABEL_21;
  }

  v12 = +[ICDeviceInfo currentDeviceInfo];
  v13 = [v12 supportsMultipleITunesAccounts];

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      v36 = *(a1 + 32);
      v37 = 138543618;
      v38 = v36;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring removal of account %@", &v37, 0x16u);
    }

    v29 = 0;
    goto LABEL_22;
  }

  if (v15)
  {
    v16 = *(a1 + 32);
    v37 = 138543618;
    v38 = v16;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ A non-active account was removed of account %@", &v37, 0x16u);
  }

LABEL_21:
  v29 = 1;
LABEL_22:

LABEL_25:
LABEL_26:
  v34 = *(*(a1 + 32) + 16);
  v35 = [*(a1 + 40) identifier];
  [v34 removeObjectForKey:v35];

  if (v29)
  {
    [*(a1 + 32) _notifyDelegateOfBackendChange];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (void)monitoredAccountStore:(id)store didUpdateAccount:(id)account
{
  accountCopy = account;
  accountStoreDelegateQueue = self->_accountStoreDelegateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didUpdateAccount___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = accountCopy;
  v7 = accountCopy;
  dispatch_async(accountStoreDelegateQueue, v8);
}

void __78__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didUpdateAccount___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v2 = [*(a1 + 40) ic_DSID];
  if ([*(a1 + 40) ic_isITunesAccount])
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) ic_description];
      v6 = ICCreateLoggableValueForDSID(*(*(a1 + 32) + 32));
      *buf = 138543874;
      v77 = v4;
      v78 = 2114;
      v79 = v5;
      v80 = 2112;
      v81 = v6;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-updated notification for iTunes account %{public}@. _activeAccountDSID=%@", buf, 0x20u);
    }

    if (![v2 unsignedLongLongValue] && !objc_msgSend(*(a1 + 40), "ic_isLocalAccount"))
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 32);
        *buf = 138543362;
        v77 = v48;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring change to account with no DSID", buf, 0xCu);
      }

LABEL_58:
      v26 = 0;
LABEL_59:

      goto LABEL_66;
    }

    v7 = [*(a1 + 40) identifier];
    if ([*(a1 + 40) ic_isActive])
    {
LABEL_9:
      if ([*(a1 + 40) ic_isActive])
      {
        v13 = *(*(a1 + 32) + 32);
        v14 = v2;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {
        }

        else
        {
          v17 = [v14 isEqual:v15];

          if ((v17 & 1) == 0)
          {
            v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 32);
              v20 = ICCreateLoggableValueForDSID(*(v19 + 32));
              v21 = ICCreateLoggableValueForDSID(v14);
              *buf = 138543874;
              v77 = v19;
              v78 = 2112;
              v79 = v20;
              v80 = 2112;
              v81 = v21;
              _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected active iTunes account changing from %@ --> %@", buf, 0x20u);
            }

            v22 = *(a1 + 32);
            v23 = *(v22 + 32);
            if (v23)
            {
              v24 = *(v22 + 8);
              v75 = 0;
              v25 = [v24 storeAccountForDSID:v23 error:&v75];
              v26 = v75;
              if (v25)
              {
                v27 = *(*(a1 + 32) + 16);
                v28 = [v25 identifier];
                [v27 removeObjectForKey:v28];
              }

              v22 = *(a1 + 32);
            }

            else
            {
              v26 = 0;
            }

            [*(v22 + 16) removeObjectForKey:v7];
            v72 = *(a1 + 32);
            v73 = v14;
            v56 = *(v72 + 32);
            *(v72 + 32) = v73;
            goto LABEL_65;
          }
        }
      }

      if (([*(a1 + 40) ic_isActive] & 1) != 0 || (objc_msgSend(*(a1 + 40), "ic_isLocalAccount") & 1) != 0 || (+[ICDeviceInfo currentDeviceInfo](ICDeviceInfo, "currentDeviceInfo"), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "supportsMultipleITunesAccounts"), v57, v58))
      {
        v59 = [*(*(a1 + 32) + 16) objectForKey:v7];
        [*(*(a1 + 32) + 16) removeObjectForKey:v7];
        v60 = [*(a1 + 32) _userIdentityPropertiesForAccount:*(a1 + 40)];
        v56 = v59;
        v61 = v60;
        v62 = v61;
        if (v56 == v61)
        {
        }

        else
        {
          v63 = [v56 isEqual:v61];

          if ((v63 & 1) == 0)
          {
            v64 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(a1 + 32);
              v66 = ICCreateLoggableValueForDSID(v2);
              *buf = 138543618;
              v77 = v65;
              v78 = 2112;
              v79 = v66;
              _os_log_impl(&dword_1B4491000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected properties change for account %@", buf, 0x16u);
            }

            v26 = 0;
            goto LABEL_65;
          }
        }

        v67 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(a1 + 32);
          v69 = ICCreateLoggableValueForDSID(v2);
          *buf = 138543618;
          v77 = v68;
          v78 = 2112;
          v79 = v69;
          _os_log_impl(&dword_1B4491000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %@ changed but properties remain the same - ignoring", buf, 0x16u);
        }
      }

      else
      {
        v70 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a1 + 32);
          *buf = 138543362;
          v77 = v71;
          _os_log_impl(&dword_1B4491000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring change to account", buf, 0xCu);
        }
      }

      goto LABEL_58;
    }

    v8 = *(*(a1 + 32) + 32);
    v9 = v2;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v52 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *(a1 + 32);
      v54 = ICCreateLoggableValueForDSID(*(v53 + 32));
      *buf = 138543618;
      v77 = v53;
      v78 = 2112;
      v79 = v54;
      _os_log_impl(&dword_1B4491000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected active iTunes account changing from %@ --> nil", buf, 0x16u);
    }

    [*(*(a1 + 32) + 16) removeObjectForKey:v7];
    v26 = 0;
LABEL_44:
    v55 = *(a1 + 32);
    v56 = *(v55 + 32);
    *(v55 + 32) = 0;
LABEL_65:

    [*(a1 + 32) _notifyDelegateOfBackendChange];
    goto LABEL_66;
  }

  if (!v2)
  {
    goto LABEL_21;
  }

  v29 = *(*(a1 + 32) + 32);
  v30 = v2;
  v31 = v29;
  v32 = v31;
  if (v30 == v31)
  {
  }

  else
  {
    v33 = [v30 isEqual:v31];

    if (!v33)
    {
LABEL_21:
      v26 = 0;
      goto LABEL_24;
    }
  }

  v34 = *(*(a1 + 32) + 8);
  v74 = 0;
  v35 = [v34 storeAccountForDSID:v30 error:&v74];
  v26 = v74;

  if (!v35)
  {
    v49 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 32);
      v51 = ICCreateLoggableValueForDSID(*(v50 + 32));
      *buf = 138543618;
      v77 = v50;
      v78 = 2112;
      v79 = v51;
      _os_log_impl(&dword_1B4491000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected active iTunes account is no longer an iTunes account at all. Active iTunes account changing from %@ --> nil", buf, 0x16u);
    }

    v7 = [*(a1 + 40) identifier];
    [*(*(a1 + 32) + 16) removeObjectForKey:v7];
    goto LABEL_44;
  }

LABEL_24:
  v36 = [*(a1 + 40) accountType];
  v37 = [v36 identifier];
  v38 = [v37 isEqualToString:*MEMORY[0x1E69597F8]];

  if (v38)
  {
    v39 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 32);
      v41 = [*(a1 + 40) ic_description];
      v42 = [*(*(a1 + 32) + 24) ic_description];
      *buf = 138543874;
      v77 = v40;
      v78 = 2114;
      v79 = v41;
      v80 = 2112;
      v81 = v42;
      _os_log_impl(&dword_1B4491000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-updated notification for Apple account %{public}@. _primaryICloudAccount=%@", buf, 0x20u);
    }

    v43 = [*(a1 + 40) aa_isAccountClass:*MEMORY[0x1E698B760]];
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v44 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v43)
    {
      if (v44)
      {
        v45 = *(a1 + 32);
        *buf = 138543362;
        v77 = v45;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected change to primary apple account", buf, 0xCu);
      }

      v7 = [*(*(a1 + 32) + 24) identifier];
      if (v7)
      {
        [*(*(a1 + 32) + 16) removeObjectForKey:v7];
      }

      objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    }

    else if (v44)
    {
      v46 = *(a1 + 32);
      v47 = [*(a1 + 40) ic_description];
      *buf = 138543618;
      v77 = v46;
      v78 = 2114;
      v79 = v47;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring change to non-primary apple account %{public}@", buf, 0x16u);
    }

    goto LABEL_59;
  }

LABEL_66:

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (void)monitoredAccountStore:(id)store didAddAccount:(id)account
{
  accountCopy = account;
  accountStoreDelegateQueue = self->_accountStoreDelegateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didAddAccount___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = accountCopy;
  v7 = accountCopy;
  dispatch_async(accountStoreDelegateQueue, v8);
}

void __75__ICUserIdentityStoreACAccountBackend_monitoredAccountStore_didAddAccount___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if ([*(a1 + 40) ic_isITunesAccount])
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) ic_description];
      v5 = ICCreateLoggableValueForDSID(*(*(a1 + 32) + 32));
      v20 = 138543874;
      v21 = v3;
      v22 = 2114;
      v23 = v4;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-added notification for iTunes account %{public}@. _activeAccountDSID=%@", &v20, 0x20u);
    }

    v6 = [*(a1 + 40) ic_DSID];
    if (![v6 unsignedLongLongValue] || (objc_msgSend(*(a1 + 40), "ic_isActive") & 1) == 0 && (+[ICDeviceInfo currentDeviceInfo](ICDeviceInfo, "currentDeviceInfo"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportsMultipleITunesAccounts"), v7, !v8))
    {

      goto LABEL_19;
    }

    if ([*(a1 + 40) ic_isActive])
    {
      objc_storeStrong((*(a1 + 32) + 32), v6);
    }

    v9 = *(*(a1 + 32) + 16);
    v10 = [*(a1 + 40) identifier];
    [v9 removeObjectForKey:v10];
    goto LABEL_17;
  }

  v11 = [*(a1 + 40) accountType];
  v12 = [v11 identifier];
  v13 = [v12 isEqualToString:*MEMORY[0x1E69597F8]];

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) ic_description];
      v17 = [*(*(a1 + 32) + 24) ic_description];
      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling account-added notification for Apple account %{public}@. _primaryICloudAccount=%@", &v20, 0x20u);
    }

    if ([*(a1 + 40) aa_isAccountClass:*MEMORY[0x1E698B760]])
    {
      v6 = [*(*(a1 + 32) + 24) identifier];
      if (v6)
      {
        [*(*(a1 + 32) + 16) removeObjectForKey:v6];
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v10 = *(v18 + 24);
      *(v18 + 24) = v19;
LABEL_17:

      [*(a1 + 32) _notifyDelegateOfBackendChange];
    }
  }

LABEL_19:
  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (id)storeAccountForDSID:(id)d error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v28 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore allStoreAccountsWithError:&v28];
  v9 = v28;
  v10 = 0;
  if (!v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      errorCopy = error;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          ic_DSID = [v16 ic_DSID];
          v18 = ic_DSID;
          if (ic_DSID == dCopy)
          {

LABEL_14:
            v10 = v16;
            error = errorCopy;
            goto LABEL_15;
          }

          v19 = [ic_DSID isEqual:dCopy];

          if (v19)
          {
            goto LABEL_14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v10 = 0;
        error = errorCopy;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_15:

    v8 = v23;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v20 = v9;
    *error = v9;
  }

  return v10;
}

- (id)localStoreAccountWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v19 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore allStoreAccountsWithError:&v19];
  v7 = v19;
  v8 = 0;
  if (!v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v8 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 ic_isLocalAccount])
          {
            v8 = v12;
            goto LABEL_12;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v13 = v7;
    *error = v7;
  }

  return v8;
}

- (id)allStoreAccountsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v11 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore allStoreAccountsWithError:&v11];
  v7 = v11;
  v8 = [v6 copy];

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v9 = v7;
    *error = v7;
  }

  return v8;
}

- (id)allManageableStoreAccountDSIDsWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v23 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore allStoreAccountsWithError:&v23];
  v7 = v23;
  v8 = 0;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 ic_isManageable])
          {
            ic_DSID = [v14 ic_DSID];
            [v8 addObject:ic_DSID];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v16 = v7;
    *error = v7;
  }

  v17 = [v8 copy];

  return v17;
}

- (id)allStoreAccountDSIDsWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v27 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore allStoreAccountsWithError:&v27];
  v7 = v27;
  v8 = 0;
  if (!v7)
  {
    errorCopy = error;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          ic_DSID = [v14 ic_DSID];
          unsignedLongLongValue = [ic_DSID unsignedLongLongValue];

          if (unsignedLongLongValue)
          {
            ic_DSID2 = [v14 ic_DSID];
            [v8 addObject:ic_DSID2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v6 = v21;
    error = errorCopy;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v18 = v7;
    *error = v7;
  }

  v19 = [v8 copy];

  return v19;
}

- (BOOL)setLocalStoreAccountProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v15 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore localStoreAccountWithError:&v15];
  v9 = v15;
  if (v8)
  {
    [(ICUserIdentityStoreACAccountBackend *)self _applyLocalStoreAccountProperties:propertiesCopy toAccount:v8];
    v10 = self->_monitoredAccountStore;
    v14 = v9;
    [(ICMonitoredAccountStore *)v10 saveAccount:v8 error:&v14];
    v11 = v14;

    v9 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  return v9 == 0;
}

- (id)localStoreAccountPropertiesWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v11 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore localStoreAccountWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [(ICUserIdentityStoreACAccountBackend *)self _newLocalStoreAccountPropertiesFromAccount:v6];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v9 = v7;
    *error = v7;
  }

  return v8;
}

- (id)verificationContextForAccountEstablishmentWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v13 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountTypeWithError:&v13];
  v7 = v13;
  v8 = 0;
  if (!v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v6];
    acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
    v8 = [ICUserVerificationContext contextWithACAccount:v9 accountStore:acAccountStore];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v11 = v7;
    *error = v7;
  }

  return v8;
}

- (id)verificationContextForDSID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v15 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v15];

  v9 = v15;
  if (!(v9 | v8))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
    v10 = [ICUserVerificationContext contextWithACAccount:v8 accountStore:acAccountStore];

    v12 = [(ICUserIdentityStoreACAccountBackend *)self _userIdentityPropertiesForAccount:v8];
    [v10 setIdentityProperties:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v13 = v9;
    *error = v9;
  }

  return v10;
}

- (BOOL)setIdentityProperties:(id)properties forDSID:(id)d error:(id *)error
{
  propertiesCopy = properties;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v20 = 0;
  v11 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v20];

  v12 = v20;
  if (!(v12 | v11))
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  if (!v12)
  {
    [(ICUserIdentityStoreACAccountBackend *)self _applyIdentityProperties:propertiesCopy toAccount:v11];
    v13 = self->_monitoredAccountStore;
    v19 = 0;
    [(ICMonitoredAccountStore *)v13 saveAccount:v11 error:&v19];
    v12 = v19;
    if (!v12)
    {
      identityPropertiesCache = self->_identityPropertiesCache;
      v15 = [propertiesCopy copy];
      identifier = [v11 identifier];
      [(NSMutableDictionary *)identityPropertiesCache setObject:v15 forKey:identifier];

      v12 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v17 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)replaceIdentityProperties:(id)properties forDSID:(id)d error:(id *)error
{
  propertiesCopy = properties;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v20 = 0;
  v11 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v20];

  v12 = v20;
  if (!(v12 | v11))
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  if (!v12)
  {
    [(ICUserIdentityStoreACAccountBackend *)self _applyIdentityProperties:propertiesCopy toAccount:v11];
    v13 = self->_monitoredAccountStore;
    v19 = 0;
    [(ICMonitoredAccountStore *)v13 saveAccount:v11 error:&v19];
    v12 = v19;
    if (!v12)
    {
      identityPropertiesCache = self->_identityPropertiesCache;
      v15 = [propertiesCopy copy];
      identifier = [v11 identifier];
      [(NSMutableDictionary *)identityPropertiesCache setObject:v15 forKey:identifier];

      v12 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v17 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (void)removeIdentityForDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v22 = 0;
  v9 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v22];

  v10 = v22;
  if (v10)
  {
    if (completionCopy)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__ICUserIdentityStoreACAccountBackend_removeIdentityForDSID_completion___block_invoke;
      block[3] = &unk_1E7BF9EC8;
      v21 = completionCopy;
      v20 = v10;
      dispatch_async(callbackQueue, block);

      v12 = v21;
LABEL_8:
    }
  }

  else
  {
    if (v9)
    {
      acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__ICUserIdentityStoreACAccountBackend_removeIdentityForDSID_completion___block_invoke_3;
      v15[3] = &unk_1E7BF98C0;
      v15[4] = self;
      v16 = completionCopy;
      [acAccountStore removeAccount:v9 withCompletionHandler:v15];

      v12 = v16;
      goto LABEL_8;
    }

    if (completionCopy)
    {
      v14 = self->_callbackQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__ICUserIdentityStoreACAccountBackend_removeIdentityForDSID_completion___block_invoke_2;
      v17[3] = &unk_1E7BF9D20;
      v18 = completionCopy;
      dispatch_async(v14, v17);
      v12 = v18;
      goto LABEL_8;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __72__ICUserIdentityStoreACAccountBackend_removeIdentityForDSID_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  [*(a1 + 32) _synchronize];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICUserIdentityStoreACAccountBackend_removeIdentityForDSID_completion___block_invoke_4;
    block[3] = &unk_1E7BF9B68;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v12 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore primaryAppleAccountWithError:&v12];
  v7 = v12;
  if (v7 | v6)
  {
    v8 = v7;
    if (v6)
    {
      v9 = [(ICUserIdentityStoreACAccountBackend *)self _userIdentityPropertiesForAccount:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  v9 = 0;
LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

- (id)identityPropertiesForDSID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v14 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v14];

  v9 = v14;
  if (v9 | v8)
  {
    v10 = v9;
    if (v8)
    {
      v11 = [(ICUserIdentityStoreACAccountBackend *)self _userIdentityPropertiesForAccount:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  v11 = 0;
LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v12 = v10;
    *error = v10;
  }

  return v11;
}

- (BOOL)disableLockerAccountDSID:(id)d error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICUserIdentityStoreACAccountBackend.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"accountDSID != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v20 = 0;
  v9 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = ICCreateLoggableValueForDSID(dCopy);
    *buf = 138543874;
    selfCopy = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Could not load store account for accountDSID=%@, error=%{public}@", buf, 0x20u);
  }

  if (!v11)
  {
LABEL_11:
    acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
    v19 = 0;
    v15 = [acAccountStore ic_disableActiveLockerAccount:v9 error:&v19];
    v11 = v19;

    if (v15)
    {
      [(ICUserIdentityStoreACAccountBackend *)self _synchronize];
    }
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v16 = v11;
    *error = v11;
  }

  return v11 == 0;
}

- (BOOL)updateActiveLockerAccountDSID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v16 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v16];

  v9 = v16;
  v10 = v9;
  if (dCopy && !v9 && !v8)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  if (!v10)
  {
    acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
    v15 = 0;
    v12 = [acAccountStore ic_setActiveLockerAccount:v8 error:&v15];
    v10 = v15;

    if (v12)
    {
      [(ICUserIdentityStoreACAccountBackend *)self _synchronize];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v13 = v10;
    *error = v10;
  }

  return v10 == 0;
}

- (id)defaultMediaAccountDSIDWithError:(id *)error
{
  v7 = 0;
  v4 = [(ICUserIdentityStoreACAccountBackend *)self activeAccountDSIDWithError:&v7];
  v5 = v7;
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return v4;
}

- (id)accountDSIDForAltDSID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v13 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForAltDSID:dCopy error:&v13];

  v9 = v13;
  ic_DSID = [v8 ic_DSID];
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return ic_DSID;
}

- (id)activeLockerAccountDSIDWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v11 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore activeStoreAccountWithError:&v11];
  v7 = v11;
  ic_DSID = 0;
  if ([v6 ic_isActiveLockerAccount])
  {
    ic_DSID = [v6 ic_DSID];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v9 = v7;
    *error = v7;
  }

  return ic_DSID;
}

- (BOOL)updateActiveAccountDSID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v15 = 0;
  v8 = [(ICMonitoredAccountStore *)monitoredAccountStore storeAccountForDSID:dCopy error:&v15];

  v9 = v15;
  if (!(v9 | v8))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
  }

  if (!v9)
  {
    acAccountStore = [(ICMonitoredAccountStore *)self->_monitoredAccountStore acAccountStore];
    v14 = 0;
    v11 = [acAccountStore ic_setActiveStoreAccount:v8 error:&v14];
    v9 = v14;

    if (v11)
    {
      [(ICUserIdentityStoreACAccountBackend *)self _synchronize];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  return v9 == 0;
}

- (id)activeAccountDSIDWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  monitoredAccountStore = self->_monitoredAccountStore;
  v11 = 0;
  v6 = [(ICMonitoredAccountStore *)monitoredAccountStore activeStoreAccountWithError:&v11];
  v7 = v11;
  ic_DSID = [v6 ic_DSID];
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v9 = v7;
    *error = v7;
  }

  return ic_DSID;
}

@end