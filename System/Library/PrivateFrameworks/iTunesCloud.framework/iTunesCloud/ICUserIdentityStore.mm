@interface ICUserIdentityStore
+ (ICUserIdentityStore)defaultIdentityStore;
+ (ICUserIdentityStore)nullIdentityStore;
+ (id)testingIdentityStoreWithDatabasePath:(id)path;
+ (id)testingIdentityStoreWithSingleWriterService:(id)service;
- (BOOL)_allowsDelegationForUserIdentity:(id)identity;
- (BOOL)_refreshLocalStoreAccountPropertiesAllowingDidChangeNotification:(BOOL)notification;
- (BOOL)_saveIdentityProperties:(id)properties andPostAccountChangeNotification:(BOOL)notification forUserIdentity:(id)identity error:(id *)error;
- (BOOL)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (ICLocalStoreAccountProperties)localStoreAccountProperties;
- (ICUserIdentityStore)initWithCoder:(id)coder;
- (ICUserIdentityStoreBackend)_unsafeBackend;
- (id)DSIDForUserIdentity:(id)identity outError:(id *)error;
- (id)_dsidForTimestamp:(unint64_t)timestamp history:(id)history;
- (id)_dsidForUserIdentity:(id)identity error:(id *)error;
- (id)_existingIdentityPropertiesForUserIdentity:(id)identity error:(id *)error;
- (id)_icValidStoreAccountsFromACAccounts:(id)accounts;
- (id)_initCommon;
- (id)_initWithStyle:(int64_t)style delegateAccountStoreOptions:(id)options;
- (id)_openDelegateAccountStoreForUserIdentity:(id)identity error:(id *)error;
- (id)_openDelegateAccountStoreWithError:(id *)error;
- (id)getPropertiesForActiveICloudAccountReturningError:(id *)error;
- (id)getPropertiesForUserIdentity:(id)identity error:(id *)error;
- (id)getVerificationContextForUserIdentity:(id)identity error:(id *)error;
- (id)userIdentitiesForAllStoreAccountsWithError:(id *)error;
- (id)userIdentitiesForManageableAccountsWithError:(id *)error;
- (unint64_t)hash;
- (void)_assertNonNullIdentityStoreForSelector:(SEL)selector;
- (void)_delegateAccountStoreDidChangeNotification:(id)notification;
- (void)_dispatchDidChangeNotification:(BOOL)notification didDelegateAccountStoreChange:(BOOL)change;
- (void)_importValuesFromCodingHelper:(id)helper;
- (void)_initializeLocalStoreAccountProperties;
- (void)_prepareDelegateAccountStoreWithCompletionHandler:(id)handler;
- (void)_registerForDelegateAccountStoreNotifications:(id)notifications;
- (void)_reloadForExternalChange;
- (void)_resetDelegateAccountStoreWithCompletionHandler:(id)handler;
- (void)_unregisterForDelegateAccountStoreNotifications:(id)notifications;
- (void)_unsafe_deleteDelegateAccountStore;
- (void)_updateDelegateAccountStoreUsingBlock:(id)block;
- (void)addDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler;
- (void)dealloc;
- (void)disableLockerAccountWithDSID:(id)d completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateDelegateTokensUsingBlock:(id)block completionHandler:(id)handler;
- (void)enumerateDelegateTokensWithType:(int64_t)type usingBlock:(id)block completionHandler:(id)handler;
- (void)getDelegationUUIDsForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)getPropertiesForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)insertPropertiesForUserIdentity:(id)identity andPostAccountChangeNotification:(BOOL)notification usingBlock:(id)block completionHandler:(id)handler;
- (void)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block;
- (void)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block completionHandler:(id)handler;
- (void)removeAllDelegateTokensWithCompletionHandler:(id)handler;
- (void)removeDelegateTokenForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)removeDelegateTokensExpiringBeforeDate:(id)date completionHandler:(id)handler;
- (void)removeDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler;
- (void)removePropertiesForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)setActiveAccountWithDSID:(id)d completionHandler:(id)handler;
- (void)setActiveLockerAccountWithDSID:(id)d completionHandler:(id)handler;
- (void)synchronize;
- (void)synchronizeWithCompletionHandler:(id)handler;
- (void)updatePropertiesForLocalStoreAccountUsingBlock:(id)block completionHandler:(id)handler;
- (void)updatePropertiesForUserIdentity:(id)identity usingBlock:(id)block;
- (void)updatePropertiesForUserIdentity:(id)identity usingBlock:(id)block completionHandler:(id)handler;
- (void)userIdentityStoreBackendDidChange:(id)change;
@end

@implementation ICUserIdentityStore

+ (ICUserIdentityStore)defaultIdentityStore
{
  if (defaultIdentityStore_sOnceToken != -1)
  {
    dispatch_once(&defaultIdentityStore_sOnceToken, &__block_literal_global_38196);
  }

  v3 = defaultIdentityStore_sDefaultIdentityStore;

  return v3;
}

void __43__ICUserIdentityStore_defaultIdentityStore__block_invoke()
{
  if (__IsSingleWriter == 1)
  {
    v0 = +[ICDelegateAccountStoreSchema defaultDatabasePath];
    v3 = [ICDelegateAccountStoreOptions singleWriterOptionsWithDatabasePath:v0];
  }

  else
  {
    v3 = [ICDelegateAccountStoreOptions defaultOptionsWithServiceName:@"com.apple.itunescloud.delegate-account-store"];
  }

  v1 = [[ICUserIdentityStore alloc] _initWithStyle:0 delegateAccountStoreOptions:v3];
  v2 = defaultIdentityStore_sDefaultIdentityStore;
  defaultIdentityStore_sDefaultIdentityStore = v1;
}

- (id)_initCommon
{
  v11.receiver = self;
  v11.super_class = ICUserIdentityStore;
  v2 = [(ICUserIdentityStore *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICUserIdentityStore.accessQueue", v4);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.iTunesCloud.ICUserIdentityStore.callback", v7);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v8;
  }

  return v2;
}

- (void)synchronize
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ICUserIdentityStore_synchronize__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

+ (ICUserIdentityStore)nullIdentityStore
{
  if (nullIdentityStore_sNullIdentityStoreOnceToken != -1)
  {
    dispatch_once(&nullIdentityStore_sNullIdentityStoreOnceToken, &__block_literal_global_55);
  }

  v3 = nullIdentityStore_sNullIdentityStore;

  return v3;
}

void __40__ICUserIdentityStore_nullIdentityStore__block_invoke()
{
  v2 = [ICDelegateAccountStoreOptions defaultOptionsWithServiceName:@"com.apple.itunescloud.delegate-account-store"];
  v0 = [[ICUserIdentityStore alloc] _initWithStyle:2 delegateAccountStoreOptions:v2];
  v1 = nullIdentityStore_sNullIdentityStore;
  nullIdentityStore_sNullIdentityStore = v0;
}

