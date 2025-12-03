@interface ICACAccountVerificationOperation
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation ICACAccountVerificationOperation

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = requestCopy;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling dialog request %{public}@", buf, 0x16u);
  }

  v10 = objc_alloc_init(ICStoreDialogResponseHandler);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__ICACAccountVerificationOperation_authenticateTask_handleDialogRequest_completion___block_invoke;
  v12[3] = &unk_1E7BF8DD8;
  v13 = completionCopy;
  v11 = completionCopy;
  [(ICStoreDialogResponseHandler *)v10 handleAMSDialogRequest:requestCopy completion:v12];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  verificationRequest = [(ICUserVerificationOperation *)self verificationRequest];
  verificationContext = [verificationRequest verificationContext];
  v7 = verificationContext;
  if (!errorCopy)
  {
    identityStore = [verificationContext identityStore];
    [identityStore _reloadForExternalChange];
  }

  responseHandler = [(ICUserVerificationOperation *)self responseHandler];
  v10 = responseHandler;
  if (responseHandler)
  {
    (*(responseHandler + 16))(responseHandler, errorCopy == 0, errorCopy);
  }

  v11.receiver = self;
  v11.super_class = ICACAccountVerificationOperation;
  [(ICAsyncOperation *)&v11 finishWithError:errorCopy];
}

