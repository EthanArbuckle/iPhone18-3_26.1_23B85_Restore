@interface SSAuthenticateRequest
+ (BOOL)_isAuthkitEntitled;
+ (id)_accountToAuthenticateWithAuthenticationContext:(id)context;
- (BOOL)_shouldRunAuthenticationForAccount:(id)account;
- (BOOL)start;
- (NSString)logUUID;
- (SSAuthenticateRequest)init;
- (SSAuthenticateRequest)initWithAccount:(id)account;
- (SSAuthenticateRequest)initWithAuthenticationContext:(id)context;
- (SSAuthenticateRequest)initWithXPCEncoding:(id)encoding;
- (UIViewController)_parentViewController;
- (id)_verifyCredentialsOptionsFromUpdateAccountResponse:(id)response skipAuthKit:(BOOL)kit;
- (id)copyXPCEncoding;
- (id)run;
- (int64_t)_responseTypeForError:(id)error;
- (void)_handleDialogFromError:(id)error;
- (void)_performRemoteAuthenticationWithCompletion:(id)completion;
- (void)startWithAuthenticateResponseBlock:(id)block;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSAuthenticateRequest

+ (BOOL)_isAuthkitEntitled
{
  v2 = SSIsDaemon();
  getpid();
  if (!sandbox_check())
  {
    v3 = SecTaskCreateFromSelf(0);
    if (v3)
    {
      v4 = v3;
      error = 0;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.authkit.client.private", &error);
      if (error)
      {
        CFRelease(error);
      }

      if (v5)
      {
        CFRelease(v5);
        CFRelease(v4);
        return 1;
      }

      CFRelease(v4);
      if (v2)
      {
        return 1;
      }
    }

    else if (v2)
    {
      return 1;
    }

    v6 = SecTaskCreateFromSelf(0);
    if (v6)
    {
      v7 = v6;
      error = 0;
      v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.authkit.client.internal", &error);
      if (error)
      {
        CFRelease(error);
      }

      v2 = v8 != 0;
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (SSAuthenticateRequest)init
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v18 = 138543362;
  v19 = objc_opt_class();
  v7 = v19;
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v18, v16}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }

  v17.receiver = self;
  v17.super_class = SSAuthenticateRequest;
  return [(SSRequest *)&v17 init];
}

- (SSAuthenticateRequest)initWithAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v5 = [[SSAuthenticationContext alloc] initWithAccount:accountCopy];
    v6 = [(SSAuthenticateRequest *)self initWithAuthenticationContext:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSAuthenticateRequest;
    v6 = [(SSRequest *)&v8 init];
  }

  return v6;
}

- (SSAuthenticateRequest)initWithAuthenticationContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SSAuthenticateRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v6;
  }

  return v5;
}

- (id)run
{
  v3 = objc_alloc_init(SSPromise);
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__SSAuthenticateRequest_run__block_invoke;
  v10 = &unk_1E84AE400;
  objc_copyWeak(&v11, &location);
  [(SSPromise *)v3 addErrorBlock:&v7];
  v4 = [(SSPromise *)v3 completionHandlerAdapter:v7];
  [(SSAuthenticateRequest *)self startWithAuthenticateResponseBlock:v4];

  v5 = [(SSPromise *)v3 resultWithError:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __28__SSAuthenticateRequest_run__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v10 = objc_opt_class();
    v23 = v10;
    v11 = [WeakRetained logUUID];
    v12 = [WeakRetained authenticationContext];
    v13 = [v12 accountName];
    SSHashIfNeeded(v13);
    v24 = 138544130;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    v29 = v28 = 2114;
    v30 = 2112;
    v31 = v3;
    LODWORD(v22) = 42;
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v24, v22}];
      free(v14);
      SSFileLog(v5, @"%@", v16, v17, v18, v19, v20, v21, v15);
    }
  }

  else
  {
  }
}