- (void)_initializeLocalStoreAccountProperties
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v3 = +[ICDefaults standardDefaults];
  lastKnownLocalStoreAccountProperties = [v3 lastKnownLocalStoreAccountProperties];

  if (lastKnownLocalStoreAccountProperties)
  {
    v4 = [[ICLocalStoreAccountProperties alloc] initWithPropertyListRepresentation:lastKnownLocalStoreAccountProperties];
    localStoreAccountProperties = self->_localStoreAccountProperties;
    self->_localStoreAccountProperties = v4;
  }

  [(ICUserIdentityStore *)self _refreshLocalStoreAccountPropertiesAllowingDidChangeNotification:1];
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v67 = __ROR8__(v14 + v13, 32);
  v70 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v64 = (v14 + v13) ^ __ROR8__(v13, 47);

  identityStoreStyle = [(ICUserIdentityStoreCoding *)self->_codingHelper identityStoreStyle];
  v19 = (v17 + v64) ^ __ROR8__(v64, 51);
  v20 = v67 + (v70 ^ identityStoreStyle);
  v21 = __ROR8__(v70 ^ identityStoreStyle, 48);
  v22 = (v20 ^ v21) + __ROR8__(v17 + v64, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v19;
  v68 = __ROR8__(v24, 32);
  v71 = v23;
  v62 = v22 ^ identityStoreStyle;
  v65 = v24 ^ __ROR8__(v19, 47);
  v25 = self->_delegateAccountStoreOptions;
  v26 = [(ICDelegateAccountStoreOptions *)v25 hash];
  v27 = (v62 + v65) ^ __ROR8__(v65, 51);
  v28 = v68 + (v71 ^ v26);
  v29 = __ROR8__(v71 ^ v26, 48);
  v30 = (v28 ^ v29) + __ROR8__(v62 + v65, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v69 = __ROR8__(v32, 32);
  v72 = v31;
  v63 = v30 ^ v26;
  v66 = v32 ^ __ROR8__(v27, 47);

  v33 = (v63 + v66) ^ __ROR8__(v66, 51);
  v34 = v69 + (v72 ^ 0x1800000000000000);
  v35 = __ROR8__(v72 ^ 0x1800000000000000, 48);
  v36 = (v34 ^ v35) + __ROR8__(v63 + v66, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = (v36 ^ 0x1800000000000000) + v39;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = (__ROR8__(v38, 32) ^ 0xFFLL) + v37;
  v43 = __ROR8__(v37, 48);
  v44 = __ROR8__(v40, 32) + (v42 ^ v43);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v41 + v42;
  v47 = v46 ^ __ROR8__(v41, 47);
  v48 = v47 + v44;
  v49 = v48 ^ __ROR8__(v47, 51);
  v50 = __ROR8__(v46, 32) + v45;
  v51 = __ROR8__(v45, 48);
  v52 = __ROR8__(v48, 32) + (v50 ^ v51);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v49 + v50;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = v55 + v52;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = __ROR8__(v54, 32) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  return (v57 + v58) ^ __ROR8__(v57, 47) ^ v60 ^ __ROR8__(v57 + v58, 32) ^ v60 ^ __ROR8__(v58 ^ v59, 43);
}

- (void)dealloc
{
  delegateAccountStore = self->_delegateAccountStore;
  if (delegateAccountStore)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__ICUserIdentityStore_dealloc__block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = delegateAccountStore;
    v5 = accessQueue;
    v6 = delegateAccountStore;
    dispatch_barrier_async(v5, block);
  }

  v7.receiver = self;
  v7.super_class = ICUserIdentityStore;
  [(ICUserIdentityStore *)&v7 dealloc];
}

- (ICLocalStoreAccountProperties)localStoreAccountProperties
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__38093;
  v11 = __Block_byref_object_dispose__38094;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__ICUserIdentityStore_localStoreAccountProperties__block_invoke;
  v6[3] = &unk_1E7BFA430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__ICUserIdentityStore_localStoreAccountProperties__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }

  else
  {
    v4 = *(v2 + 24);
    v16 = 0;
    v5 = [v4 localStoreAccountPropertiesWithError:&v16];
    v6 = v16;
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v5;

    if (*(*(a1 + 32) + 56))
    {

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 56));
      v13 = *(a1 + 32);
      v14 = *(v13 + 88);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__ICUserIdentityStore_localStoreAccountProperties__block_invoke_51;
      v15[3] = &unk_1E7BFA300;
      v15[4] = v13;
      dispatch_async(v14, v15);
    }

    else
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Failed to fetch local store account synchronously with error: %{public}@.", buf, 0xCu);
      }

      v10 = objc_alloc_init(ICLocalStoreAccountProperties);
      v11 = *(a1 + 32);
      v12 = *(v11 + 56);
      *(v11 + 56) = v10;

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 56));
    }
  }
}

- (ICUserIdentityStoreBackend)_unsafeBackend
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  backend = self->_backend;

  return backend;
}

- (id)_icValidStoreAccountsFromACAccounts:(id)accounts
{
  v28 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = accountsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        ic_DSID = [v12 ic_DSID];
        if (ic_DSID)
        {
          v14 = ic_DSID;
          ic_isLocalAccount = [v12 ic_isLocalAccount];

          if ((ic_isLocalAccount & 1) == 0)
          {
            ic_DSID2 = [v12 ic_DSID];
            v17 = [ICUserIdentity specificAccountWithDSID:ic_DSID2];

            [array addObject:v17];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = array;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - _icValidStoreAccountsFromACAccounts=%{public}@", buf, 0xCu);
  }

  v19 = [array copy];

  return v19;
}

- (void)_unregisterForDelegateAccountStoreNotifications:(id)notifications
{
  notificationsCopy = notifications;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"ICDelegateAccountStoreDidChangeNotification" object:notificationsCopy];
}

- (BOOL)_saveIdentityProperties:(id)properties andPostAccountChangeNotification:(BOOL)notification forUserIdentity:(id)identity error:(id *)error
{
  notificationCopy = notification;
  propertiesCopy = properties;
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__38093;
  v49 = __Block_byref_object_dispose__38094;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  if ([propertiesCopy isDelegated])
  {
    v12 = v46;
    obj = v46[5];
    v13 = [(ICUserIdentityStore *)self _openDelegateAccountStoreWithError:&obj];
    objc_storeStrong(v12 + 5, obj);
    if (v46[5])
    {
      *(v42 + 24) = 0;
    }

    else
    {
      v14 = dispatch_semaphore_create(0);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __102__ICUserIdentityStore__saveIdentityProperties_andPostAccountChangeNotification_forUserIdentity_error___block_invoke;
      v36[3] = &unk_1E7BF9A28;
      v38 = &v45;
      v39 = &v41;
      v15 = v14;
      v37 = v15;
      [v13 setIdentityProperties:propertiesCopy forUserIdentity:identityCopy completionHandler:v36];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v35 = 0;
  v16 = [(ICUserIdentityStore *)self _dsidForUserIdentity:identityCopy error:&v35];
  v17 = v35;
  if (v16)
  {
    v18 = self->_backend;
    if ([propertiesCopy isDelegated])
    {
      v34 = 0;
      [(ICUserIdentityStoreBackend *)v18 replaceIdentityProperties:propertiesCopy forDSID:v16 error:&v34];
      v19 = v34;
      if ([v19 code] == -7401)
      {
        domain = [v19 domain];
        v21 = [domain isEqualToString:@"ICError"];

        if (v21)
        {

          v19 = 0;
        }
      }
    }

    else
    {
      v33 = 0;
      [(ICUserIdentityStoreBackend *)v18 setIdentityProperties:propertiesCopy forDSID:v16 error:&v33];
      v19 = v33;
    }

    *(v52 + 24) = v19 == 0;
  }

  else
  {
    v19 = 0;
  }

  v22 = v19;
  if (*(v52 + 24) == 1)
  {
    if (v42[3])
    {
      v23 = 0;
      v24 = 1;
      goto LABEL_19;
    }

    v22 = v46[5];
  }

  v23 = v22;
  v24 = 0;
LABEL_19:
  codingHelper = self->_codingHelper;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __102__ICUserIdentityStore__saveIdentityProperties_andPostAccountChangeNotification_forUserIdentity_error___block_invoke_2;
  v32[3] = &unk_1E7BFA300;
  v32[4] = self;
  [(ICUserIdentityStoreCoding *)codingHelper lock:v32];
  if (notificationCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__ICUserIdentityStore__saveIdentityProperties_andPostAccountChangeNotification_forUserIdentity_error___block_invoke_3;
    block[3] = &unk_1E7BF9BE8;
    block[4] = self;
    block[5] = &v51;
    block[6] = &v41;
    dispatch_async(callbackQueue, block);
  }

  if (error)
  {
    v27 = v23;
    *error = v23;
  }

  if (v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v28;
}

void __102__ICUserIdentityStore__saveIdentityProperties_andPostAccountChangeNotification_forUserIdentity_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_registerForDelegateAccountStoreNotifications:(id)notifications
{
  notificationsCopy = notifications;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__delegateAccountStoreDidChangeNotification_ name:@"ICDelegateAccountStoreDidChangeNotification" object:notificationsCopy];
}

- (id)_openDelegateAccountStoreForUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v8 = self->_delegateAccountStore;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![identityCopy allowsDelegation])
  {
    v10 = 0;
    v9 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 0;
  v9 = [(ICUserIdentityStore *)self _openDelegateAccountStoreWithError:&v12];
  v10 = v12;
  if (error)
  {
LABEL_8:
    v10 = v10;
    *error = v10;
  }

LABEL_9:

  return v9;
}

- (id)_openDelegateAccountStoreWithError:(id *)error
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__38093;
  v33 = __Block_byref_object_dispose__38094;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38093;
  v27 = __Block_byref_object_dispose__38094;
  v28 = self->_delegateAccountStore;
  if (v28)
  {
    goto LABEL_15;
  }

  if (![(ICDelegateAccountStoreOptions *)self->_delegateAccountStoreOptions isSingleWriter])
  {
    if (self->_delegateAccountStoreOptions)
    {
      v12 = dispatch_semaphore_create(0);
      delegateAccountStoreOptions = self->_delegateAccountStoreOptions;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__ICUserIdentityStore__openDelegateAccountStoreWithError___block_invoke;
      v18[3] = &unk_1E7BF9BB8;
      v20 = &v23;
      v21 = &v29;
      v14 = v12;
      v19 = v14;
      [ICDelegateAccountStore openWithOptions:delegateAccountStoreOptions completionHandler:v18];
      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

LABEL_10:
      v10 = v24;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
LABEL_9:
    v14 = v30[5];
    v30[5] = v11;
    goto LABEL_10;
  }

  v5 = [ICDelegateAccountStore alloc];
  v6 = self->_delegateAccountStoreOptions;
  v7 = v30;
  obj = v30[5];
  v8 = [(ICDelegateAccountStore *)v5 initSingleWriterWithOptions:v6 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  v9 = v24[5];
  v24[5] = v8;

  v10 = v24;
  if (!v30[5] && !v24[5])
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    goto LABEL_9;
  }

LABEL_11:
  if (v10[5])
  {
    [(ICUserIdentityStore *)self _registerForDelegateAccountStoreNotifications:?];
    v15 = v24[5];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&self->_delegateAccountStore, v15);
LABEL_15:
  if (error)
  {
    *error = v30[5];
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v16;
}

void __58__ICUserIdentityStore__openDelegateAccountStoreWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v6)
  {
    v7 = 0;
    v8 = v6;
  }

  else if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    v7 = 1;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
  if (v7)
  {
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_importValuesFromCodingHelper:(id)helper
{
  helperCopy = helper;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__ICUserIdentityStore__importValuesFromCodingHelper___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v9 = helperCopy;
  selfCopy = self;
  v7 = helperCopy;
  dispatch_sync(accessQueue, v8);
}

void __53__ICUserIdentityStore__importValuesFromCodingHelper___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uniqueIdentifier];
  if (v2 != [*(*(a1 + 40) + 32) uniqueIdentifier])
  {
    v4 = [*(a1 + 32) activeAccountHistory];
    if (v4)
    {
      [*(*(a1 + 40) + 8) addValuesFromHistory:v4];
    }

    v3 = [*(a1 + 32) activeLockerAccountHistory];
    if (v3)
    {
      [*(*(a1 + 40) + 16) addValuesFromHistory:v3];
    }
  }
}

- (id)_existingIdentityPropertiesForUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__38093;
  v37 = __Block_byref_object_dispose__38094;
  v38 = 0;
  v8 = [(ICUserIdentityStore *)self _allowsDelegationForUserIdentity:identityCopy];
  type = [identityCopy type];
  v10 = 0;
  if (type <= 9)
  {
    if (((1 << type) & 0x3CF) != 0)
    {
      v32 = 0;
      deviceIdentifier = [(ICUserIdentityStore *)self _dsidForUserIdentity:identityCopy error:&v32];
      v10 = v32;
      if (!v10 && deviceIdentifier)
      {
        backend = self->_backend;
        v31 = 0;
        v13 = [(ICUserIdentityStoreBackend *)backend activeAccountDSIDWithError:&v31];
        v10 = v31;
        if (!v10)
        {
          if (v8 && ![v13 isEqual:deviceIdentifier])
          {
            v10 = 0;
          }

          else
          {
            v14 = self->_backend;
            v30 = 0;
            v15 = [(ICUserIdentityStoreBackend *)v14 identityPropertiesForDSID:deviceIdentifier error:&v30];
            v10 = v30;
            v16 = [v15 mutableCopy];
            v17 = v34[5];
            v34[5] = v16;
          }
        }
      }
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_14;
      }

      v18 = objc_alloc_init(ICMutableUserIdentityProperties);
      v19 = v34[5];
      v34[5] = v18;

      v20 = v34[5];
      deviceIdentifier = [identityCopy deviceIdentifier];
      [v20 setCarrierBundleDeviceIdentifier:deviceIdentifier];
      v10 = 0;
    }
  }

LABEL_14:
  if (v34[5] == 0 && v8)
  {
    v29 = v10;
    v21 = [(ICUserIdentityStore *)self _openDelegateAccountStoreWithError:&v29];
    v22 = v29;

    if (v21)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __72__ICUserIdentityStore__existingIdentityPropertiesForUserIdentity_error___block_invoke;
      v26[3] = &unk_1E7BF9B90;
      v28 = &v33;
      v27 = identityCopy;
      [v21 readUsingBlock:v26];
    }

    v10 = v22;
  }

  if (error)
  {
    v23 = v10;
    *error = v10;
  }

  v24 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v24;
}

uint64_t __72__ICUserIdentityStore__existingIdentityPropertiesForUserIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identityPropertiesForUserIdentity:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)_dsidForUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  dSID = [identityCopy DSID];
  if ([identityCopy hasResolvedDSID])
  {
    v9 = 0;
    goto LABEL_33;
  }

  type = [identityCopy type];
  p_lastKnownActiveAccountTimestamp = &self->_lastKnownActiveAccountTimestamp;
  if (!self->_lastKnownActiveAccountTimestamp)
  {
    v17 = mach_absolute_time();
    if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      backend = self->_backend;
      v34 = 0;
      v19 = [(ICUserIdentityStoreBackend *)backend activeLockerAccountDSIDWithError:&v34];
      v20 = v34;
      if (!v20)
      {
        [(ICValueHistory *)self->_activeLockerAccountHistory addValue:v19 timestamp:v17];
        p_lastKnownActiveAccountTimestamp = &self->_lastKnownActiveLockerAccountTimestamp;
        goto LABEL_39;
      }
    }

    else
    {
      if ((type & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        goto LABEL_4;
      }

      v18 = self->_backend;
      v35 = 0;
      v19 = [(ICUserIdentityStoreBackend *)v18 activeAccountDSIDWithError:&v35];
      v20 = v35;
      if (!v20)
      {
        [(ICValueHistory *)self->_activeAccountHistory addValue:v19 timestamp:v17];
LABEL_39:
        *p_lastKnownActiveAccountTimestamp = v17;

        goto LABEL_4;
      }
    }

    v9 = v20;

    goto LABEL_33;
  }

LABEL_4:
  v9 = 0;
  if (type <= 5)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_33;
        }

        creationTime = [identityCopy creationTime];
        activeLockerAccountHistory = self->_activeLockerAccountHistory;
      }

      else
      {
        creationTime = [identityCopy creationTime];
        activeLockerAccountHistory = self->_activeAccountHistory;
      }

      dSID2 = [(ICUserIdentityStore *)self _dsidForTimestamp:creationTime history:activeLockerAccountHistory];

      [identityCopy _setResolvedDSID:dSID2];
      goto LABEL_27;
    }

    if (type == 2)
    {
      v25 = self->_backend;
      v33 = 0;
      dSID2 = [(ICUserIdentityStoreBackend *)v25 activeAccountDSIDWithError:&v33];
      v22 = v33;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_33;
      }

      v21 = self->_backend;
      v32 = 0;
      dSID2 = [(ICUserIdentityStoreBackend *)v21 activeLockerAccountDSIDWithError:&v32];
      v22 = v32;
    }

LABEL_29:
    v9 = v22;

    goto LABEL_32;
  }

  if (type > 7)
  {
    if (type != 8)
    {
      if (type != 9)
      {
        goto LABEL_33;
      }

      v23 = self->_backend;
      v29 = 0;
      dSID2 = [(ICUserIdentityStoreBackend *)v23 defaultMediaAccountDSIDWithError:&v29];
      v22 = v29;
      goto LABEL_29;
    }

    v26 = self->_backend;
    v30 = 0;
    dSID2 = [(ICUserIdentityStoreBackend *)v26 defaultMediaAccountDSIDWithError:&v30];
    v9 = v30;

LABEL_31:
    [identityCopy _setResolvedDSID:dSID2];
    goto LABEL_32;
  }

  if (type != 6)
  {
    v14 = self->_backend;
    altDSID = [identityCopy altDSID];
    v31 = 0;
    dSID2 = [(ICUserIdentityStoreBackend *)v14 accountDSIDForAltDSID:altDSID error:&v31];
    v9 = v31;

    goto LABEL_31;
  }

  dSID2 = [identityCopy DSID];

LABEL_27:
  v9 = 0;
LABEL_32:
  dSID = dSID2;
LABEL_33:
  if (error)
  {
    v27 = v9;
    *error = v9;
  }

  return dSID;
}

- (id)_dsidForTimestamp:(unint64_t)timestamp history:(id)history
{
  historyCopy = history;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v8 = [historyCopy firstValueBeforeTimestamp:timestamp];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [historyCopy firstValueAfterOrEqualToTimestamp:timestamp];
  }

  v11 = v10;

  return v11;
}

- (void)_dispatchDidChangeNotification:(BOOL)notification didDelegateAccountStoreChange:(BOOL)change
{
  changeCopy = change;
  notificationCopy = notification;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  if (notificationCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICUserIdentityStoreDidChangeNotification" object:self];
  }

  if (changeCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICUserIdentityStoreDelegateAccountStoreDidChangeNotification" object:self];
  }
}

- (void)_assertNonNullIdentityStoreForSelector:(SEL)selector
{
  if ([(ICUserIdentityStoreCoding *)self->_codingHelper identityStoreStyle]== 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICUserIdentityStore.m" lineNumber:1262 description:{@"The following method is not supported on the null identity store: %s.", sel_getName(a2)}];
  }
}

- (BOOL)_allowsDelegationForUserIdentity:(id)identity
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  if ([identityCopy allowsDelegation])
  {
    type = [identityCopy type];
    if (type == 7)
    {
      backend = self->_backend;
      v19 = 0;
      v14 = [(ICUserIdentityStoreBackend *)backend activeAccountDSIDWithError:&v19];
      v15 = v19;
      v18 = v15;
      v16 = [(ICUserIdentityStore *)self DSIDForUserIdentity:identityCopy outError:&v18];
      v17 = v18;

      if (v16 == v14)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = [v16 isEqual:v14] ^ 1;
      }
    }

    else if (type == 6)
    {
      v9 = self->_backend;
      v20 = 0;
      v10 = [(ICUserIdentityStoreBackend *)v9 activeAccountDSIDWithError:&v20];
      dSID = [identityCopy DSID];
      v12 = dSID;
      if (dSID == v10)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = [dSID isEqual:v10] ^ 1;
      }
    }

    else
    {
      LOBYTE(v7) = type == 4;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  codingHelper = self->_codingHelper;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__ICUserIdentityStore_encodeWithCoder___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v9 = coderCopy;
  selfCopy = self;
  v7 = coderCopy;
  [(ICUserIdentityStoreCoding *)codingHelper lock:v8];
}

