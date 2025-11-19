@interface BYAuthenticationContext
+ (void)createContextWithSecret:(id)a3 policy:(int64_t)a4 options:(id)a5 completion:(id)a6;
- (BYAuthenticationContext)initWithSecret:(id)a3;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
@end

@implementation BYAuthenticationContext

- (BYAuthenticationContext)initWithSecret:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BYAuthenticationContext;
  v6 = [(BYAuthenticationContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secret, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696EE50]);
    underlyingContext = v7->_underlyingContext;
    v7->_underlyingContext = v8;

    [(LAContext *)v7->_underlyingContext setUiDelegate:v7];
  }

  return v7;
}

+ (void)createContextWithSecret:(id)a3 policy:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[BYAuthenticationContext alloc] initWithSecret:v11];

  v13 = [(BYAuthenticationContext *)v12 underlyingContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__BYAuthenticationContext_createContextWithSecret_policy_options_completion___block_invoke;
  v16[3] = &unk_1E7D02930;
  v17 = v12;
  v18 = v9;
  v14 = v12;
  v15 = v9;
  [v13 evaluatePolicy:a4 options:v10 reply:v16];
}

void __77__BYAuthenticationContext_createContextWithSecret_policy_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 underlyingContext];
  (*(v3 + 16))(v3, v6, v5);
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v7 = [a4 objectForKeyedSubscript:&unk_1F30A7610];
  v8 = v7;
  if (a3 == 2 && [v7 BOOLValue])
  {
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BYAuthenticationContext event:v9 params:? reply:?];
    }

    v10 = [(BYAuthenticationContext *)self secret];
    v11 = [v10 dataUsingEncoding:4];

    [(BYAuthenticationContext *)self setSecret:0];
    v12 = [(BYAuthenticationContext *)self underlyingContext];
    [v12 setCredential:v11 forProcessedEvent:2 credentialType:-1 reply:&__block_literal_global_2];
  }
}

void __46__BYAuthenticationContext_event_params_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _BYLoggingFacility();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__BYAuthenticationContext_event_params_reply___block_invoke_cold_1(v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v4;
    }

    else if (v4)
    {
      v10 = MEMORY[0x1E696AEC0];
      a2 = [v4 domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", a2, objc_msgSend(v4, "code")];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 138543362;
    v12 = v9;
    _os_log_error_impl(&dword_1B862F000, v6, OS_LOG_TYPE_ERROR, "Failed to set credentials for context: %{public}@", buf, 0xCu);
    if (v8)
    {
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end