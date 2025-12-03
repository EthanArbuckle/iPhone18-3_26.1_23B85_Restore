@interface ICPrivacyInfo
+ (ICPrivacyInfo)sharedPrivacyInfo;
+ (id)_onboardingKitPrivacyIdentifierForPrivacyIdentifier:(id)identifier;
+ (id)sharedPrivacyInfoForUserIdentity:(id)identity;
- (BOOL)_canUsePreviousPrivacyAcknowledgementForPersonalizedNetworkRequests;
- (BOOL)_hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier;
- (BOOL)_privacyAcknowledgementRequiredForIdentifier:(id)identifier;
- (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier;
- (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifierForBundleIdentifier:(id)identifier;
- (BOOL)preflightDisclosureRequiredForBundleIdentifier:(id)identifier;
- (BOOL)preflightDisclosureRequiredForMusic;
- (BOOL)privacyAcknowledgementRequiredForBundleIdentifier:(id)identifier;
- (BOOL)privacyAcknowledgementRequiredForIdentifier:(id)identifier;
- (BOOL)privacyAcknowledgementRequiredForMedia;
- (BOOL)shouldBlockPersonalizedNetworkRequestsForBundleIdentifier:(id)identifier;
- (BOOL)shouldBlockPersonalizedNetworkRequestsForIdentifier:(id)identifier;
- (BOOL)shouldBlockPersonalizedNetworkRequestsForMedia;
- (ICPrivacyInfo)init;
- (ICPrivacyInfo)initWithIdentity:(id)identity;
- (id)_accountForPrivacyInfo;
- (id)_privacyDetailsForIdentifier:(id)identifier;
- (id)_queryPrivacyDetailsForIdentifier:(id)identifier;
- (id)beginObservingPrivacyAcknowledgementForIdentifier:(id)identifier handler:(id)handler;
- (void)_updateForPrivacyAcknowledgementChanged;
- (void)acknowledgePrivacyPolicyForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)endObservingPrivacyAcknowledgementForIdentifier:(id)identifier withToken:(id)token;
@end

@implementation ICPrivacyInfo

+ (ICPrivacyInfo)sharedPrivacyInfo
{
  v2 = +[ICUserIdentity autoupdatingActiveAccount];
  v3 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v2];

  return v3;
}

- (BOOL)privacyAcknowledgementRequiredForMedia
{
  if (![(ICPrivacyInfo *)self privacyAcknowledgementRequiredForMusic]|| ![(ICPrivacyInfo *)self privacyAcknowledgementRequiredForPodcasts]|| ![(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:@"TV"])
  {
    return 0;
  }

  return [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:@"Books"];
}

- (id)_accountForPrivacyInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  userIdentity = self->_userIdentity;
  v13 = 0;
  v5 = [v3 DSIDForUserIdentity:userIdentity outError:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[ICMonitoredAccountStore sharedAccountStore];
    v12 = 0;
    v7 = [v8 storeAccountForDSID:v5 error:&v12];
    v6 = v12;

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = self->_userIdentity;
    *buf = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load account for identity %{public}@. err = %{public}@.", buf, 0x20u);
  }

LABEL_7:

  return v7;
}

- (void)_updateForPrivacyAcknowledgementChanged
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__25804;
  v18 = __Block_byref_object_dispose__25805;
  v19 = 0;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cache copy];
  [(NSMutableDictionary *)self->_cache removeAllObjects];
  observers = self->_observers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke;
  v11[3] = &unk_1E7BF6E20;
  v11[4] = self;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  [(NSMutableDictionary *)observers enumerateKeysAndObjectsUsingBlock:v11];
  if ([v15[5] count])
  {
    v6 = [(NSMutableDictionary *)self->_cache copy];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v15[5] count])
  {
    v7 = v15[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke_2;
    v8[3] = &unk_1E7BF6E70;
    v9 = v6;
    selfCopy = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }

  _Block_object_dispose(&v14, 8);
}

void __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  [*(a1 + 32) _privacyAcknowledgementRequiredForIdentifier:v14];
  v6 = [*(a1 + 40) objectForKey:v14];
  v7 = [*(*(a1 + 32) + 16) objectForKey:v14];
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v9 = [v6 isEqual:v7];

    if (v9)
    {
      goto LABEL_8;
    }

    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 48) + 8) + 40);
    }

    v6 = [v5 copy];
    [v10 setObject:v6 forKey:v14];
  }

LABEL_8:
}