- (ICUserIdentityStore)initWithCoder:(id)coder
{
  selfCopy = coder;
  v5 = [(ICUserIdentityStore *)selfCopy decodeObjectOfClass:objc_opt_class() forKey:@"helper"];

  if (v5)
  {
    identityStoreStyle = [v5 identityStoreStyle];
    switch(identityStoreStyle)
    {
      case 2:
        selfCopy = +[ICUserIdentityStore nullIdentityStore];
LABEL_12:

        self = 0;
        break;
      case 1:
        _initCommon = [(ICUserIdentityStore *)self _initCommon];
        if (_initCommon)
        {
          activeAccountHistory = [v5 activeAccountHistory];
          v10 = *(_initCommon + 1);
          *(_initCommon + 1) = activeAccountHistory;

          activeLockerAccountHistory = [v5 activeLockerAccountHistory];
          v12 = *(_initCommon + 2);
          *(_initCommon + 2) = activeLockerAccountHistory;

          backend = [v5 backend];
          v14 = *(_initCommon + 3);
          *(_initCommon + 3) = backend;

          [*(_initCommon + 3) setDelegate:_initCommon];
          objc_storeStrong(_initCommon + 4, v5);
          delegateAccountStoreOptions = [v5 delegateAccountStoreOptions];
          v16 = *(_initCommon + 6);
          *(_initCommon + 6) = delegateAccountStoreOptions;

          [_initCommon _initializeLocalStoreAccountProperties];
        }

        self = _initCommon;
        selfCopy = self;
        break;
      case 0:
        v7 = +[ICUserIdentityStore defaultIdentityStore];
        selfCopy = v7;
        if (v7)
        {
          [(ICUserIdentityStore *)v7 _importValuesFromCodingHelper:v5];
        }

        goto LABEL_12;
    }
  }

  else
  {

    self = 0;
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(ICUserIdentityStore *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    identityStoreStyle = [(ICUserIdentityStoreCoding *)self->_codingHelper identityStoreStyle];
    if (identityStoreStyle == [(ICUserIdentityStoreCoding *)v5->_codingHelper identityStoreStyle])
    {
      delegateAccountStoreOptions = self->_delegateAccountStoreOptions;
      v8 = v5->_delegateAccountStoreOptions;
      v9 = delegateAccountStoreOptions;
      v10 = v9;
      if (v9 == v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(ICDelegateAccountStoreOptions *)v9 isEqual:v8];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_delegateAccountStoreDidChangeNotification:(id)notification
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICUserIdentityStore__delegateAccountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __66__ICUserIdentityStore__delegateAccountStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICUserIdentityStoreDidChangeNotification" object:*(a1 + 32)];
}

- (void)_updateDelegateAccountStoreUsingBlock:(id)block
{
  blockCopy = block;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__ICUserIdentityStore__updateDelegateAccountStoreUsingBlock___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(accessQueue, v8);
}

void __61__ICUserIdentityStore__updateDelegateAccountStoreUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

- (void)_unsafe_deleteDelegateAccountStore
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICUserIdentityStore__unsafe_deleteDelegateAccountStore__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __57__ICUserIdentityStore__unsafe_deleteDelegateAccountStore__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) databasePath];
  v3 = *(*(a1 + 32) + 40);
  v11 = v2;
  if (v3)
  {
    [v3 close];
    [*(a1 + 32) _unregisterForDelegateAccountStoreNotifications:*(*(a1 + 32) + 40)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v2 = v11;
  }

  if ([v2 length])
  {
    v6 = MEMORY[0x1E696AC08];
    v7 = v11;
    v8 = objc_alloc_init(v6);
    [v8 removeItemAtPath:v7 error:0];
    v9 = ICSQLiteGetRelatedFilePath(v7, 0);
    [v8 removeItemAtPath:v9 error:0];

    v10 = ICSQLiteGetRelatedFilePath(v7, 1);

    [v8 removeItemAtPath:v10 error:0];
  }

  dispatch_barrier_sync(*(*(a1 + 32) + 88), &__block_literal_global_59);
}

- (void)_resetDelegateAccountStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ICUserIdentityStore__resetDelegateAccountStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(accessQueue, v8);
}

void __71__ICUserIdentityStore__resetDelegateAccountStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) isSingleWriter])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    if (v3)
    {
      [v3 close];
      [*(a1 + 32) _unregisterForDelegateAccountStoreNotifications:*(*(a1 + 32) + 40)];
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

      v2 = *(a1 + 32);
    }

    v6 = [*(v2 + 48) databasePath];
    if ([v6 length])
    {
      ICSQLiteTruncateDatabase(v6);
    }

    v7 = [ICDelegateAccountStore alloc];
    v8 = *(*(a1 + 32) + 48);
    v23 = 0;
    v9 = [(ICDelegateAccountStore *)v7 initSingleWriterWithOptions:v8 error:&v23];
    v10 = v23;
    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    *(v11 + 40) = v9;

    v13 = *(a1 + 32);
    v14 = v13[5];
    v15 = v14 != 0;
    if (v14)
    {
      [v13 _registerForDelegateAccountStoreNotifications:?];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7701 userInfo:0];
    v15 = 0;
  }

  v16 = *(*(a1 + 32) + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__ICUserIdentityStore__resetDelegateAccountStoreWithCompletionHandler___block_invoke_2;
  v19[3] = &unk_1E7BF9B68;
  v17 = *(a1 + 40);
  v22 = v15;
  v20 = v10;
  v21 = v17;
  v18 = v10;
  dispatch_async(v16, v19);
}

- (void)_reloadForExternalChange
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ICUserIdentityStore__reloadForExternalChange__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __47__ICUserIdentityStore__reloadForExternalChange__block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = *(*(a1 + 32) + 24);
  v48 = 0;
  v4 = [v3 activeAccountDSIDWithError:&v48];
  v5 = v48;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v50 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - reloadForExternalChange failed to obtain active account DSID. err=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) firstValueBeforeOrEqualToTimestamp:*(*(a1 + 32) + 64)];
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = ICCreateLoggableValueForDSID(v4);
      v10 = ICCreateLoggableValueForDSID(v7);
      v11 = *(*(a1 + 32) + 64);
      *buf = 134218754;
      v50 = v2;
      v51 = 2114;
      v52 = v9;
      v53 = 2114;
      v54 = v10;
      v55 = 2048;
      v56 = v11;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - checking for active account change at timestamp %llu. activeAccountDSID = %{public}@, lastKnownActiveAccountDSID = %{public}@ (timestamp = %llu)", buf, 0x2Au);
    }

    v6 = v7;
    v12 = v4;
    v13 = v12;
    if (v6 == v12)
    {
    }

    else
    {
      v14 = [v6 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - Active account change detected", buf, 2u);
        }

        [*(*(a1 + 32) + 8) addValue:v13 timestamp:v2];
        *(v45 + 24) = 1;
        *(*(a1 + 32) + 64) = v2;
        [*(*(a1 + 32) + 24) synchronize];
      }
    }
  }

  v16 = *(*(a1 + 32) + 24);
  v39 = v5;
  v17 = [v16 activeLockerAccountDSIDWithError:&v39];
  v18 = v39;

  if (v18)
  {
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v50 = v18;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - reloadForExternalChange failed to obtain active locker account DSID. err=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v20 = [*(*(a1 + 32) + 16) firstValueBeforeOrEqualToTimestamp:*(*(a1 + 32) + 72)];
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = ICCreateLoggableValueForDSID(v17);
      v23 = ICCreateLoggableValueForDSID(v20);
      v24 = *(*(a1 + 32) + 72);
      *buf = 134218754;
      v50 = v2;
      v51 = 2114;
      v52 = v22;
      v53 = 2114;
      v54 = v23;
      v55 = 2048;
      v56 = v24;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - checking for active locker account change at timestamp %llu. activeLockerAccountDSID = %{public}@, lastKnownActiveLockerAccountDSID = %{public}@ (timestamp = %lld)", buf, 0x2Au);
    }

    v19 = v20;
    v25 = v17;
    v26 = v25;
    if (v19 == v25)
    {
    }

    else
    {
      v27 = [v19 isEqual:v25];

      if ((v27 & 1) == 0)
      {
        v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - Active locker account change detected", buf, 2u);
        }

        [*(*(a1 + 32) + 16) addValue:v26 timestamp:v2];
        *(v41 + 24) = 1;
        *(*(a1 + 32) + 72) = v2;
        [*(*(a1 + 32) + 24) synchronize];
      }
    }
  }

  v29 = [*(a1 + 32) _refreshLocalStoreAccountPropertiesAllowingDidChangeNotification:0];
  v30 = v29;
  if (v29)
  {
    v31 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - Local store account properties change detected", buf, 2u);
    }
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 32);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __47__ICUserIdentityStore__reloadForExternalChange__block_invoke_56;
  v38[3] = &unk_1E7BF9BE8;
  v38[4] = v32;
  v38[5] = &v44;
  v38[6] = &v40;
  [v33 lock:v38];
  v34 = *(a1 + 32);
  v35 = *(v34 + 88);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __47__ICUserIdentityStore__reloadForExternalChange__block_invoke_2;
  v36[3] = &unk_1E7BF9B40;
  v36[4] = v34;
  v36[5] = &v44;
  v37 = v30;
  dispatch_async(v35, v36);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

