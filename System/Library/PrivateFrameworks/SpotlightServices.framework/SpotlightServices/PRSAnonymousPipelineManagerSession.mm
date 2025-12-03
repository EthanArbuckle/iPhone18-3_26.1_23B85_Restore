@interface PRSAnonymousPipelineManagerSession
+ (id)sharedManager;
- (PRSAnonymousPipelineManagerSession)init;
- (void)sendCustomFeedback:(id)feedback;
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

- (void)sendCustomFeedback:(id)feedback
{
  feedbackCopy = feedback;
  session = [(PRSAnonymousPipelineManagerSession *)self session];

  if (!session)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    infoDictionary = [v6 infoDictionary];
    v8 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata/%@", v8];
    v10 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.spotlight.metadata" userAgent:v9];
    v11 = [MEMORY[0x1E6998670] sessionWithConfiguration:v10];
    [(PRSAnonymousPipelineManagerSession *)self setSession:v11];
  }

  session2 = [(PRSAnonymousPipelineManagerSession *)self session];
  [session2 sendCustomFeedback:feedbackCopy];
}

@end