- (BOOL)_canUsePreviousPrivacyAcknowledgementForPersonalizedNetworkRequests
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  if ([v2 isAppleTV])
  {
    isInternalBuild = [v2 isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

void __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKey:v5];
  v9 = [v8 acknowledgementNeeded];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke_3;
  v11[3] = &unk_1E7BF6E48;
  v11[4] = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
}

void __56__ICPrivacyInfo__updateForPrivacyAcknowledgementChanged__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = 138544130;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v5;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking observation handler for %{public}@ with token %{public}@. isPrivacyAcknowledgementRequired = %{BOOL}u.", &v11, 0x26u);
  }

  (*(v6 + 2))(v6, *(a1 + 40), *(a1 + 48));
}

- (id)_privacyDetailsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = +[ICDeviceInfo currentDeviceInfo];
    isStoreDemoModeEnabled = [v5 isStoreDemoModeEnabled];

    if ((isStoreDemoModeEnabled & 1) != 0 || ([(NSMutableDictionary *)self->_cache objectForKey:identifierCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [(ICPrivacyInfo *)self _queryPrivacyDetailsForIdentifier:identifierCopy];
      [(NSMutableDictionary *)self->_cache setObject:v7 forKey:identifierCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(ICPrivacyInfo *)self _privacyDetailsForIdentifier:identifierCopy];
  if ([v5 previouslyAcknowledged])
  {
    v6 = [v5 rejected] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138544130;
    selfCopy = self;
    v11 = 2114;
    v12 = identifierCopy;
    v13 = 1024;
    v14 = v6;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Previously acknowledged identifier for %{public}@? %{BOOL}u (%{public}@)", &v9, 0x26u);
  }

  return v6;
}

- (BOOL)_privacyAcknowledgementRequiredForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(ICPrivacyInfo *)self _privacyDetailsForIdentifier:identifierCopy];
  acknowledgementNeeded = [v5 acknowledgementNeeded];
  if (acknowledgementNeeded)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      selfCopy = self;
      v11 = 2114;
      v12 = identifierCopy;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Privacy acknowledgement required for %{public}@. details=(%{public}@)", &v9, 0x20u);
    }
  }

  return acknowledgementNeeded;
}

- (id)_queryPrivacyDetailsForIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_alloc_init(ICPrivacyInfoDetails);
  if ([identifierCopy isEqualToString:@"Music"])
  {
    v7 = +[ICDefaults standardDefaults];
    isPrivacyAcknowledgementDisabledForMusic = [v7 isPrivacyAcknowledgementDisabledForMusic];

    if (isPrivacyAcknowledgementDisabledForMusic)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy5 = self;
        v30 = 2114;
        v31 = identifierCopy;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring privacy acknowledgement for %{public}@ because [ICDefaults isPrivacyAcknowledgementDisabledForMusic] returned YES.", buf, 0x16u);
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  if (![identifierCopy isEqualToString:@"Music"] || (+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "shouldForcePrivacyAcknowledgementRequiredForMusic"), v10, !v11))
  {
    v9 = [objc_opt_class() _onboardingKitPrivacyIdentifierForPrivacyIdentifier:identifierCopy];
    if (v9)
    {
      _accountForPrivacyInfo = [(ICPrivacyInfo *)self _accountForPrivacyInfo];
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy5 = self;
        v30 = 2114;
        v31 = identifierCopy;
        v32 = 2114;
        v33 = _accountForPrivacyInfo;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading privacy details for %{public}@ using account %{public}@.", buf, 0x20u);
      }

      if (_accountForPrivacyInfo)
      {
        -[ICPrivacyInfoDetails setAcknowledgementNeeded:](v6, "setAcknowledgementNeeded:", [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:v9 account:_accountForPrivacyInfo]);
        -[ICPrivacyInfoDetails setPreviouslyAcknowledged:](v6, "setPreviouslyAcknowledged:", [MEMORY[0x1E698C790] hasPreviouslyAcknowledgedPrivacyIdentifier:v9 account:_accountForPrivacyInfo]);
        v15 = [MEMORY[0x1E698C790] hasRejectedPrivacyIdentifier:v9 account:_accountForPrivacyInfo];
      }

      else
      {
        -[ICPrivacyInfoDetails setAcknowledgementNeeded:](v6, "setAcknowledgementNeeded:", [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:v9]);
        -[ICPrivacyInfoDetails setPreviouslyAcknowledged:](v6, "setPreviouslyAcknowledged:", [MEMORY[0x1E698C790] hasPreviouslyAcknowledgedPrivacyIdentifier:v9]);
        v15 = [MEMORY[0x1E698C790] hasRejectedPrivacyIdentifier:v9];
      }

      [(ICPrivacyInfoDetails *)v6 setRejected:v15];
      v16 = +[ICUserIdentityStore defaultIdentityStore];
      userIdentity = self->_userIdentity;
      v27 = 0;
      v18 = [v16 getPropertiesForUserIdentity:userIdentity error:&v27];
      v19 = v27;

      if (v19)
      {
        v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          msv_description = [v19 msv_description];
          *buf = 138543618;
          selfCopy5 = self;
          v30 = 2114;
          v31 = msv_description;
          _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load account properties error=%{public}@", buf, 0x16u);
        }
      }

      privacyAcknowledgementVersions = [v18 privacyAcknowledgementVersions];
      v23 = [privacyAcknowledgementVersions objectForKeyedSubscript:v9];
      [(ICPrivacyInfoDetails *)v6 setAcceptedVersion:v23];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ICPrivacyInfo.m" lineNumber:435 description:{@"Failed to map privacy identifier %@", identifierCopy}];
    }

    v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy5 = self;
      v30 = 2114;
      v31 = identifierCopy;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Loaded privacy details for %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v30 = 2114;
    v31 = identifierCopy;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Forcing privacy acknowledgement needed for %{public}@ because [ICDefaults shouldForcePrivacyAcknowledgementRequiredForMusic] returned YES.", buf, 0x16u);
  }

  [(ICPrivacyInfoDetails *)v6 setAcknowledgementNeeded:1];
  [(ICPrivacyInfoDetails *)v6 setPreviouslyAcknowledged:0];
  [(ICPrivacyInfoDetails *)v6 setAcceptedVersion:&unk_1F2C92260];