uint64_t __47__ICUserIdentityStore__reloadForExternalChange__block_invoke_56(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    result = [*(*(result + 32) + 32) setActiveAccountHistory:*(*(result + 32) + 8)];
  }

  if (*(*(*(v1 + 48) + 8) + 24) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v2 + 32);
    v4 = *(v2 + 16);

    return [v3 setActiveLockerAccountHistory:v4];
  }

  return result;
}

void __47__ICUserIdentityStore__reloadForExternalChange__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICUserIdentityStoreDidChangeNotification" object:*(a1 + 32)];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v2 postNotificationName:@"ICActiveUserIdentityDidChangeNotification" object:*(a1 + 32)];
  }

  if (*(a1 + 48) == 1)
  {
    [v2 postNotificationName:@"ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification" object:*(a1 + 32)];
  }
}

- (BOOL)_refreshLocalStoreAccountPropertiesAllowingDidChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v19 = *MEMORY[0x1E69E9840];
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  backend = self->_backend;
  v16 = 0;
  v6 = [(ICUserIdentityStoreBackend *)backend localStoreAccountPropertiesWithError:&v16];
  v7 = v16;
  if (!v6)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Failed to fetch local store account with error: %{public}@.", buf, 0xCu);
    }

    goto LABEL_10;
  }

  localStoreAccountProperties = self->_localStoreAccountProperties;
  if (localStoreAccountProperties == v6 || [(ICLocalStoreAccountProperties *)localStoreAccountProperties isEqual:v6])
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v9 = [(ICLocalStoreAccountProperties *)v6 copy];
  v10 = self->_localStoreAccountProperties;
  self->_localStoreAccountProperties = v9;

  if (notificationCopy)
  {
    callbackQueue = self->_callbackQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__ICUserIdentityStore__refreshLocalStoreAccountPropertiesAllowingDidChangeNotification___block_invoke;
    v15[3] = &unk_1E7BFA300;
    v15[4] = self;
    dispatch_async(callbackQueue, v15);
  }

  v12 = 1;
LABEL_11:

  return v12;
}

void __88__ICUserIdentityStore__refreshLocalStoreAccountPropertiesAllowingDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - Local store account properties change detected [Posting notification]", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification" object:*(a1 + 32)];
}

- (void)_prepareDelegateAccountStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__ICUserIdentityStore__prepareDelegateAccountStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(accessQueue, v8);
}

void __73__ICUserIdentityStore__prepareDelegateAccountStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v16];
  v4 = v16;
  if (v4)
  {
    v5 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__ICUserIdentityStore__prepareDelegateAccountStoreWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v15 = *(a1 + 40);
    v14 = v4;
    dispatch_async(v5, block);

    v6 = v15;
  }

  else
  {
    v6 = [v3 databasePath];
    v7 = *(*(a1 + 32) + 88);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__ICUserIdentityStore__prepareDelegateAccountStoreWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF9B18;
    v8 = *(a1 + 40);
    v10 = 0;
    v11 = v8;
    v12 = v3 != 0;
    v9[4] = v6;
    dispatch_async(v7, v9);
  }
}

uint64_t __73__ICUserIdentityStore__prepareDelegateAccountStoreWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

- (void)userIdentityStoreBackendDidChange:(id)change
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "[ICUserIdentityStore] - Backend changed", v5, 2u);
  }

  [(ICUserIdentityStore *)self _reloadForExternalChange];
}

- (id)userIdentitiesForAllStoreAccountsWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  backend = self->_backend;
  v22 = 0;
  v6 = [(ICUserIdentityStoreBackend *)backend allStoreAccountDSIDsWithError:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - Error retrieving user identities for all accounts - error=%{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [ICUserIdentity specificAccountWithDSID:*(*(&v18 + 1) + 8 * i), v18];
          [v9 addObject:v14];
        }

        v11 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  if (error)
  {
    v15 = v7;
    *error = v7;
  }

  v16 = [v9 copy];

  return v16;
}

- (void)updatePropertiesForLocalStoreAccountUsingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__ICUserIdentityStore_updatePropertiesForLocalStoreAccountUsingBlock_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9910;
  block[4] = self;
  v13 = blockCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = blockCopy;
  dispatch_async(accessQueue, block);
}

void __88__ICUserIdentityStore_updatePropertiesForLocalStoreAccountUsingBlock_completionHandler___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 24);
  v21 = 0;
  v3 = [v2 localStoreAccountPropertiesWithError:&v21];
  v4 = v21;
  if (v3)
  {
    v5 = [v3 mutableCopy];
    (*(a1[5] + 16))();
    v6 = *(a1[4] + 32);
    v7 = *(a1[4] + 24);
    v8 = *(a1[4] + 24);
    v20 = v4;
    [v8 setLocalStoreAccountProperties:v5 error:&v20];
    v9 = v20;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__ICUserIdentityStore_updatePropertiesForLocalStoreAccountUsingBlock_completionHandler___block_invoke_53;
    v17[3] = &unk_1E7BFA078;
    v18 = v6;
    v19 = v7;
    v10 = v7;
    v11 = v6;
    [v11 lock:v17];

    v4 = v9;
  }

  else
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Failed to fetch local store account with error: %{public}@.", buf, 0xCu);
    }
  }

  v12 = a1[6];
  if (v12)
  {
    v13 = *(a1[4] + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__ICUserIdentityStore_updatePropertiesForLocalStoreAccountUsingBlock_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7BF9EC8;
    v16 = v12;
    v15 = v4;
    dispatch_async(v13, v14);
  }
}

void __50__ICUserIdentityStore_localStoreAccountProperties__block_invoke_51(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification" object:*(a1 + 32)];
}

- (id)userIdentitiesForManageableAccountsWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  backend = self->_backend;
  v22 = 0;
  v6 = [(ICUserIdentityStoreBackend *)backend allManageableStoreAccountDSIDsWithError:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - Error retrieving user identities for manageable accounts - error=%{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [ICUserIdentity specificAccountWithDSID:*(*(&v18 + 1) + 8 * i), v18];
          [v9 addObject:v14];
        }

        v11 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  if (error)
  {
    v15 = v7;
    *error = v7;
  }

  v16 = [v9 copy];

  return v16;
}

- (id)DSIDForUserIdentity:(id)identity outError:(id *)error
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__38093;
  v26 = __Block_byref_object_dispose__38094;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__38093;
  v20 = __Block_byref_object_dispose__38094;
  v21 = 0;
  accessQueue = self->_accessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__ICUserIdentityStore_DSIDForUserIdentity_outError___block_invoke;
  v12[3] = &unk_1E7BF9AF0;
  v14 = &v22;
  v12[4] = self;
  v9 = identityCopy;
  v13 = v9;
  v15 = &v16;
  dispatch_sync(accessQueue, v12);
  if (error)
  {
    *error = v17[5];
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __52__ICUserIdentityStore_DSIDForUserIdentity_outError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _dsidForUserIdentity:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)updatePropertiesForUserIdentity:(id)identity usingBlock:(id)block completionHandler:(id)handler
{
  identityCopy = identity;
  blockCopy = block;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__ICUserIdentityStore_updatePropertiesForUserIdentity_usingBlock_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF9AC8;
  v16[4] = self;
  v17 = identityCopy;
  v18 = blockCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = blockCopy;
  v15 = identityCopy;
  dispatch_async(accessQueue, v16);
}

void __84__ICUserIdentityStore_updatePropertiesForUserIdentity_usingBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 _existingIdentityPropertiesForUserIdentity:v3 error:&v16];
  v5 = v16;
  if (v4)
  {
    (*(*(a1 + 48) + 16))();
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v15 = v5;
    [v6 _saveIdentityProperties:v4 andPostAccountChangeNotification:1 forUserIdentity:v7 error:&v15];
    v8 = v15;

    v5 = v8;
  }

  v9 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__ICUserIdentityStore_updatePropertiesForUserIdentity_usingBlock_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF9EC8;
  v10 = *(a1 + 56);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __84__ICUserIdentityStore_updatePropertiesForUserIdentity_usingBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (void)updatePropertiesForUserIdentity:(id)identity usingBlock:(id)block
{
  blockCopy = block;
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  [(ICUserIdentityStore *)self updatePropertiesForUserIdentity:identityCopy usingBlock:blockCopy completionHandler:0];
}

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ICUserIdentityStore_synchronizeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(accessQueue, v8);
}

void __56__ICUserIdentityStore_synchronizeWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) synchronize];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 88);

    dispatch_async(v3, v2);
  }
}

