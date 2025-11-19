@interface PRSAnonymousPipelineManagerSession
+ (id)sharedManager;
- (PRSAnonymousPipelineManagerSession)init;
- (void)sendCustomFeedback:(id)a3;
@end

@implementation PRSAnonymousPipelineManagerSession

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[PRSAnonymousPipelineManagerSession sharedManager];
  }

  v3 = sharedManager_session;

  return v3;
}

uint64_t __51__PRSAnonymousPipelineManagerSession_sharedManager__block_invoke()
{
  sharedManager_session = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (PRSAnonymousPipelineManagerSession)init
{
  v5.receiver = self;
  v5.super_class = PRSAnonymousPipelineManagerSession;
  v2 = [(PRSAnonymousPipelineManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PRSAnonymousPipelineManager *)v2 setDelegate:0];
  }

  return v3;
}

- (void)sendCustomFeedback:(id)a3
{
  v4 = a3;
  v5 = [(PRSAnonymousPipelineManagerSession *)self session];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 infoDictionary];
    v8 = [v7 objectForKeyedSubscript:@"CFBundleVersion"];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata/%@", v8];
    v10 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.spotlight.metadata" userAgent:v9];
    v11 = [MEMORY[0x1E6998670] sessionWithConfiguration:v10];
    [(PRSAnonymousPipelineManagerSession *)self setSession:v11];
  }

  v12 = [(PRSAnonymousPipelineManagerSession *)self session];
  [v12 sendCustomFeedback:v4];
}

@end