LABEL_25:

  return v6;
}

- (void)endObservingPrivacyAcknowledgementForIdentifier:(id)identifier withToken:(id)token
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_observers objectForKey:identifierCopy];
  [v8 removeObjectForKey:tokenCopy];
  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    selfCopy2 = self;
    v14 = 2114;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = tokenCopy;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed observer of privacy acknowledgement for %{public}@ with token: %{public}@.", &v12, 0x20u);
  }

  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_observers removeObjectForKey:identifierCopy];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = identifierCopy;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped observing privacy acknowledgement for %{public}@.", &v12, 0x16u);
    }

    if (![(NSMutableDictionary *)self->_observers count])
    {
      observers = self->_observers;
      self->_observers = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)beginObservingPrivacyAcknowledgementForIdentifier:(id)identifier handler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_observers objectForKey:identifierCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = [handlerCopy copy];
  v11 = MEMORY[0x1B8C781E0]();
  [v9 setObject:v11 forKey:uUID];

  observers = self->_observers;
  if (!observers)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_observers;
    self->_observers = v13;

    observers = self->_observers;
  }

  [(NSMutableDictionary *)observers setObject:v9 forKey:identifierCopy];
  if ([v9 count] == 1)
  {
    [(ICPrivacyInfo *)self _privacyAcknowledgementRequiredForIdentifier:identifierCopy];
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = identifierCopy;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning to observe privacy acknowledgement for %{public}@.", &v18, 0x16u);
    }
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    selfCopy2 = self;
    v20 = 2114;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = uUID;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered new observer of privacy acknowledgement for %{public}@ with token: %{public}@.", &v18, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);

  return uUID;
}