- (void)startWithAuthenticateResponseBlock:(id)block
{
  v141 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = shouldLog;
  }

  else
  {
    v6 = shouldLog & 2;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = v7;
    logUUID = [(SSAuthenticateRequest *)self logUUID];
    authenticationContext = [(SSAuthenticateRequest *)self authenticationContext];
    authenticationContext2 = [(SSAuthenticateRequest *)self authenticationContext];
    accountName = [authenticationContext2 accountName];
    v13 = SSHashIfNeeded(accountName);
    *location = 138544130;
    *&location[4] = v7;
    v135 = 2114;
    v136 = logUUID;
    v137 = 2112;
    v138 = authenticationContext;
    v139 = 2114;
    v140 = v13;
    LODWORD(v118) = 42;
    v116 = location;
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v118}];
      free(v14);
      SSFileLog(v3, @"%@", v16, v17, v18, v19, v20, v21, v15);
    }
  }

  else
  {
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v24 = [bundleIdentifier isEqualToString:@"com.apple.appstored"];

  if (!-[SSAuthenticationContext forceDaemonAuthentication](self->_authenticationContext, "forceDaemonAuthentication") && !(v24 & 1 | (([objc_opt_class() _isAuthkitEntitled] & 1) == 0)) || +[SSAccountStore unitTestModeEnabled](SSAccountStore, "unitTestModeEnabled", v116))
  {
    v25 = objc_opt_class();
    authenticationContext3 = [(SSAuthenticateRequest *)self authenticationContext];
    v27 = [v25 _accountToAuthenticateWithAuthenticationContext:authenticationContext3];

    if (![v27 isDemoAccount])
    {
      goto LABEL_28;
    }

    v28 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v31 = shouldLog2;
    }

    else
    {
      v31 = shouldLog2 & 2;
    }

    if (v31)
    {
      v32 = objc_opt_class();
      v33 = v32;
      logUUID2 = [(SSAuthenticateRequest *)self logUUID];
      *location = 138543618;
      *&location[4] = v32;
      v135 = 2114;
      v136 = logUUID2;
      LODWORD(v118) = 22;
      v116 = location;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
LABEL_27:

LABEL_28:
        if ([(SSAuthenticateRequest *)self _shouldRunAuthenticationForAccount:v27, v116])
        {
          goto LABEL_83;
        }

        v42 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v42)
        {
          v42 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v42 shouldLog];
        if ([v42 shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject3 = [v42 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
        {
          v45 = objc_opt_class();
          v46 = v45;
          logUUID3 = [(SSAuthenticateRequest *)self logUUID];
          hashedDescription = [v27 hashedDescription];
          *location = 138543874;
          *&location[4] = v45;
          v135 = 2114;
          v136 = logUUID3;
          v137 = 2114;
          v138 = hashedDescription;
          LODWORD(v118) = 32;
          v117 = location;
          v49 = _os_log_send_and_compose_impl();

          if (!v49)
          {
LABEL_39:

            v56 = +[SSAccountStore defaultStore];
            if (!v27)
            {
              goto LABEL_65;
            }

            if ([v27 isActive])
            {
              goto LABEL_65;
            }

            activeAccount = [v56 activeAccount];
            v58 = activeAccount == 0;

            if (!v58)
            {
              goto LABEL_65;
            }

            v59 = +[SSLogConfig sharedAccountsAuthenticationConfig];
            if (!v59)
            {
              v59 = +[SSLogConfig sharedConfig];
            }

            shouldLog4 = [v59 shouldLog];
            if ([v59 shouldLogToDisk])
            {
              shouldLog4 |= 2u;
            }

            oSLogObject4 = [v59 OSLogObject];
            if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
            {
              shouldLog4 &= 2u;
            }

            if (shouldLog4)
            {
              v62 = objc_opt_class();
              v63 = v62;
              logUUID4 = [(SSAuthenticateRequest *)self logUUID];
              hashedDescription2 = [v27 hashedDescription];
              *location = 138543874;
              *&location[4] = v62;
              v135 = 2114;
              v136 = logUUID4;
              v137 = 2114;
              v138 = hashedDescription2;
              LODWORD(v118) = 32;
              v117 = location;
              v66 = _os_log_send_and_compose_impl();

              if (!v66)
              {
                goto LABEL_52;
              }

              oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v66 encoding:{4, location, v118}];
              free(v66);
              SSFileLog(v59, @"%@", v67, v68, v69, v70, v71, v72, oSLogObject4);
            }

LABEL_52:
            [v27 setActive:1];
            v133 = 0;
            v73 = [v56 saveAccount:v27 verifyCredentials:0 error:&v133];
            v74 = v133;
            if (v73)
            {
LABEL_64:

LABEL_65:
              v88 = objc_alloc_init(SSAuthenticateResponse);
              v89 = v88;
              if (v27)
              {
                [(SSAuthenticateResponse *)v88 setAuthenticatedAccount:v27];
                v90 = 4;
              }

              else
              {
                v103 = SSError(@"SSErrorDomain", 114, @"Nil Account", @"We can't authenticate a nil account.");
                [(SSAuthenticateResponse *)v89 setError:v103];

                v90 = 0;
              }

              [(SSAuthenticateResponse *)v89 setAuthenticateResponseType:v90, v117];

              if (v89)
              {
                if (blockCopy)
                {
                  v104 = dispatch_get_global_queue(0, 0);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke;
                  block[3] = &unk_1E84AC338;
                  v132 = blockCopy;
                  v131 = v89;
                  dispatch_async(v104, block);
                }

                [(SSRequest *)self _shutdownRequest];
LABEL_86:

                goto LABEL_87;
              }

LABEL_83:
              authenticationContext4 = [(SSAuthenticateRequest *)self authenticationContext];
              accountStoreOptions = [authenticationContext4 accountStoreOptions];
              v89 = [accountStoreOptions mutableCopy];

              logUUID5 = [(SSAuthenticateRequest *)self logUUID];
              [(SSAuthenticateResponse *)v89 setObject:logUUID5 forKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];

              _parentViewController = [(SSAuthenticateRequest *)self _parentViewController];

              if (_parentViewController)
              {
                v109 = MEMORY[0x1E696B098];
                _parentViewController2 = [(SSAuthenticateRequest *)self _parentViewController];
                v111 = [v109 valueWithNonretainedObject:_parentViewController2];
                [(SSAuthenticateResponse *)v89 setObject:v111 forKeyedSubscript:@"SSAccountStoreAuthKitPresentingViewController"];
              }

              v112 = +[SSAccountStore defaultStore];
              v113 = [v112 updateAccountWithAuthKit:v27 store:0 options:v89];

              objc_initWeak(location, self);
              v127[0] = MEMORY[0x1E69E9820];
              v127[1] = 3221225472;
              v127[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_2;
              v127[3] = &unk_1E84AE450;
              objc_copyWeak(&v128, location);
              v129 = 1;
              v127[4] = self;
              v114 = [v113 thenWithBlock:v127];
              v124[0] = MEMORY[0x1E69E9820];
              v124[1] = 3221225472;
              v124[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_4;
              v124[3] = &unk_1E84AE478;
              objc_copyWeak(&v126, location);
              v115 = blockCopy;
              v125 = v115;
              [v114 addErrorBlock:v124];
              v121[0] = MEMORY[0x1E69E9820];
              v121[1] = 3221225472;
              v121[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_7;
              v121[3] = &unk_1E84AE4A0;
              objc_copyWeak(&v123, location);
              v122 = v115;
              [v114 addSuccessBlock:v121];

              objc_destroyWeak(&v123);
              objc_destroyWeak(&v126);

              objc_destroyWeak(&v128);
              objc_destroyWeak(location);

              goto LABEL_86;
            }

            v75 = +[SSLogConfig sharedAccountsAuthenticationConfig];
            if (!v75)
            {
              v75 = +[SSLogConfig sharedConfig];
            }

            shouldLog5 = [v75 shouldLog];
            if ([v75 shouldLogToDisk])
            {
              shouldLog5 |= 2u;
            }

            oSLogObject5 = [v75 OSLogObject];
            if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
            {
              shouldLog5 &= 2u;
            }

            if (shouldLog5)
            {
              logUUID6 = [(SSAuthenticateRequest *)self logUUID];
              v79 = objc_opt_class();
              *location = 138543874;
              *&location[4] = logUUID6;
              v135 = 2114;
              v136 = v79;
              v137 = 2112;
              v138 = v74;
              v80 = v79;
              LODWORD(v118) = 32;
              v117 = location;
              v81 = _os_log_send_and_compose_impl();

              if (!v81)
              {
LABEL_63:

                goto LABEL_64;
              }

              oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v81 encoding:{4, location, v118}];
              free(v81);
              SSFileLog(v75, @"%@", v82, v83, v84, v85, v86, v87, oSLogObject5);
            }

            goto LABEL_63;
          }

          oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v49 encoding:{4, location, v118}];
          free(v49);
          SSFileLog(v42, @"%@", v50, v51, v52, v53, v54, v55, oSLogObject3);
        }

        goto LABEL_39;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, location, v118}];
      free(v35);
      SSFileLog(v28, @"%@", v36, v37, v38, v39, v40, v41, oSLogObject2);
    }

    goto LABEL_27;
  }

  v91 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v91)
  {
    v91 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v91 shouldLog];
  if ([v91 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject6 = [v91 OSLogObject];
  if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog6 &= 2u;
  }

  if (!shouldLog6)
  {
    goto LABEL_76;
  }

  v94 = objc_opt_class();
  *location = 138543362;
  *&location[4] = v94;
  v95 = v94;
  LODWORD(v118) = 12;
  v96 = _os_log_send_and_compose_impl();

  if (v96)
  {
    oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v96 encoding:{4, location, v118}];
    free(v96);
    SSFileLog(v91, @"%@", v97, v98, v99, v100, v101, v102, oSLogObject6);
LABEL_76:
  }

  [(SSAuthenticateRequest *)self _performRemoteAuthenticationWithCompletion:blockCopy];
