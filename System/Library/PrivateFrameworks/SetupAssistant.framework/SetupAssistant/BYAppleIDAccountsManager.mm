@interface BYAppleIDAccountsManager
+ (id)sharedManager;
- (AASetupAssistantService)aaService;
- (id)initForDelegateBundleIDs:(id)ds;
- (id)storedLoginContext;
- (void)attemptPostRestoreRenewForAccount:(id)account loginContext:(id)context allowFollowUp:(BOOL)up completion:(id)completion;
- (void)clearStoredLoginContext;
- (void)enableDataClassesForAccount:(id)account completion:(id)completion;
- (void)performSilentICDPUpgrade;
- (void)preloadDefaultLoginParametersWithBundleIDs:(id)ds;
- (void)repeatedlyAttemptPostRestoreRenewForAccount:(id)account loginContext:(id)context numberOfAttemptsAllowed:(unint64_t)allowed completion:(id)completion;
- (void)runPostRestoreRenewCredentialsIfNeeded;
@end

@implementation BYAppleIDAccountsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[BYAppleIDAccountsManager sharedManager];
  }

  v3 = sharedManager_instance_1;

  return v3;
}

uint64_t __41__BYAppleIDAccountsManager_sharedManager__block_invoke()
{
  sharedManager_instance_1 = objc_alloc_init(BYAppleIDAccountsManager);

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForDelegateBundleIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = BYAppleIDAccountsManager;
  v5 = [(BYAppleIDAccountsManager *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getAALoginPluginManagerClass_softClass;
    v16 = getAALoginPluginManagerClass_softClass;
    if (!getAALoginPluginManagerClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getAALoginPluginManagerClass_block_invoke;
      v12[3] = &unk_1E7D02730;
      v12[4] = &v13;
      __getAALoginPluginManagerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    sharedInstance = [v6 sharedInstance];
    appleIDLoginPluginManager = v5->_appleIDLoginPluginManager;
    v5->_appleIDLoginPluginManager = sharedInstance;

    [(AALoginPluginManager *)v5->_appleIDLoginPluginManager restrictToPluginBundleIDs:dsCopy];
    [(AALoginPluginManager *)v5->_appleIDLoginPluginManager setShouldStashLoginResponse:1];
  }

  return v5;
}

- (AASetupAssistantService)aaService
{
  aaService = self->_aaService;
  if (!aaService)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAASetupAssistantServiceClass_softClass;
    v13 = getAASetupAssistantServiceClass_softClass;
    if (!getAASetupAssistantServiceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAASetupAssistantServiceClass_block_invoke;
      v9[3] = &unk_1E7D02730;
      v9[4] = &v10;
      __getAASetupAssistantServiceClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_aaService;
    self->_aaService = v6;

    aaService = self->_aaService;
  }

  return aaService;
}

- (void)preloadDefaultLoginParametersWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = dsCopy;
  v5 = preloadDefaultLoginParametersWithBundleIDs__onceToken;
  v6 = dsCopy;
  if (v5 != -1)
  {
    dispatch_once(&preloadDefaultLoginParametersWithBundleIDs__onceToken, v7);
  }
}

void __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke_2;
  v4[3] = &unk_1E7D03330;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

id __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke_2(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Preload default login parameters", v4, 2u);
  }

  [*(*(a1 + 32) + 8) restrictToPluginBundleIDs:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setShouldSkipiTunesPlugin:0];
  return [*(*(a1 + 32) + 8) collectParametersForLoginRequest];
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2;
  block[3] = &unk_1E7D03470;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _BYIsInternalInstall();
    v5 = *(a1 + 32);
    if ((v4 & 1) != 0 || !v5)
    {
      v7 = 0;
    }

    else
    {
      v6 = MEMORY[0x1E696AEC0];
      v1 = [*(a1 + 32) domain];
      v5 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v1, objc_msgSend(*(a1 + 32), "code")];
      v7 = 1;
    }

    *buf = 138543362;
    v22 = v5;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Login delgates finished, error = %{public}@", buf, 0xCu);
    if (v7)
    {
    }
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2_cold_1(a1, v8);
  }

  if (*(a1 + 40) && !*(a1 + 32))
  {
    kdebug_trace();
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v10[1];
    v13 = [v10 aaService];
    v14 = [v13 appleID];
    v15 = [*(a1 + 48) aaService];
    v16 = [v15 password];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_36;
    v19[3] = &unk_1E7D02C10;
    v17 = *(a1 + 56);
    v20 = *(a1 + 64);
    [v12 notifyServicesOfLoginResponse:v11 forAppleID:v14 password:v16 rawPassword:v17 completion:v19];
  }

  else
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, 0, *(a1 + 32));
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_36(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  kdebug_trace();
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (_BYIsInternalInstall())
    {
      v9 = 0;
      v10 = v6;
    }

    else if (v6)
    {
      v11 = MEMORY[0x1E696AEC0];
      v3 = [v6 domain];
      v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Notify delegates success: %{public}@ error: %{public}@", buf, 0x16u);
    if (v9)
    {
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_43;
  block[3] = &unk_1E7D03448;
  v12 = *(a1 + 32);
  v18 = a2;
  v16 = v6;
  v17 = v12;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)enableDataClassesForAccount:(id)account completion:(id)completion
{
  v90 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__6;
  v79 = __Block_byref_object_dispose__6;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2050000000;
  v5 = getACAccountStoreClass_softClass_0;
  v84 = getACAccountStoreClass_softClass_0;
  if (!getACAccountStoreClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getACAccountStoreClass_block_invoke_0;
    v88 = &unk_1E7D02730;
    v89 = &v81;
    __getACAccountStoreClass_block_invoke_0(buf);
    v5 = v82[3];
  }

  v6 = v5;
  _Block_object_dispose(&v81, 8);
  v80 = objc_alloc_init(v5);
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([accountCopy aa_isPrimaryEmailVerified])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    provisionedDataclasses = [accountCopy provisionedDataclasses];
    v8 = [provisionedDataclasses countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (!v8)
    {
      goto LABEL_46;
    }

    v9 = *v72;
    obj = provisionedDataclasses;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v72 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v71 + 1) + 8 * v10);
        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v12 = getkAccountDataclassDeviceLocatorSymbolLoc_ptr;
        v84 = getkAccountDataclassDeviceLocatorSymbolLoc_ptr;
        if (!getkAccountDataclassDeviceLocatorSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getkAccountDataclassDeviceLocatorSymbolLoc_block_invoke;
          v88 = &unk_1E7D02730;
          v89 = &v81;
          v13 = AccountsLibrary();
          v14 = dlsym(v13, "kAccountDataclassDeviceLocator");
          *(v89[1] + 24) = v14;
          getkAccountDataclassDeviceLocatorSymbolLoc_ptr = *(v89[1] + 24);
          v12 = v82[3];
        }

        _Block_object_dispose(&v81, 8);
        if (!v12)
        {
LABEL_66:
          dlerror();
          abort_report_np();
          goto LABEL_68;
        }

        v15 = *v12;
        v16 = [v11 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          v81 = 0;
          v82 = &v81;
          v83 = 0x2020000000;
          v17 = getkAccountDataclassCloudPhotosSymbolLoc_ptr;
          v84 = getkAccountDataclassCloudPhotosSymbolLoc_ptr;
          if (!getkAccountDataclassCloudPhotosSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassCloudPhotosSymbolLoc_block_invoke;
            v88 = &unk_1E7D02730;
            v89 = &v81;
            v18 = AccountsLibrary();
            v19 = dlsym(v18, "kAccountDataclassCloudPhotos");
            *(v89[1] + 24) = v19;
            getkAccountDataclassCloudPhotosSymbolLoc_ptr = *(v89[1] + 24);
            v17 = v82[3];
          }

          _Block_object_dispose(&v81, 8);
          if (!v17)
          {
            goto LABEL_66;
          }

          v20 = *v17;
          if ([v11 isEqualToString:v20])
          {
            goto LABEL_22;
          }

          v81 = 0;
          v82 = &v81;
          v83 = 0x2020000000;
          v21 = getkAccountDataclassMediaStreamSymbolLoc_ptr;
          v84 = getkAccountDataclassMediaStreamSymbolLoc_ptr;
          if (!getkAccountDataclassMediaStreamSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassMediaStreamSymbolLoc_block_invoke;
            v88 = &unk_1E7D02730;
            v89 = &v81;
            v22 = AccountsLibrary();
            v23 = dlsym(v22, "kAccountDataclassMediaStream");
            *(v89[1] + 24) = v23;
            getkAccountDataclassMediaStreamSymbolLoc_ptr = *(v89[1] + 24);
            v21 = v82[3];
          }

          _Block_object_dispose(&v81, 8);
          if (!v21)
          {
            goto LABEL_66;
          }

          v24 = *v21;
          if ([v11 isEqualToString:v24])
          {

LABEL_22:
            goto LABEL_23;
          }

          v81 = 0;
          v82 = &v81;
          v83 = 0x2020000000;
          v25 = getkAccountDataclassSharedStreamsSymbolLoc_ptr;
          v84 = getkAccountDataclassSharedStreamsSymbolLoc_ptr;
          if (!getkAccountDataclassSharedStreamsSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassSharedStreamsSymbolLoc_block_invoke;
            v88 = &unk_1E7D02730;
            v89 = &v81;
            v26 = AccountsLibrary();
            v27 = dlsym(v26, "kAccountDataclassSharedStreams");
            *(v89[1] + 24) = v27;
            getkAccountDataclassSharedStreamsSymbolLoc_ptr = *(v89[1] + 24);
            v25 = v82[3];
          }

          _Block_object_dispose(&v81, 8);
          if (!v25)
          {
            goto LABEL_66;
          }

          v28 = *v25;
          v29 = [v11 isEqualToString:v28];

          if ((v29 & 1) == 0)
          {
            v81 = 0;
            v82 = &v81;
            v83 = 0x2020000000;
            v30 = getkAccountDataclassMailSymbolLoc_ptr;
            v84 = getkAccountDataclassMailSymbolLoc_ptr;
            if (!getkAccountDataclassMailSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getkAccountDataclassMailSymbolLoc_block_invoke;
              v88 = &unk_1E7D02730;
              v89 = &v81;
              v31 = AccountsLibrary();
              v32 = dlsym(v31, "kAccountDataclassMail");
              *(v89[1] + 24) = v32;
              getkAccountDataclassMailSymbolLoc_ptr = *(v89[1] + 24);
              v30 = v82[3];
            }

            _Block_object_dispose(&v81, 8);
            if (!v30)
            {
              goto LABEL_66;
            }

            v33 = *v30;
            v34 = [v11 isEqualToString:v33];

            if (v34)
            {
              aa_needsEmailConfiguration = [accountCopy aa_needsEmailConfiguration];
              goto LABEL_34;
            }

            v81 = 0;
            v82 = &v81;
            v83 = 0x2020000000;
            v36 = getkAccountDataclassNotesSymbolLoc_ptr;
            v84 = getkAccountDataclassNotesSymbolLoc_ptr;
            if (!getkAccountDataclassNotesSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getkAccountDataclassNotesSymbolLoc_block_invoke;
              v88 = &unk_1E7D02730;
              v89 = &v81;
              v37 = AccountsLibrary();
              v38 = dlsym(v37, "kAccountDataclassNotes");
              *(v89[1] + 24) = v38;
              getkAccountDataclassNotesSymbolLoc_ptr = *(v89[1] + 24);
              v36 = v82[3];
            }

            _Block_object_dispose(&v81, 8);
            if (!v36)
            {
              goto LABEL_66;
            }

            v39 = *v36;
            v40 = [v11 isEqualToString:v39];

            if (!v40)
            {
              goto LABEL_43;
            }

            if (([accountCopy aa_isPrimaryAccount] & 1) != 0 || (objc_msgSend(accountCopy, "aa_needsEmailConfiguration") & 1) == 0)
            {
              if ([accountCopy aa_isPrimaryAccount])
              {
LABEL_43:
                [accountCopy setEnabled:1 forDataclass:v11];
                goto LABEL_23;
              }

              aa_needsEmailConfiguration = [accountCopy aa_isManagedAppleID];
LABEL_34:
              if (aa_needsEmailConfiguration)
              {
                goto LABEL_23;
              }

              goto LABEL_43;
            }
          }
        }

LABEL_23:
        ++v10;
      }

      while (v8 != v10);
      provisionedDataclasses = obj;
      v41 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
      v8 = v41;
      if (!v41)
      {
LABEL_46:

        kdebug_trace();
        v42 = [v76[5] dataclassActionsForAccountSave:accountCopy];
        kdebug_trace();
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        provisionedDataclasses2 = [accountCopy provisionedDataclasses];
        v44 = [provisionedDataclasses2 countByEnumeratingWithState:&v67 objects:v85 count:16];
        if (v44)
        {
          v45 = *v68;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v68 != v45)
              {
                objc_enumerationMutation(provisionedDataclasses2);
              }

              v47 = *(*(&v67 + 1) + 8 * i);
              v48 = [v42 objectForKeyedSubscript:v47];
              if ([v48 count] == 1)
              {
                lastObject = [v48 lastObject];
                if ([lastObject type])
                {
                  v50 = _BYLoggingFacility();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    type = [lastObject type];
                    *buf = 134218242;
                    *&buf[4] = type;
                    *&buf[12] = 2114;
                    *&buf[14] = v47;
                    _os_log_impl(&dword_1B862F000, v50, OS_LOG_TYPE_DEFAULT, "Setting action %lu for dataclass %{public}@", buf, 0x16u);
                  }

                  [v62 setObject:lastObject forKey:v47];
                }
              }
            }

            v44 = [provisionedDataclasses2 countByEnumeratingWithState:&v67 objects:v85 count:16];
          }

          while (v44);
        }

        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v52 = getkAccountDataclassKeyValueSymbolLoc_ptr;
        v84 = getkAccountDataclassKeyValueSymbolLoc_ptr;
        if (!getkAccountDataclassKeyValueSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getkAccountDataclassKeyValueSymbolLoc_block_invoke;
          v88 = &unk_1E7D02730;
          v89 = &v81;
          v53 = AccountsLibrary();
          v54 = dlsym(v53, "kAccountDataclassKeyValue");
          *(v89[1] + 24) = v54;
          getkAccountDataclassKeyValueSymbolLoc_ptr = *(v89[1] + 24);
          v52 = v82[3];
        }

        _Block_object_dispose(&v81, 8);
        if (v52)
        {
          v55 = *v52;
          [accountCopy setEnabled:1 forDataclass:v55];

          break;
        }

        dlerror();
        abort_report_np();
