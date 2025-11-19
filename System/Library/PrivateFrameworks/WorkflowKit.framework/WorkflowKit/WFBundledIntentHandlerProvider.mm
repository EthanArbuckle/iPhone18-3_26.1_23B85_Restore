@interface WFBundledIntentHandlerProvider
+ (id)localIntentHandlerLaunchID;
+ (id)sharedInstance;
- (WFBundledIntentHandlerProvider)init;
- (id)handlerForIntent:(id)a3;
@end

@implementation WFBundledIntentHandlerProvider

- (id)handlerForIntent:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 identifier];

  if (v4)
  {
    if (handlerForIntent__onceToken != -1)
    {
      dispatch_once(&handlerForIntent__onceToken, &__block_literal_global_506);
    }

    v5 = handlerForIntent__intentHandlerForIdentifier;
    v6 = [v3 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = handlerForIntent__intentHandlerForIdentifier;
    if (v7)
    {
      v9 = [v3 identifier];
      v10 = [v8 objectForKeyedSubscript:v9];
    }

    else
    {
      [handlerForIntent__intentHandlerForIdentifier removeAllObjects];
      v12 = handlerForIntent__intentHandlerForIdentifier;
      v13 = [v3 identifier];
      v14 = [v3 _codableDescription];
      v15 = [v14 typeName];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WF%@IntentHandler", v15];
      v10 = objc_alloc_init(NSClassFromString(v16));

      [v12 setObject:v10 forKeyedSubscript:v13];
    }
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "[WFBundledIntentHandlerProvider handlerForIntent:]";
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Unable to get handler for intent: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

void __51__WFBundledIntentHandlerProvider_handlerForIntent___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = handlerForIntent__intentHandlerForIdentifier;
  handlerForIntent__intentHandlerForIdentifier = v0;
}

- (WFBundledIntentHandlerProvider)init
{
  v6.receiver = self;
  v6.super_class = WFBundledIntentHandlerProvider;
  v2 = [(WFBundledIntentHandlerProvider *)&v6 init];
  if (v2)
  {
    v3 = [(objc_class *)getINCLocalExtensionRegistryClass() sharedInstance];
    [v3 registerLocalExtension:v2];

    v4 = v2;
  }

  return v2;
}

+ (id)localIntentHandlerLaunchID
{
  v2 = +[WFBundledIntentHandlerProvider sharedInstance];
  v3 = [v2 localExtensionIdentifier];

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFBundledIntentHandlerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __48__WFBundledIntentHandlerProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

@end