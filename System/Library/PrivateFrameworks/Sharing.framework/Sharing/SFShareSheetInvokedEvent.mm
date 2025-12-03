@interface SFShareSheetInvokedEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetInvokedEvent

- (NSDictionary)eventPayload
{
  v24[9] = *MEMORY[0x1E69E9840];
  v20 = objc_alloc(MEMORY[0x1E695DF90]);
  v23[0] = @"sourceApplicationBundleID";
  appBundleId = [(SFShareSheetInvokedEvent *)self appBundleId];
  v22 = appBundleId;
  if (appBundleId)
  {
    v4 = appBundleId;
  }

  else
  {
    v4 = &stru_1F1D30528;
  }

  v24[0] = v4;
  v23[1] = @"numberOfSuggestions";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent numberOfSuggestions](self, "numberOfSuggestions")}];
  v24[1] = v21;
  v23[2] = @"suggestionsHash";
  suggestionsHash = [(SFShareSheetInvokedEvent *)self suggestionsHash];
  v6 = suggestionsHash;
  if (suggestionsHash)
  {
    v7 = suggestionsHash;
  }

  else
  {
    v7 = &stru_1F1D30528;
  }

  v24[2] = v7;
  v23[3] = @"daemonPID";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFShareSheetInvokedEvent daemonPID](self, "daemonPID")}];
  v24[3] = v8;
  v23[4] = @"durationInMS";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent durationInMS](self, "durationInMS")}];
  v24[4] = v9;
  v23[5] = @"isDarkMode";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetInvokedEvent isDarkMode](self, "isDarkMode")}];
  v24[5] = v10;
  v23[6] = @"cacheFileCount";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent cacheFileCount](self, "cacheFileCount")}];
  v24[6] = v11;
  v23[7] = @"totalCacheAccessCount";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent totalCacheAccessCount](self, "totalCacheAccessCount")}];
  v24[7] = v12;
  v23[8] = @"isCollaborative";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetInvokedEvent isCollaborative](self, "isCollaborative")}];
  v24[8] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:9];
  v15 = [v20 initWithDictionary:v14];

  cacheAccessInfo = [(SFShareSheetInvokedEvent *)self cacheAccessInfo];
  [v15 addEntriesFromDictionary:cacheAccessInfo];

  v17 = [v15 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetInvokedEvent eventName];
  eventPayload = [(SFShareSheetInvokedEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end