- (void)disableLockerAccountWithDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICUserIdentityStore.m" lineNumber:690 description:{@"Invalid parameter not satisfying: %@", @"dsID != nil"}];
  }

  v9 = mach_absolute_time();
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9AA0;
  block[4] = self;
  v15 = dCopy;
  v16 = handlerCopy;
  v17 = v9;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(accessQueue, block);
}

void __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v24 = 0;
  v3 = [v2 activeLockerAccountDSIDWithError:&v24];
  v4 = v24;
  if (v4)
  {
    v5 = 0;
  }

  else if (v3 == *(a1 + 40))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v23 = v4;
  [v7 disableLockerAccountDSID:v6 error:&v23];
  v8 = v23;

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = ICCreateLoggableValueForDSID(*(a1 + 40));
    v11 = *(a1 + 56);
    *buf = 138543874;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - removed cloud library setting from %{public}@ (timestamp = %lld) error=%{public}@", buf, 0x20u);
  }

  if (((v8 == 0) & v5) == 1)
  {
    [*(*(a1 + 32) + 16) addValue:*(a1 + 40) timestamp:*(a1 + 56)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke_48;
    v22[3] = &unk_1E7BFA300;
    v22[4] = v12;
    [v13 lock:v22];
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9B18;
  v21 = v5;
  block[4] = v14;
  v16 = *(a1 + 48);
  v19 = v8;
  v20 = v16;
  v17 = v8;
  dispatch_async(v15, block);
}

uint64_t __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke_48(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setActiveLockerAccountHistory:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);

  return [v3 setBackend:v4];
}

uint64_t __70__ICUserIdentityStore_disableLockerAccountWithDSID_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _dispatchDidChangeNotification:1 didDelegateAccountStoreChange:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setActiveLockerAccountWithDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v9 = mach_absolute_time();
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF9AA0;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  v16 = v9;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(accessQueue, v13);
}

void __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v25 = 0;
  v3 = [v2 activeLockerAccountDSIDWithError:&v25];
  v4 = v25;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else if (v3 == *(a1 + 40) || ([v3 isEqual:?] & 1) != 0)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 24);
    v24 = 0;
    [v8 updateActiveLockerAccountDSID:v7 error:&v24];
    v9 = v24;
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = ICCreateLoggableValueForDSID(*(a1 + 40));
        v12 = *(a1 + 56);
        *buf = 138543618;
        v27 = v11;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - updating active locker account to %{public}@ (timestamp = %lld)", buf, 0x16u);
      }

      [*(*(a1 + 32) + 16) addValue:*(a1 + 40) timestamp:*(a1 + 56)];
      v13 = *(a1 + 32);
      v14 = *(v13 + 32);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke_37;
      v23[3] = &unk_1E7BFA300;
      v23[4] = v13;
      [v14 lock:v23];
      v5 = 0;
    }

    v6 = 1;
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9B18;
  v22 = v6;
  block[4] = v15;
  v17 = *(a1 + 48);
  v20 = v5;
  v21 = v17;
  v18 = v5;
  dispatch_async(v16, block);
}

uint64_t __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke_37(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setActiveLockerAccountHistory:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);

  return [v3 setBackend:v4];
}

uint64_t __72__ICUserIdentityStore_setActiveLockerAccountWithDSID_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _dispatchDidChangeNotification:1 didDelegateAccountStoreChange:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setActiveAccountWithDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v9 = mach_absolute_time();
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF9AA0;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  v16 = v9;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(accessQueue, v13);
}

void __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v25 = 0;
  v3 = [v2 activeAccountDSIDWithError:&v25];
  v4 = v25;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else if (v3 == *(a1 + 40) || ([v3 isEqual:?] & 1) != 0)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 24);
    v24 = 0;
    [v8 updateActiveAccountDSID:v7 error:&v24];
    v9 = v24;
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = ICCreateLoggableValueForDSID(*(a1 + 40));
        v12 = *(a1 + 56);
        *buf = 138543618;
        v27 = v11;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - updating active account to %{public}@ (timestamp = %lld)", buf, 0x16u);
      }

      [*(*(a1 + 32) + 8) addValue:*(a1 + 40) timestamp:*(a1 + 56)];
      v13 = *(a1 + 32);
      v14 = *(v13 + 32);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke_36;
      v23[3] = &unk_1E7BFA300;
      v23[4] = v13;
      [v14 lock:v23];
      v5 = 0;
    }

    v6 = 1;
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9B18;
  v22 = v6;
  block[4] = v15;
  v17 = *(a1 + 48);
  v20 = v5;
  v21 = v17;
  v18 = v5;
  dispatch_async(v16, block);
}

uint64_t __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke_36(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setActiveAccountHistory:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 32);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);

  return [v3 setBackend:v4];
}

uint64_t __66__ICUserIdentityStore_setActiveAccountWithDSID_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _dispatchDidChangeNotification:1 didDelegateAccountStoreChange:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removePropertiesForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v13 = identityCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = identityCopy;
  dispatch_async(accessQueue, block);
}

void __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__38093;
  v38[4] = __Block_byref_object_dispose__38094;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__38093;
  v34 = __Block_byref_object_dispose__38094;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  if ([*(a1 + 32) _allowsDelegationForUserIdentity:*(a1 + 40)])
  {
    v3 = *(a1 + 32);
    v25 = 0;
    v4 = [v3 _openDelegateAccountStoreWithError:&v25];
    v5 = v25;
    v6 = v25;
    if (v6)
    {
      objc_storeStrong(v31 + 5, v5);
      *(v27 + 24) = 0;
    }

    else
    {
      dispatch_group_enter(v2);
      v7 = *(a1 + 40);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_2;
      v24[3] = &unk_1E7BF9A28;
      v24[5] = &v30;
      v24[6] = &v26;
      v24[4] = v2;
      [v4 removeIdentityPropertiesForUserIdentity:v7 completionHandler:v24];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v23 = v6;
  v10 = [v8 _dsidForUserIdentity:v9 error:&v23];
  v11 = v23;
  v12 = v23;

  if (v12)
  {
    objc_storeStrong(v31 + 5, v11);
    *(v27 + 24) = 0;
  }

  else if (v10)
  {
    dispatch_group_enter(v2);
    v13 = *(*(a1 + 32) + 24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_3;
    v22[3] = &unk_1E7BF9A28;
    v22[5] = v38;
    v22[6] = v36;
    v22[4] = v2;
    [v13 removeIdentityForDSID:v10 completion:v22];
  }

  dispatch_suspend(*(*(a1 + 32) + 80));
  v14 = *(a1 + 32);
  v15 = *(v14 + 88);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_4;
  v16[3] = &unk_1E7BF9A78;
  v19 = v38;
  v20 = &v26;
  v21 = &v30;
  v18 = v36;
  v16[4] = v14;
  v17 = *(a1 + 48);
  dispatch_group_notify(v2, v15, v16);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v5 == 0;
  dispatch_group_leave(*(a1 + 32));
}

void __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_3(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v5 == 0;
  dispatch_group_leave(*(a1 + 32));
}

void __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v4 = 56;
LABEL_6:
    v2 = *(*(*(a1 + v4) + 8) + 40);
    v3 = 0;
    goto LABEL_7;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v4 = 72;
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 1;
LABEL_7:
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_5;
  v18[3] = &unk_1E7BFA300;
  v18[4] = v5;
  [v6 lock:v18];
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_6;
  block[3] = &unk_1E7BF9A50;
  v9 = *(a1 + 64);
  block[4] = v7;
  v16 = v9;
  v12 = *(a1 + 40);
  v10 = v12;
  v15 = v12;
  v17 = v3;
  v14 = v2;
  v11 = v2;
  dispatch_async(v8, block);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __73__ICUserIdentityStore_removePropertiesForUserIdentity_completionHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:(*(*(*(a1 + 56) + 8) + 24) | *(*(*(a1 + 64) + 8) + 24)) & 1 didDelegateAccountStoreChange:*(*(*(a1 + 64) + 8) + 24) & 1];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF9E78;
  v16[4] = self;
  v17 = dsCopy;
  v18 = identityCopy;
  v19 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  v15 = handlerCopy;
  dispatch_async(accessQueue, v16);
}

void __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v15];
  v4 = v15;
  if (!v4)
  {
    dispatch_suspend(*(*(a1 + 32) + 80));
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF98C0;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 56);
    [v3 removeDelegationUUIDs:v8 forUserIdentity:v9 completionHandler:v10];
    v7 = v11;
    goto LABEL_5;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v14 = v5;
    v13 = v4;
    dispatch_async(v6, block);

    v7 = v14;
LABEL_5:
  }
}

void __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7BF9B18;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __79__ICUserIdentityStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:*(a1 + 56) didDelegateAccountStoreChange:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeDelegateTokensExpiringBeforeDate:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v13 = dateCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = dateCopy;
  v11 = handlerCopy;
  dispatch_async(accessQueue, block);
}

void __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v14];
  v4 = v14;
  if (!v4)
  {
    dispatch_suspend(*(*(a1 + 32) + 80));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF98C0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v3 removeTokensExpiringBeforeDate:v8 completionHandler:v9];
    v7 = v10;
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v13 = v5;
    v12 = v4;
    dispatch_async(v6, block);

    v7 = v13;