LABEL_87:
}

SSPromise *__60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_alloc_init(SSPromise);
  v6 = [v3 updatedAccount];
  v7 = [v6 backingAccount];

  v8 = [WeakRetained _verifyCredentialsOptionsFromUpdateAccountResponse:v3 skipAuthKit:*(a1 + 48)];
  v9 = +[SSAccountStore defaultStore];
  v10 = [v9 backingAccountStore];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_3;
  v17[3] = &unk_1E84AE428;
  objc_copyWeak(&v21, (a1 + 40));
  v11 = v3;
  v12 = *(a1 + 32);
  v18 = v11;
  v19 = v12;
  v13 = v5;
  v20 = v13;
  [v10 verifyCredentialsForAccount:v7 options:v8 completion:v17];
  v14 = v20;
  v15 = v13;

  objc_destroyWeak(&v21);
  return v13;
}

void __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_3(id *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = objc_alloc_init(SSAuthenticateResponse);
  -[SSAuthenticateResponse setCredentialSource:](v7, "setCredentialSource:", [a1[4] credentialSource]);
  if (v11)
  {
    v8 = [[SSAccount alloc] initWithBackingAccount:v11];
    [(SSAuthenticateResponse *)v7 setAuthenticatedAccount:v8];

    [(SSAuthenticateResponse *)v7 setAuthenticateResponseType:4];
    v9 = +[SSAccountStore defaultStore];
    [v9 clearCachedAccounts];

    +[SSAccountStore resetExpirationForTokenType:](SSAccountStore, "resetExpirationForTokenType:", [*(a1[5] + 12) tokenType]);
  }

  else
  {
    [a1[5] _handleDialogFromError:v5];
    -[SSAuthenticateResponse setAuthenticateResponseType:](v7, "setAuthenticateResponseType:", [WeakRetained _responseTypeForError:v5]);
    [(SSAuthenticateResponse *)v7 setError:v5];
    v10 = [v5 userInfo];
    [(SSAuthenticateResponse *)v7 setResponseDictionary:v10];
  }

  [a1[6] finishWithResult:v7];
}

void __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E698DB28]];

    if (v6)
    {
      v7 = objc_alloc_init(SSAuthenticateResponse);
      -[SSAuthenticateResponse setAuthenticateResponseType:](v7, "setAuthenticateResponseType:", [WeakRetained _responseTypeForError:v3]);
      [(SSAuthenticateResponse *)v7 setError:v3];
      v8 = [v3 userInfo];
      [(SSAuthenticateResponse *)v7 setResponseDictionary:v8];

      v9 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_5;
      block[3] = &unk_1E84AC338;
      v10 = *(a1 + 32);
      v20 = v7;
      v21 = v10;
      v11 = v7;
      dispatch_async(v9, block);
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_6;
      v16 = &unk_1E84AC338;
      v18 = *(a1 + 32);
      v17 = v3;
      dispatch_async(v12, &v13);

      v11 = v18;
    }
  }

  [WeakRetained _shutdownRequest];
}