- (void)execute
{
  v70 = *MEMORY[0x1E69E9840];
  verificationRequest = [(ICUserVerificationOperation *)self verificationRequest];
  verificationContext = [verificationRequest verificationContext];
  [verificationContext ACAccount];
  v5 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  aCAccountStore = [verificationContext ACAccountStore];
  interactionLevel = [verificationContext interactionLevel];
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (interactionLevel > 5)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1E7BF49E8[interactionLevel];
    }

    v9 = v8;
    *buf = 138543874;
    selfCopy5 = self;
    v66 = 2114;
    v67 = v9;
    v68 = 2114;
    v69 = v5;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing %{public}@ authentication for account %{public}@", buf, 0x20u);
  }

  if (v5 == 0.0 || !aCAccountStore)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ No account provided - skipping verification", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
    [(ICACAccountVerificationOperation *)self finishWithError:v14];
  }

  else
  {
    if (interactionLevel == 1)
    {
      v15 = 1;
    }

    else
    {
      if (interactionLevel == 4)
      {
        username = [*&v5 username];
        if ([username length])
        {
          ic_DSID = [*&v5 ic_DSID];
          longLongValue = [ic_DSID longLongValue];

          if (longLongValue)
          {
            [(ICACAccountVerificationOperation *)self finishWithError:0];
            goto LABEL_61;
          }
        }

        else
        {
        }
      }

      v16 = +[ICDefaults standardDefaults];
      shouldForceSilentAuthentications = [v16 shouldForceSilentAuthentications];

      if (shouldForceSilentAuthentications)
      {
        v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Overriding interaction level to be silent-only based on debug settings", buf, 0xCu);
        }

        interactionLevel = 1;
        v15 = 1;
      }

      else if (interactionLevel - 3 >= 2)
      {
        if (interactionLevel == 5)
        {
          v19 = +[ICDefaults standardDefaults];
          lastAllowedInteractiveAuthenticationTime = [v19 lastAllowedInteractiveAuthenticationTime];

          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v22 = v21;
          [lastAllowedInteractiveAuthenticationTime timeIntervalSinceReferenceDate];
          v15 = v22 - v23 <= 86400.0;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 2;
      }
    }

    v24 = +[ICDeviceInfo currentDeviceInfo];
    if ([v24 isAudioAccessory] && !v15)
    {
      if ([*&v5 ic_isActive])
      {
        v15 = 0;
      }

      else
      {
        v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Overriding interaction level to be silent-only for secondary account", buf, 0xCu);
        }

        v15 = 1;
      }
    }

    if (execute_sOnceToken != -1)
    {
      dispatch_once(&execute_sOnceToken, &__block_literal_global_18777);
    }

    ic_DSID2 = [*&v5 ic_DSID];
    v27 = ic_DSID2;
    v28 = &unk_1F2C921A0;
    if (ic_DSID2)
    {
      v28 = ic_DSID2;
    }

    v29 = v28;

    v58 = v29;
    v30 = [execute_sLastReauthenticationAttemptPerDSID objectForKey:v29];
    v31 = [MEMORY[0x1E695DF00] now];
    v32 = v31;
    v59 = v31;
    if (v30 && (v15 != 1 ? (v33 = 5.0) : (v33 = 60.0), [v31 timeIntervalSinceDate:v30], v32 = v59, v34 < v33))
    {
      v35 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [v59 timeIntervalSinceReferenceDate];
        v37 = v36;
        [(__CFString *)v30 timeIntervalSinceReferenceDate];
        *buf = 138543874;
        selfCopy5 = self;
        v66 = 2114;
        v67 = v30;
        v68 = 2048;
        v69 = v37 - v38;
        _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Skipping authentication attempt due to throttling. last attempt was at %{public}@ (%.2fs ago)", buf, 0x20u);
      }

      v39 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A278];
      v63 = @"Not allowing silent authentication because one was recently attempted already";
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v41 = [v39 errorWithDomain:@"ICError" code:-7402 userInfo:v40];
      [(ICACAccountVerificationOperation *)self finishWithError:v41];
    }

    else
    {
      [execute_sLastReauthenticationAttemptPerDSID setObject:v32 forKey:v29];
      if (v15 != 1)
      {
        v42 = +[ICDefaults standardDefaults];
        date = [MEMORY[0x1E695DF00] date];
        [v42 setLastAllowedInteractiveAuthenticationTime:date];
      }

      v40 = objc_alloc_init(MEMORY[0x1E698C7B0]);
      [v40 setAllowServerDialogs:interactionLevel != 1];
      [v40 setAuthenticationType:v15];
      [v40 setEnableAccountCreation:interactionLevel == 4];
      [v40 setCanMakeAccountActive:interactionLevel == 4];
      [v40 setIgnoreAccountConversion:interactionLevel == 1];
      debugReason = [verificationContext debugReason];
      v56 = v24;
      selfCopy6 = self;
      if (![(__CFString *)debugReason length])
      {

        debugReason = @"This action requires authentication to proceed";
      }

      [v40 setDebugReason:{debugReason, debugReason}];
      storeRequestContext = [verificationRequest storeRequestContext];
      if (!storeRequestContext)
      {
        ic_DSID3 = [*&v5 ic_DSID];
        if ([ic_DSID3 longLongValue])
        {
          ic_DSID4 = [*&v5 ic_DSID];
          v48 = [ICUserIdentity specificAccountWithDSID:ic_DSID4];
        }

        else
        {
          v48 = +[ICUserIdentity activeAccount];
        }

        storeRequestContext = [[ICStoreRequestContext alloc] initWithIdentity:v48];
      }

      v49 = [[ICAMSBagAdapter alloc] initWithRequestContext:storeRequestContext];
      v50 = [objc_alloc(MEMORY[0x1E698C7C8]) initWithAccount:*&v5 options:v40 bag:v49];
      v51 = v50;
      if (interactionLevel != 1)
      {
        [v50 setDelegate:selfCopy6];
      }

      performAuthentication = [v51 performAuthentication];
      if (([*&v5 ic_isActive] & 1) == 0)
      {
        [performAuthentication promiseWithTimeout:3.0];
        v54 = v53 = verificationRequest;

        performAuthentication = v54;
        verificationRequest = v53;
      }

      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __43__ICACAccountVerificationOperation_execute__block_invoke_16;
      v61[3] = &unk_1E7BF6078;
      v61[4] = selfCopy6;
      [performAuthentication addFinishBlock:v61];

      v24 = v56;
      v41 = v55;
    }
  }

LABEL_61:
}

void __43__ICACAccountVerificationOperation_execute__block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v4 msv_description];
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Authentication task complete error=%{public}@", buf, 0x16u);
    }

    v9 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696AA08];
    v13 = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v9 errorWithDomain:@"ICError" code:-7403 userInfo:v6];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Authentication task complete", buf, 0xCu);
    }

    v10 = 0;
  }

  [*(a1 + 32) finishWithError:v10];
}

uint64_t __43__ICACAccountVerificationOperation_execute__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v1 = execute_sLastReauthenticationAttemptPerDSID;
  execute_sLastReauthenticationAttemptPerDSID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end