@interface PCSAccountsModel
+ (BOOL)accountEligibleForMBRestoreForAltDSID:(id)a3 error:(id *)a4;
+ (BOOL)accountEligibleForMBRestoreForDSID:(id)a3 error:(id *)a4;
+ (BOOL)adpEnabledForDSID:(id)a3 error:(id *)a4;
+ (BOOL)currentPersonaSupportsPrimaryAccount:(id *)a3;
+ (id)accountForCurrentPersona;
+ (id)altDSIDForDSID:(id)a3;
+ (id)defaultAccountsModel;
+ (id)settingsKeyForKey:(id)a3 error:(id *)a4;
+ (void)accountForCurrentPersona;
- (NSString)dsid;
- (NSString)identifier;
- (NSString)lastError;
- (NSString)username;
- (PCSAccountsModel)init;
- (uint64_t)init;
- (uint64_t)update;
- (void)_accountStoreDidChange:(id)a3;
- (void)faultIfCurrentPersonaIsDataSeparated;
- (void)update;
@end

@implementation PCSAccountsModel

+ (id)defaultAccountsModel
{
  if (defaultAccountsModel_onceToken != -1)
  {
    +[PCSAccountsModel defaultAccountsModel];
  }

  v3 = defaultAccountsModel_model;

  return v3;
}

void __40__PCSAccountsModel_defaultAccountsModel__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(PCSAccountsModel);
  v2 = defaultAccountsModel_model;
  defaultAccountsModel_model = v1;

  objc_autoreleasePoolPop(v0);
}

- (PCSAccountsModel)init
{
  v14.receiver = self;
  v14.super_class = PCSAccountsModel;
  v2 = [(PCSAccountsModel *)&v14 init];
  if (v2)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = getACAccountStoreClass_softClass;
    v23 = getACAccountStoreClass_softClass;
    if (!getACAccountStoreClass_softClass)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getACAccountStoreClass_block_invoke;
      v18 = &unk_1E7B18A90;
      v19 = &v20;
      __getACAccountStoreClass_block_invoke(&v15);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v5 = [v3 defaultStore];
    [(PCSAccountsModel *)v2 setStore:v5];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("PCSAccountQueue", v6);
    [(PCSAccountsModel *)v2 setQueue:v7];

    [(PCSAccountsModel *)v2 setAccountsChanged:1];
    v8 = [MEMORY[0x1E696ABB0] defaultCenter];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v9 = getACDAccountStoreDidChangeNotificationSymbolLoc_ptr;
    v23 = getACDAccountStoreDidChangeNotificationSymbolLoc_ptr;
    if (!getACDAccountStoreDidChangeNotificationSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getACDAccountStoreDidChangeNotificationSymbolLoc_block_invoke;
      v18 = &unk_1E7B18A90;
      v19 = &v20;
      v10 = AccountsLibrary();
      v11 = dlsym(v10, "ACDAccountStoreDidChangeNotification");
      *(v19[1] + 24) = v11;
      getACDAccountStoreDidChangeNotificationSymbolLoc_ptr = *(v19[1] + 24);
      v9 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v9)
    {
      v13 = [PCSAccountsModel init];
      _Block_object_dispose(&v20, 8);
      _Unwind_Resume(v13);
    }

    [v8 addObserver:v2 selector:sel__accountStoreDidChange_ name:*v9 object:0];
  }

  return v2;
}

- (void)_accountStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v6 = getACAccountTypeIdentifierKeySymbolLoc_ptr;
  v24 = getACAccountTypeIdentifierKeySymbolLoc_ptr;
  if (!getACAccountTypeIdentifierKeySymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getACAccountTypeIdentifierKeySymbolLoc_block_invoke;
    v19 = &unk_1E7B18A90;
    v20 = &v21;
    v7 = AccountsLibrary();
    v22[3] = dlsym(v7, "ACAccountTypeIdentifierKey");
    getACAccountTypeIdentifierKeySymbolLoc_ptr = *(v20[1] + 24);
    v6 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v6)
  {
    [PCSAccountsModel init];
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = [v5 objectForKeyedSubscript:v8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v10 = getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr;
  v24 = getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr;
  if (!getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getACAccountTypeIdentifierAppleAccountSymbolLoc_block_invoke;
    v19 = &unk_1E7B18A90;
    v20 = &v21;
    v11 = AccountsLibrary();
    v22[3] = dlsym(v11, "ACAccountTypeIdentifierAppleAccount");
    getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr = *(v20[1] + 24);
    v10 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v10)
  {
LABEL_11:
    v14 = [PCSAccountsModel init];
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(v14);
  }

  v12 = [v9 isEqualToString:*v10];

  if (v12)
  {
    v13 = [(PCSAccountsModel *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__PCSAccountsModel__accountStoreDidChange___block_invoke;
    v15[3] = &unk_1E7B18D98;
    v15[4] = self;
    dispatch_sync(v13, v15);
  }
}

- (void)faultIfCurrentPersonaIsDataSeparated
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];

  if ([v3 isDataSeparatedPersona])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [PCSAccountsModel faultIfCurrentPersonaIsDataSeparated];
    }

    if (_os_feature_enabled_impl())
    {
      [PCSAccountsModel faultIfCurrentPersonaIsDataSeparated];
    }
  }
}

