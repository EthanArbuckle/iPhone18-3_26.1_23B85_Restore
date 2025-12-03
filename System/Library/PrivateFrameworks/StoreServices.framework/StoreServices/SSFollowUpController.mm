@interface SSFollowUpController
+ (id)sharedController;
- (SSFollowUpController)init;
- (id)_createFollowUpItemForIdentifier:(id)identifier userInfo:(id)info;
- (id)_createFollowUpItemForRenewCredentialsWithUserInfo:(id)info;
- (id)_dismissFollowUpWithIdentifier:(id)identifier;
- (id)_postFollowUpWithIdentifier:(id)identifier userInfo:(id)info;
- (id)dismissFollowUpWithIdentifier:(id)identifier account:(id)account;
- (id)pendingFollowUpWithIdentifier:(id)identifier;
- (id)postFollowUpWithIdentifier:(id)identifier account:(id)account userInfo:(id)info;
@end

@implementation SSFollowUpController

- (SSFollowUpController)init
{
  v8.receiver = self;
  v8.super_class = SSFollowUpController;
  v2 = [(SSFollowUpController *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getFLFollowUpControllerClass_softClass;
    v13 = getFLFollowUpControllerClass_softClass;
    if (!getFLFollowUpControllerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getFLFollowUpControllerClass_block_invoke;
      v9[3] = &unk_1E84AC2A8;
      v9[4] = &v10;
      __getFLFollowUpControllerClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [[v3 alloc] initWithClientIdentifier:@"com.apple.StoreServices.followup"];
    followUpController = v2->_followUpController;
    v2->_followUpController = v5;
  }

  return v2;
}

+ (id)sharedController
{
  if (sharedController_ss_once_token___COUNTER__ != -1)
  {
    +[SSFollowUpController sharedController];
  }

  v3 = sharedController_ss_once_object___COUNTER__;

  return v3;
}

void __40__SSFollowUpController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SSFollowUpController);
  v1 = sharedController_ss_once_object___COUNTER__;
  sharedController_ss_once_object___COUNTER__ = v0;
}

- (id)dismissFollowUpWithIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  if (!identifierCopy)
  {
    [SSFollowUpController dismissFollowUpWithIdentifier:account:];
  }

  v8 = [(SSFollowUpController *)self pendingFollowUpWithIdentifier:identifierCopy];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __62__SSFollowUpController_dismissFollowUpWithIdentifier_account___block_invoke;
  v16 = &unk_1E84B0AF0;
  objc_copyWeak(&v19, &location);
  v9 = accountCopy;
  v17 = v9;
  v18 = identifierCopy;
  v10 = [v8 thenWithBlock:&v13];
  v11 = [SSBinaryPromise promiseWithPromise:v10, v13, v14, v15, v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

id __62__SSFollowUpController_dismissFollowUpWithIdentifier_account___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!*(a1 + 32))
  {
    goto LABEL_4;
  }

  v5 = [v3 userInfo];
  v6 = getAAFollowUpUserInfoAccountIdentifier();
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [*(a1 + 32) backingAccount];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {

LABEL_4:
    v5 = [WeakRetained _dismissFollowUpWithIdentifier:*(a1 + 40)];
    v11 = [v5 promiseAdapter];
    goto LABEL_17;
  }

  v12 = +[SSLogConfig sharedFollowUpConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v16 = objc_opt_class();
    v32 = v5;
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v31 = v16;
    v19 = [v18 backingAccount];
    [v19 identifier];
    v33 = 138544130;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    v5 = v32;
    v38 = v37 = 2114;
    v39 = 2114;
    v40 = v7;
    LODWORD(v30) = 42;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v33, v30}];
      free(v20);
      SSFileLog(v12, @"%@", v22, v23, v24, v25, v26, v27, v21);
    }
  }

  else
  {
  }

  v28 = SSError(@"SSErrorDomain", 100, 0, @"Refusing to dismiss a pending follow-up. The follow-up was not for the specified account.");
  v11 = [SSPromise promiseWithError:v28];

