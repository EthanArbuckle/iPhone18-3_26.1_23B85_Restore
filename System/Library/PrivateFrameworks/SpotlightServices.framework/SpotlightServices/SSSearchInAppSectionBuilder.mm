@interface SSSearchInAppSectionBuilder
+ (id)cachedPreferredStoreBundleIdentifier;
+ (id)supportedBundleId;
+ (void)updateCachedPreferredStoreBundleID;
- (BOOL)shouldSkipSection;
- (id)buildSection;
@end

@implementation SSSearchInAppSectionBuilder

+ (id)supportedBundleId
{
  if (isMacOS())
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___SSSearchInAppSectionBuilder;
    v3 = objc_msgSendSuper2(&v5, sel_supportedBundleId);
  }

  else
  {
    v3 = @"com.apple.searchd.searchThroughSuggestions";
  }

  return v3;
}

- (id)buildSection
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(SSSearchInAppSectionBuilder *)self shouldSkipSection])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    bundleIdentifiersForHiddenSections = [(SSSearchInAppSectionBuilder *)self bundleIdentifiersForHiddenSections];
    searchInAppInfo = [(SSSearchInAppSectionBuilder *)self searchInAppInfo];
    v7 = [searchInAppInfo mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    queryContext = [(SSSectionBuilder *)self queryContext];
    searchString = [queryContext searchString];

    if ([v10 count])
    {
      v13 = 0;
      do
      {
        if ([v4 count] >= 4)
        {
          break;
        }

        v14 = [v10 objectAtIndexedSubscript:v13];
        v15 = v13 + 1;
        v16 = [v10 objectAtIndexedSubscript:v15];
        if ([bundleIdentifiersForHiddenSections containsObject:v14] && (SSScreenTimeStatusForBundleIDWithCompletionHandler(v14, 0) & 1) == 0)
        {
          v17 = [SSSearchInAppResultBuilder buildResultWithAppName:v16 appBundleId:v14 searchString:searchString searchInAppType:0];
          [v4 addObject:v17];
        }

        v13 = v15 + 1;
      }

      while ([v10 count] > v13);
    }

    cachedPreferredStoreBundleIdentifier = [objc_opt_class() cachedPreferredStoreBundleIdentifier];
    v19 = cachedPreferredStoreBundleIdentifier;
    if (cachedPreferredStoreBundleIdentifier && (SSScreenTimeStatusForBundleIDWithCompletionHandler(cachedPreferredStoreBundleIdentifier, 0) & 1) == 0)
    {
      v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v19 allowPlaceholder:1 error:0];
      localizedName = [v20 localizedName];

      v22 = +[SSSearchInAppResultBuilder buildResultWithAppName:appBundleId:searchString:searchInAppType:](SSSearchInAppResultBuilder, "buildResultWithAppName:appBundleId:searchString:searchInAppType:", localizedName, v19, searchString, [v19 isEqual:@"com.apple.AppStore"] ^ 1);
      [v4 addObject:v22];
    }

    v38 = searchString;
    if (buildSection_onceToken != -1)
    {
      [SSSearchInAppSectionBuilder buildSection];
    }

    v37 = v19;
    if (buildSection_localizedMapsName && (SSScreenTimeStatusForBundleIDWithCompletionHandler(@"com.apple.Maps", 0) & 1) == 0)
    {
      v23 = [SSSearchInAppResultBuilder buildResultWithAppName:buildSection_localizedMapsName appBundleId:@"com.apple.Maps" searchString:searchString searchInAppType:0, v19];
      [v4 addObject:v23];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = v4;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          queryContext2 = [(SSSectionBuilder *)self queryContext];
          [v29 setQueryId:{objc_msgSend(queryContext2, "queryIdent")}];

          [v29 setSectionBundleIdentifier:@"com.apple.searchd.searchThroughSuggestions"];
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    if ([v24 count])
    {
      v3 = objc_opt_new();
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [v3 setIdentifier:uUIDString];

      [v3 setBundleIdentifier:@"com.apple.searchd.searchThroughSuggestions"];
      [v3 setResults:v24];
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"FOUND_IN_APPS" value:&stru_1F556FE60 table:@"SpotlightServices"];
      [v3 setTitle:v34];
    }

    else
    {
      v3 = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

void __43__SSSearchInAppSectionBuilder_buildSection__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:1 error:0];
  v0 = [v2 localizedName];
  v1 = buildSection_localizedMapsName;
  buildSection_localizedMapsName = v0;
}

+ (id)cachedPreferredStoreBundleIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = s_cachedPreferredStoreBundleID;
  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [selfCopy updateCachedPreferredStoreBundleID];
  }

  return v3;
}

+ (void)updateCachedPreferredStoreBundleID
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (updateCachedPreferredStoreBundleID_onceToken != -1)
  {
    dispatch_once(&updateCachedPreferredStoreBundleID_onceToken, block);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke_3;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = self;
  dispatch_async(updateCachedPreferredStoreBundleID_queue, v3);
}

void __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("SSMarketplaceKitUtilities fetching queue", v2);
  v4 = updateCachedPreferredStoreBundleID_queue;
  updateCachedPreferredStoreBundleID_queue = v3;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = +[_TtC17SpotlightServices25SSMarketplaceKitUtilities distributorPriorityListChangedNotifationName];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke_2;
  v8[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v8[4] = *(a1 + 32);
  v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
}

uint64_t __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = s_cachedPreferredStoreBundleID;
  s_cachedPreferredStoreBundleID = 0;

  objc_sync_exit(v2);
  v4 = *(a1 + 32);

  return [v4 updateCachedPreferredStoreBundleID];
}

void __65__SSSearchInAppSectionBuilder_updateCachedPreferredStoreBundleID__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = s_cachedPreferredStoreBundleID;
  objc_sync_exit(v2);

  if (!v3)
  {
    v4 = +[_TtC17SpotlightServices25SSMarketplaceKitUtilities distributorPriorityList];
    v5 = [v4 firstObject];

    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = s_cachedPreferredStoreBundleID;
    s_cachedPreferredStoreBundleID = v5;
    v8 = v5;

    objc_sync_exit(v6);
  }
}

- (BOOL)shouldSkipSection
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  v5 = [searchEntities count];

  if (!v5)
  {
    v6 = SSDefaultsGetResources();
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9fb9d89e-6213-484c-9123-fbe1626207a7"];
    queryContext2 = [(SSSectionBuilder *)self queryContext];
    [v6 logForTrigger:v7 queryID:{objc_msgSend(queryContext2, "queryIdent")}];
  }

  v9 = SSShowSearchInApps() ^ 1;
  if (v5)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

@end