- (NSString)username
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (PCSSupportsPersonaMultiuser())
  {
    v3 = +[PCSAccountsModel accountForCurrentPersona];
    v4 = [v3 username];
    v5 = v17[5];
    v17[5] = v4;

    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12 = [v3 personaIdentifier];
      v13 = [v3 aa_personID];
      v14 = [v3 aa_altDSID];
      *buf = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_fault_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "username invoked with current persona: %@, dsid: %@, altDSID: %@", buf, 0x20u);
    }
  }

  else
  {
    [(PCSAccountsModel *)self faultIfCurrentPersonaIsDataSeparated];
    v8 = [(PCSAccountsModel *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __28__PCSAccountsModel_username__block_invoke;
    v15[3] = &unk_1E7B18DC0;
    v15[4] = self;
    v15[5] = &v16;
    dispatch_sync(v8, v15);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __28__PCSAccountsModel_username__block_invoke(uint64_t a1)
{
  [*(a1 + 32) update];
  v2 = *(*(a1 + 32) + 16);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (NSString)dsid
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (PCSSupportsPersonaMultiuser())
  {
    v3 = +[PCSAccountsModel accountForCurrentPersona];
    v4 = [v3 aa_personID];
    v5 = v17[5];
    v17[5] = v4;

    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12 = [v3 personaIdentifier];
      v13 = [v3 aa_personID];
      v14 = [v3 aa_altDSID];
      *buf = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_fault_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "dsid invoked with current persona: %@, dsid: %@, altDSID: %@", buf, 0x20u);
    }
  }

  else
  {
    [(PCSAccountsModel *)self faultIfCurrentPersonaIsDataSeparated];
    v8 = [(PCSAccountsModel *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __24__PCSAccountsModel_dsid__block_invoke;
    v15[3] = &unk_1E7B18DC0;
    v15[4] = self;
    v15[5] = &v16;
    dispatch_sync(v8, v15);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __24__PCSAccountsModel_dsid__block_invoke(uint64_t a1)
{
  [*(a1 + 32) update];
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (NSString)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (PCSSupportsPersonaMultiuser())
  {
    v3 = +[PCSAccountsModel accountForCurrentPersona];
    v4 = [v3 identifier];
    v5 = v17[5];
    v17[5] = v4;

    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12 = [v3 personaIdentifier];
      v13 = [v3 aa_personID];
      v14 = [v3 aa_altDSID];
      *buf = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_fault_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "identifier invoked with current persona: %@, dsid: %@, altDSID: %@", buf, 0x20u);
    }
  }

  else
  {
    [(PCSAccountsModel *)self faultIfCurrentPersonaIsDataSeparated];
    v8 = [(PCSAccountsModel *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __30__PCSAccountsModel_identifier__block_invoke;
    v15[3] = &unk_1E7B18DC0;
    v15[4] = self;
    v15[5] = &v16;
    dispatch_sync(v8, v15);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __30__PCSAccountsModel_identifier__block_invoke(uint64_t a1)
{
  [*(a1 + 32) update];
  v2 = *(*(a1 + 32) + 32);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (NSString)lastError
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (PCSSupportsPersonaMultiuser())
  {
    v3 = +[PCSAccountsModel accountForCurrentPersona];
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v14 = [v3 personaIdentifier];
      v15 = [v3 aa_personID];
      v16 = [v3 aa_altDSID];
      *buf = 138412802;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_fault_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "lastError invoked with current persona: %@, dsid: %@, altDSID: %@", buf, 0x20u);
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [v3 personaIdentifier];
    v8 = [v6 stringWithFormat:@"lastError not set for current persona %@", v7];
    v9 = v19[5];
    v19[5] = v8;
  }

  else
  {
    [(PCSAccountsModel *)self faultIfCurrentPersonaIsDataSeparated];
    v10 = [(PCSAccountsModel *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__PCSAccountsModel_lastError__block_invoke;
    block[3] = &unk_1E7B18DE8;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(v10, block);
  }

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)update
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(PCSAccountsModel *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(PCSAccountsModel *)self accountsChanged])
  {
    v17 = 0;
    v4 = 0;
    goto LABEL_18;
  }

  [(PCSAccountsModel *)self setAccountsChanged:0];
  v4 = self->_dsid;
  username = self->_username;
  self->_username = 0;

  dsid = self->_dsid;
  self->_dsid = 0;

  identifier = self->_identifier;
  self->_identifier = 0;

  lastError = self->_lastError;
  self->_lastError = 0;

  v9 = [(PCSAccountsModel *)self store];
  v10 = [v9 aa_primaryAppleAccount];

  if (!v10)
  {
    v17 = 0;
    v18 = @"No primary AppleAccount";
LABEL_11:
    v19 = self->_lastError;
    self->_lastError = &v18->isa;

    goto LABEL_12;
  }

  v11 = [v10 username];
  v12 = self->_username;
  self->_username = v11;

  v13 = [v10 aa_personID];
  v14 = self->_dsid;
  self->_dsid = v13;

  v15 = [v10 identifier];
  v16 = self->_identifier;
  self->_identifier = v15;

  if (!self->_username)
  {
    v18 = @"No username found on accounts";
LABEL_10:
    v17 = v10;
    goto LABEL_11;
  }

  if (!self->_dsid)
  {
    v18 = @"No dsid found on accounts";
    goto LABEL_10;
  }

  v17 = v10;
LABEL_12:
  v20 = self->_dsid;
  if (((v4 != 0) != (v20 != 0) || v4 && v20 && ![(NSString *)v20 isEqualToString:v4]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_dsid;
    v23 = 138543618;
    v24 = v4;
    v25 = 2114;
    v26 = v21;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Switching from DSID %{public}@ to %{public}@", &v23, 0x16u);
  }

LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
}

+ (BOOL)currentPersonaSupportsPrimaryAccount:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  v6 = [v5 isDataSeparatedPersona];
  v7 = v6;
  if (a3 && v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = kPCSErrorDomain;
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Operation unsupported for non-primary persona";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v8 errorWithDomain:v9 code:146 userInfo:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

+ (id)accountForCurrentPersona
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[PCSAccountsModel defaultAccountsModel];
  v3 = [v2 store];

  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  if ([v5 isDataSeparatedPersona])
  {
    v6 = [v5 userPersonaUniqueString];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v3 aa_appleAccounts];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [v12 personaIdentifier];
        v14 = [v6 isEqualToString:v13];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = v12;

      if (!v15)
      {
        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "using account for persona %@", buf, 0xCu);
      }
    }

    else
    {
LABEL_10:

LABEL_15:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[(PCSAccountsModel *)v6];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = [v3 aa_primaryAppleAccount];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)altDSIDForDSID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (AppleAccountLibraryCore_frameworkLibrary)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v5 = +[PCSAccountsModel defaultAccountsModel];
    v6 = [v5 store];

    v7 = [v6 aa_appleAccountWithPersonID:v3];
    v8 = [v7 aa_altDSID];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)settingsKeyForKey:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([PCSAccountsModel currentPersonaSupportsPrimaryAccount:0])
  {
    a4 = v5;
  }

  else if ([v5 isEqualToString:@"nextRegistrySync"])
  {
    a4 = @"nextRegistrySyncEnterprise";
  }

  else if ([v5 isEqualToString:@"registrySyncIdentifier"])
  {
    a4 = @"registrySyncIdentifierEnterprise";
  }

  else if (a4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = kPCSErrorDomain;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized key :%@", v5, *MEMORY[0x1E696A578]];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v6 errorWithDomain:v7 code:153 userInfo:v9];

    a4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (BOOL)adpEnabledForDSID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!objc_opt_class())
  {
    _PCSNSError(a4, 15, @"OctagonTrust not available", v7, v8, v9, v10, v11, v24);
    v22 = 0;
    v17 = 0;
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = [a1 altDSIDForDSID:v6];
  if (!v17)
  {
    _PCSNSError(a4, 90, @"unable to determine altDSID", v12, v13, v14, v15, v16, v24);
    v22 = 0;
    goto LABEL_7;
  }

  v18 = objc_alloc_init(MEMORY[0x1E697AA88]);
  [v18 setAltDSID:v17];
  [v18 setContext:*MEMORY[0x1E697AAD0]];
  v19 = [MEMORY[0x1E697AA80] fetchAccountWideSettingsDefaultWithForceFetch:0 configuration:v18 error:a4];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 walrus];
    v22 = [v21 enabled];
  }

  else
  {
    v22 = 0;
  }

LABEL_8:

  return v22;
}

+ (BOOL)accountEligibleForMBRestoreForAltDSID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v6 = getAKAccountManagerClass_softClass;
  v16 = getAKAccountManagerClass_softClass;
  if (!getAKAccountManagerClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getAKAccountManagerClass_block_invoke;
    v12[3] = &unk_1E7B18A90;
    v12[4] = &v13;
    __getAKAccountManagerClass_block_invoke(v12);
    v6 = v14[3];
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);
  v8 = [v6 sharedInstance];
  v9 = [v8 authKitAccountWithAltDSID:v5 error:a4];
  if (v9)
  {
    v10 = [v8 securityLevelForAccount:v9] != 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)accountEligibleForMBRestoreForDSID:(id)a3 error:(id *)a4
{
  v11 = [a1 altDSIDForDSID:a3];
  if (v11)
  {
    v12 = [a1 accountEligibleForMBRestoreForAltDSID:v11 error:a4];
  }

  else
  {
    _PCSNSError(a4, 90, @"unable to determine altDSID", v6, v7, v8, v9, v10, v14);
    v12 = 0;
  }

  return v12;
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return [(PCSAccountsModel *)v0 faultIfCurrentPersonaIsDataSeparated];
}

- (uint64_t)update
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no accounts found: %@", &v7, 0xCu);
  }

  objc_end_catch();
  v5 = *MEMORY[0x1E69E9840];
  return a3 & 1;
}

+ (void)accountForCurrentPersona
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unable to find account for persona %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end