- (void)acknowledgePrivacyPolicyForIdentifier:(id)identifier completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [objc_opt_class() _onboardingKitPrivacyIdentifierForPrivacyIdentifier:identifierCopy];
  if (!v8)
  {
    if (!handlerCopy)
    {
      goto LABEL_15;
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
LABEL_14:
    v18 = v17;
    handlerCopy[2](handlerCopy, 0, v17);

    goto LABEL_15;
  }

  v9 = +[ICSecurityInfo sharedSecurityInfo];
  isDeviceUnlocked = [v9 isDeviceUnlocked];

  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v12 = v11;
  if (isDeviceUnlocked)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v25 = 2114;
      v26 = identifierCopy;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Acknowledging privacy policy for %{public}@ (%{public}@)...", buf, 0x20u);
    }

    if ([identifierCopy isEqualToString:@"Music"])
    {
      v13 = +[ICDefaults standardDefaults];
      [v13 setShouldForcePrivacyAcknowledgementRequiredForMusic:0];
    }

    v14 = [objc_alloc(MEMORY[0x1E698C790]) initWithPrivacyIdentifier:v8];
    _accountForPrivacyInfo = [(ICPrivacyInfo *)self _accountForPrivacyInfo];
    [v14 setAccount:_accountForPrivacyInfo];

    acknowledgePrivacy = [v14 acknowledgePrivacy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__ICPrivacyInfo_acknowledgePrivacyPolicyForIdentifier_completionHandler___block_invoke;
    v19[3] = &unk_1E7BF7630;
    v19[4] = self;
    v20 = identifierCopy;
    v21 = v8;
    v22 = handlerCopy;
    [acknowledgePrivacy addFinishBlock:v19];

    goto LABEL_15;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to acknowledge privacy policy for %{public}@ (%{public}@) because device is locked", buf, 0x20u);
  }

  if (handlerCopy)
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7006 debugDescription:@"Acknowledging privacy policy requires the device to be unlocked"];
    goto LABEL_14;
  }

LABEL_15:
}

void __73__ICPrivacyInfo_acknowledgePrivacyPolicyForIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = 138544386;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 1024;
    v25 = a2;
    v26 = 2114;
    v27 = v5;
    v10 = "%{public}@: Failed to acknowledge privacy policy for %{public}@ (%{public}@). didSucceed = %{BOOL}u, error = %{public}@.";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 48;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v10 = "%{public}@: Successfully completed privacy policy acknowledgement for %{public}@.";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
  }

  _os_log_impl(&dword_1B4491000, v11, v12, v10, &v18, v13);
LABEL_8:

  [*(a1 + 32) _updateForPrivacyAcknowledgementChanged];
  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v5);
  }
}

- (BOOL)shouldBlockPersonalizedNetworkRequestsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy == @"Music" && [(ICPrivacyInfo *)self _canUsePreviousPrivacyAcknowledgementForPersonalizedNetworkRequests])
  {
    LODWORD(self) = ![(ICPrivacyInfo *)self hasPreviouslyAcknowledgedPrivacyIdentifier:@"Music"];
  }

  else
  {
    LOBYTE(self) = [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:identifierCopy];
  }

  return self;
}

- (BOOL)shouldBlockPersonalizedNetworkRequestsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && (ICSystemApplicationTypeForBundleIdentifier(identifierCopy) + 1) > 1 || ![(ICPrivacyInfo *)self _canUsePreviousPrivacyAcknowledgementForPersonalizedNetworkRequests])
  {
    LOBYTE(self) = [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForBundleIdentifier:v5];
  }

  else
  {
    LODWORD(self) = ![(ICPrivacyInfo *)self hasPreviouslyAcknowledgedPrivacyIdentifierForBundleIdentifier:v5];
  }

  return self;
}

- (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = ICSystemApplicationTypeForBundleIdentifier(identifierCopy) + 1;
    if (v6 > 5)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = off_1E7BF6EC0[v6];
  }

  else
  {
    v7 = @"Music";
  }

  v8 = [(ICPrivacyInfo *)self hasPreviouslyAcknowledgedPrivacyIdentifier:v7];
LABEL_7:

  return v8;
}

- (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ICPrivacyInfo *)self _hasPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)privacyAcknowledgementRequiredForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  v6 = ICSystemApplicationTypeForBundleIdentifier(identifierCopy);
  v7 = 0;
  if (v6 > 1)
  {
    switch(v6)
    {
      case 2:
        v9 = @"Books";
        goto LABEL_13;
      case 3:
        v9 = @"Podcasts";
        goto LABEL_13;
      case 4:
        v9 = @"AppStore";
LABEL_13:
        privacyAcknowledgementRequiredForMusic = [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:v9];
        goto LABEL_14;
    }
  }

  else
  {
    if ((v6 + 1) < 2)
    {
LABEL_4:
      privacyAcknowledgementRequiredForMusic = [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForMusic];
LABEL_14:
      v7 = privacyAcknowledgementRequiredForMusic;
      goto LABEL_15;
    }

    if (v6 == 1)
    {
      v9 = @"TV";
      goto LABEL_13;
    }
  }

LABEL_15:

  return v7;
}