void __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v2 error];
  (*(v1 + 16))(v1, v2, v3);
}

void __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_8;
    v10 = &unk_1E84AC338;
    v12 = v5;
    v11 = v3;
    dispatch_async(v6, &v7);
  }

  [WeakRetained _shutdownRequest];
}

void __60__SSAuthenticateRequest_startWithAuthenticateResponseBlock___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v2 error];
  (*(v1 + 16))(v1, v2, v3);
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SSAuthenticateRequest_start__block_invoke;
  v3[3] = &unk_1E84AE4C8;
  v3[4] = self;
  [(SSAuthenticateRequest *)self startWithAuthenticateResponseBlock:v3];
  return 1;
}

void __30__SSAuthenticateRequest_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSAuthenticateRequest_start__block_invoke_2;
  block[3] = &unk_1E84AC078;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __30__SSAuthenticateRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 authenticateRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    if (objc_opt_respondsToSelector())
    {
      [v2 requestDidFinish:*(a1 + 32)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 request:*(a1 + 32) didFailWithError:*(a1 + 48)];
  }
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSAuthenticateRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84AE4F0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSAuthenticateRequest *)self startWithAuthenticateResponseBlock:v6];
}

uint64_t __50__SSAuthenticateRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SSAuthenticateRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

- (SSAuthenticateRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSAuthenticateRequest;
    v6 = [(SSRequest *)&v12 init];
    if (v6)
    {
      v8 = [SSAuthenticationContext alloc];
      v9 = xpc_dictionary_get_value(v5, "50");
      v10 = [(SSAuthenticationContext *)v8 initWithXPCEncoding:v9];
      authenticationContext = v6->_authenticationContext;
      v6->_authenticationContext = v10;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (NSString)logUUID
{
  authenticationContext = [(SSAuthenticateRequest *)self authenticationContext];
  logUUID = [authenticationContext logUUID];

  return logUUID;
}

+ (id)_accountToAuthenticateWithAuthenticationContext:(id)context
{
  v181 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  altDSID = [contextCopy altDSID];
  requiredUniqueIdentifier = [contextCopy requiredUniqueIdentifier];
  accountName = [contextCopy accountName];
  accountScope = [contextCopy accountScope];
  logUUID = [contextCopy logUUID];
  v6 = off_1E84AB000;
  v166 = requiredUniqueIdentifier;
  if (altDSID || requiredUniqueIdentifier)
  {
    accountName2 = accountName;
  }

  else
  {
    accountName2 = accountName;
    if (!accountName)
    {
      v8 = +[SSAccountStore defaultStore];
      demoAccount = [v8 demoAccount];
      accountName2 = [demoAccount accountName];

      if (accountName2)
      {
        v10 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v12 = shouldLog | 2;
        }

        else
        {
          v12 = shouldLog;
        }

        oSLogObject = [v10 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 & 2;
        }

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = AMSHashIfNeeded();
          v169 = 138543874;
          v170 = v15;
          v171 = 2114;
          v172 = logUUID;
          v173 = 2114;
          v174 = v16;
          LODWORD(v163) = 32;
          v157 = &v169;
          v17 = _os_log_send_and_compose_impl();

          if (v17)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v169, v163}];
            free(v17);
            SSFileLog(v10, @"%@", v19, v20, v21, v22, v23, v24, v18);
          }
        }

        else
        {
        }

        v6 = off_1E84AB000;
      }
    }
  }

  v25 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog2 | 2;
  }

  else
  {
    v27 = shouldLog2;
  }

  oSLogObject2 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 & 2;
  }

  v167 = accountName2;
  if (v29)
  {
    v30 = objc_opt_class();
    v31 = v30;
    v32 = SSHashIfNeeded(altDSID);
    v33 = [v166 description];
    v34 = SSHashIfNeeded(v33);
    SSHashIfNeeded(accountName2);
    v36 = v35 = altDSID;
    v169 = 138544642;
    v170 = v30;
    v171 = 2114;
    v172 = logUUID;
    v173 = 2114;
    v174 = v32;
    v175 = 2114;
    v176 = v34;
    v177 = 2114;
    v178 = v36;
    v179 = 2048;
    v37 = accountScope;
    v180 = accountScope;
    LODWORD(v163) = 62;
    v158 = &v169;
    v38 = _os_log_send_and_compose_impl();

    altDSID = v35;
    accountName2 = v167;

    v6 = off_1E84AB000;
    if (!v38)
    {
      goto LABEL_32;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v169, v163}];
    free(v38);
    SSFileLog(v25, @"%@", v39, v40, v41, v42, v43, v44, oSLogObject2);
  }

  else
  {
    v37 = accountScope;
  }

