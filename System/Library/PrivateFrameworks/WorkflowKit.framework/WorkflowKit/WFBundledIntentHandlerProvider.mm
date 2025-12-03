@interface WFBundledIntentHandlerProvider
+ (id)localIntentHandlerLaunchID;
+ (id)sharedInstance;
- (WFBundledIntentHandlerProvider)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation WFBundledIntentHandlerProvider

- (id)handlerForIntent:(id)intent
{
  v23 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  identifier = [intentCopy identifier];

  if (identifier)
  {
    if (handlerForIntent__onceToken != -1)
    {
      dispatch_once(&handlerForIntent__onceToken, &__block_literal_global_506);
    }

    v5 = handlerForIntent__intentHandlerForIdentifier;
    identifier2 = [intentCopy identifier];
    v7 = [v5 objectForKeyedSubscript:identifier2];

    v8 = handlerForIntent__intentHandlerForIdentifier;
    if (v7)
    {
      identifier3 = [intentCopy identifier];
      v10 = [v8 objectForKeyedSubscript:identifier3];
    }

    else
    {
      [handlerForIntent__intentHandlerForIdentifier removeAllObjects];
      v12 = handlerForIntent__intentHandlerForIdentifier;
      identifier4 = [intentCopy identifier];
      _codableDescription = [intentCopy _codableDescription];
      typeName = [_codableDescription typeName];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WF%@IntentHandler", typeName];
      v10 = objc_alloc_init(NSClassFromString(v16));

      [v12 setObject:v10 forKeyedSubscript:identifier4];
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
      v22 = intentCopy;
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
    sharedInstance = [(objc_class *)getINCLocalExtensionRegistryClass() sharedInstance];
    [sharedInstance registerLocalExtension:v2];

    v4 = v2;
  }

  return v2;
}

+ (id)localIntentHandlerLaunchID
{
  v2 = +[WFBundledIntentHandlerProvider sharedInstance];
  localExtensionIdentifier = [v2 localExtensionIdentifier];

  return localExtensionIdentifier;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFBundledIntentHandlerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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