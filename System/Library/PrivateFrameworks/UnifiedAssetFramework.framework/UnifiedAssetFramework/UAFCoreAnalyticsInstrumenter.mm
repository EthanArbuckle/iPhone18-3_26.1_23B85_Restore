@interface UAFCoreAnalyticsInstrumenter
+ (void)logUAFAssetSetState:(id)state assetSpecifiersAndVersions:(id)versions;
+ (void)sendCAEvent:(id)event assetSpecifier:(id)specifier assetVersion:(id)version;
@end

@implementation UAFCoreAnalyticsInstrumenter

+ (void)logUAFAssetSetState:(id)state assetSpecifiersAndVersions:(id)versions
{
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  versionsCopy = versions;
  v8 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "+[UAFCoreAnalyticsInstrumenter logUAFAssetSetState:assetSpecifiersAndVersions:]";
    v27 = 2114;
    v28 = stateCopy;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Emitting asset set state CA event for %{public}@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = versionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v22;
    *&v11 = 136315906;
    v20 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v9 objectForKey:{v15, v20, v21}];
        v17 = UAFGetLogCategory(&UAFLogContextInstrumentation);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = "+[UAFCoreAnalyticsInstrumenter logUAFAssetSetState:assetSpecifiersAndVersions:]";
          v27 = 2114;
          v28 = v15;
          v29 = 2114;
          v30 = v16;
          v31 = 2114;
          v32 = stateCopy;
          _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Emitting asset set state CA event for specifier: %{public}@ with version: %{public}@ from asset set: %{public}@", buf, 0x2Au);
        }

        [self sendCAEvent:stateCopy assetSpecifier:v15 assetVersion:v16];
      }

      v12 = [v9 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v12);
  }

  v18 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "+[UAFCoreAnalyticsInstrumenter logUAFAssetSetState:assetSpecifiersAndVersions:]";
    v27 = 2114;
    v28 = stateCopy;
    _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Sent asset set state CA event for %{public}@", buf, 0x16u);
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)sendCAEvent:(id)event assetSpecifier:(id)specifier assetVersion:(id)version
{
  eventCopy = event;
  specifierCopy = specifier;
  versionCopy = version;
  v7 = versionCopy;
  v8 = specifierCopy;
  v9 = eventCopy;
  AnalyticsSendEventLazy();
}

id __72__UAFCoreAnalyticsInstrumenter_sendCAEvent_assetSpecifier_assetVersion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"assetSetName";
  v5[1] = @"assetSpecifier";
  v6 = v1;
  v5[2] = @"assetVersion";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end