LABEL_32:
  v45 = MEMORY[0x1E698C4C8];
  if (!v37)
  {
    v45 = MEMORY[0x1E698C4C0];
  }

  v46 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:{*v45, v158}];
  v47 = v166;
  v48 = [v46 ams_iTunesAccountWithAltDSID:altDSID DSID:v166 username:accountName2];
  if (v48)
  {
    v49 = [[SSAccount alloc] initWithBackingAccount:v48];
    if (v49)
    {
      v50 = v49;
      sharedAccountsAuthenticationConfig = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
      if (!sharedAccountsAuthenticationConfig)
      {
        sharedAccountsAuthenticationConfig = [(__objc2_class *)v6[75] sharedConfig];
      }

      shouldLog3 = [sharedAccountsAuthenticationConfig shouldLog];
      if ([sharedAccountsAuthenticationConfig shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [sharedAccountsAuthenticationConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v54 = shouldLog3;
      }

      else
      {
        v54 = shouldLog3 & 2;
      }

      if (v54)
      {
        v55 = objc_opt_class();
        v56 = v55;
        [(SSAccount *)v50 hashedDescription];
        v58 = v57 = altDSID;
        v169 = 138543874;
        v170 = v55;
        v171 = 2114;
        v172 = logUUID;
        v173 = 2114;
        v174 = v58;
        LODWORD(v163) = 32;
        v159 = &v169;
        v59 = _os_log_send_and_compose_impl();

        altDSID = v57;
        v47 = v166;

        v60 = contextCopy;
        if (!v59)
        {
LABEL_59:

          v6 = off_1E84AB000;
          goto LABEL_63;
        }

        oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:{4, &v169, v163}];
        free(v59);
        SSFileLog(sharedAccountsAuthenticationConfig, @"%@", v61, v62, v63, v64, v65, v66, oSLogObject3);
      }

      else
      {
        v60 = contextCopy;
      }

      goto LABEL_59;
    }
  }

  v67 = [accountName2 length];
  v60 = contextCopy;
  if (!v67)
  {
LABEL_121:
    sharedAccountsAuthenticationConfig2 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig2)
    {
      sharedAccountsAuthenticationConfig2 = [(__objc2_class *)v6[75] sharedConfig];
    }

    shouldLog4 = [sharedAccountsAuthenticationConfig2 shouldLog];
    if ([sharedAccountsAuthenticationConfig2 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [sharedAccountsAuthenticationConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v146 = shouldLog4;
    }

    else
    {
      v146 = shouldLog4 & 2;
    }

    if (v146)
    {
      v147 = objc_opt_class();
      v169 = 138543618;
      v170 = v147;
      v171 = 2114;
      v172 = logUUID;
      v148 = v147;
      LODWORD(v163) = 22;
      v149 = _os_log_send_and_compose_impl();

      if (!v149)
      {
LABEL_132:
        v50 = 0;
        goto LABEL_133;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v149 encoding:{4, &v169, v163}];
      free(v149);
      SSFileLog(sharedAccountsAuthenticationConfig2, @"%@", v150, v151, v152, v153, v154, v155, oSLogObject4);
    }

    goto LABEL_132;
  }

  sharedAccountsAuthenticationConfig3 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
  if (!sharedAccountsAuthenticationConfig3)
  {
    sharedAccountsAuthenticationConfig3 = [(__objc2_class *)v6[75] sharedConfig];
  }

  shouldLog5 = [sharedAccountsAuthenticationConfig3 shouldLog];
  if ([sharedAccountsAuthenticationConfig3 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [sharedAccountsAuthenticationConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v71 = shouldLog5;
  }

  else
  {
    v71 = shouldLog5 & 2;
  }

  if (v71)
  {
    v72 = objc_opt_class();
    v73 = v72;
    SSHashIfNeeded(v167);
    v75 = v74 = altDSID;
    v169 = 138543874;
    v170 = v72;
    v171 = 2114;
    v172 = logUUID;
    v173 = 2114;
    v174 = v75;
    LODWORD(v163) = 32;
    v159 = &v169;
    v76 = _os_log_send_and_compose_impl();

    altDSID = v74;
    v47 = v166;
    v60 = contextCopy;

    v77 = accountScope;
    if (!v76)
    {
      goto LABEL_62;
    }

    oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v76 encoding:{4, &v169, v163}];
    free(v76);
    SSFileLog(sharedAccountsAuthenticationConfig3, @"%@", v78, v79, v80, v81, v82, v83, oSLogObject5);
  }

  else
  {
    v77 = accountScope;
  }

LABEL_62:
  v50 = objc_alloc_init(SSAccount);
  [(SSAccount *)v50 setAccountName:v167];
  [(SSAccount *)v50 setAccountScope:v77];
  v6 = off_1E84AB000;
  if (!v50)
  {
    goto LABEL_121;
  }

LABEL_63:
  altDSID2 = [(SSAccount *)v50 altDSID];
  if (![altDSID2 length])
  {
    altDSID3 = [v60 altDSID];

    if (!altDSID3)
    {
      goto LABEL_78;
    }

    sharedAccountsAuthenticationConfig4 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig4)
    {
      sharedAccountsAuthenticationConfig4 = [(__objc2_class *)v6[75] sharedConfig];
    }

    shouldLog6 = [sharedAccountsAuthenticationConfig4 shouldLog];
    if ([sharedAccountsAuthenticationConfig4 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject6 = [sharedAccountsAuthenticationConfig4 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
    {
      v89 = shouldLog6;
    }

    else
    {
      v89 = shouldLog6 & 2;
    }

    if (v89)
    {
      v90 = objc_opt_class();
      v169 = 138543618;
      v170 = v90;
      v171 = 2114;
      v172 = logUUID;
      v91 = v90;
      LODWORD(v163) = 22;
      v160 = &v169;
      v92 = _os_log_send_and_compose_impl();

      if (!v92)
      {
LABEL_76:

        altDSID2 = [v60 altDSID];
        [(SSAccount *)v50 setAltDSID:altDSID2];
        v6 = off_1E84AB000;
        goto LABEL_77;
      }

      oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v92 encoding:{4, &v169, v163}];
      free(v92);
      SSFileLog(sharedAccountsAuthenticationConfig4, @"%@", v93, v94, v95, v96, v97, v98, oSLogObject6);
    }

    goto LABEL_76;
  }

LABEL_77:

LABEL_78:
  uniqueIdentifier = [(SSAccount *)v50 uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    requiredUniqueIdentifier2 = [v60 requiredUniqueIdentifier];

    if (!requiredUniqueIdentifier2)
    {
      goto LABEL_93;
    }

    sharedAccountsAuthenticationConfig5 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig5)
    {
      sharedAccountsAuthenticationConfig5 = [(__objc2_class *)v6[75] sharedConfig];
    }

    shouldLog7 = [sharedAccountsAuthenticationConfig5 shouldLog];
    if ([sharedAccountsAuthenticationConfig5 shouldLogToDisk])
    {
      shouldLog7 |= 2u;
    }

    oSLogObject7 = [sharedAccountsAuthenticationConfig5 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
    {
      v104 = shouldLog7;
    }

    else
    {
      v104 = shouldLog7 & 2;
    }

    if (v104)
    {
      v105 = objc_opt_class();
      v169 = 138543618;
      v170 = v105;
      v171 = 2114;
      v172 = logUUID;
      v106 = v105;
      LODWORD(v163) = 22;
      v161 = &v169;
      v107 = _os_log_send_and_compose_impl();

      if (!v107)
      {
LABEL_91:

        uniqueIdentifier = [v60 requiredUniqueIdentifier];
        [(SSAccount *)v50 setUniqueIdentifier:uniqueIdentifier];
        v6 = off_1E84AB000;
        goto LABEL_92;
      }

      oSLogObject7 = [MEMORY[0x1E696AEC0] stringWithCString:v107 encoding:{4, &v169, v163}];
      free(v107);
      SSFileLog(sharedAccountsAuthenticationConfig5, @"%@", v108, v109, v110, v111, v112, v113, oSLogObject7);
    }

    goto LABEL_91;
  }

LABEL_92:

LABEL_93:
  if ([v167 length])
  {
    [(SSAccount *)v50 setAccountName:v167];
  }

  password = [v60 password];

  if (password)
  {
    sharedAccountsAuthenticationConfig6 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig6)
    {
      sharedAccountsAuthenticationConfig6 = [(__objc2_class *)v6[75] sharedConfig];
    }

    shouldLog8 = [sharedAccountsAuthenticationConfig6 shouldLog];
    if ([sharedAccountsAuthenticationConfig6 shouldLogToDisk])
    {
      shouldLog8 |= 2u;
    }

    oSLogObject8 = [sharedAccountsAuthenticationConfig6 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
    {
      v118 = shouldLog8;
    }

    else
    {
      v118 = shouldLog8 & 2;
    }

    if (v118)
    {
      v119 = objc_opt_class();
      v169 = 138543618;
      v170 = v119;
      v171 = 2114;
      v172 = logUUID;
      v120 = v119;
      LODWORD(v163) = 22;
      v162 = &v169;
      v121 = _os_log_send_and_compose_impl();

      if (!v121)
      {
LABEL_107:

        password2 = [v60 password];
        [(SSAccount *)v50 setRawPassword:password2];

        v6 = off_1E84AB000;
        goto LABEL_108;
      }

      oSLogObject8 = [MEMORY[0x1E696AEC0] stringWithCString:v121 encoding:{4, &v169, v163}];
      free(v121);
      SSFileLog(sharedAccountsAuthenticationConfig6, @"%@", v122, v123, v124, v125, v126, v127, oSLogObject8);
    }

    goto LABEL_107;
  }

LABEL_108:
  passwordEquivalentToken = [v60 passwordEquivalentToken];

  if (!passwordEquivalentToken)
  {
    goto LABEL_134;
  }

  sharedAccountsAuthenticationConfig7 = [(__objc2_class *)v6[75] sharedAccountsAuthenticationConfig];
  if (!sharedAccountsAuthenticationConfig7)
  {
    sharedAccountsAuthenticationConfig7 = [(__objc2_class *)v6[75] sharedConfig];
  }

  shouldLog9 = [sharedAccountsAuthenticationConfig7 shouldLog];
  if ([sharedAccountsAuthenticationConfig7 shouldLogToDisk])
  {
    shouldLog9 |= 2u;
  }

  oSLogObject9 = [sharedAccountsAuthenticationConfig7 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_INFO))
  {
    v133 = shouldLog9;
  }

  else
  {
    v133 = shouldLog9 & 2;
  }

  if (!v133)
  {
    goto LABEL_119;
  }

  v134 = objc_opt_class();
  v169 = 138543618;
  v170 = v134;
  v171 = 2114;
  v172 = logUUID;
  v135 = v134;
  LODWORD(v163) = 22;
  v136 = _os_log_send_and_compose_impl();

  if (v136)
  {
    oSLogObject9 = [MEMORY[0x1E696AEC0] stringWithCString:v136 encoding:{4, &v169, v163}];
    free(v136);
    SSFileLog(sharedAccountsAuthenticationConfig7, @"%@", v137, v138, v139, v140, v141, v142, oSLogObject9);
LABEL_119:
  }

  sharedAccountsAuthenticationConfig2 = [v60 passwordEquivalentToken];
  [(SSAccount *)v50 setPasswordEquivalentToken:sharedAccountsAuthenticationConfig2];
LABEL_133:

LABEL_134:

  return v50;
}

- (void)_handleDialogFromError:(id)error
{
  v70 = *MEMORY[0x1E69E9840];
  userInfo = [error userInfo];
  v5 = *MEMORY[0x1E698C4F8];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E698C4F8]];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    userInfo2 = [v8 userInfo];

    v7 = [userInfo2 objectForKeyedSubscript:v5];
    userInfo = userInfo2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v63];
    v11 = v63;

    if (!v11)
    {
LABEL_18:

      v7 = v10;
      goto LABEL_19;
    }

    v12 = +[SSLogConfig sharedAccountsConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    selfCopy = self;
    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      logUUID = [(SSAuthenticateRequest *)self logUUID];
      v64 = 138543874;
      v65 = v16;
      v66 = 2114;
      v67 = logUUID;
      v68 = 2114;
      v69 = v11;
      LODWORD(v59) = 32;
      v58 = &v64;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_17:

        v10 = 0;
        self = selfCopy;
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v64, v59}];
      free(v19);
      SSFileLog(v12, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
    }

    goto LABEL_17;
  }