LABEL_5:
  }
}

void __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7BF9B18;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __80__ICUserIdentityStore_removeDelegateTokensExpiringBeforeDate_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:*(a1 + 56) didDelegateAccountStoreChange:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeDelegateTokenForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v13 = identityCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = identityCopy;
  v11 = handlerCopy;
  dispatch_async(accessQueue, block);
}

void __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v14];
  v4 = v14;
  if (!v4)
  {
    dispatch_suspend(*(*(a1 + 32) + 80));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF98C0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v3 removeTokenForUserIdentity:v8 completionHandler:v9];
    v7 = v10;
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v13 = v5;
    v12 = v4;
    dispatch_async(v6, block);

    v7 = v13;
LABEL_5:
  }
}

void __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7BF9B18;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __76__ICUserIdentityStore_removeDelegateTokenForUserIdentity_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:*(a1 + 56) didDelegateAccountStoreChange:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeAllDelegateTokensWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(accessQueue, v8);
}

void __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v14];
  v4 = v14;
  if (!v4)
  {
    dispatch_suspend(*(*(a1 + 32) + 80));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF98C0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v3 removeAllTokensWithCompletionHandler:v9];
    v7 = v10;
    goto LABEL_5;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v13 = v5;
    v12 = v4;
    dispatch_async(v6, block);

    v7 = v13;
LABEL_5:
  }
}

void __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke_4;
  v10[3] = &unk_1E7BF9B18;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __68__ICUserIdentityStore_removeAllDelegateTokensWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:*(a1 + 56) didDelegateAccountStoreChange:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)insertPropertiesForUserIdentity:(id)identity andPostAccountChangeNotification:(BOOL)notification usingBlock:(id)block completionHandler:(id)handler
{
  identityCopy = identity;
  blockCopy = block;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__ICUserIdentityStore_insertPropertiesForUserIdentity_andPostAccountChangeNotification_usingBlock_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9A00;
  block[4] = self;
  v19 = identityCopy;
  notificationCopy = notification;
  v20 = blockCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = blockCopy;
  v17 = identityCopy;
  dispatch_async(accessQueue, block);
}

void __117__ICUserIdentityStore_insertPropertiesForUserIdentity_andPostAccountChangeNotification_usingBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18 = 0;
  v4 = [v2 _existingIdentityPropertiesForUserIdentity:v3 error:&v18];
  v5 = v18;
  if (!v5)
  {
    v6 = v4;
    if (!v6)
    {
      v6 = objc_alloc_init(ICMutableUserIdentityProperties);
      v7 = [*(a1 + 40) deviceIdentifier];
      [(ICMutableUserIdentityProperties *)v6 setCarrierBundleDeviceIdentifier:v7];

      v8 = [*(a1 + 40) DSID];
      [(ICMutableUserIdentityProperties *)v6 setDSID:v8];
    }

    (*(*(a1 + 48) + 16))();
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v17 = 0;
    [v10 _saveIdentityProperties:v6 andPostAccountChangeNotification:v9 forUserIdentity:v11 error:&v17];
    v5 = v17;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117__ICUserIdentityStore_insertPropertiesForUserIdentity_andPostAccountChangeNotification_usingBlock_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7BF9EC8;
    v16 = v12;
    v15 = v5;
    dispatch_async(v13, v14);
  }
}

- (void)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block completionHandler:(id)handler
{
  handlerCopy = handler;
  blockCopy = block;
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  [(ICUserIdentityStore *)self insertPropertiesForUserIdentity:identityCopy andPostAccountChangeNotification:1 usingBlock:blockCopy completionHandler:handlerCopy];
}

- (BOOL)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block error:(id *)error
{
  identityCopy = identity;
  blockCopy = block;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__38093;
  v25 = __Block_byref_object_dispose__38094;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__ICUserIdentityStore_insertPropertiesForUserIdentity_usingBlock_error___block_invoke;
  v17[3] = &unk_1E7BF99D8;
  v17[4] = self;
  v12 = identityCopy;
  v18 = v12;
  v20 = &v21;
  v13 = blockCopy;
  v19 = v13;
  dispatch_sync(accessQueue, v17);
  v14 = v22[5];
  if (error && v14)
  {
    *error = v14;
    v14 = v22[5];
  }

  v15 = v14 == 0;

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __72__ICUserIdentityStore_insertPropertiesForUserIdentity_usingBlock_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _existingIdentityPropertiesForUserIdentity:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (!*(*(a1[7] + 8) + 40))
  {
    v6 = v5;
    if (!v6)
    {
      v6 = objc_alloc_init(ICMutableUserIdentityProperties);
      v7 = [a1[5] deviceIdentifier];
      [(ICMutableUserIdentityProperties *)v6 setCarrierBundleDeviceIdentifier:v7];

      v8 = [a1[5] DSID];
      [(ICMutableUserIdentityProperties *)v6 setDSID:v8];
    }

    (*(a1[6] + 16))();
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    [v9 _saveIdentityProperties:v6 andPostAccountChangeNotification:1 forUserIdentity:v10 error:&v12];
    objc_storeStrong((v11 + 40), v12);
  }
}

- (void)insertPropertiesForUserIdentity:(id)identity usingBlock:(id)block
{
  blockCopy = block;
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  [(ICUserIdentityStore *)self insertPropertiesForUserIdentity:identityCopy usingBlock:blockCopy completionHandler:0];
}

- (id)getVerificationContextForUserIdentity:(id)identity error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__38093;
  v28 = __Block_byref_object_dispose__38094;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__38093;
  v22 = __Block_byref_object_dispose__38094;
  v23 = 0;
  accessQueue = self->_accessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__ICUserIdentityStore_getVerificationContextForUserIdentity_error___block_invoke;
  v14[3] = &unk_1E7BF9AF0;
  v14[4] = self;
  v9 = identityCopy;
  v15 = v9;
  v16 = &v18;
  v17 = &v24;
  dispatch_sync(accessQueue, v14);
  if (v19[5])
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v19[5];
      *buf = 138543618;
      v31 = v9;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Failed to create verification context for identity %{public}@. err=%{public}@", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __67__ICUserIdentityStore_getVerificationContextForUserIdentity_error___block_invoke(void *a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _dsidForUserIdentity:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v9 = *(a1[4] + 24);
    if (v5)
    {
      v26 = 0;
      v10 = [v9 verificationContextForDSID:v5 error:&v26];
      objc_storeStrong(v7, v26);
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      [*(*(a1[7] + 8) + 40) setIdentityStore:a1[4]];
    }

    else
    {
      v25 = 0;
      v13 = [v9 activeAccountDSIDWithError:&v25];
      objc_storeStrong(v7, v25);
      if (!*(*(a1[6] + 8) + 40))
      {
        if (v13 || ![a1[5] allowsAccountEstablishment])
        {
          v28 = *MEMORY[0x1E696A278];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get verification context for user identity - activeAccountDSID=%@ - allowsAccountEstablishment=%u", v13, objc_msgSend(a1[5], "allowsAccountEstablishment")];
          v29[0] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

          v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v20];
          v22 = *(a1[6] + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;
        }

        else
        {
          v14 = *(a1[4] + 24);
          v15 = *(a1[6] + 8);
          v24 = *(v15 + 40);
          v16 = [v14 verificationContextForAccountEstablishmentWithError:&v24];
          objc_storeStrong((v15 + 40), v24);
          v17 = *(a1[7] + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          [*(*(a1[7] + 8) + 40) setIdentityStore:a1[4]];
        }
      }
    }
  }
}

- (id)getPropertiesForUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38093;
  v27 = __Block_byref_object_dispose__38094;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__38093;
  v21 = __Block_byref_object_dispose__38094;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICUserIdentityStore_getPropertiesForUserIdentity_error___block_invoke;
  v12[3] = &unk_1E7BF9AF0;
  v9 = identityCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v17;
  v16 = &v23;
  dispatch_sync(accessQueue, v12);
  if (error)
  {
    *error = v24[5];
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void __58__ICUserIdentityStore_getPropertiesForUserIdentity_error___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[ICSecurityInfo sharedSecurityInfo];
  if ([v2 isContentProtectionEnabled] && (objc_msgSend(v2, "isDeviceClassCUnlocked") & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[4];
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Request for properties for user identity %@ before first unlock.", buf, 0xCu);
    }
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v5 _existingIdentityPropertiesForUserIdentity:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = [v8 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(*(a1[7] + 8) + 40))
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = *(*(a1[7] + 8) + 40);
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Failed to load properties for identity %{public}@. err=%{public}@", buf, 0x16u);
    }
  }
}

- (void)getPropertiesForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICUserIdentityStore_getPropertiesForUserIdentity_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v13 = identityCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = identityCopy;
  dispatch_async(accessQueue, block);
}

