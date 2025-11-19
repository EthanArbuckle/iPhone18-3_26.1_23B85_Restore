@interface TPSURLSessionACAuthContext
+ (id)defaultContext;
- (TPSURLSessionACAuthContext)initWithAppIdentifier:(id)a3 enviromentIdentifier:(id)a4 interactivity:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TPSURLSessionACAuthContext

+ (id)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    +[TPSURLSessionACAuthContext defaultContext];
  }

  v3 = defaultContext_context;

  return v3;
}

uint64_t __44__TPSURLSessionACAuthContext_defaultContext__block_invoke()
{
  v0 = [[TPSURLSessionACAuthContext alloc] initWithAppIdentifier:@"170617" enviromentIdentifier:@"APPLECONNECT.APPLE.COM" interactivity:@"0"];
  v1 = defaultContext_context;
  defaultContext_context = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (TPSURLSessionACAuthContext)initWithAppIdentifier:(id)a3 enviromentIdentifier:(id)a4 interactivity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSURLSessionACAuthContext;
  v12 = [(TPSURLSessionACAuthContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appIdentifier, a3);
    objc_storeStrong(&v13->_enviromentIdentifier, a4);
    objc_storeStrong(&v13->_interactivityMode, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TPSURLSessionACAuthContext *)self appIdentifier];
  [v4 setAppIdentifier:v5];

  v6 = [(TPSURLSessionACAuthContext *)self enviromentIdentifier];
  [v4 setEnviromentIdentifier:v6];

  v7 = [(TPSURLSessionACAuthContext *)self interactivityMode];
  [v4 setInteractivityMode:v7];

  v8 = [(TPSURLSessionACAuthContext *)self clientIdentifier];
  [v4 setClientIdentifier:v8];

  return v4;
}

@end