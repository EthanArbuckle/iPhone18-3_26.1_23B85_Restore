@interface WBSKnownTrackerFilter
- (id)_createKnownTrackersDictionary;
- (void)_createKnownTrackersDictionary;
- (void)getKnownTrackersFromHighLevelDomains:(id)domains completionHandler:(id)handler;
@end

@implementation WBSKnownTrackerFilter

- (void)getKnownTrackersFromHighLevelDomains:(id)domains completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  handlerCopy = handler;
  if (SharedWebCredentialsLibraryCore())
  {
    get_SWCTrackingDomainInfoClass();
    v8 = objc_opt_respondsToSelector();
    SWCTrackingDomainInfoClass = get_SWCTrackingDomainInfoClass();
    v10 = [MEMORY[0x1E695DFD8] setWithArray:domainsCopy];
    if (v8)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke;
      v30[3] = &unk_1E8285A40;
      v31 = handlerCopy;
      [SWCTrackingDomainInfoClass getTrackingDomainInfoWithDomains:v10 sources:1 completion:v30];
    }

    else
    {
      v21 = [SWCTrackingDomainInfoClass trackingDomainInfoWithDomains:v10];

      v22 = [v21 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_11];
      (*(handlerCopy + 2))(handlerCopy, v22);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(domainsCopy, "count")}];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke_4;
    block[3] = &unk_1E8283080;
    block[4] = self;
    v23 = handlerCopy;
    if (getKnownTrackersFromHighLevelDomains_completionHandler__onceToken != -1)
    {
      dispatch_once(&getKnownTrackersFromHighLevelDomains_completionHandler__onceToken, block);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = domainsCopy;
    v12 = domainsCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [getKnownTrackersFromHighLevelDomains_completionHandler__knownTrackers objectForKeyedSubscript:{v17, v23}];
          v19 = v18;
          if (v18)
          {
            v32 = @"OwnerName";
            v33 = v18;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            [v11 setObject:v20 forKeyedSubscript:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    handlerCopy = v23;
    v23[2](v23, v11);

    domainsCopy = v24;
  }
}

void __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_22];
  (*(v2 + 16))(v2, v3);
}

id __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"OwnerName";
  v3 = [a3 ownerDisplayName];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

id __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 source] == 1)
  {
    v7 = @"OwnerName";
    v4 = [v3 ownerDisplayName];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __80__WBSKnownTrackerFilter_getKnownTrackersFromHighLevelDomains_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) _createKnownTrackersDictionary];
  v2 = getKnownTrackersFromHighLevelDomains_completionHandler__knownTrackers;
  getKnownTrackersFromHighLevelDomains_completionHandler__knownTrackers = v1;
}

- (id)_createKnownTrackersDictionary
{
  safari_safariSharedBundle = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
  v3 = [safari_safariSharedBundle URLForResource:@"WBSDuckDuckGoTDS" withExtension:@"json"];

  v12 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v12];
  v5 = v12;
  v11 = v5;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPrivacyReport();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSKnownTrackerFilter *)v8 _createKnownTrackersDictionary];
    }

    v9 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v9 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_22];
  }

  return v9;
}

- (void)_createKnownTrackersDictionary
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1C6968000, selfCopy, OS_LOG_TYPE_ERROR, "Unable to read known tracker data %{public}@", &v5, 0xCu);
}

@end