LABEL_19:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = +[SSLogConfig sharedAccountsConfig];
    if (!v41)
    {
      v41 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v41 shouldLog];
    if ([v41 shouldLogToDisk])
    {
      v45 = shouldLog2 | 2;
    }

    else
    {
      v45 = shouldLog2;
    }

    oSLogObject2 = [v41 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v47 = v45;
    }

    else
    {
      v47 = v45 & 2;
    }

    if (v47)
    {
      v48 = objc_opt_class();
      v49 = v48;
      logUUID2 = [(SSAuthenticateRequest *)self logUUID];
      v64 = 138543874;
      v65 = v48;
      v66 = 2114;
      v67 = logUUID2;
      v68 = 2112;
      v69 = v7;
      LODWORD(v59) = 32;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
        goto LABEL_46;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v64, v59}];
      free(v51);
      SSFileLog(v41, @"%@", v52, v53, v54, v55, v56, v57, oSLogObject2);
    }

    goto LABEL_46;
  }

  if (v7)
  {
    v26 = +[SSLogConfig sharedAccountsConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog3 | 2;
    }

    else
    {
      v28 = shouldLog3;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v32 = v31;
      logUUID3 = [(SSAuthenticateRequest *)self logUUID];
      v64 = 138543874;
      v65 = v31;
      v66 = 2114;
      v67 = logUUID3;
      v68 = 2112;
      v69 = v7;
      LODWORD(v59) = 32;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_33:

        v41 = [objc_alloc(MEMORY[0x1E698CB50]) initWithRequest:v7];
        present = [v41 present];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __48__SSAuthenticateRequest__handleDialogFromError___block_invoke;
        v61[3] = &unk_1E84AE518;
        v61[4] = self;
        v62 = v7;
        v43 = v7;
        [present addFinishBlock:v61];

LABEL_46:
        goto LABEL_47;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v64, v59}];
      free(v34);
      SSFileLog(v26, @"%@", v35, v36, v37, v38, v39, v40, oSLogObject3);
    }

    goto LABEL_33;
  }

