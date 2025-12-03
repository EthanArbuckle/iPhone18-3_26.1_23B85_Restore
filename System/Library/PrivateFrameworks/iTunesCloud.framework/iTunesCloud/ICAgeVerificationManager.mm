@interface ICAgeVerificationManager
+ (ICAgeVerificationManager)defaultManager;
- (BOOL)_bagHasValidKeys:(id)keys;
- (ICAgeVerificationState)ageVerificationState;
- (id)_init;
- (id)ageVerificationStateForUserIdentity:(id)identity;
- (void)_registerForNotifications;
- (void)_runAgeVerificationForUserIdentity:(id)identity completion:(id)completion;
- (void)_updateAgeVerificationStateAndSendNotification:(BOOL)notification completion:(id)completion;
- (void)_updateAgeVerificationStateForUserIdentity:(id)identity sendNotification:(BOOL)notification completion:(id)completion;
- (void)_userIdentityStoreDidChange:(id)change;
- (void)getAgeVerificationStateWithCompletion:(id)completion;
@end

@implementation ICAgeVerificationManager

- (ICAgeVerificationState)ageVerificationState
{
  v3 = +[ICUserIdentity activeAccount];
  v4 = [(ICAgeVerificationManager *)self ageVerificationStateForUserIdentity:v3];

  return v4;
}

+ (ICAgeVerificationManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, &__block_literal_global_2331);
  }

  v3 = defaultManager___sharedManager;

  return v3;
}

uint64_t __42__ICAgeVerificationManager_defaultManager__block_invoke()
{
  defaultManager___sharedManager = [[ICAgeVerificationManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ICAgeVerificationManager;
  v2 = [(ICAgeVerificationManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.iTunesCloud.ICAgeVerificationManager.concurrentCallout", MEMORY[0x1E69E96A8]);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ageVerificationStateInternal = v3->_ageVerificationStateInternal;
    v3->_ageVerificationStateInternal = v6;

    [(ICAgeVerificationManager *)v3 _updateAgeVerificationStateAndSendNotification:1 completion:0];
    [(ICAgeVerificationManager *)v3 _registerForNotifications];
    v8 = +[ICDeviceInfo currentDeviceInfo];
    isInternalBuild = [v8 isInternalBuild];

    if (isInternalBuild)
    {
      if (([MEMORY[0x1E69B1418] hasEntitlement:@"apple" inGroup:@"keychain-access-groups"] & 1) == 0)
      {
        v10 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v12[0] = 0;
          _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_FAULT, "ICAgeVerificationManager - Missing critical entitlement for age verification: apple - keychain-access-groups", v12, 2u);
        }
      }
    }
  }

  return v3;
}

- (void)_registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__userIdentityStoreDidChange_ name:@"ICUserIdentityStoreDidChangeNotification" object:0];
}

- (BOOL)_bagHasValidKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [keysCopy numberForBagKey:@"isExplicitContentAgeVerificationRequired"];

  if (!v6)
  {
    [v5 addObject:@"isExplicitContentAgeVerificationRequired"];
  }

  v7 = [keysCopy stringForBagKey:@"ExplicitContentBadgeTreatment"];

  if (!v7)
  {
    [v5 addObject:@"ExplicitContentBadgeTreatment"];
  }

  v8 = [keysCopy urlForBagKey:@"korAgeVerificationUrl"];

  if (!v8)
  {
    [v5 addObject:@"korAgeVerificationUrl"];
  }

  v9 = [v5 count];
  if (v9)
  {
    v10 = [v5 componentsJoinedByString:{@", "}];
    v11 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      selfCopy = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationManager %p - Bag key(s) missing for age verification: %{public}@ - Age Verification not required.", &v13, 0x16u);
    }
  }

  return v9 == 0;
}

- (void)_runAgeVerificationForUserIdentity:(id)identity completion:(id)completion
{
  v37[2] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  v9 = +[ICUserIdentityStore defaultIdentityStore];
  v29 = 0;
  v10 = [v9 getPropertiesForUserIdentity:identityCopy error:&v29];
  v11 = v29;

  if (v11)
  {
    v12 = *MEMORY[0x1E696A278];
    v36[0] = *MEMORY[0x1E696AA08];
    v36[1] = v12;
    v37[0] = v11;
    identityCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error retrieving properties for account %@ during age verification - Age Verification not required.", identityCopy];
    v37[1] = identityCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v14];
    v16 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v32 = 2114;
      v33 = identityCopy;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ICAgeVerificationManager %p - Error retrieving properties for account %{public}@ during age verification: %{public}@ - Age Verification not required.", buf, 0x20u);
    }

    v17 = [ICAgeVerificationState ageVerificationStateNotRequiredForUserIdentity:identityCopy withError:v15];
    completionCopy[2](completionCopy, v17);
  }

  else
  {
    v18 = [ICStoreRequestContext alloc];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __74__ICAgeVerificationManager__runAgeVerificationForUserIdentity_completion___block_invoke;
    v27[3] = &unk_1E7BF91F0;
    v19 = identityCopy;
    v28 = v19;
    v20 = [(ICStoreRequestContext *)v18 initWithBlock:v27];
    v21 = +[ICURLBagProvider sharedBagProvider];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__ICAgeVerificationManager__runAgeVerificationForUserIdentity_completion___block_invoke_2;
    v22[3] = &unk_1E7BF3900;
    v22[4] = self;
    v25 = completionCopy;
    v23 = v19;
    v26 = a2;
    v24 = v10;
    [v21 getBagForRequestContext:v20 withCompletionHandler:v22];

    v14 = v28;
  }
}

