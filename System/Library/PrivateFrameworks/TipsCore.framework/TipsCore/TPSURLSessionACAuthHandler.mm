@interface TPSURLSessionACAuthHandler
+ (BOOL)canAuthenticateWithURLResponse:(id)a3;
- (TPSURLSessionACAuthHandler)initWithAuthenticationContext:(id)a3;
- (id)_authenticationTokenForHost:(id)a3 error:(id *)a4;
- (id)customHeaderFields;
- (void)_authenticateWithAppleConnect:(id)a3;
- (void)authenticateForURLResponse:(id)a3 completion:(id)a4;
@end

@implementation TPSURLSessionACAuthHandler

+ (BOOL)canAuthenticateWithURLResponse:(id)a3
{
  v3 = a3;
  if (+[TPSCommonDefines isInternalDevice])
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = +[TPSContentURLController defaultHost];
      v6 = [v5 host];

      v7 = [v4 URL];
      v8 = [v7 host];
      v9 = [v8 isEqualToString:v6];

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        if (canAuthenticateWithURLResponse__onceToken != -1)
        {
          +[TPSURLSessionACAuthHandler canAuthenticateWithURLResponse:];
        }

        v11 = [v4 statusCode];
        v12 = canAuthenticateWithURLResponse__supportedStatusCodes;
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        v10 = [v12 containsObject:v13];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __61__TPSURLSessionACAuthHandler_canAuthenticateWithURLResponse___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3F41E58];
  v1 = canAuthenticateWithURLResponse__supportedStatusCodes;
  canAuthenticateWithURLResponse__supportedStatusCodes = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (TPSURLSessionACAuthHandler)initWithAuthenticationContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TPSURLSessionACAuthHandler;
  v6 = [(TPSURLSessionACAuthHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authContext, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.tips.ACAuthHandler.syncQueue", v8);
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v9;
  }

  return v7;
}

- (void)authenticateForURLResponse:(id)a3 completion:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 URL];
  v8 = [v7 host];

  if (![v8 length])
  {
    goto LABEL_5;
  }

  v15 = 0;
  v9 = [(TPSURLSessionACAuthHandler *)self _authenticationTokenForHost:v8 error:&v15];
  v10 = v15;
  v11 = v10;
  if (!v9)
  {

LABEL_5:
    [(TPSURLSessionACAuthHandler *)self _authenticateWithAppleConnect:v6];
    goto LABEL_6;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", v9];
  v16 = @"Authorization";
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  (*(v6 + 2))(v6, 0, 0, v13, 0);

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}

- (id)customHeaderFields
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(TPSURLSessionACAuthHandler *)self authContext];
  v3 = [v2 clientIdentifier];

  if ([v3 length])
  {
    v7 = @"X-Client-Id";
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_authenticateWithAppleConnect:(id)a3
{
  v4 = a3;
  v5 = [(TPSURLSessionACAuthHandler *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = [(TPSURLSessionACAuthHandler *)self ssoAuthenticator];

  if (v6)
  {
    v7 = [(TPSURLSessionACAuthHandler *)self ssoAuthenticator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke_2;
    v9[3] = &unk_1E8102A10;
    v9[4] = self;
    v10 = v4;
    [v7 authenticateWithCompletion:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, 0, 0, v8);
  }
}

void __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ssoAuthenticator];
  if (v2)
  {
  }

  else if (PingPongClientLibraryCore())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    v19 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    if (!getPPCExtensibleSSOAuthenticatorClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getPPCExtensibleSSOAuthenticatorClass_block_invoke;
      v15[3] = &unk_1E8102A50;
      v15[4] = &v16;
      __getPPCExtensibleSSOAuthenticatorClass_block_invoke(v15);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v5 = objc_alloc_init(v3);
    [*(a1 + 32) setSsoAuthenticator:v5];
  }

  v6 = [*(a1 + 32) authContext];
  v7 = [v6 appIdentifier];
  v8 = [*(a1 + 32) ssoAuthenticator];
  [v8 setAppIdentifier:v7];

  v9 = [*(a1 + 32) authContext];
  v10 = [v9 enviromentIdentifier];
  v11 = [*(a1 + 32) ssoAuthenticator];
  [v11 setEnvIdentifier:v10];

  v12 = [*(a1 + 32) authContext];
  v13 = [v12 interactivityMode];
  v14 = [*(a1 + 32) ssoAuthenticator];
  [v14 setInteractivity:v13];
}

void __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  v22 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  if (!getkExtensibleSSOUsernameKeySymbolLoc_ptr)
  {
    v8 = PingPongClientLibrary();
    v20[3] = dlsym(v8, "kExtensibleSSOUsernameKey");
    getkExtensibleSSOUsernameKeySymbolLoc_ptr = v20[3];
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *v7;
  v10 = [v5 objectForKeyedSubscript:v9];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  v22 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  if (!getkExtensibleSSOTokenKeySymbolLoc_ptr)
  {
    v12 = PingPongClientLibrary();
    v20[3] = dlsym(v12, "kExtensibleSSOTokenKey");
    getkExtensibleSSOTokenKeySymbolLoc_ptr = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
LABEL_15:
    __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke_2_cold_1();
    __break(1u);
  }

  v13 = *v11;
  v14 = [v5 objectForKeyedSubscript:v13];

  v15 = [*(a1 + 32) authContext];
  v16 = [v15 clientIdentifier];

  if ([v10 length] && objc_msgSend(v14, "length"))
  {
    if ([v16 length])
    {
      v25[0] = @"X-AppleConnect-User";
      v25[1] = @"X-AppleConnect-Token";
      v26[0] = v10;
      v26[1] = v14;
      v25[2] = @"X-Client-Id";
      v26[2] = v16;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    }

    else
    {
      v23[0] = @"X-AppleConnect-User";
      v23[1] = @"X-AppleConnect-Token";
      v24[0] = v10;
      v24[1] = v14;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v14, v17);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_authenticationTokenForHost:(id)a3 error:(id *)a4
{
  v18[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E697B008];
  v7 = *MEMORY[0x1E697AE88];
  v17[0] = *MEMORY[0x1E697AFF8];
  v17[1] = v7;
  v18[0] = v6;
  v18[1] = @"ipcdn";
  v8 = *MEMORY[0x1E697B318];
  v17[2] = *MEMORY[0x1E697AC30];
  v17[3] = v8;
  v18[2] = v5;
  v18[3] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  cf = 0;
  v10 = SecItemCopyMatching(v9, &cf);
  if (v10)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
      *a4 = v11 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = [v12 initWithData:cf encoding:4];
      CFRelease(cf);
      goto LABEL_10;
    }

    v13 = +[TPSLogger default];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [TPSURLSessionACAuthHandler _authenticationTokenForHost:v13 error:?];
    }
  }

  v11 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __60__TPSURLSessionACAuthHandler__authenticateWithAppleConnect___block_invoke_2_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [TPSURLSessionACAuthHandler _authenticationTokenForHost:v0 error:?];
}

@end