LABEL_68:
        __break(1u);
      }
    }
  }

  kdebug_trace();
  v56 = _BYLoggingFacility();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v56, OS_LOG_TYPE_DEFAULT, "Saving Account...", buf, 2u);
  }

  v57 = v76[5];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke;
  v64[3] = &unk_1E7D034E8;
  v58 = completionCopy;
  v65 = v58;
  v66 = &v75;
  [v57 saveAccount:accountCopy withDataclassActions:v62 completion:v64];

  _Block_object_dispose(&v75, 8);
  v59 = *MEMORY[0x1E69E9840];
}

void __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  kdebug_trace();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke_2;
  v9[3] = &unk_1E7D034C0;
  v13 = a2;
  v10 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = _BYIsInternalInstall();
    v6 = *(a1 + 32);
    if ((v5 & 1) != 0 || !v6)
    {
      v8 = 0;
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v1 = [*(a1 + 32) domain];
      v6 = [v7 stringWithFormat:@"<Error domain: %@, code %ld>", v1, objc_msgSend(*(a1 + 32), "code")];
      v8 = 1;
    }

    *buf = 67109378;
    v14 = v4;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Enable dataclasses for account success = %d, error = %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  if (*(a1 + 56) != 1)
  {
    v9 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)runPostRestoreRenewCredentialsIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    if ([aa_primaryAppleAccount isAuthenticated])
    {
      storedLoginContext = _BYLoggingFacility();
      if (os_log_type_enabled(storedLoginContext, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "Post-restore renew unneccessary: primary account already authenticated";
LABEL_7:
        _os_log_impl(&dword_1B862F000, storedLoginContext, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    storedLoginContext = [(BYAppleIDAccountsManager *)self storedLoginContext];
    appleID = [storedLoginContext appleID];
    if (appleID)
    {
      v8 = appleID;
      rawPassword = [storedLoginContext rawPassword];
      if (rawPassword)
      {

LABEL_12:
        v11 = _BYLoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v16 = 3;
          _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Primary account is not authenticated; attempting %ld renews...", buf, 0xCu);
        }

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __66__BYAppleIDAccountsManager_runPostRestoreRenewCredentialsIfNeeded__block_invoke;
        v14[3] = &unk_1E7D027A8;
        v14[4] = self;
        [(BYAppleIDAccountsManager *)self repeatedlyAttemptPostRestoreRenewForAccount:aa_primaryAppleAccount loginContext:storedLoginContext numberOfAttemptsAllowed:3 completion:v14];
        goto LABEL_18;
      }

      continuationKey = [storedLoginContext continuationKey];

      if (continuationKey)
      {
        goto LABEL_12;
      }
    }

    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Unable to perform post-restore renew: login context has no data", buf, 2u);
    }

    goto LABEL_18;
  }

  storedLoginContext = _BYLoggingFacility();
  if (os_log_type_enabled(storedLoginContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "Unable to perform post-restore renew; no primary account!";
    goto LABEL_7;
  }

LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)repeatedlyAttemptPostRestoreRenewForAccount:(id)account loginContext:(id)context numberOfAttemptsAllowed:(unint64_t)allowed completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  v13 = completionCopy;
  if (allowed)
  {
    v14 = _BYLoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Attempting post-restore renew...", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke;
    v15[3] = &unk_1E7D03538;
    v18 = v13;
    allowedCopy = allowed;
    v15[4] = self;
    v16 = accountCopy;
    v17 = contextCopy;
    [(BYAppleIDAccountsManager *)self attemptPostRestoreRenewForAccount:v16 loginContext:v17 allowFollowUp:allowed == 1 completion:v15];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6959A48] defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  if (![v7 isAuthenticated])
  {
    v10 = *(a1 + 64);
    v11 = v10 != 0;
    v12 = v10 - 1;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = _BYLoggingFacility();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (a2 || v5)
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      *buf = 134218242;
      v36 = a2;
      v37 = 2112;
      v38 = v5;
      v16 = "Renew failed (%ld): %@";
      v17 = v14;
      v18 = 22;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      *buf = 0;
      v16 = "Renew succeeded, but we're not authenticated";
      v17 = v14;
      v18 = 2;
    }

    _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_16:

    v19 = _BYLoggingFacility();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v13 == 1)
    {
      if (v20)
      {
        *buf = 0;
        v21 = "Waiting for retry (1 attempt remaining)...";
        v22 = v19;
        v23 = 2;
LABEL_21:
        _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else if (v20)
    {
      *buf = 134217984;
      v36 = v13;
      v21 = "Waiting for retry (%ld attempts remaining)...";
      v22 = v19;
      v23 = 12;
      goto LABEL_21;
    }

    v24 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke_48;
    block[3] = &unk_1E7D03510;
    v30 = *(a1 + 32);
    v25 = *(&v30 + 1);
    v26 = *(a1 + 48);
    v34 = v13;
    v27 = *(a1 + 56);
    *&v28 = v26;
    *(&v28 + 1) = v27;
    v32 = v30;
    v33 = v28;
    dispatch_after(v24, MEMORY[0x1E69E96A0], block);

    goto LABEL_23;
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Account is now authenticated!", buf, 2u);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))();
  }

LABEL_23:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)attemptPostRestoreRenewForAccount:(id)account loginContext:(id)context allowFollowUp:(BOOL)up completion:(id)completion
{
  upCopy = up;
  v22[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  rawPassword = [contextCopy rawPassword];

  if (rawPassword)
  {
    rawPassword2 = [contextCopy rawPassword];
    [accountCopy _aa_setRawPassword:rawPassword2];
  }

  v14 = *MEMORY[0x1E6959AA8];
  v21[0] = *MEMORY[0x1E6959AA0];
  v21[1] = v14;
  v22[0] = MEMORY[0x1E695E118];
  v22[1] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v16 = [v15 mutableCopy];

  if (upCopy)
  {
    v17 = _BYLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Posting a followup for post-restore auth assistance", v20, 2u);
    }

    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AARenewShouldPostFollowUp"];
  }

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  [defaultStore renewCredentialsForAccount:accountCopy options:v16 completion:completionCopy];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)performSilentICDPUpgrade
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getCDPContextClass_softClass;
  v19 = getCDPContextClass_softClass;
  if (!getCDPContextClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getCDPContextClass_block_invoke;
    v13 = &unk_1E7D02730;
    v14 = &v16;
    __getCDPContextClass_block_invoke(buf);
    v2 = *(v17 + 24);
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  contextForPrimaryAccount = [v2 contextForPrimaryAccount];
  if (contextForPrimaryAccount)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Will perform silent ICDP upgrade", buf, 2u);
    }

    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = os_transaction_create();
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getCDPStateControllerClass_softClass;
    v24 = getCDPStateControllerClass_softClass;
    if (!getCDPStateControllerClass_softClass)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __getCDPStateControllerClass_block_invoke;
      v19 = &unk_1E7D02730;
      v20 = &v21;
      __getCDPStateControllerClass_block_invoke(&v16);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = [[v6 alloc] initWithContext:contextForPrimaryAccount];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__BYAppleIDAccountsManager_performSilentICDPUpgrade__block_invoke;
    v9[3] = &unk_1E7D03560;
    v9[4] = buf;
    [v8 handleCloudDataProtectionStateWithCompletion:v9];

    _Block_object_dispose(buf, 8);
  }
}