void __74__ICAgeVerificationManager__runAgeVerificationForUserIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAllowsExpiredBags:1];
  [v3 setIdentity:*(a1 + 32)];
  v4 = +[ICClientInfo defaultInfo];
  [v3 setClientInfo:v4];

  v5 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 setIdentityStore:v5];
}

void __74__ICAgeVerificationManager__runAgeVerificationForUserIdentity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *MEMORY[0x1E696A278];
    v57[0] = *MEMORY[0x1E696AA08];
    v57[1] = v8;
    v58[0] = v6;
    v58[1] = @"ICAgeVerificationManager - Error retrieving bag during age verification";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:v9];
    v11 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 134218242;
      v54 = v12;
      v55 = 2114;
      v56 = v7;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "ICAgeVerificationManager %p - Error retrieving bag during age verification: %{public}@ - Age Verification not required.", buf, 0x16u);
    }

    v13 = *(a1 + 56);
    v14 = [ICAgeVerificationState ageVerificationStateNotRequiredForUserIdentity:*(a1 + 40) withError:v10];
    (*(v13 + 16))(v13, v14);

    goto LABEL_42;
  }

  if ([*(a1 + 32) _bagHasValidKeys:v5])
  {
    if (!v5)
    {
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      [v49 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"ICAgeVerificationManager.m" lineNumber:191 description:@"Bag should never be nil when no error was provided"];
    }

    v15 = [v5 stringForBagKey:@"ExplicitContentBadgeTreatment"];
    v9 = v15;
    if (v15 && ![v15 caseInsensitiveCompare:@"korea"])
    {
      v19 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        *buf = 134217984;
        v54 = v20;
        _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationManager %p - Using 19 treatment for explicit content.", buf, 0xCu);
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v10 = [v5 urlForBagKey:@"korAgeVerificationUrl"];
    if (*(a1 + 48))
    {
      if ([v5 BOOLValueForBagKey:@"isExplicitContentAgeVerificationRequired"] & 1) != 0 || (+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "shouldRunAgeVerification"), v21, (v22))
      {
        v23 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          *buf = 134217984;
          v54 = v24;
          _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationManager %p - Performing age verification", buf, 0xCu);
        }

        v25 = +[ICDefaults standardDefaults];
        if ([v25 shouldRunAgeVerification])
        {
          v26 = [v25 ageVerificationExpirationDate];
          v27 = [v26 copy];

          v28 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *(a1 + 32);
            [v27 timeIntervalSince1970];
            *buf = 138543618;
            v54 = v29;
            v55 = 2048;
            v56 = v30;
            _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_INFO, "%{public}@ - Expiration date provided from ICDefaults: %{time_t}zd", buf, 0x16u);
          }
        }

        else
        {
          v51 = v16;
          v37 = +[ICMonitoredAccountStore sharedAccountStore];
          v38 = [*(a1 + 48) DSID];
          v52 = 0;
          v39 = [v37 storeAccountForDSID:v38 error:&v52];
          v28 = v52;

          if (v39)
          {
            v27 = [v39 ic_ageVerificationExpirationDate];
            v40 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v50 = *(a1 + 32);
              [v27 timeIntervalSince1970];
              *buf = 138543618;
              v54 = v50;
              v55 = 2048;
              v56 = v41;
              _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_INFO, "%{public}@ - Expiration date provided from ACAccount: %{time_t}zd", buf, 0x16u);
            }
          }

          else
          {
            v40 = _ICLogCategoryAgeVerification();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v44 = *(a1 + 32);
              *buf = 138543618;
              v54 = v44;
              v55 = 2114;
              v56 = v28;
              _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to fetch ageVerificationExpirationDate from ACAccount. error=%{public}@", buf, 0x16u);
            }

            v27 = 0;
          }

          v16 = v51;
        }

        if (!v27)
        {
          v45 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = *(a1 + 32);
            *buf = 138543362;
            v54 = v46;
            _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_ERROR, "%{public}@ - AgeVerificationExpiration is nil. Defaulting to expired date.", buf, 0xCu);
          }

          v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
        }

        v47 = [[ICAgeVerifier alloc] initWithExpirationDate:v27];
        v48 = [[ICAgeVerificationState alloc] initWithUserIdentity:*(a1 + 40) ageVerifier:v47 treatment:v16 verificationURL:v10];
        (*(*(a1 + 56) + 16))();

        goto LABEL_41;
      }

      v31 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 32);
        *buf = 134217984;
        v54 = v42;
        v34 = "ICAgeVerificationManager %p - Age Verification not required.";
        v35 = v31;
        v36 = 12;
        goto LABEL_30;
      }
    }

    else
    {
      v31 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 40);
        *buf = 134218242;
        v54 = v32;
        v55 = 2114;
        v56 = v33;
        v34 = "ICAgeVerificationManager %p - There are no properties for account %{public}@ - Age Verification not required.";
        v35 = v31;
        v36 = 22;
