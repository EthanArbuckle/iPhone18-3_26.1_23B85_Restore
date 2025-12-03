@interface TPSURLSessionACAuthContext
+ (id)defaultContext;
- (TPSURLSessionACAuthContext)initWithAppIdentifier:(id)identifier enviromentIdentifier:(id)enviromentIdentifier interactivity:(id)interactivity;
- (id)copyWithZone:(_NSZone *)zone;
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

- (TPSURLSessionACAuthContext)initWithAppIdentifier:(id)identifier enviromentIdentifier:(id)enviromentIdentifier interactivity:(id)interactivity
{
  identifierCopy = identifier;
  enviromentIdentifierCopy = enviromentIdentifier;
  interactivityCopy = interactivity;
  v15.receiver = self;
  v15.super_class = TPSURLSessionACAuthContext;
  v12 = [(TPSURLSessionACAuthContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appIdentifier, identifier);
    objc_storeStrong(&v13->_enviromentIdentifier, enviromentIdentifier);
    objc_storeStrong(&v13->_interactivityMode, interactivity);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  appIdentifier = [(TPSURLSessionACAuthContext *)self appIdentifier];
  [v4 setAppIdentifier:appIdentifier];

  enviromentIdentifier = [(TPSURLSessionACAuthContext *)self enviromentIdentifier];
  [v4 setEnviromentIdentifier:enviromentIdentifier];

  interactivityMode = [(TPSURLSessionACAuthContext *)self interactivityMode];
  [v4 setInteractivityMode:interactivityMode];

  clientIdentifier = [(TPSURLSessionACAuthContext *)self clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  return v4;
}

@end