- (BOOL)privacyAcknowledgementRequiredForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ICPrivacyInfo *)self _privacyAcknowledgementRequiredForIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)preflightDisclosureRequiredForBundleIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  applicationState = [v5 applicationState];
  isValid = [applicationState isValid];

  if (isValid)
  {
    os_unfair_lock_lock(&self->_lock);
    preflightManager = self->_preflightManager;
    if (!preflightManager)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = getPDCPreflightManagerClass_softClass;
      v20 = getPDCPreflightManagerClass_softClass;
      if (!getPDCPreflightManagerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPDCPreflightManagerClass_block_invoke;
        v22 = &unk_1E7BFA0A0;
        v23 = &v17;
        __getPDCPreflightManagerClass_block_invoke(buf);
        v9 = v18[3];
      }

      v10 = v9;
      _Block_object_dispose(&v17, 8);
      v11 = [v9 alloc];
      v12 = [v11 initWithTargetQueue:{0, v17}];
      v13 = self->_preflightManager;
      self->_preflightManager = v12;

      preflightManager = self->_preflightManager;
    }

    v14 = [(PDCPreflightManager *)preflightManager requiresPreflightForApplicationRecord:v5];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Invalid [LSApplicationRecord applicationState] for bundleID: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)shouldBlockPersonalizedNetworkRequestsForMedia
{
  if (![(ICPrivacyInfo *)self shouldBlockPersonalizedNetworkRequestsForMusic]|| ![(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:@"TV"])
  {
    return 0;
  }

  return [(ICPrivacyInfo *)self privacyAcknowledgementRequiredForIdentifier:@"Books"];
}

- (BOOL)preflightDisclosureRequiredForMusic
{
  v3 = ICBundleIdentifierForSystemApplicationType(0);
  LOBYTE(self) = [(ICPrivacyInfo *)self preflightDisclosureRequiredForBundleIdentifier:v3];

  return self;
}

- (ICPrivacyInfo)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = ICPrivacyInfo;
  v6 = [(ICPrivacyInfo *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentity, identity);
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
    cache = v7->_cache;
    v7->_cache = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = +[ICDeviceInfo currentDeviceInfo];
    [defaultCenter2 addObserver:v7 selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICDeviceInfoStoreDemoModeDidChangeNotification" object:v12];
  }

  return v7;
}

- (ICPrivacyInfo)init
{
  v3 = +[ICUserIdentity autoupdatingActiveAccount];
  v4 = [(ICPrivacyInfo *)self initWithIdentity:v3];

  return v4;
}

+ (id)_onboardingKitPrivacyIdentifierForPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"Music"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = getOBPrivacyAppleMusicIdentifierSymbolLoc_ptr;
    v22 = getOBPrivacyAppleMusicIdentifierSymbolLoc_ptr;
    if (!getOBPrivacyAppleMusicIdentifierSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getOBPrivacyAppleMusicIdentifierSymbolLoc_block_invoke;
      v18 = &unk_1E7BFA0A0;
      v5 = OnBoardingKitLibrary();
      v20[3] = dlsym(v5, "OBPrivacyAppleMusicIdentifier");
      getOBPrivacyAppleMusicIdentifierSymbolLoc_ptr = v20[3];
      v4 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getOBPrivacyAppleMusicIdentifier(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"ICPrivacyInfo.m" lineNumber:47 description:{@"%s", dlerror(), v15, v16, v17, v18}];
LABEL_36:

      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  if ([identifierCopy isEqualToString:@"TV"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = getOBPrivacyTVAppIdentifierSymbolLoc_ptr;
    v22 = getOBPrivacyTVAppIdentifierSymbolLoc_ptr;
    if (!getOBPrivacyTVAppIdentifierSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getOBPrivacyTVAppIdentifierSymbolLoc_block_invoke;
      v18 = &unk_1E7BFA0A0;
      v8 = OnBoardingKitLibrary();
      v20[3] = dlsym(v8, "OBPrivacyTVAppIdentifier");
      getOBPrivacyTVAppIdentifierSymbolLoc_ptr = v20[3];
      v4 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getOBPrivacyTVAppIdentifier(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"ICPrivacyInfo.m" lineNumber:48 description:{@"%s", dlerror(), v15, v16, v17, v18}];
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if ([identifierCopy isEqualToString:@"Books"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = getOBPrivacyiBooksIdentifierSymbolLoc_ptr;
    v22 = getOBPrivacyiBooksIdentifierSymbolLoc_ptr;
    if (!getOBPrivacyiBooksIdentifierSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getOBPrivacyiBooksIdentifierSymbolLoc_block_invoke;
      v18 = &unk_1E7BFA0A0;
      v9 = OnBoardingKitLibrary();
      v20[3] = dlsym(v9, "OBPrivacyiBooksIdentifier");
      getOBPrivacyiBooksIdentifierSymbolLoc_ptr = v20[3];
      v4 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getOBPrivacyiBooksIdentifier(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"ICPrivacyInfo.m" lineNumber:49 description:{@"%s", dlerror(), v15, v16, v17, v18}];
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if ([identifierCopy isEqualToString:@"Podcasts"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = getOBPrivacyPodcastsIdentifierSymbolLoc_ptr;
    v22 = getOBPrivacyPodcastsIdentifierSymbolLoc_ptr;
    if (!getOBPrivacyPodcastsIdentifierSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getOBPrivacyPodcastsIdentifierSymbolLoc_block_invoke;
      v18 = &unk_1E7BFA0A0;
      v10 = OnBoardingKitLibrary();
      v20[3] = dlsym(v10, "OBPrivacyPodcastsIdentifier");
      getOBPrivacyPodcastsIdentifierSymbolLoc_ptr = v20[3];
      v4 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getOBPrivacyPodcastsIdentifier(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"ICPrivacyInfo.m" lineNumber:50 description:{@"%s", dlerror(), v15, v16, v17, v18}];
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if ([identifierCopy isEqualToString:@"AppStore"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = getOBPrivacyAppStoreIdentifierSymbolLoc_ptr;
    v22 = getOBPrivacyAppStoreIdentifierSymbolLoc_ptr;
    if (!getOBPrivacyAppStoreIdentifierSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getOBPrivacyAppStoreIdentifierSymbolLoc_block_invoke;
      v18 = &unk_1E7BFA0A0;
      v11 = OnBoardingKitLibrary();
      v20[3] = dlsym(v11, "OBPrivacyAppStoreIdentifier");
      getOBPrivacyAppStoreIdentifierSymbolLoc_ptr = v20[3];
      v4 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getOBPrivacyAppStoreIdentifier(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"ICPrivacyInfo.m" lineNumber:51 description:{@"%s", dlerror(), v15, v16, v17, v18}];
      goto LABEL_36;
    }

LABEL_25:
    v12 = *v4;
    goto LABEL_26;
  }

  if ([identifierCopy isEqualToString:@"FitnessPlus"])
  {
    v12 = getOBPrivacyFitnessPlusIdentifier();
  }

  else
  {
    if (![identifierCopy isEqualToString:@"ImproveFitnessPlus"])
    {
      v13 = 0;
      goto LABEL_27;
    }

    v12 = getOBPrivacyImproveFitnessPlusIdentifier();
  }

LABEL_26:
  v13 = v12;
LABEL_27:

  return v13;
}

+ (id)sharedPrivacyInfoForUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = identityCopy;
  if (!identityCopy)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "ICPrivacyInfo: nil identity passed into sharedPrivacyInfoForUserIdentity!", buf, 2u);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1350] type:@"Bug" subType:@"ICPRivacyInfo" context:@"nil identity passed into sharedPrivacyInfoForUserIdentity" triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];
    v4 = +[ICUserIdentity autoupdatingActiveAccount];
  }

  if (sharedPrivacyInfoForUserIdentity__sOnceToken != -1)
  {
    dispatch_once(&sharedPrivacyInfoForUserIdentity__sOnceToken, &__block_literal_global_25912);
  }

  os_unfair_lock_lock(&sharedPrivacyInfoForUserIdentity__sSharedPrivacyInfoLock);
  v6 = [sharedPrivacyInfoForUserIdentity__sPrivacyInfoPerAccount objectForKey:v4];
  if (!v6)
  {
    v6 = [[ICPrivacyInfo alloc] initWithIdentity:v4];
    [sharedPrivacyInfoForUserIdentity__sPrivacyInfoPerAccount setObject:v6 forKey:v4];
  }

  os_unfair_lock_unlock(&sharedPrivacyInfoForUserIdentity__sSharedPrivacyInfoLock);

  return v6;
}

void __50__ICPrivacyInfo_sharedPrivacyInfoForUserIdentity___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v1 = sharedPrivacyInfoForUserIdentity__sPrivacyInfoPerAccount;
  sharedPrivacyInfoForUserIdentity__sPrivacyInfoPerAccount = v0;

  sharedPrivacyInfoForUserIdentity__sSharedPrivacyInfoLock = 0;
}

@end