@interface AssistantSiriAnalytics
+ (id)derivedIdentifierForComponentName:(int)name fromSourceIdentifier:(id)identifier;
+ (id)sharedAnalytics;
+ (id)sharedStream;
- (AssistantSiriAnalytics)init;
- (void)createTag:(id)tag completion:(id)completion;
@end

@implementation AssistantSiriAnalytics

+ (id)sharedStream
{
  v2 = +[AssistantSiriAnalytics sharedAnalytics];
  defaultMessageStream = [v2 defaultMessageStream];

  return defaultMessageStream;
}

+ (id)sharedAnalytics
{
  if (sharedAnalytics_onceToken != -1)
  {
    dispatch_once(&sharedAnalytics_onceToken, &__block_literal_global_1456);
  }

  v3 = sharedAnalytics_shared;

  return v3;
}

- (void)createTag:(id)tag completion:(id)completion
{
  remoteService = self->_remoteService;
  completionCopy = completion;
  shim = [tag shim];
  [(SiriAnalyticsRemoteService *)remoteService createTag:shim completion:completionCopy];
}

- (AssistantSiriAnalytics)init
{
  v9.receiver = self;
  v9.super_class = AssistantSiriAnalytics;
  v2 = [(AssistantSiriAnalytics *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.siri.analytics.assistant", v3);
    v5 = [[SiriAnalyticsRemoteService alloc] initWithMachServiceName:@"com.apple.siri.analytics.assistant"];
    remoteService = v2->_remoteService;
    v2->_remoteService = v5;

    v7 = [[SiriAnalyticsClientMessageStream alloc] initWithQueue:v4 analyticsService:v2->_remoteService];
    [(SiriAnalyticsClient *)v2 setDefaultMessageStream:v7];
    if (SiriAnalyticsIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&SiriAnalyticsIsInternalInstall_onceToken, &__block_literal_global_884);
    }

    v2->_isInternalInstall = SiriAnalyticsIsInternalInstall_isInternal;
  }

  return v2;
}

+ (id)derivedIdentifierForComponentName:(int)name fromSourceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (name)
  {
    if (name > 0x42)
    {
      v6 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v6 = off_1E8587A00[name - 1];
    }

    v9 = MEMORY[0x1E696AFB0];
    v10 = [@"SiriAnalytics.Component" dataUsingEncoding:4];
    v11 = [(__CFString *)v6 dataUsingEncoding:4];
    v12 = [v9 sa_deterministicUUIDv5ForNamespace:v10 name:v11];

    if (v12)
    {
      v8 = [MEMORY[0x1E696AFB0] sa_deterministicUUIDv5ForNamespaceUUID:v12 sourceUUID:identifierCopy];
    }

    else
    {
      if (SiriAnalyticsLoggingInit_once != -1)
      {
        dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
      }

      v13 = SiriAnalyticsLogContextAssistant;
      if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "+[AssistantSiriAnalytics derivedIdentifierForComponentName:fromSourceIdentifier:]";
        v18 = 1024;
        nameCopy = name;
        _os_log_error_impl(&dword_1D9863000, v13, OS_LOG_TYPE_ERROR, "%s ComponentName: %d did not map to a component identifier", &v16, 0x12u);
      }

      v8 = 0;
    }
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v7 = SiriAnalyticsLogContextAssistant;
    if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "+[AssistantSiriAnalytics derivedIdentifierForComponentName:fromSourceIdentifier:]";
      _os_log_error_impl(&dword_1D9863000, v7, OS_LOG_TYPE_ERROR, "%s Unknown component name provided", &v16, 0xCu);
    }

    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __88__AssistantSiriAnalytics_derivedIdentifierForComponent_fromSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __41__AssistantSiriAnalytics_sharedAnalytics__block_invoke()
{
  sharedAnalytics_shared = objc_alloc_init(AssistantSiriAnalytics);

  return MEMORY[0x1EEE66BB8]();
}

@end