void __52__BYAppleIDAccountsManager_performSilentICDPUpgrade__block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v10 = 0;
      v11 = v8;
    }

    else if (v8)
    {
      v12 = MEMORY[0x1E696AEC0];
      v4 = [v8 domain];
      v11 = [v12 stringWithFormat:@"<Error domain: %@, code %ld>", v4, objc_msgSend(v8, "code")];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *buf = 67109634;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Did perform silent ICDP upgrade: shouldCompleteSignIn %d cloudDataProtectionEnabled %d error %{public}@", buf, 0x18u);
    if (v10)
    {
    }
  }

  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)storedLoginContext
{
  storedLoginContext = self->_storedLoginContext;
  if (!storedLoginContext)
  {
    sharedStorage = [getAALoginContextTransientStorageClass() sharedStorage];
    storedContext = [sharedStorage storedContext];
    v6 = self->_storedLoginContext;
    self->_storedLoginContext = storedContext;

    storedLoginContext = self->_storedLoginContext;
  }

  return storedLoginContext;
}

- (void)clearStoredLoginContext
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Clearing stored login context", v6, 2u);
  }

  sharedStorage = [getAALoginContextTransientStorageClass() sharedStorage];
  [sharedStorage clear];

  storedLoginContext = self->_storedLoginContext;
  self->_storedLoginContext = 0;
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) status];
  v5 = [*(a1 + 40) statusMessage];
  v6 = [*(a1 + 40) responseParameters];
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "loginResponse: %@, %@, %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end