LABEL_17:

  return v11;
}

- (id)pendingFollowUpWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SSFollowUpController pendingFollowUpWithIdentifier:];
  }

  v5 = objc_alloc_init(SSPromise);
  followUpController = [(SSFollowUpController *)self followUpController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__SSFollowUpController_pendingFollowUpWithIdentifier___block_invoke;
  v10[3] = &unk_1E84B0B40;
  v7 = v5;
  v11 = v7;
  v12 = identifierCopy;
  [followUpController pendingFollowUpItemsWithCompletion:v10];

  v8 = v7;
  return v7;
}

void __54__SSFollowUpController_pendingFollowUpWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v6 = *(a1 + 32);

    [v6 finishWithError:?];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SSFollowUpController_pendingFollowUpWithIdentifier___block_invoke_2;
    v8[3] = &unk_1E84B0B18;
    v8[4] = *(a1 + 40);
    v4 = [a2 _ss_firstObjectPassingTest:v8];
    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 finishWithResult:v4];
    }

    else
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, @"Unable to find a pending follow-up.");
      [v5 finishWithError:v7];
    }
  }
}

uint64_t __54__SSFollowUpController_pendingFollowUpWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)postFollowUpWithIdentifier:(id)identifier account:(id)account userInfo:(id)info
{
  identifierCopy = identifier;
  accountCopy = account;
  infoCopy = info;
  v11 = infoCopy;
  if (identifierCopy)
  {
    if (infoCopy)
    {
LABEL_3:
      v12 = [v11 mutableCopy];
      goto LABEL_6;
    }
  }

  else
  {
    [SSFollowUpController postFollowUpWithIdentifier:account:userInfo:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_6:
  v13 = v12;
  if (accountCopy)
  {
    backingAccount = [accountCopy backingAccount];
    identifier = [backingAccount identifier];
    v16 = getAAFollowUpUserInfoAccountIdentifier();
    [v13 setObject:identifier forKeyedSubscript:v16];

    altDSID = [accountCopy altDSID];
    if ([altDSID length])
    {
      v18 = getAAFollowUpUserInfoAltDSID();
      [v13 setObject:altDSID forKeyedSubscript:v18];
    }
  }

  v19 = [(SSFollowUpController *)self _postFollowUpWithIdentifier:identifierCopy userInfo:v13];

  return v19;
}

- (id)_createFollowUpItemForIdentifier:(id)identifier userInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  if (!identifierCopy)
  {
    [SSFollowUpController _createFollowUpItemForIdentifier:userInfo:];
  }

  if (![identifierCopy isEqualToString:@"com.apple.SSFollowUpIdentifier.RenewCredentials"] || (-[SSFollowUpController _createFollowUpItemForRenewCredentialsWithUserInfo:](self, "_createFollowUpItemForRenewCredentialsWithUserInfo:", infoCopy), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = +[SSLogConfig sharedFollowUpConfig];
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
      *v23 = 138543618;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2114;
      *&v23[14] = identifierCopy;
      v13 = *&v23[4];
      LODWORD(v22) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        v8 = 0;
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (id)_createFollowUpItemForRenewCredentialsWithUserInfo:(id)info
{
  v57 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = getAAFollowUpUserInfoAltDSID();
  v5 = [infoCopy objectForKeyedSubscript:v4];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = +[SSLogConfig sharedFollowUpConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

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
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v53) = 138543362;
      *(&v53 + 4) = objc_opt_class();
      v11 = *(&v53 + 4);
      LODWORD(v47) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v53, v47}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }

    else
    {
    }
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v20 = getFLFollowUpActionClass_softClass;
  v51 = getFLFollowUpActionClass_softClass;
  if (!getFLFollowUpActionClass_softClass)
  {
    *&v53 = MEMORY[0x1E69E9820];
    *(&v53 + 1) = 3221225472;
    v54 = __getFLFollowUpActionClass_block_invoke;
    v55 = &unk_1E84AC2A8;
    v56 = &v48;
    __getFLFollowUpActionClass_block_invoke(&v53);
    v20 = v49[3];
  }

  v21 = v20;
  _Block_object_dispose(&v48, 8);
  v22 = objc_alloc_init(v20);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v23 = getAAFollowUpActionPrimarySymbolLoc_ptr;
  v51 = getAAFollowUpActionPrimarySymbolLoc_ptr;
  if (!getAAFollowUpActionPrimarySymbolLoc_ptr)
  {
    *&v53 = MEMORY[0x1E69E9820];
    *(&v53 + 1) = 3221225472;
    v54 = __getAAFollowUpActionPrimarySymbolLoc_block_invoke;
    v55 = &unk_1E84AC2A8;
    v56 = &v48;
    v24 = AppleAccountLibrary();
    v25 = dlsym(v24, "AAFollowUpActionPrimary");
    *(v56[1] + 24) = v25;
    getAAFollowUpActionPrimarySymbolLoc_ptr = *(v56[1] + 24);
    v23 = v49[3];
  }

  _Block_object_dispose(&v48, 8);
  if (!v23)
  {
    [SSFollowUpController _createFollowUpItemForRenewCredentialsWithUserInfo:];
  }

  [v22 setIdentifier:*v23];
  v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_PRIMARY" value:&stru_1F503F418 table:@"Localizable"];
  [v22 setLabel:v27];

  v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE" value:&stru_1F503F418 table:@"Localizable"];

  if (+[SSDevice deviceIsInternalBuild])
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v30 = getAAFollowUpUserInfoClientNameSymbolLoc_ptr;
    v51 = getAAFollowUpUserInfoClientNameSymbolLoc_ptr;
    if (!getAAFollowUpUserInfoClientNameSymbolLoc_ptr)
    {
      *&v53 = MEMORY[0x1E69E9820];
      *(&v53 + 1) = 3221225472;
      v54 = __getAAFollowUpUserInfoClientNameSymbolLoc_block_invoke;
      v55 = &unk_1E84AC2A8;
      v56 = &v48;
      v31 = AppleAccountLibrary();
      v32 = dlsym(v31, "AAFollowUpUserInfoClientName");
      *(v56[1] + 24) = v32;
      getAAFollowUpUserInfoClientNameSymbolLoc_ptr = *(v56[1] + 24);
      v30 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v30)
    {
      [SSFollowUpController _createFollowUpItemForRenewCredentialsWithUserInfo:];
    }

    v33 = [infoCopy objectForKeyedSubscript:*v30];
    if ([v33 length])
    {
      v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE_BLAME" value:&stru_1F503F418 table:@"Localizable"];
      v36 = [v29 stringByAppendingFormat:v35, v33];

      v29 = v36;
    }
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v37 = getFLFollowUpItemClass_softClass;
  v51 = getFLFollowUpItemClass_softClass;
  if (!getFLFollowUpItemClass_softClass)
  {
    *&v53 = MEMORY[0x1E69E9820];
    *(&v53 + 1) = 3221225472;
    v54 = __getFLFollowUpItemClass_block_invoke;
    v55 = &unk_1E84AC2A8;
    v56 = &v48;
    __getFLFollowUpItemClass_block_invoke(&v53);
    v37 = v49[3];
  }

  v38 = v37;
  _Block_object_dispose(&v48, 8);
  v39 = objc_alloc_init(v37);
  v52 = v22;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  [v39 setActions:v40];

  [v39 setDisplayStyle:0];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v41 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  v51 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  if (!getFLGroupIdentifierAccountSymbolLoc_ptr)
  {
    *&v53 = MEMORY[0x1E69E9820];
    *(&v53 + 1) = 3221225472;
    v54 = __getFLGroupIdentifierAccountSymbolLoc_block_invoke;
    v55 = &unk_1E84AC2A8;
    v56 = &v48;
    v42 = CoreFollowUpLibrary();
    v43 = dlsym(v42, "FLGroupIdentifierAccount");
    *(v56[1] + 24) = v43;
    getFLGroupIdentifierAccountSymbolLoc_ptr = *(v56[1] + 24);
    v41 = v49[3];
  }

  _Block_object_dispose(&v48, 8);
  if (!v41)
  {
    [SSFollowUpController _createFollowUpItemForRenewCredentialsWithUserInfo:];
  }

  [v39 setGroupIdentifier:*v41];
  [v39 setInformativeText:v29];
  v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_TITLE" value:&stru_1F503F418 table:@"Localizable"];
  [v39 setTitle:v45];

  [v39 setUniqueIdentifier:@"com.apple.SSFollowUpIdentifier.RenewCredentials"];
  [v39 setUserInfo:infoCopy];

  return v39;
}

- (id)_dismissFollowUpWithIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SSFollowUpController _dismissFollowUpWithIdentifier:];
  }

  v5 = objc_alloc_init(SSBinaryPromise);
  followUpController = [(SSFollowUpController *)self followUpController];
  v10[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  completionHandlerAdapter = [(SSBinaryPromise *)v5 completionHandlerAdapter];
  [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v7 completion:completionHandlerAdapter];

  return v5;
}