void __70__ICUserIdentityStore_getPropertiesForUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[ICSecurityInfo sharedSecurityInfo];
  if ([v2 isContentProtectionEnabled] && (objc_msgSend(v2, "isDeviceClassCUnlocked") & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Request for properties for user identity %@ before first unlock.", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17 = 0;
  v7 = [v5 _existingIdentityPropertiesForUserIdentity:v6 error:&v17];
  v8 = v17;
  v9 = *(*(a1 + 40) + 88);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__ICUserIdentityStore_getPropertiesForUserIdentity_completionHandler___block_invoke_28;
  v13[3] = &unk_1E7BF9E28;
  v10 = *(a1 + 48);
  v15 = v8;
  v16 = v10;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

- (id)getPropertiesForActiveICloudAccountReturningError:(id *)error
{
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__38093;
  v19 = __Block_byref_object_dispose__38094;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__38093;
  v13 = __Block_byref_object_dispose__38094;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICUserIdentityStore_getPropertiesForActiveICloudAccountReturningError___block_invoke;
  block[3] = &unk_1E7BF9BE8;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(accessQueue, block);
  if (error)
  {
    *error = v16[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __73__ICUserIdentityStore_getPropertiesForActiveICloudAccountReturningError___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[ICSecurityInfo sharedSecurityInfo];
  if ([v2 isContentProtectionEnabled] && (objc_msgSend(v2, "isDeviceClassCUnlocked") & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Request for properties for active iCloud account before first unlock.", buf, 2u);
    }
  }

  v4 = *(a1[4] + 24);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 identityPropertiesForPrimaryICloudAccountWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[6] + 8) + 40);
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] Failed to load active icloud account properties. err=%{public}@", buf, 0xCu);
    }
  }
}

- (void)getDelegationUUIDsForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v13 = identityCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = identityCopy;
  dispatch_async(accessQueue, block);
}

void __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v18];
  v4 = v18;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7BF99B0;
    v16 = *(a1 + 40);
    v6 = v5;
    v17 = v6;
    [v3 readUsingBlock:v15];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 32) + 88);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke_4;
  v11[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 48);
  v13 = v4;
  v14 = v8;
  v12 = v6;
  v9 = v4;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__ICUserIdentityStore_getDelegationUUIDsForUserIdentity_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7BF9988;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 enumerateDelegationUUIDsForUserIdentity:v3 usingBlock:v4];
}

- (void)enumerateDelegateTokensWithType:(int64_t)type usingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__ICUserIdentityStore_enumerateDelegateTokensWithType_usingBlock_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF9960;
  v14[4] = self;
  v15 = blockCopy;
  v16 = handlerCopy;
  typeCopy = type;
  v12 = handlerCopy;
  v13 = blockCopy;
  dispatch_async(accessQueue, v14);
}

void __84__ICUserIdentityStore_enumerateDelegateTokensWithType_usingBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v12];
  v4 = v12;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__ICUserIdentityStore_enumerateDelegateTokensWithType_usingBlock_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7BF9938;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v3 readUsingBlock:v9];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__ICUserIdentityStore_enumerateDelegateTokensWithType_usingBlock_completionHandler___block_invoke_3;
    v7[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)enumerateDelegateTokensUsingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ICUserIdentityStore_enumerateDelegateTokensUsingBlock_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9910;
  block[4] = self;
  v13 = blockCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = blockCopy;
  dispatch_async(accessQueue, block);
}

void __75__ICUserIdentityStore_enumerateDelegateTokensUsingBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v11];
  v4 = v11;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__ICUserIdentityStore_enumerateDelegateTokensUsingBlock_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7BF98E8;
  v10 = *(a1 + 40);
  [v3 readUsingBlock:v9];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__ICUserIdentityStore_enumerateDelegateTokensUsingBlock_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)addDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  [(ICUserIdentityStore *)self _assertNonNullIdentityStoreForSelector:a2];
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF9E78;
  v16[4] = self;
  v17 = dsCopy;
  v18 = identityCopy;
  v19 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  v15 = handlerCopy;
  dispatch_async(accessQueue, v16);
}

void __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [v2 _openDelegateAccountStoreWithError:&v15];
  v4 = v15;
  if (!v4)
  {
    dispatch_suspend(*(*(a1 + 32) + 80));
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF98C0;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 56);
    [v3 addDelegationUUIDs:v8 forUserIdentity:v9 completionHandler:v10];
    v7 = v11;
    goto LABEL_5;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v14 = v5;
    v13 = v4;
    dispatch_async(v6, block);

    v7 = v14;
LABEL_5:
  }
}

void __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7BF9B18;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
  dispatch_resume(*(*(a1 + 32) + 80));
}

uint64_t __76__ICUserIdentityStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dispatchDidChangeNotification:*(a1 + 56) didDelegateAccountStoreChange:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_initWithStyle:(int64_t)style delegateAccountStoreOptions:(id)options
{
  optionsCopy = options;
  if (style != 2)
  {
    _initCommon = [(ICUserIdentityStore *)self _initCommon];
    if (!_initCommon)
    {
      goto LABEL_12;
    }

    v10 = objc_alloc_init(ICValueHistory);
    activeAccountHistory = _initCommon->_activeAccountHistory;
    _initCommon->_activeAccountHistory = v10;

    v12 = objc_alloc_init(ICValueHistory);
    activeLockerAccountHistory = _initCommon->_activeLockerAccountHistory;
    _initCommon->_activeLockerAccountHistory = v12;

    v14 = [optionsCopy copy];
    delegateAccountStoreOptions = _initCommon->_delegateAccountStoreOptions;
    _initCommon->_delegateAccountStoreOptions = v14;

    if (style)
    {
      if (style != 1)
      {
LABEL_10:
        v19 = [[ICUserIdentityStoreCoding alloc] initWithIdentityStoreStyle:style];
        codingHelper = _initCommon->_codingHelper;
        _initCommon->_codingHelper = v19;

        [(ICUserIdentityStoreCoding *)_initCommon->_codingHelper setDelegateAccountStoreOptions:optionsCopy];
        v21 = mach_absolute_time();
        accessQueue = _initCommon->_accessQueue;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __66__ICUserIdentityStore__initWithStyle_delegateAccountStoreOptions___block_invoke;
        v24[3] = &unk_1E7BF9890;
        _initCommon = _initCommon;
        v25 = _initCommon;
        v26 = v21;
        dispatch_async(accessQueue, v24);
        v9 = v25;
        goto LABEL_11;
      }

      v16 = off_1E7BF2A80;
    }

    else
    {
      v16 = off_1E7BF2A78;
    }

    v17 = objc_alloc_init(*v16);
    backend = _initCommon->_backend;
    _initCommon->_backend = v17;

    [(ICUserIdentityStoreBackend *)_initCommon->_backend setDelegate:_initCommon];
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = ICUserIdentityStore;
  _initCommon = [(ICUserIdentityStore *)&v27 init];
  if (_initCommon)
  {
    v8 = [[ICUserIdentityStoreCoding alloc] initWithIdentityStoreStyle:2];
    v9 = _initCommon->_codingHelper;
    _initCommon->_codingHelper = v8;
LABEL_11:
  }

LABEL_12:

  return _initCommon;
}

void __66__ICUserIdentityStore__initWithStyle_delegateAccountStoreOptions___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v17 = 0;
  v3 = [v2 activeAccountDSIDWithError:&v17];
  v4 = v17;
  if (v3)
  {
    [*(*(a1 + 32) + 8) addValue:v3 timestamp:*(a1 + 40)];
    *(*(a1 + 32) + 64) = *(a1 + 40);
  }

  v5 = *(*(a1 + 32) + 24);
  v16 = v4;
  v6 = [v5 activeLockerAccountDSIDWithError:&v16];
  v7 = v16;

  if (v6)
  {
    [*(*(a1 + 32) + 16) addValue:v6 timestamp:*(a1 + 40)];
    *(*(a1 + 32) + 72) = *(a1 + 40);
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = ICCreateLoggableValueForDSID(v3);
    v10 = ICCreateLoggableValueForDSID(v6);
    v11 = *(a1 + 40);
    *buf = 138543874;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICUserIdentityStore] - initializing account histories with activeAccountDSID = %{public}@, activeLockerAccountDSID = %{public}@, timestamp = %lld", buf, 0x20u);
  }

  v12 = *(a1 + 32);
  v13 = v12[4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICUserIdentityStore__initWithStyle_delegateAccountStoreOptions___block_invoke_15;
  v14[3] = &unk_1E7BFA300;
  v15 = v12;
  [v13 lock:v14];
  [*(a1 + 32) _initializeLocalStoreAccountProperties];
}

uint64_t __66__ICUserIdentityStore__initWithStyle_delegateAccountStoreOptions___block_invoke_15(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setActiveAccountHistory:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);

  return [v3 setActiveLockerAccountHistory:v4];
}

+ (id)testingIdentityStoreWithSingleWriterService:(id)service
{
  v4 = [ICDelegateAccountStoreOptions defaultOptionsWithServiceEndpoint:service];
  v5 = [[self alloc] _initWithStyle:1 delegateAccountStoreOptions:v4];

  return v5;
}

+ (id)testingIdentityStoreWithDatabasePath:(id)path
{
  v4 = [ICDelegateAccountStoreOptions singleWriterOptionsWithDatabasePath:path];
  v5 = [[self alloc] _initWithStyle:1 delegateAccountStoreOptions:v4];

  return v5;
}

@end