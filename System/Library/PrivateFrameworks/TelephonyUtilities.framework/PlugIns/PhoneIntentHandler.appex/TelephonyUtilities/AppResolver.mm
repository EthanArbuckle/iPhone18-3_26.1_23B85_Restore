@interface AppResolver
- (BOOL)appSupportsDeprecatedCallingIntents:(id)a3;
@end

@implementation AppResolver

- (BOOL)appSupportsDeprecatedCallingIntents:(id)a3
{
  v3 = a3;
  v15 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v15];
  v5 = v15;
  if (!v5)
  {
    v8 = [v4 compatibilityObject];
    v9 = [v8 plugInKitPlugins];
    v10 = INSupportedIntentsByExtensions();

    v11 = [v10 containsObject:INStartCallIntentIdentifier];
    if (v11)
    {
      v12 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10002F45C(v12);
      }
    }

    else if (![v10 containsObject:INStartAudioCallIntentIdentifier])
    {
      v14 = [v10 containsObject:INStartVideoCallIntentIdentifier];

      if (v14)
      {
        v7 = 1;
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    v7 = v11 ^ 1;

    goto LABEL_12;
  }

  v6 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10002F3D4(v3, v5, v6);
  }

LABEL_5:
  v7 = 0;
LABEL_12:

  return v7;
}

@end