- (id)_postFollowUpWithIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if (!identifierCopy)
  {
    [SSFollowUpController _postFollowUpWithIdentifier:userInfo:];
  }

  v8 = [(SSFollowUpController *)self _createFollowUpItemForIdentifier:identifierCopy userInfo:infoCopy];
  if (v8)
  {
    v9 = objc_alloc_init(SSBinaryPromise);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__SSFollowUpController__postFollowUpWithIdentifier_userInfo___block_invoke;
    v14[3] = &unk_1E84AC050;
    v14[4] = identifierCopy;
    [(SSBinaryPromise *)v9 addSuccessBlock:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SSFollowUpController__postFollowUpWithIdentifier_userInfo___block_invoke_56;
    v13[3] = &unk_1E84AD730;
    v13[4] = identifierCopy;
    [(SSBinaryPromise *)v9 addErrorBlock:v13];
    followUpController = [(SSFollowUpController *)self followUpController];
    completionHandlerAdapter = [(SSBinaryPromise *)v9 completionHandlerAdapter];
    [followUpController postFollowUpItem:v8 completion:completionHandlerAdapter];
  }

  else
  {
    followUpController = SSError(@"SSErrorDomain", 100, 0, @"Unable to create a FLFollowUpItem.");
    v9 = [SSBinaryPromise promiseWithError:followUpController];
  }

  return v9;
}

void __61__SSFollowUpController__postFollowUpWithIdentifier_userInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedFollowUpConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = *(a1 + 32);
  v16 = 138543362;
  v17 = v7;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v2, @"%@", v9, v10, v11, v12, v13, v14, v5);
LABEL_12:
  }
}

void __61__SSFollowUpController__postFollowUpWithIdentifier_userInfo___block_invoke_56(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedFollowUpConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  v18 = 138543618;
  v19 = v9;
  v20 = 2114;
  v21 = v3;
  LODWORD(v17) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17}];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
LABEL_12:
  }
}

- (void)dismissFollowUpWithIdentifier:account:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:account:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_createFollowUpItemForIdentifier:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_createFollowUpItemForRenewCredentialsWithUserInfo:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getFLGroupIdentifierAccount(void)"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createFollowUpItemForRenewCredentialsWithUserInfo:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAAFollowUpUserInfoClientName(void)"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createFollowUpItemForRenewCredentialsWithUserInfo:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAAFollowUpActionPrimary(void)"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_dismissFollowUpWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_postFollowUpWithIdentifier:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

@end