LABEL_30:
        _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
      }
    }

    v43 = *(a1 + 56);
    v27 = [ICAgeVerificationState ageVerificationStateNotRequiredForUserIdentity:*(a1 + 40) withTreatment:v16 verificationURL:v10];
    (*(v43 + 16))(v43, v27);
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v17 = *(a1 + 56);
  v18 = [ICAgeVerificationState ageVerificationStateNotRequiredForUserIdentity:*(a1 + 40)];
  (*(v17 + 16))(v17, v18);

LABEL_43:
}

- (void)_updateAgeVerificationStateForUserIdentity:(id)identity sendNotification:(BOOL)notification completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__ICAgeVerificationManager__updateAgeVerificationStateForUserIdentity_sendNotification_completion___block_invoke;
  v12[3] = &unk_1E7BF38D8;
  v12[4] = self;
  v13 = identityCopy;
  notificationCopy = notification;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identityCopy;
  [(ICAgeVerificationManager *)self _runAgeVerificationForUserIdentity:v11 completion:v12];
}

void __99__ICAgeVerificationManager__updateAgeVerificationStateForUserIdentity_sendNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v25 = v5;
    v26 = 2114;
    v27 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_INFO, "ICAgeVerificationManager %p - Obtained new age verification state: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v8 = [v7 DSIDForUserIdentity:v6 outError:0];

  v9 = [v8 stringValue];
  v10 = v9;
  v11 = @"NoDSID";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v13 = [*(a1 + 32) ageVerificationStateInternal];
  v14 = [v13 objectForKeyedSubscript:v12];
  v15 = [v3 isEqual:v14] ^ 1;

  v16 = [*(a1 + 32) ageVerificationStateInternal];
  [v16 setObject:v3 forKeyedSubscript:v12];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [v3 saveToUserDefaults];
  v17 = [*(a1 + 32) calloutQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__ICAgeVerificationManager__updateAgeVerificationStateForUserIdentity_sendNotification_completion___block_invoke_17;
  v19[3] = &unk_1E7BF38B0;
  v22 = v15;
  v23 = *(a1 + 56);
  v19[4] = *(a1 + 32);
  v21 = *(a1 + 48);

  v20 = v3;
  v18 = v3;
  dispatch_async(v17, v19);
}

uint64_t __99__ICAgeVerificationManager__updateAgeVerificationStateForUserIdentity_sendNotification_completion___block_invoke_17(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 57) == 1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ICAgeVerificationStateDidChangeNotification" object:*(a1 + 32)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateAgeVerificationStateAndSendNotification:(BOOL)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  v7 = +[ICUserIdentity activeAccount];
  [(ICAgeVerificationManager *)self _updateAgeVerificationStateForUserIdentity:v7 sendNotification:notificationCopy completion:completionCopy];
}

- (void)_userIdentityStoreDidChange:(id)change
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationManager %p - Received ICUserIdentityStoreDidChangeNotification - Refreshing state for active user", &v5, 0xCu);
  }

  [(ICAgeVerificationManager *)self _updateAgeVerificationStateAndSendNotification:1 completion:0];
}

- (id)ageVerificationStateForUserIdentity:(id)identity
{
  v20 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = [v5 DSIDForUserIdentity:identityCopy outError:0];
  stringValue = [v6 stringValue];
  v8 = stringValue;
  v9 = @"NoDSID";
  if (stringValue)
  {
    v9 = stringValue;
  }

  v10 = v9;

  os_unfair_lock_lock(&self->_lock);
  ageVerificationStateInternal = [(ICAgeVerificationManager *)self ageVerificationStateInternal];
  v12 = [ageVerificationStateInternal objectForKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_INFO, "ICAgeVerificationManager %p - ageVerificationStateForUserIdentity - Retrieving state [In-memory cache] - State=%@", &v16, 0x16u);
    }
  }

  else
  {
    v12 = [ICAgeVerificationState cachedStateForDSID:v10];
    v14 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_INFO, "ICAgeVerificationManager %p - ageVerificationStateForUserIdentity - Retrieving state [Disk cache] - Kicking off refresh - State=%@", &v16, 0x16u);
    }

    [(ICAgeVerificationManager *)self _updateAgeVerificationStateForUserIdentity:identityCopy sendNotification:1 completion:0];
  }

  return v12;
}

- (void)getAgeVerificationStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICUserIdentity activeAccount];
  [(ICAgeVerificationManager *)self getAgeVerificationStateForUserIdentity:v5 completion:completionCopy];
}

@end