LABEL_47:
}

void __48__SSAuthenticateRequest__handleDialogFromError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 logUUID];
      v15 = *(a1 + 40);
      v26 = 138544130;
      v27 = v11;
      v28 = 2114;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v32 = 2114;
      v33 = v6;
      LODWORD(v25) = 42;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v26, v25}];
      free(v16);
      SSFileLog(v7, @"%@", v17, v18, v19, v20, v21, v22, v10);
    }

    goto LABEL_13;
  }

LABEL_14:
  v23 = [objc_alloc(MEMORY[0x1E698C938]) initWithRequest:*(a1 + 40) result:v5 error:v6 bag:0];
  v24 = [v23 perform];
}

- (void)_performRemoteAuthenticationWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSAuthenticateRequest _performRemoteAuthenticationWithCompletion:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__SSAuthenticateRequest__performRemoteAuthenticationWithCompletion___block_invoke;
  v19[3] = &unk_1E84AE540;
  v19[4] = self;
  v20 = completionCopy;
  v17 = completionCopy;
  [(SSRequest *)self _startWithMessageID:133 messageBlock:v19];
}

void __68__SSAuthenticateRequest__performRemoteAuthenticationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v10 = SSError(@"SSErrorDomain", 121, 0, 0);
    v12 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v24 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v12 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v65 = 138543362;
      v66 = objc_opt_class();
      v27 = v66;
      LODWORD(v56) = 12;
      v55 = &v65;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_25:
        v7 = 0;
        goto LABEL_39;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v65, v56}];
      free(v28);
      SSFileLog(v12, @"%@", v29, v30, v31, v32, v33, v34, v26);
    }

    goto LABEL_25;
  }

  v4 = +[SSAccountStore defaultStore];
  [v4 clearCachedAccounts];

  v5 = [SSAuthenticateResponse alloc];
  v6 = xpc_dictionary_get_value(v3, "1");
  v7 = [(SSAuthenticateResponse *)v5 initWithXPCEncoding:v6];

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = xpc_dictionary_get_value(v3, "2");
  v10 = [v8 initWithXPCEncoding:v9];

  v11 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v12 = v11;
  if (v10)
  {
    if (!v11)
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
      v65 = 138543618;
      v66 = objc_opt_class();
      v67 = 2112;
      v68 = v10;
      v16 = v66;
      LODWORD(v56) = 22;
      v55 = &v65;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
        goto LABEL_39;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v65, v56}];
      free(v17);
      SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, v15);
    }
  }

  else
  {
    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v35 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v36 = v35 | 2;
    }

    else
    {
      v36 = v35;
    }

    v37 = [v12 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 & 2;
    }

    if (v38)
    {
      v39 = objc_opt_class();
      v59 = a1;
      v40 = *(a1 + 32);
      v60 = v39;
      v41 = [v40 logUUID];
      v58 = [(SSAuthenticateResponse *)v7 authenticatedAccount];
      v57 = [v58 accountName];
      v42 = SSHashIfNeeded(v57);
      v43 = [(SSAuthenticateResponse *)v7 authenticateResponseType];
      v44 = [(SSAuthenticateResponse *)v7 error];
      v65 = 138544386;
      v66 = v39;
      v67 = 2114;
      v68 = v41;
      v69 = 2114;
      v70 = v42;
      v71 = 2048;
      v72 = v43;
      v73 = 2112;
      v74 = v44;
      LODWORD(v56) = 52;
      v55 = &v65;
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:{4, &v65, v56}];
        free(v45);
        SSFileLog(v12, @"%@", v47, v48, v49, v50, v51, v52, v46);
      }

      v10 = 0;
      a1 = v59;
    }

    else
    {

      v10 = 0;
    }
  }

LABEL_39:

  v53 = *(a1 + 40);
  if (v53)
  {
    v54 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SSAuthenticateRequest__performRemoteAuthenticationWithCompletion___block_invoke_72;
    block[3] = &unk_1E84ABEC8;
    v64 = v53;
    v62 = v7;
    v63 = v10;
    dispatch_async(v54, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (int64_t)_responseTypeForError:(id)error
{
  v64 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v7 = v6;
  if (code == 5001)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v34 = shouldLog | 2;
    }

    else
    {
      v34 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v36 = objc_opt_class();
      v37 = v36;
      [(SSAuthenticateRequest *)self logUUID];
      v58 = 138543618;
      v59 = v36;
      v61 = v60 = 2114;
      LODWORD(v57) = 22;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_39:
        v20 = 3;
        goto LABEL_51;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v58, v57}];
      free(v38);
      SSFileLog(v7, @"%@", v39, v40, v41, v42, v43, v44, oSLogObject);
    }

    goto LABEL_39;
  }

  if (code == -5000)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v22 = shouldLog2 | 2;
    }

    else
    {
      v22 = shouldLog2;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = v24;
      [(SSAuthenticateRequest *)self logUUID];
      v58 = 138543618;
      v59 = v24;
      v61 = v60 = 2114;
      LODWORD(v57) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_27:
        v20 = 1;
        goto LABEL_51;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v58, v57}];
      free(v26);
      SSFileLog(v7, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject2);
    }

    goto LABEL_27;
  }

  if (code != -7003)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v46 = shouldLog3 | 2;
    }

    else
    {
      v46 = shouldLog3;
    }

    oSLogObject3 = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v46 &= 2u;
    }

    if (v46)
    {
      v48 = objc_opt_class();
      v49 = v48;
      [(SSAuthenticateRequest *)self logUUID];
      v58 = 138543874;
      v59 = v48;
      v61 = v60 = 2114;
      v62 = 2112;
      v63 = errorCopy;
      LODWORD(v57) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_51;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v58, v57}];
      free(v20);
      SSFileLog(v7, @"%@", v50, v51, v52, v53, v54, v55, oSLogObject3);
    }

    v20 = 0;
    goto LABEL_51;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog4 | 2;
  }

  else
  {
    v9 = shouldLog4;
  }

  oSLogObject4 = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = objc_opt_class();
  v12 = v11;
  [(SSAuthenticateRequest *)self logUUID];
  v58 = 138543618;
  v59 = v11;
  v61 = v60 = 2114;
  LODWORD(v57) = 22;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v58, v57}];
    free(v13);
    SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject4);
LABEL_14:
  }

  v20 = 2;
LABEL_51:

  return v20;
}

- (BOOL)_shouldRunAuthenticationForAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    goto LABEL_7;
  }

  promptStyle = [(SSAuthenticationContext *)self->_authenticationContext promptStyle];
  if (promptStyle == 1)
  {
    goto LABEL_7;
  }

  if (promptStyle == 1001)
  {
LABEL_8:
    v6 = [accountCopy isAuthenticated] ^ 1;
    goto LABEL_9;
  }

  if (promptStyle != 1000)
  {
    if ([SSAccountStore isExpiredForTokenType:[(SSAuthenticationContext *)self->_authenticationContext tokenType]])
    {
LABEL_7:
      LOBYTE(v6) = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(v6) = 0;
LABEL_9:

  return v6;
}

- (id)_verifyCredentialsOptionsFromUpdateAccountResponse:(id)response skipAuthKit:(BOOL)kit
{
  kitCopy = kit;
  responseCopy = response;
  authenticationContext = [(SSAuthenticateRequest *)self authenticationContext];
  accountStoreOptions = [authenticationContext accountStoreOptions];
  v9 = [accountStoreOptions mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6959AB8]];
  v10 = MEMORY[0x1E696AD98];
  credentialSource = [responseCopy credentialSource];

  v12 = [v10 numberWithUnsignedInteger:credentialSource];
  [v9 setObject:v12 forKeyedSubscript:@"SSAccountStoreAuthKitCredentialSource"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:kitCopy];
  [v9 setObject:v13 forKeyedSubscript:@"SSAccountStoreAuthKitSkipAuthKitKey"];

  logUUID = [(SSAuthenticateRequest *)self logUUID];
  v15 = [logUUID length];

  if (v15)
  {
    logUUID2 = [(SSAuthenticateRequest *)self logUUID];
    [v9 setObject:logUUID2 forKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  }

  return v9;
}

- (UIViewController)_parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__parentViewController);

  return WeakRetained;
}

@end