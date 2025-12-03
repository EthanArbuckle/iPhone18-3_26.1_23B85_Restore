@interface PSCoreSpotlightIndexer
+ (id)sharedInstance;
- (BOOL)controllerIsBlacklisted:(id)blacklisted;
- (BOOL)needsIndex;
- (NSDate)lastIndexDate;
- (id)_bundleForSpecifier:(id)specifier parentBundle:(id)bundle;
- (id)_descriptionForSpecifierName:(id)name withParentSpecifierNames:(id)names;
- (id)_keyValueDictionaryForURL:(id)l;
- (id)_rankingHintScoreForURL:(id)l;
- (id)_specifiersForSpecifier:(id)specifier bundle:(id)bundle parentBundle:(id)parentBundle;
- (id)_specifiersPlistPathForSpecifier:(id)specifier bundle:(id)bundle parentBundle:(id)parentBundle;
- (id)_urlForSpecifier:(id)specifier identifier:(id)identifier category:(id)category childCategory:(id *)childCategory prefix:(id)prefix path:(id *)path baseURL:(id)l shouldLinkToRow:(BOOL)self0;
- (id)_urlsFromManifestForSpecifier:(id)specifier bundle:(id)bundle;
- (id)bundleBlockList;
- (id)csSearchableItemsFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names;
- (id)descriptionForCSSearchableItem:(id)item;
- (id)descriptionForCSSearchableItems:(id)items;
- (id)fedStatsStringsFromManifestBundlesAtURLs:(id)ls withCompletion:(id)completion;
- (id)lastIndexBuild;
- (id)lastIndexLanguage;
- (id)manifestBlockList;
- (id)manifestFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names;
- (id)manifestsFromDirectory:(id)directory;
- (id)readManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests;
- (id)searchableFirstPartyItemClassIdentifier;
- (id)searchableItemForSpecifier:(id)specifier bundleID:(id)d category:(id)category keywords:(id)keywords url:(id)url description:(id)description;
- (id)searchableItemsFromManifest:(id)manifest specifier:(id)specifier bundle:(id)bundle processCapabilities:(BOOL)capabilities;
- (id)searchableItemsFromManifestsForSpecifier:(id)specifier bundle:(id)bundle;
- (id)searchableItemsFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names;
- (id)searchableThirdPartyItemClassIdentifier;
- (void)_deleteSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix completion:(id)completion;
- (void)_indexChunkOfSearchableItems:(id)items completionHandler:(id)handler;
- (void)_indexSearchableItems:(id)items completionHandler:(id)handler;
- (void)deleteIndexWithCompletionBlock:(id)block;
- (void)deleteIndexWithDomainIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)deleteSpecifiers:(id)specifiers bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion completion:(id)a7;
- (void)hasfirstPartyIndexItems:(id)items;
- (void)indexManifestBundlesAtURL:(id)l withCompletion:(id)completion;
- (void)indexManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests withCompletion:(id)completion;
- (void)indexManifestBundlesAtURLs:(id)ls withCompletion:(id)completion;
- (void)indexSpecifiers:(id)specifiers bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion completion:(id)a7;
- (void)indexThirdPartyAppsWithPrefix:(id)prefix completion:(id)completion;
- (void)performYukonManifestMigrationWithCompletion:(id)completion;
- (void)private_indexManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests dryRun:(BOOL)run withCompletion:(id)completion;
- (void)reindexSpecifiersIfNeeded:(id)needed bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion setHasIndexed:(BOOL)indexed completion:(id)a8;
- (void)setHasIndexed;
- (void)setLastIndexBuild:(id)build;
- (void)setLastIndexDate:(id)date;
- (void)setLastIndexLanguage:(id)language;
- (void)setNeedsIndex;
- (void)setNeedsIndex:(BOOL)index;
- (void)topHitSearchForString:(id)string keyboardLanguage:(id)language foundItemsHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation PSCoreSpotlightIndexer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PSCoreSpotlightIndexer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

void __40__PSCoreSpotlightIndexer_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v2;

  v4 = objc_alloc(MEMORY[0x1E6964E78]);
  v5 = [*(a1 + 32) searchIndexIdentifier];
  v6 = [v4 initWithName:v5 protectionClass:*MEMORY[0x1E696A388]];
  [sharedInstance_sharedInstance_1 setPrefsSearchableIndex:v6];

  v7 = [*(a1 + 32) spotlightIndexQueueIdentifier];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v7, v9);
  [sharedInstance_sharedInstance_1 setSpotlightIndexQueue:v8];
}

- (id)searchableFirstPartyItemClassIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  searchableItemClassIdentifier = [(PSCoreSpotlightIndexer *)self searchableItemClassIdentifier];
  v4 = [v2 stringWithFormat:@"%@.firstParty", searchableItemClassIdentifier];

  return v4;
}

- (BOOL)controllerIsBlacklisted:(id)blacklisted
{
  v15 = *MEMORY[0x1E69E9840];
  blacklistedCopy = blacklisted;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  blacklistedControllers = [(PSCoreSpotlightIndexer *)self blacklistedControllers];
  v6 = [blacklistedControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(blacklistedControllers);
        }

        if ([blacklistedCopy isEqualToString:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [blacklistedControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)needsIndex
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"PSCoreSpolightIndexerNeverIndex"];

  if (!v4)
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults2 BOOLForKey:@"PSCoreSpolightIndexerAlwaysIndex"];

    if (v8)
    {
      lastIndexDate = PKLogForCategory(4);
      if (os_log_type_enabled(lastIndexDate, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        v9 = "PSCoreSpolightIndexerAlwaysIndex is set. Always indexing.";
LABEL_11:
        _os_log_impl(&dword_18B008000, lastIndexDate, OS_LOG_TYPE_DEFAULT, v9, v19, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults3 BOOLForKey:@"PSCoreSpolightIndexerNeedsIndex"];

    if (v11)
    {
      lastIndexDate = PKLogForCategory(4);
      if (os_log_type_enabled(lastIndexDate, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        v9 = "indexing because kCoreSpolightIndexerNeedsIndexKey is set.";
        goto LABEL_11;
      }

LABEL_12:
      v6 = 1;
      goto LABEL_39;
    }

    lastIndexDate = [(PSCoreSpotlightIndexer *)self lastIndexDate];
    if (!lastIndexDate)
    {
      lastIndexBuild = PKLogForCategory(4);
      if (os_log_type_enabled(lastIndexBuild, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_18B008000, lastIndexBuild, OS_LOG_TYPE_DEFAULT, "Indexing because we have never indexed.", v19, 2u);
      }

      v6 = 1;
      goto LABEL_38;
    }

    lastIndexBuild = [(PSCoreSpotlightIndexer *)self lastIndexBuild];
    if (lastIndexBuild)
    {
      lastIndexLanguage = MGCopyAnswer();
      if (([lastIndexLanguage isEqualToString:lastIndexBuild]& 1) != 0)
      {

        lastIndexLanguage = [(PSCoreSpotlightIndexer *)self lastIndexLanguage];
        if (lastIndexLanguage)
        {
          preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
          v15 = [preferredLanguages objectAtIndex:0];

          if (([v15 isEqualToString:lastIndexLanguage]& 1) != 0)
          {

            v15 = PKLogForCategory(4);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Indexing not needed", v19, 2u);
            }

            v6 = 0;
            goto LABEL_36;
          }

          v17 = PKLogForCategory(4);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Indexing because language has changed.", v19, 2u);
          }
        }

        else
        {
          v15 = PKLogForCategory(4);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Indexing because there's no last known indexed language.", v19, 2u);
          }
        }

        v6 = 1;
LABEL_36:

        goto LABEL_37;
      }

      v16 = PKLogForCategory(4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "Indexing because build number has changed.", v19, 2u);
      }
    }

    else
    {
      lastIndexLanguage = PKLogForCategory(4);
      if (os_log_type_enabled(lastIndexLanguage, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_18B008000, lastIndexLanguage, OS_LOG_TYPE_DEFAULT, "Indexing because there's no last known indexed build number.", v19, 2u);
      }
    }

    v6 = 1;
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  lastIndexDate = PKLogForCategory(4);
  if (os_log_type_enabled(lastIndexDate, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_18B008000, lastIndexDate, OS_LOG_TYPE_DEFAULT, "PSCoreSpolightIndexerNeverIndex is set. Never indexing.", v19, 2u);
  }

  v6 = 0;
LABEL_39:

  return v6;
}

- (void)setNeedsIndex:(BOOL)index
{
  indexCopy = index;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:indexCopy forKey:@"PSCoreSpolightIndexerNeedsIndex"];
}

- (void)setNeedsIndex
{
  [(PSCoreSpotlightIndexer *)self setNeedsIndex:1];
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Marking index as outdated", v3, 2u);
  }
}

- (void)setHasIndexed
{
  date = [MEMORY[0x1E695DF00] date];
  [(PSCoreSpotlightIndexer *)self setLastIndexDate:date];

  v4 = MGCopyAnswer();
  [(PSCoreSpotlightIndexer *)self setLastIndexBuild:v4];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [preferredLanguages objectAtIndex:0];
  [(PSCoreSpotlightIndexer *)self setLastIndexLanguage:v6];

  [(PSCoreSpotlightIndexer *)self setNeedsIndex:0];
}

- (NSDate)lastIndexDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PSCoreSpolightIndexerLastIndexDate"];

  return v3;
}

- (void)setLastIndexDate:(id)date
{
  v8 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:@"PSCoreSpolightIndexerLastIndexDate"];

  v5 = PKLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dateCopy;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Setting last index date: %@", &v6, 0xCu);
  }
}

- (id)lastIndexBuild
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PSCoreSpolightIndexerLastIndexBuild"];

  return v3;
}

- (void)setLastIndexBuild:(id)build
{
  v8 = *MEMORY[0x1E69E9840];
  buildCopy = build;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:buildCopy forKey:@"PSCoreSpolightIndexerLastIndexBuild"];

  v5 = PKLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = buildCopy;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Setting last index build: %@", &v6, 0xCu);
  }
}

- (id)lastIndexLanguage
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PSCoreSpolightIndexerLastIndexLanguage"];

  return v3;
}

- (void)setLastIndexLanguage:(id)language
{
  v8 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:languageCopy forKey:@"PSCoreSpolightIndexerLastIndexLanguage"];

  v5 = PKLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = languageCopy;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Setting last index language: %@", &v6, 0xCu);
  }
}

- (id)searchableThirdPartyItemClassIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  searchableItemClassIdentifier = [(PSCoreSpotlightIndexer *)self searchableItemClassIdentifier];
  v4 = [v2 stringWithFormat:@"%@.thirdPartyApp", searchableItemClassIdentifier];

  return v4;
}

- (void)hasfirstPartyIndexItems:(id)items
{
  v24[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  hasItemsQuery = [(PSCoreSpotlightIndexer *)self hasItemsQuery];
  [hasItemsQuery cancel];

  v6 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:@"contentType == *firstParty" attributes:0];
  [(PSCoreSpotlightIndexer *)self setHasItemsQuery:v6];

  searchableItemClassIdentifier = [(PSCoreSpotlightIndexer *)self searchableItemClassIdentifier];
  v24[0] = searchableItemClassIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  hasItemsQuery2 = [(PSCoreSpotlightIndexer *)self hasItemsQuery];
  [hasItemsQuery2 setBundleIDs:v8];

  v10 = *MEMORY[0x1E696A388];
  v23[0] = *MEMORY[0x1E696A378];
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  hasItemsQuery3 = [(PSCoreSpotlightIndexer *)self hasItemsQuery];
  [hasItemsQuery3 setProtectionClasses:v11];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __50__PSCoreSpotlightIndexer_hasfirstPartyIndexItems___block_invoke;
  v20 = &unk_1E71DE8D8;
  selfCopy = self;
  v22 = itemsCopy;
  v13 = itemsCopy;
  v14 = _Block_copy(&v17);
  v15 = [(PSCoreSpotlightIndexer *)self hasItemsQuery:v17];
  [v15 setCompletionHandler:v14];

  hasItemsQuery4 = [(PSCoreSpotlightIndexer *)self hasItemsQuery];
  [hasItemsQuery4 start];
}

uint64_t __50__PSCoreSpotlightIndexer_hasfirstPartyIndexItems___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) hasItemsQuery];
    [v2 foundItemCount];

    v3 = *(*(v1 + 40) + 16);

    return v3();
  }

  return result;
}

- (id)fedStatsStringsFromManifestBundlesAtURLs:(id)ls withCompletion:(id)completion
{
  v82 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  completionCopy = completion;
  v6 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = lsCopy;
  v42 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v42)
  {
    v40 = *MEMORY[0x1E695DC30];
    v41 = *v71;
    do
    {
      v7 = 0;
      do
      {
        if (*v71 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v7;
        v8 = *(*(&v70 + 1) + 8 * v7);
        v43 = objc_autoreleasePoolPush();
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v40];
        v69 = 0;
        v11 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v10 options:4 error:&v69];
        v12 = v69;

        v45 = v12;
        if (v12)
        {
          v13 = PKLogForCategory(4);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v78 = v12;
            v79 = 2114;
            v80 = v8;
            _os_log_error_impl(&dword_18B008000, v13, OS_LOG_TYPE_ERROR, "error reading manifest bundles: %{public}@ for path: %{public}@", buf, 0x16u);
          }
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v47 = v11;
        v48 = [v47 countByEnumeratingWithState:&v65 objects:v76 count:16];
        if (v48)
        {
          v14 = *v66;
          v46 = *v66;
          do
          {
            v15 = 0;
            do
            {
              if (*v66 != v14)
              {
                objc_enumerationMutation(v47);
              }

              v50 = v15;
              v16 = *(*(&v65 + 1) + 8 * v15);
              context = objc_autoreleasePoolPush();
              lastPathComponent = [v16 lastPathComponent];
              pathExtension = [lastPathComponent pathExtension];
              v19 = [pathExtension isEqualToString:@"bundle"];

              if (v19)
              {
                v54 = [MEMORY[0x1E696AAE8] bundleWithURL:v16];
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v51 = [(PSCoreSpotlightIndexer *)self manifestsFromDirectory:v16];
                v55 = [v51 countByEnumeratingWithState:&v61 objects:v75 count:16];
                if (v55)
                {
                  v52 = *v62;
                  do
                  {
                    v20 = 0;
                    do
                    {
                      if (*v62 != v52)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v56 = v20;
                      v21 = *(*(&v61 + 1) + 8 * v20);
                      v22 = PKLogForCategory(4);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v78 = v21;
                        _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "Fetching from file: %@", buf, 0xCu);
                      }

                      v23 = +[PSSpecifier emptyGroupSpecifier];
                      v24 = [(PSCoreSpotlightIndexer *)self searchableItemsFromManifest:v21 specifier:v23 bundle:v54 processCapabilities:0];

                      [v54 unload];
                      v57 = 0u;
                      v58 = 0u;
                      v59 = 0u;
                      v60 = 0u;
                      v25 = v24;
                      v26 = [v25 countByEnumeratingWithState:&v57 objects:v74 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v58;
                        do
                        {
                          for (i = 0; i != v27; ++i)
                          {
                            if (*v58 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v30 = *(*(&v57 + 1) + 8 * i);
                            name = [v30 name];
                            v32 = [name stringByReplacingOccurrencesOfString:@" " withString:@"_"];

                            v33 = MEMORY[0x1E696AEC0];
                            v34 = [v30 url];
                            v35 = [v33 stringWithFormat:@"%@:%@", v34, v32];

                            [v6 addObject:v35];
                          }

                          v27 = [v25 countByEnumeratingWithState:&v57 objects:v74 count:16];
                        }

                        while (v27);
                      }

                      v20 = v56 + 1;
                    }

                    while (v56 + 1 != v55);
                    v55 = [v51 countByEnumeratingWithState:&v61 objects:v75 count:16];
                  }

                  while (v55);
                }

                v14 = v46;
              }

              objc_autoreleasePoolPop(context);
              v15 = v50 + 1;
            }

            while (v50 + 1 != v48);
            v48 = [v47 countByEnumeratingWithState:&v65 objects:v76 count:16];
          }

          while (v48);
        }

        objc_autoreleasePoolPop(v43);
        v7 = v44 + 1;
      }

      while (v44 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v42);
  }

  v36 = [v6 copy];

  return v36;
}

- (id)readManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests
{
  v103 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  bundlesCopy = bundles;
  manifestsCopy = manifests;
  v72 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = lsCopy;
  v61 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v61)
  {
    v60 = *v91;
    v58 = *MEMORY[0x1E695DC30];
    *&v10 = 138543618;
    v57 = v10;
    v65 = bundlesCopy;
    v71 = manifestsCopy;
    do
    {
      for (i = 0; i != v61; i = v22 + 1)
      {
        if (*v91 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v64 = i;
        v12 = *(*(&v90 + 1) + 8 * i);
        v63 = objc_autoreleasePoolPush();
        v89 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v12 path];
        v15 = [defaultManager fileExistsAtPath:path isDirectory:&v89];

        if (v15)
        {
          if (v89)
          {
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v17 = [MEMORY[0x1E695DEC8] arrayWithObject:v58];
            v88 = 0;
            v18 = [defaultManager2 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v17 options:4 error:&v88];
            v19 = v88;

            v62 = v19;
            if (v19)
            {
              v20 = PKLogForCategory(4);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = v57;
                v98 = v19;
                v99 = 2114;
                v100 = v12;
                _os_log_error_impl(&dword_18B008000, v20, OS_LOG_TYPE_ERROR, "error reading manifest bundles: %{public}@ for path: %{public}@", buf, 0x16u);
              }

LABEL_17:
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v24 = v18;
              v25 = [v24 countByEnumeratingWithState:&v84 objects:v96 count:16];
              if (!v25)
              {
                goto LABEL_52;
              }

              v26 = v25;
              v27 = *v85;
              v66 = *v85;
              v67 = v24;
              while (2)
              {
                v28 = 0;
                v68 = v26;
LABEL_20:
                if (*v85 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v70 = v28;
                v29 = *(*(&v84 + 1) + 8 * v28);
                context = objc_autoreleasePoolPush();
                if ([bundlesCopy containsObject:v29])
                {
                  v30 = PKLogForCategory(4);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    absoluteString = [v29 absoluteString];
                    *buf = 138412290;
                    v98 = absoluteString;
                    _os_log_impl(&dword_18B008000, v30, OS_LOG_TYPE_DEFAULT, "Skipping blocklisted bundle %@", buf, 0xCu);
                  }

                  goto LABEL_49;
                }

                lastPathComponent = [v29 lastPathComponent];
                pathExtension = [lastPathComponent pathExtension];
                v34 = [pathExtension isEqualToString:@"bundle"];

                if (v34)
                {
                  v30 = [MEMORY[0x1E696AAE8] bundleWithURL:v29];
                  v80 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v75 = [(PSCoreSpotlightIndexer *)self manifestsFromDirectory:v29];
                  v35 = [v75 countByEnumeratingWithState:&v80 objects:v95 count:16];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = *v81;
                    do
                    {
                      v38 = 0;
                      v74 = v36;
                      do
                      {
                        if (*v81 != v37)
                        {
                          objc_enumerationMutation(v75);
                        }

                        v39 = *(*(&v80 + 1) + 8 * v38);
                        v40 = [manifestsCopy containsObject:{v39, v57}];
                        v41 = PKLogForCategory(4);
                        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
                        if (v40)
                        {
                          if (v42)
                          {
                            absoluteString2 = [v39 absoluteString];
                            *buf = 138412290;
                            v98 = absoluteString2;
                            _os_log_impl(&dword_18B008000, v41, OS_LOG_TYPE_DEFAULT, "Skipping blocklisted manifest %@", buf, 0xCu);
                          }
                        }

                        else
                        {
                          if (v42)
                          {
                            *buf = 138412290;
                            v98 = v39;
                            _os_log_impl(&dword_18B008000, v41, OS_LOG_TYPE_DEFAULT, "Fetching from file: %@", buf, 0xCu);
                          }

                          v44 = +[PSSpecifier emptyGroupSpecifier];
                          v45 = [(PSCoreSpotlightIndexer *)self searchableItemsFromManifest:v39 specifier:v44 bundle:v30 processCapabilities:1];

                          v46 = v30;
                          [v30 unload];
                          v47 = PKLogForCategory(4);
                          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v98 = v39;
                            _os_log_impl(&dword_18B008000, v47, OS_LOG_TYPE_DEFAULT, "Converting %@", buf, 0xCu);
                          }

                          v48 = v37;

                          v41 = objc_opt_new();
                          v76 = 0u;
                          v77 = 0u;
                          v78 = 0u;
                          v79 = 0u;
                          v49 = v45;
                          v50 = [v49 countByEnumeratingWithState:&v76 objects:v94 count:16];
                          if (v50)
                          {
                            v51 = v50;
                            v52 = *v77;
                            do
                            {
                              for (j = 0; j != v51; ++j)
                              {
                                if (*v77 != v52)
                                {
                                  objc_enumerationMutation(v49);
                                }

                                toAutomationDictionary = [*(*(&v76 + 1) + 8 * j) toAutomationDictionary];
                                [v41 addObject:toAutomationDictionary];
                              }

                              v51 = [v49 countByEnumeratingWithState:&v76 objects:v94 count:16];
                            }

                            while (v51);
                          }

                          absoluteString3 = [v39 absoluteString];
                          [v72 setObject:v41 forKey:absoluteString3];

                          manifestsCopy = v71;
                          v30 = v46;
                          v37 = v48;
                          v36 = v74;
                        }

                        ++v38;
                      }

                      while (v38 != v36);
                      v36 = [v75 countByEnumeratingWithState:&v80 objects:v95 count:16];
                    }

                    while (v36);
                  }

                  bundlesCopy = v65;
                  v27 = v66;
                  v24 = v67;
                  v26 = v68;
LABEL_49:
                }

                objc_autoreleasePoolPop(context);
                v28 = v70 + 1;
                if (v70 + 1 == v26)
                {
                  v26 = [v24 countByEnumeratingWithState:&v84 objects:v96 count:16];
                  if (!v26)
                  {
LABEL_52:

                    v23 = v63;
                    v22 = v64;
                    v21 = v62;
                    goto LABEL_53;
                  }

                  continue;
                }

                goto LABEL_20;
              }
            }
          }

          else
          {
            v101 = v12;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
          }

          v62 = 0;
          goto LABEL_17;
        }

        v21 = PKLogForCategory(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v98 = v12;
          _os_log_error_impl(&dword_18B008000, v21, OS_LOG_TYPE_ERROR, "path at %{public}@ does not exist", buf, 0xCu);
        }

        v23 = v63;
        v22 = v64;
LABEL_53:

        objc_autoreleasePoolPop(v23);
      }

      v61 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v61);
  }

  return v72;
}

- (void)private_indexManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests dryRun:(BOOL)run withCompletion:(id)completion
{
  lsCopy = ls;
  bundlesCopy = bundles;
  manifestsCopy = manifests;
  completionCopy = completion;
  spotlightIndexQueue = self->_spotlightIndexQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke;
  v21[3] = &unk_1E71DE920;
  v22 = lsCopy;
  v23 = bundlesCopy;
  selfCopy = self;
  v25 = manifestsCopy;
  runCopy = run;
  v26 = completionCopy;
  v17 = completionCopy;
  v18 = manifestsCopy;
  v19 = bundlesCopy;
  v20 = lsCopy;
  dispatch_async(spotlightIndexQueue, v21);
}

void __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E71DE920;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = *(a1 + 48);
  v4 = *(&v9 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v13 = v5;
  v14 = v9;
  v16 = *(a1 + 72);
  v15 = *(a1 + 64);
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (*(a1 + 72) == 1)
  {
    v6[2](v6);
  }

  else
  {
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_2_287;
    v10[3] = &unk_1E71DD4D8;
    v10[4] = v8;
    v11 = v6;
    [v8 performYukonManifestMigrationWithCompletion:v10];
  }
}

void __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_2(uint64_t a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Index Deleted. Reindexing Manifests...", buf, 2u);
  }

  group = dispatch_group_create();
  v76 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = *(a1 + 32);
  v67 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
  if (v67)
  {
    v66 = *v107;
    v64 = *MEMORY[0x1E695DC30];
    do
    {
      v3 = 0;
      do
      {
        if (*v107 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v3;
        v4 = *(*(&v106 + 1) + 8 * v3);
        v69 = objc_autoreleasePoolPush();
        v105 = 0;
        v5 = [MEMORY[0x1E696AC08] defaultManager];
        v6 = [v4 path];
        v7 = [v5 fileExistsAtPath:v6 isDirectory:&v105];

        if (v7)
        {
          if (v105)
          {
            v8 = [MEMORY[0x1E696AC08] defaultManager];
            v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v64];
            v104 = 0;
            v10 = [v8 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v9 options:4 error:&v104];
            v11 = v104;

            v68 = v11;
            if (v11)
            {
              v12 = PKLogForCategory(4);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v115 = v11;
                v116 = 2114;
                v117 = v4;
                _os_log_error_impl(&dword_18B008000, v12, OS_LOG_TYPE_ERROR, "error reading manifest bundles: %{public}@ for path: %{public}@", buf, 0x16u);
              }

LABEL_18:
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v14 = v10;
              v15 = [v14 countByEnumeratingWithState:&v100 objects:v113 count:16];
              if (!v15)
              {
                goto LABEL_58;
              }

              v16 = v15;
              v17 = *v101;
              v71 = *v101;
              v72 = v14;
              while (2)
              {
                v18 = 0;
                v73 = v16;
LABEL_21:
                if (*v101 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v75 = v18;
                v19 = *(*(&v100 + 1) + 8 * v18);
                context = objc_autoreleasePoolPush();
                if ([*(a1 + 40) containsObject:v19])
                {
                  v20 = PKLogForCategory(4);
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    v21 = [v19 absoluteString];
                    *buf = 138412290;
                    v115 = v21;
                    _os_log_impl(&dword_18B008000, v20, OS_LOG_TYPE_DEFAULT, "Skipping blocklisted bundle %@", buf, 0xCu);
                  }

                  goto LABEL_55;
                }

                v22 = [v19 lastPathComponent];
                v23 = [v22 pathExtension];
                v24 = [v23 isEqualToString:@"bundle"];

                if (v24)
                {
                  v78 = [MEMORY[0x1E696AAE8] bundleWithURL:v19];
                  v96 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v80 = [*(a1 + 48) manifestsFromDirectory:v19];
                  v25 = [v80 countByEnumeratingWithState:&v96 objects:v112 count:16];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = *v97;
                    do
                    {
                      v28 = 0;
                      v79 = v26;
                      do
                      {
                        if (*v97 != v27)
                        {
                          objc_enumerationMutation(v80);
                        }

                        v29 = *(*(&v96 + 1) + 8 * v28);
                        v30 = [*(a1 + 56) containsObject:v29];
                        v31 = PKLogForCategory(4);
                        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
                        if (v30)
                        {
                          if (v32)
                          {
                            v33 = [v29 absoluteString];
                            *buf = 138412290;
                            v115 = v33;
                            _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "Skipping blocklisted manifest %@", buf, 0xCu);
                          }
                        }

                        else
                        {
                          if (v32)
                          {
                            *buf = 138412290;
                            v115 = v29;
                            _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "Fetching from file: %@", buf, 0xCu);
                          }

                          v34 = a1;
                          v35 = *(a1 + 48);
                          v36 = +[PSSpecifier emptyGroupSpecifier];
                          v37 = [v35 searchableItemsFromManifest:v29 specifier:v36 bundle:v78 processCapabilities:1];

                          [v78 unload];
                          v38 = PKLogForCategory(4);
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v115 = v29;
                            _os_log_impl(&dword_18B008000, v38, OS_LOG_TYPE_DEFAULT, "Converting %@", buf, 0xCu);
                          }

                          v31 = objc_opt_new();
                          v92 = 0u;
                          v93 = 0u;
                          v94 = 0u;
                          v95 = 0u;
                          v39 = v37;
                          v40 = [v39 countByEnumeratingWithState:&v92 objects:v111 count:16];
                          if (v40)
                          {
                            v41 = v40;
                            v42 = *v93;
                            do
                            {
                              for (i = 0; i != v41; ++i)
                              {
                                if (*v93 != v42)
                                {
                                  objc_enumerationMutation(v39);
                                }

                                v44 = [*(*(&v92 + 1) + 8 * i) toCSSearchableItem];
                                [v31 addObject:v44];
                              }

                              v41 = [v39 countByEnumeratingWithState:&v92 objects:v111 count:16];
                            }

                            while (v41);
                          }

                          v45 = PKLogForCategory(4);
                          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v115 = v29;
                            _os_log_impl(&dword_18B008000, v45, OS_LOG_TYPE_DEFAULT, "Indexing %@", buf, 0xCu);
                          }

                          a1 = v34;
                          if (*(v34 + 72) == 1)
                          {
                            [v76 addObjectsFromArray:v31];
                          }

                          else
                          {
                            dispatch_group_enter(group);
                            v46 = *(v34 + 48);
                            v90[0] = MEMORY[0x1E69E9820];
                            v90[1] = 3221225472;
                            v90[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_273;
                            v90[3] = &unk_1E71DC570;
                            v90[4] = v29;
                            v91 = group;
                            [v46 _indexSearchableItems:v31 completionHandler:v90];
                          }

                          v26 = v79;
                        }

                        ++v28;
                      }

                      while (v28 != v26);
                      v26 = [v80 countByEnumeratingWithState:&v96 objects:v112 count:16];
                    }

                    while (v26);
                  }

                  v17 = v71;
                  v14 = v72;
                  v16 = v73;
                  v20 = v78;
LABEL_55:
                }

                objc_autoreleasePoolPop(context);
                v18 = v75 + 1;
                if (v75 + 1 == v16)
                {
                  v16 = [v14 countByEnumeratingWithState:&v100 objects:v113 count:16];
                  if (!v16)
                  {
LABEL_58:

                    v13 = v68;
                    goto LABEL_59;
                  }

                  continue;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v118 = v4;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
          }

          v68 = 0;
          goto LABEL_18;
        }

        v13 = PKLogForCategory(4);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v115 = v4;
          _os_log_error_impl(&dword_18B008000, v13, OS_LOG_TYPE_ERROR, "path at %{public}@ does not exist", buf, 0xCu);
        }

LABEL_59:

        objc_autoreleasePoolPop(v69);
        v3 = v70 + 1;
      }

      while (v70 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
    }

    while (v67);
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v47 = [MEMORY[0x1E695E000] standardUserDefaults];
    v48 = [v47 BOOLForKey:@"PSCoreSpolightIndexerWriteFedStatsStrings"];

    if (v48)
    {
      v82 = a1;
      v81 = [*(a1 + 48) fedStatsStringsFromManifestBundlesAtURLs:*(a1 + 32) withCompletion:0];
      v49 = [v81 sortedArrayUsingComparator:&__block_literal_global_27];
      v50 = [&stru_1EFE45030 mutableCopy];
      v51 = objc_opt_new();
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v52 = v49;
      v53 = [v52 countByEnumeratingWithState:&v86 objects:v110 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v87;
        do
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v87 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v86 + 1) + 8 * j);
            if (([v51 containsObject:v57] & 1) == 0)
            {
              [v51 addObject:v57];
              v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v57];
              [v50 appendString:v58];
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v86 objects:v110 count:16];
        }

        while (v54);
      }

      v59 = NSTemporaryDirectory();
      v60 = [v59 stringByAppendingPathComponent:@"fedstats_index_strings.txt"];

      [v50 writeToFile:v60 atomically:1 encoding:4 error:0];
      v61 = PKLogForCategory(4);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v115 = "[PSCoreSpotlightIndexer private_indexManifestBundlesAtURLs:skippingBundles:skippingManifests:dryRun:withCompletion:]_block_invoke_2";
        v116 = 2112;
        v117 = v60;
        _os_log_impl(&dword_18B008000, v61, OS_LOG_TYPE_DEFAULT, "%s: fedstats index strings file: %@", buf, 0x16u);
      }

      a1 = v82;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_286;
  block[3] = &unk_1E71DD230;
  v62 = *(a1 + 64);
  v84 = v76;
  v85 = v62;
  v63 = v76;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
}

void __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_273(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Indexing Manifest completed for %@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_286(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_2_287(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 searchableFirstPartyItemClassIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__PSCoreSpotlightIndexer_private_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_dryRun_withCompletion___block_invoke_3;
  v5[3] = &unk_1E71DC0D8;
  v6 = *(a1 + 40);
  [v2 deleteIndexWithDomainIdentifiers:v4 completionBlock:v5];
}

- (void)indexManifestBundlesAtURLs:(id)ls skippingBundles:(id)bundles skippingManifests:(id)manifests withCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__PSCoreSpotlightIndexer_indexManifestBundlesAtURLs_skippingBundles_skippingManifests_withCompletion___block_invoke;
  v12[3] = &unk_1E71DE948;
  v13 = completionCopy;
  v11 = completionCopy;
  [(PSCoreSpotlightIndexer *)self private_indexManifestBundlesAtURLs:ls skippingBundles:bundles skippingManifests:manifests dryRun:0 withCompletion:v12];
}

- (void)indexManifestBundlesAtURLs:(id)ls withCompletion:(id)completion
{
  completionCopy = completion;
  lsCopy = ls;
  v9 = objc_opt_new();
  v8 = objc_opt_new();
  [(PSCoreSpotlightIndexer *)self indexManifestBundlesAtURLs:lsCopy skippingBundles:v9 skippingManifests:v8 withCompletion:completionCopy];
}

- (void)indexManifestBundlesAtURL:(id)l withCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  lCopy2 = l;
  v9 = [v6 arrayWithObjects:&lCopy count:1];

  [(PSCoreSpotlightIndexer *)self indexManifestBundlesAtURLs:v9 withCompletion:completionCopy, lCopy, v11];
}

- (void)topHitSearchForString:(id)string keyboardLanguage:(id)language foundItemsHandler:(id)handler completionHandler:(id)completionHandler
{
  v30 = *MEMORY[0x1E69E9840];
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  languageCopy = language;
  stringCopy = string;
  searchQuery = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery cancel];

  v15 = PKLogForCategory(4);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing top hit search", buf, 0xCu);
  }

  v16 = [objc_alloc(MEMORY[0x1E6964EC0]) initWithSearchString:stringCopy keyboardLanguage:languageCopy attributes:&unk_1EFE65F10 hitCount:500];
  [(PSCoreSpotlightIndexer *)self setSearchQuery:v16];

  searchableItemClassIdentifier = [(PSCoreSpotlightIndexer *)self searchableItemClassIdentifier];
  v27 = searchableItemClassIdentifier;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  searchQuery2 = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery2 setBundleIDs:v18];

  v20 = *MEMORY[0x1E696A388];
  v26[0] = *MEMORY[0x1E696A378];
  v26[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  searchQuery3 = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery3 setProtectionClasses:v21];

  searchQuery4 = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery4 setFoundItemsHandler:handlerCopy];

  searchQuery5 = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery5 setCompletionHandler:completionHandlerCopy];

  searchQuery6 = [(PSCoreSpotlightIndexer *)self searchQuery];
  [searchQuery6 start];
}

- (void)reindexSpecifiersIfNeeded:(id)needed bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion setHasIndexed:(BOOL)indexed completion:(id)a8
{
  completionCopy = completion;
  neededCopy = needed;
  bundleCopy = bundle;
  prefixCopy = prefix;
  v17 = a8;
  if ([(PSCoreSpotlightIndexer *)self needsIndex])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke;
    aBlock[3] = &unk_1E71DE920;
    indexedCopy = indexed;
    aBlock[4] = self;
    v29 = neededCopy;
    v30 = bundleCopy;
    v31 = prefixCopy;
    v32 = v17;
    v18 = _Block_copy(aBlock);
    v19 = v18;
    spotlightIndexQueue = self->_spotlightIndexQueue;
    if (completionCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_311;
      block[3] = &unk_1E71DC0D8;
      v21 = &v27;
      v27 = v18;
      v22 = v18;
      dispatch_sync(spotlightIndexQueue, block);
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_2;
      v24[3] = &unk_1E71DC0D8;
      v21 = &v25;
      v25 = v18;
      v23 = v18;
      dispatch_async(spotlightIndexQueue, v24);
    }
  }
}

void __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setHasIndexed];
  }

  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Gathering index items...", buf, 2u);
  }

  v3 = objc_opt_new();
  [*(a1 + 32) setIndexFromControllerLog:v3];

  v4 = [*(a1 + 32) csSearchableItemsFromSpecifiers:*(a1 + 40) bundle:*(a1 + 48) category:0 pathURL:0 withURLPrefix:*(a1 + 56) parentSpecifierNames:0];
  v5 = PKLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Deleting index", buf, 2u);
  }

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_309;
  v8[3] = &unk_1E71DC5E8;
  v8[4] = v6;
  v9 = v4;
  v10 = *(a1 + 64);
  v7 = v4;
  [v6 deleteIndexWithCompletionBlock:v8];
}

void __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_309(uint64_t a1)
{
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Index Deleted. Reindexing...", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_310;
  v5[3] = &unk_1E71DD4D8;
  v5[4] = v3;
  v6 = *(a1 + 48);
  [v3 _indexSearchableItems:v4 completionHandler:v5];
}

uint64_t __116__PSCoreSpotlightIndexer_reindexSpecifiersIfNeeded_bundle_withURLPrefix_waitForCompletion_setHasIndexed_completion___block_invoke_310(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Indexing completed. Indexed the following PSListControllers:", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 32) indexFromControllerLog];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = PKLogForCategory(4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v16 = v8;
          _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)indexSpecifiers:(id)specifiers bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion completion:(id)a7
{
  completionCopy = completion;
  specifiersCopy = specifiers;
  bundleCopy = bundle;
  prefixCopy = prefix;
  v15 = a7;
  spotlightIndexQueue = self->_spotlightIndexQueue;
  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PSCoreSpotlightIndexer_indexSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke;
    block[3] = &unk_1E71DE970;
    block[4] = self;
    v17 = &v27;
    v27 = specifiersCopy;
    v18 = &v28;
    v28 = bundleCopy;
    v19 = &v29;
    v29 = prefixCopy;
    v20 = &v30;
    v30 = v15;
    dispatch_sync(spotlightIndexQueue, block);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__PSCoreSpotlightIndexer_indexSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke_2;
    v21[3] = &unk_1E71DE970;
    v21[4] = self;
    v17 = &v22;
    v22 = specifiersCopy;
    v18 = &v23;
    v23 = bundleCopy;
    v19 = &v24;
    v24 = prefixCopy;
    v20 = &v25;
    v25 = v15;
    dispatch_async(spotlightIndexQueue, v21);
  }
}

void __92__PSCoreSpotlightIndexer_indexSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 csSearchableItemsFromSpecifiers:a1[5] bundle:a1[6] category:0 pathURL:0 withURLPrefix:a1[7] parentSpecifierNames:0];
  [v2 _indexSearchableItems:v3 completionHandler:a1[8]];
}

void __92__PSCoreSpotlightIndexer_indexSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [v2 csSearchableItemsFromSpecifiers:a1[5] bundle:a1[6] category:0 pathURL:0 withURLPrefix:a1[7] parentSpecifierNames:0];
  [v2 _indexSearchableItems:v3 completionHandler:a1[8]];
}

- (void)deleteSpecifiers:(id)specifiers bundle:(id)bundle withURLPrefix:(id)prefix waitForCompletion:(BOOL)completion completion:(id)a7
{
  completionCopy = completion;
  specifiersCopy = specifiers;
  bundleCopy = bundle;
  prefixCopy = prefix;
  v15 = a7;
  spotlightIndexQueue = self->_spotlightIndexQueue;
  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__PSCoreSpotlightIndexer_deleteSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke;
    block[3] = &unk_1E71DE970;
    block[4] = self;
    v17 = &v27;
    v27 = specifiersCopy;
    v18 = &v28;
    v28 = bundleCopy;
    v19 = &v29;
    v29 = prefixCopy;
    v20 = &v30;
    v30 = v15;
    dispatch_sync(spotlightIndexQueue, block);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__PSCoreSpotlightIndexer_deleteSpecifiers_bundle_withURLPrefix_waitForCompletion_completion___block_invoke_2;
    v21[3] = &unk_1E71DE970;
    v21[4] = self;
    v17 = &v22;
    v22 = specifiersCopy;
    v18 = &v23;
    v23 = bundleCopy;
    v19 = &v24;
    v24 = prefixCopy;
    v20 = &v25;
    v25 = v15;
    dispatch_async(spotlightIndexQueue, v21);
  }
}

- (void)deleteIndexWithCompletionBlock:(id)block
{
  blockCopy = block;
  prefsSearchableIndex = [(PSCoreSpotlightIndexer *)self prefsSearchableIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PSCoreSpotlightIndexer_deleteIndexWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E71DE998;
  v8 = blockCopy;
  v6 = blockCopy;
  [prefsSearchableIndex deleteAllSearchableItemsWithCompletionHandler:v7];
}

void __57__PSCoreSpotlightIndexer_deleteIndexWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__PSCoreSpotlightIndexer_deleteIndexWithCompletionBlock___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Deleted existing Settings Spotlight Index", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)deleteIndexWithDomainIdentifiers:(id)identifiers completionBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  prefsSearchableIndex = [(PSCoreSpotlightIndexer *)self prefsSearchableIndex];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PSCoreSpotlightIndexer_deleteIndexWithDomainIdentifiers_completionBlock___block_invoke;
  v11[3] = &unk_1E71DE9C0;
  v12 = identifiersCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifiersCopy;
  [prefsSearchableIndex deleteSearchableItemsWithDomainIdentifiers:v10 completionHandler:v11];
}

void __75__PSCoreSpotlightIndexer_deleteIndexWithDomainIdentifiers_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__PSCoreSpotlightIndexer_deleteIndexWithDomainIdentifiers_completionBlock___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Deleted existing Settings Spotlight Index for domains: %@", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (id)searchableItemsFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names
{
  v91 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  bundleCopy = bundle;
  v15 = specifiersCopy;
  v16 = bundleCopy;
  categoryCopy = category;
  lCopy = l;
  prefixCopy = prefix;
  namesCopy = names;
  v61 = namesCopy;
  if ([specifiersCopy count])
  {
    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([namesCopy count] <= 9)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = specifiersCopy;
      v18 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
      selfCopy2 = self;
      if (v18)
      {
        v20 = v18;
        v21 = *v81;
        v56 = *v81;
        v57 = v16;
        do
        {
          v22 = 0;
          v60 = v20;
          do
          {
            if (*v81 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v80 + 1) + 8 * v22);
            if (ShouldIndexSpecifier(v23))
            {
              v24 = [(PSCoreSpotlightIndexer *)selfCopy2 _bundleForSpecifier:v23 parentBundle:v16];
              v73 = v23;
              if (([v24 isEqual:v16] & 1) == 0)
              {
                v25 = [(PSCoreSpotlightIndexer *)selfCopy2 searchableItemsFromManifestsForSpecifier:v23 bundle:v24];
                [v66 addObjectsFromArray:v25];
              }

              v72 = v24;
              v71 = [(PSCoreSpotlightIndexer *)selfCopy2 _specifiersForSpecifier:v23 bundle:v24 parentBundle:v16];
              identifier = [v23 identifier];
              uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
              v28 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

              v70 = v28;
              if ([v28 length])
              {
                v29 = [v23 propertyForKey:@"detail"];
                if (v29)
                {
                  v30 = 0;
                }

                else
                {
                  v31 = [v23 propertyForKey:@"bundle"];
                  if (v31)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = [v23 detailControllerClass] == 0;
                  }
                }

                v78 = 0;
                v79 = 0;
                v65 = v30;
                LOBYTE(v55) = v30;
                v69 = [(PSCoreSpotlightIndexer *)selfCopy2 _urlForSpecifier:v23 identifier:v70 category:categoryCopy childCategory:&v79 prefix:prefixCopy path:&v78 baseURL:lCopy shouldLinkToRow:v55];
                v67 = v79;
                v68 = v78;
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v32 = v71;
                v33 = [v32 countByEnumeratingWithState:&v74 objects:v89 count:16];
                if (v33)
                {
                  v34 = v33;
                  v35 = 0;
                  v36 = *v75;
                  do
                  {
                    for (i = 0; i != v34; ++i)
                    {
                      if (*v75 != v36)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v38 = *(*(&v74 + 1) + 8 * i);
                      if (![v38 cellType])
                      {
                        name = [v38 name];
                        v40 = [name length];

                        if (v40)
                        {
                          if (!v35)
                          {
                            v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
                          }

                          name2 = [v38 name];
                          [v35 addObject:name2];
                        }
                      }
                    }

                    v34 = [v32 countByEnumeratingWithState:&v74 objects:v89 count:16];
                  }

                  while (v34);
                }

                else
                {
                  v35 = 0;
                }

                name3 = [v73 name];
                selfCopy2 = self;
                v43 = [(PSCoreSpotlightIndexer *)self _descriptionForSpecifierName:name3 withParentSpecifierNames:v61];

                name4 = [v73 name];
                v45 = [name4 length];

                if (v45)
                {
                  bundleIdentifier = [v72 bundleIdentifier];
                  v47 = [(PSCoreSpotlightIndexer *)self searchableItemForSpecifier:v73 bundleID:bundleIdentifier category:categoryCopy keywords:v35 url:v69 description:v43];

                  [v66 addObject:v47];
                }

                v48 = v67;
                if ([v32 count])
                {
                  name5 = [v73 name];

                  if (name5)
                  {
                    name6 = [v73 name];
                    if (v61)
                    {
                      [v61 arrayByAddingObject:name6];
                    }

                    else
                    {
                      v88 = name6;
                      [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
                    }
                    name5 = ;
                  }

                  v51 = [(PSCoreSpotlightIndexer *)self searchableItemsFromSpecifiers:v32 bundle:v72 category:v67 pathURL:v68 withURLPrefix:prefixCopy parentSpecifierNames:name5];
                  [v66 addObjectsFromArray:v51];
                }

                v16 = v57;
                v20 = v60;
                if ([v32 count] == 0 && !v65)
                {
                  v52 = PKLogForCategory(4);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    name7 = [v73 name];
                    *buf = 138412546;
                    v85 = name7;
                    v86 = 2112;
                    v87 = v69;
                    _os_log_impl(&dword_18B008000, v52, OS_LOG_TYPE_DEFAULT, "Can't find children for %@ URL: %@", buf, 0x16u);

                    v48 = v67;
                  }
                }

                v21 = v56;
              }
            }

            ++v22;
          }

          while (v22 != v20);
          v20 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
        }

        while (v20);
      }

      v15 = specifiersCopy;
    }
  }

  else
  {
    v66 = 0;
  }

  return v66;
}

- (id)csSearchableItemsFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [(PSCoreSpotlightIndexer *)self searchableItemsFromSpecifiers:specifiers bundle:bundle category:category pathURL:l withURLPrefix:prefix parentSpecifierNames:names];
  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        toCSSearchableItem = [*(*(&v18 + 1) + 8 * i) toCSSearchableItem];
        [v9 addObject:toCSSearchableItem];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];

  return v16;
}

- (id)manifestFromSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix parentSpecifierNames:(id)names
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [(PSCoreSpotlightIndexer *)self searchableItemsFromSpecifiers:specifiers bundle:bundle category:category pathURL:l withURLPrefix:prefix parentSpecifierNames:names];
  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        toManifestDictionary = [*(*(&v18 + 1) + 8 * i) toManifestDictionary];
        [v9 addObject:toManifestDictionary];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];

  return v16;
}

- (void)_indexChunkOfSearchableItems:(id)items completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v8 = PKLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "Indexing chunk of %@ items.", buf, 0xCu);
  }

  prefsSearchableIndex = [(PSCoreSpotlightIndexer *)self prefsSearchableIndex];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PSCoreSpotlightIndexer__indexChunkOfSearchableItems_completionHandler___block_invoke;
  v13[3] = &unk_1E71DE9C0;
  v14 = itemsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = itemsCopy;
  [prefsSearchableIndex indexSearchableItems:v12 completionHandler:v13];
}

void __73__PSCoreSpotlightIndexer__indexChunkOfSearchableItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogForCategory(4);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Unable to index items with error: %@", &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Successfully indexed %@ items.", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (void)_indexSearchableItems:(id)items completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  if ([itemsCopy count])
  {
    v8 = PKLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "Indexing %@ items.", buf, 0xCu);
    }

    v10 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addObject:{*(*(&v18 + 1) + 8 * v15), v18}];
          if ([v10 count] >= 0x3E8)
          {
            v16 = [v10 copy];
            [(PSCoreSpotlightIndexer *)self _indexChunkOfSearchableItems:v16 completionHandler:0];

            [v10 removeAllObjects];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
    [(PSCoreSpotlightIndexer *)self _indexChunkOfSearchableItems:v17 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_deleteSpecifiers:(id)specifiers bundle:(id)bundle category:(id)category pathURL:(id)l withURLPrefix:(id)prefix completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  bundleCopy = bundle;
  categoryCopy = category;
  lCopy = l;
  prefixCopy = prefix;
  completionCopy = completion;
  if ([specifiersCopy count])
  {
    v40 = completionCopy;
    v47 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = specifiersCopy;
    obj = specifiersCopy;
    v17 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v18 = prefixCopy;
    if (v17)
    {
      v19 = v17;
      v20 = *v56;
      v43 = *v56;
      do
      {
        v21 = 0;
        v46 = v19;
        do
        {
          if (*v56 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v55 + 1) + 8 * v21);
          if (ShouldIndexSpecifier(v22))
          {
            identifier = [v22 identifier];
            uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
            v25 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

            v49 = v25;
            if ([v25 length])
            {
              v26 = [v22 propertyForKey:@"detail"];
              if (v26)
              {
                v27 = 0;
              }

              else
              {
                v28 = [v22 propertyForKey:@"bundle"];
                if (v28)
                {
                  v27 = 0;
                }

                else
                {
                  v27 = [v22 detailControllerClass] == 0;
                }
              }

              v53 = 0;
              v54 = 0;
              LOBYTE(v39) = v27;
              v29 = [(PSCoreSpotlightIndexer *)self _urlForSpecifier:v22 identifier:v25 category:categoryCopy childCategory:&v54 prefix:v18 path:&v53 baseURL:lCopy shouldLinkToRow:v39];
              v30 = v54;
              v31 = v53;
              [v47 addObject:v29];
              v32 = [(PSCoreSpotlightIndexer *)self _bundleForSpecifier:v22 parentBundle:bundleCopy];
              if (([v32 isEqual:bundleCopy] & 1) == 0)
              {
                [(PSCoreSpotlightIndexer *)self _urlsFromManifestForSpecifier:v22 bundle:bundleCopy];
                v34 = v33 = bundleCopy;
                [v47 addObjectsFromArray:v34];

                bundleCopy = v33;
                v18 = prefixCopy;
              }

              v35 = [(PSCoreSpotlightIndexer *)self _specifiersForSpecifier:v22 bundle:v32 parentBundle:bundleCopy];
              [(PSCoreSpotlightIndexer *)self _deleteSpecifiers:v35 bundle:v32 category:v30 pathURL:v31 withURLPrefix:v18 completion:0];

              v20 = v43;
              v19 = v46;
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v19);
    }

    prefsSearchableIndex = [(PSCoreSpotlightIndexer *)self prefsSearchableIndex];
    v37 = [v47 copy];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __93__PSCoreSpotlightIndexer__deleteSpecifiers_bundle_category_pathURL_withURLPrefix_completion___block_invoke;
    v50[3] = &unk_1E71DE9C0;
    v51 = v47;
    completionCopy = v40;
    v52 = v40;
    v38 = v47;
    [prefsSearchableIndex deleteSearchableItemsWithIdentifiers:v37 completionHandler:v50];

    specifiersCopy = v41;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __93__PSCoreSpotlightIndexer__deleteSpecifiers_bundle_category_pathURL_withURLPrefix_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__PSCoreSpotlightIndexer__deleteSpecifiers_bundle_category_pathURL_withURLPrefix_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Deleted index items with identifiers: %@", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (id)_keyValueDictionaryForURL:(id)l
{
  lCopy = l;
  v4 = +[PSURLManager sharedManager];
  v5 = [v4 keyValueDictionaryForURL:lCopy];

  return v5;
}

- (id)_descriptionForSpecifierName:(id)name withParentSpecifierNames:(id)names
{
  namesCopy = names;
  if ([namesCopy count])
  {
    v5 = PSLocaleLanguageDirection();
    v6 = @"→";
    if (v5 == 2)
    {
      v6 = @"←";
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", v6];
    v8 = [namesCopy componentsJoinedByString:v7];
    if (v5 == 2)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"\u200F"];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_rankingHintScoreForURL:(id)l
{
  v3 = MEMORY[0x1E696AB08];
  lCopy = l;
  v5 = [v3 characterSetWithCharactersInString:@"&/#"];
  v6 = [lCopy componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 count];
  if (v7 > 100)
  {
    v8 = &unk_1EFE65E50;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:100 - v7];
  }

  return v8;
}

- (id)descriptionForCSSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  v4 = MEMORY[0x1E696AEC0];
  subject = [attributeSet subject];
  rankingHint = [attributeSet rankingHint];
  identifier = [attributeSet identifier];
  v8 = [v4 stringWithFormat:@"Search item name=%@, rank=%@, uid=%@", subject, rankingHint, identifier];

  return v8;
}

- (id)descriptionForCSSearchableItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PSCoreSpotlightIndexer *)self descriptionForCSSearchableItem:*(*(&v14 + 1) + 8 * i), v14];
        [v5 appendString:v11];

        [v5 appendString:@"\n"];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)searchableItemForSpecifier:(id)specifier bundleID:(id)d category:(id)category keywords:(id)keywords url:(id)url description:(id)description
{
  descriptionCopy = description;
  urlCopy = url;
  keywordsCopy = keywords;
  categoryCopy = category;
  dCopy = d;
  specifierCopy = specifier;
  v20 = objc_opt_new();
  [v20 setUrl:urlCopy];
  [v20 setBundleID:dCopy];

  name = [specifierCopy name];
  [v20 setName:name];

  [v20 setContentDescription:descriptionCopy];
  [v20 setCategory:categoryCopy];

  identifier = [specifierCopy identifier];
  [v20 setIdentifier:identifier];

  v23 = [(PSCoreSpotlightIndexer *)self _rankingHintScoreForURL:urlCopy];

  [v20 setRankingHint:v23];
  v24 = [specifierCopy propertyForKey:@"requiredCapabilities"];
  [v20 setRequiredCapabilities:v24];

  v25 = [specifierCopy propertyForKey:@"requiredCapabilitiesOr"];
  [v20 setRequiredCapabilitiesOr:v25];

  [v20 setKeywords:keywordsCopy];
  v26 = [specifierCopy propertyForKey:@"AppBundleID"];

  if (v26)
  {
    [(PSCoreSpotlightIndexer *)self searchableThirdPartyItemClassIdentifier];
  }

  else
  {
    [(PSCoreSpotlightIndexer *)self searchableFirstPartyItemClassIdentifier];
  }
  v27 = ;
  [v20 setClassIdentifier:v27];

  return v20;
}

- (id)searchableItemsFromManifest:(id)manifest specifier:(id)specifier bundle:(id)bundle processCapabilities:(BOOL)capabilities
{
  v52 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  specifierCopy = specifier;
  bundleCopy = bundle;
  selfCopy = self;
  skipManifests = [(PSCoreSpotlightIndexer *)self skipManifests];
  v14 = MEMORY[0x1E695E0F0];
  v45 = bundleCopy;
  if (bundleCopy && !skipManifests)
  {
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:manifestCopy];
    v42 = manifestCopy;
    lastPathComponent = [manifestCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v40 = v15;
    v41 = specifierCopy;
    v39 = stringByDeletingPathExtension;
    SearchSpecifiersFromPlistWithCapabilities(v15, specifierCopy, stringByDeletingPathExtension, v45, capabilities);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v50 = 0u;
    v18 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    v20 = *v48;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v47 + 1) + 8 * i);
        if (ShouldIndexSpecifier(v22))
        {
          v23 = [v22 objectForKeyedSubscript:@"keywords"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v22 objectForKeyedSubscript:@"keywords"];
            v25 = [v24 count];

            if (v25)
            {
              v26 = [v22 objectForKeyedSubscript:@"keywords"];
              goto LABEL_16;
            }
          }

          else
          {
          }

          v26 = [v22 objectForKeyedSubscript:@"keywords"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v22 objectForKeyedSubscript:@"keywords"];
            v28 = [v27 length];

            if (v28)
            {
              v29 = [v22 objectForKeyedSubscript:@"keywords"];
              v26 = [v29 componentsSeparatedByString:{@", "}];

              goto LABEL_16;
            }
          }

          else
          {
LABEL_16:
          }

          name = [v22 name];
          v31 = [name length];

          if (v31)
          {
            bundleIdentifier = [v45 bundleIdentifier];
            v33 = [v22 objectForKeyedSubscript:@"searchSectionID"];
            v34 = [v22 objectForKeyedSubscript:@"keywords"];
            v35 = [v22 objectForKeyedSubscript:@"searchURL"];
            v36 = [v22 objectForKeyedSubscript:@"contentDescription"];
            v37 = [(PSCoreSpotlightIndexer *)selfCopy searchableItemForSpecifier:v22 bundleID:bundleIdentifier category:v33 keywords:v34 url:v35 description:v36];

            [v43 addObject:v37];
          }

          continue;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v19)
      {
LABEL_21:
        v14 = [v43 copy];

        specifierCopy = v41;
        manifestCopy = v42;
        break;
      }
    }
  }

  return v14;
}

- (id)searchableItemsFromManifestsForSpecifier:(id)specifier bundle:(id)bundle
{
  v24 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  bundleCopy = bundle;
  skipManifests = [(PSCoreSpotlightIndexer *)self skipManifests];
  v9 = MEMORY[0x1E695E0F0];
  if (bundleCopy && !skipManifests)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    bundleURL = [bundleCopy bundleURL];
    v12 = [(PSCoreSpotlightIndexer *)self manifestsFromDirectory:bundleURL];

    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(PSCoreSpotlightIndexer *)self searchableItemsFromManifest:*(*(&v19 + 1) + 8 * i) specifier:specifierCopy bundle:bundleCopy processCapabilities:1];
          [v10 addObjectsFromArray:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    v9 = [v10 copy];
  }

  return v9;
}

- (id)manifestsFromDirectory:(id)directory
{
  v30 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if (directoryCopy)
  {
    v23 = objc_opt_new();
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
    v28 = 0;
    v6 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v5 options:4 error:&v28];
    v7 = v28;

    if (v7)
    {
      v8 = PKLogForCategory(4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PSCoreSpotlightIndexer manifestsFromDirectory:];
      }
    }

    v21 = v7;
    v22 = directoryCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          lastPathComponent = [v14 lastPathComponent];
          pathExtension = [lastPathComponent pathExtension];
          if ([pathExtension isEqualToString:@"plist"])
          {
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
            v18 = [stringByDeletingPathExtension hasPrefix:@"SettingsSearchManifest"];

            if (v18)
            {
              [v23 addObject:v14];
            }
          }

          else
          {
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v19 = [v23 copy];
    directoryCopy = v22;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (id)_bundleForSpecifier:(id)specifier parentBundle:(id)bundle
{
  bundleCopy = bundle;
  v6 = [specifier propertyForKey:@"bundle"];
  if ([v6 length])
  {
    v7 = MEMORY[0x1E696AAE8];
    v8 = PSBundlePathForPreferenceBundle(v6);
    v10 = v9 = v8;
    v11 = [v7 bundleWithPath:v10];

    if (!v11)
    {
      v12 = SFDeveloperSettingsBundlesDirectoryPath();
      v13 = [v12 stringByAppendingPathComponent:v6];
      v14 = [v13 stringByAppendingPathExtension:@"bundle"];

      v15 = MEMORY[0x1E696AAE8];
      v17 = v16 = v14;
      v11 = [v15 bundleWithPath:v17];

      if (!v11)
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice sf_isInternalInstall])
        {
          keyExistsAndHasValidFormat = 0;
          AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSShouldIndexInternalSettings", @"com.apple.Preferences", &keyExistsAndHasValidFormat);
          v20 = keyExistsAndHasValidFormat;

          v11 = 0;
          if (v20 && AppBooleanValue)
          {
            v21 = [@"/AppleInternal/Library/PreferenceBundles/" stringByAppendingPathComponent:v6];
            v22 = [v21 stringByAppendingPathExtension:@"bundle"];

            v23 = MEMORY[0x1E696AAE8];
            v25 = v24 = v22;
            v11 = [v23 bundleWithPath:v25];
          }
        }

        else
        {

          v11 = 0;
        }
      }
    }
  }

  else
  {
    v11 = bundleCopy;
  }

  return v11;
}

- (id)_specifiersPlistPathForSpecifier:(id)specifier bundle:(id)bundle parentBundle:(id)parentBundle
{
  v27 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  bundleCopy = bundle;
  parentBundleCopy = parentBundle;
  v10 = [specifierCopy propertyForKey:@"searchPlist"];
  if (v10)
  {
    v11 = [bundleCopy pathForResource:v10 ofType:@"plist"];
  }

  else
  {
    identifier = [specifierCopy identifier];
    v13 = [identifier length];

    if (v13)
    {
      identifier2 = [specifierCopy identifier];
      v11 = [bundleCopy pathForResource:identifier2 ofType:@"plist"];
    }

    else
    {
      v11 = 0;
    }

    v15 = [bundleCopy isEqual:parentBundleCopy];
    if (![v11 length] && (v15 & 1) == 0)
    {
      bundleURL = [bundleCopy bundleURL];
      lastPathComponent = [bundleURL lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v19 = [bundleCopy pathForResource:stringByDeletingPathExtension ofType:@"plist"];

      if (![v19 length])
      {
        v20 = PKLogForCategory(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [specifierCopy identifier];
          v23 = 138412546;
          v24 = identifier3;
          v25 = 2112;
          v26 = stringByDeletingPathExtension;
          _os_log_impl(&dword_18B008000, v20, OS_LOG_TYPE_DEFAULT, "Could not find plist for specifier: %@, in bundle: %@", &v23, 0x16u);
        }
      }

      v11 = v19;
    }
  }

  return v11;
}

- (id)_specifiersForSpecifier:(id)specifier bundle:(id)bundle parentBundle:(id)parentBundle
{
  v84 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  bundleCopy = bundle;
  parentBundleCopy = parentBundle;
  if (![specifierCopy cellType])
  {
    specifiers = 0;
    goto LABEL_68;
  }

  v11 = [specifierCopy propertyForKey:@"AppSettingsBundle"];

  if (!v11)
  {
    goto LABEL_26;
  }

  selfCopy = self;
  v12 = [specifierCopy propertyForKey:@"AppSettingsBundle"];
  v13 = [specifierCopy propertyForKey:@"File"];
  v14 = [v12 pathForResource:v13 ofType:@"plist"];
  v15 = v14;
  if (!v13 || v14 == 0)
  {
    specifiers = 0;
  }

  else
  {
    v65 = v12;
    v66 = parentBundleCopy;
    v67 = bundleCopy;
    v64 = v14;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v14];
    v19 = [v18 objectForKeyedSubscript:@"StringsTable"];
    stringByDeletingPathExtension = [v19 stringByDeletingPathExtension];

    v63 = v18;
    v21 = [v18 objectForKeyedSubscript:@"PreferenceSpecifiers"];
    array = [MEMORY[0x1E695DF70] array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v75;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v75 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [PSAppListController specifiersFromDictionary:*(*(&v74 + 1) + 8 * i) stringsTable:stringByDeletingPathExtension parentSpecifier:specifierCopy target:0];
          if (v28)
          {
            [array addObjectsFromArray:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v25);
    }

    if ([array count])
    {
      specifiers = [array copy];
    }

    else
    {
      specifiers = 0;
    }

    v29 = PKLogForCategory(4);
    bundleCopy = v67;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v80 = v13;
      v81 = 2112;
      v82 = specifiers;
      _os_log_impl(&dword_18B008000, v29, OS_LOG_TYPE_DEFAULT, "Got specifiers from 3rd party plist %@: Specifiers: %@", buf, 0x16u);
    }

    v12 = v65;
    parentBundleCopy = v66;
    v15 = v64;
  }

  self = selfCopy;
  if (!specifiers)
  {
LABEL_26:
    v30 = [(PSCoreSpotlightIndexer *)self _specifiersPlistPathForSpecifier:specifierCopy bundle:bundleCopy parentBundle:parentBundleCopy];
    if ([v30 length])
    {
      v31 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v30];
      v32 = [v31 objectForKeyedSubscript:@"searchable"];
      bOOLValue = [v32 BOOLValue];
      if (!v32 || bOOLValue)
      {
        selfCopy2 = self;
        lastPathComponent = [v30 lastPathComponent];
        stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];

        specifiers = SearchSpecifiersFromPlist(v31, specifierCopy, stringByDeletingPathExtension2, bundleCopy);
        v36 = PKLogForCategory(4);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v80 = stringByDeletingPathExtension2;
          v81 = 2112;
          v82 = specifiers;
          _os_log_impl(&dword_18B008000, v36, OS_LOG_TYPE_DEFAULT, "Got specifiers from plist %@: Specifiers: %@", buf, 0x16u);
        }

        self = selfCopy2;
      }

      else
      {
        specifiers = 0;
      }

      if (specifiers)
      {
        goto LABEL_68;
      }
    }

    else
    {
    }

    v37 = [specifierCopy propertyForKey:@"dataSourceClass"];
    if (!v37)
    {
      goto LABEL_39;
    }

    v38 = v37;
    [bundleCopy load];
    nSClassFromString(v38) = [NSClassFromString(v38) sharedInstance];
    specifiers = [nSClassFromString(v38) specifiersForSpecifier:specifierCopy observer:0];
    v40 = PKLogForCategory(4);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v80 = v38;
      v81 = 2112;
      v82 = specifiers;
      _os_log_impl(&dword_18B008000, v40, OS_LOG_TYPE_DEFAULT, "Got specifiers from datasource %@: Specifiers: %@", buf, 0x16u);
    }

    if (!specifiers)
    {
LABEL_39:
      v41 = [specifierCopy propertyForKey:@"detail"];
      if (v41 || ([specifierCopy propertyForKey:@"isController"], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "BOOLValue"), v60, v61) && (NSStringFromClass(objc_msgSend(bundleCopy, "principalClass")), (v41 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v42 = v41;
      }

      else
      {
        v42 = NSStringFromClass([specifierCopy detailControllerClass]);
        if (!v42)
        {
LABEL_60:
          specifiers = 0;
LABEL_67:

          goto LABEL_68;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(PSCoreSpotlightIndexer *)self controllerIsBlacklisted:v42])
      {
        goto LABEL_60;
      }

      indexFromControllerLog = [(PSCoreSpotlightIndexer *)self indexFromControllerLog];
      [indexFromControllerLog insertObject:v42 atIndex:0];

      v44 = [@"PSCoreSpotlightIndexer indexed these PSlistControllers:\n" mutableCopy];
      selfCopy3 = self;
      v46 = v44;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      indexFromControllerLog2 = [(PSCoreSpotlightIndexer *)selfCopy3 indexFromControllerLog];
      v48 = [indexFromControllerLog2 copy];

      v49 = [v48 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v71;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v71 != v51)
            {
              objc_enumerationMutation(v48);
            }

            [v46 appendString:*(*(&v70 + 1) + 8 * j)];
            [v46 appendString:@"\n"];
          }

          v50 = [v48 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v50);
      }

      qword_1EA9B2D20 = [v46 UTF8String];
      [bundleCopy load];
      v53 = NSClassFromString(v42);
      v54 = PKLogForCategory(4);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        bundlePath = [bundleCopy bundlePath];
        lastPathComponent2 = [bundlePath lastPathComponent];
        stringByDeletingPathExtension3 = [lastPathComponent2 stringByDeletingPathExtension];
        *buf = 138412546;
        v80 = v42;
        v81 = 2112;
        v82 = stringByDeletingPathExtension3;
        _os_log_impl(&dword_18B008000, v54, OS_LOG_TYPE_DEFAULT, "Trying to get specifiers from controller: %@, in bundle: %@", buf, 0x16u);
      }

      if (v53)
      {
        if (([(objc_class *)v53 isSubclassOfClass:objc_opt_class()]& 1) != 0)
        {
          v58 = objc_alloc_init(v53);
          [v58 setSpecifier:specifierCopy];
          specifiers = [v58 specifiers];
          v59 = PKLogForCategory(4);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v42;
            v81 = 2112;
            v82 = specifiers;
            _os_log_impl(&dword_18B008000, v59, OS_LOG_TYPE_DEFAULT, "Got specifiers from controller %@: Specifiers: %@", buf, 0x16u);
          }

          goto LABEL_66;
        }

        v58 = PKLogForCategory(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [PSCoreSpotlightIndexer _specifiersForSpecifier:bundle:parentBundle:];
        }
      }

      else
      {
        v58 = PKLogForCategory(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [PSCoreSpotlightIndexer _specifiersForSpecifier:bundle:parentBundle:];
        }
      }

      specifiers = 0;
LABEL_66:

      goto LABEL_67;
    }
  }

LABEL_68:

  return specifiers;
}

- (id)_urlForSpecifier:(id)specifier identifier:(id)identifier category:(id)category childCategory:(id *)childCategory prefix:(id)prefix path:(id *)path baseURL:(id)l shouldLinkToRow:(BOOL)self0
{
  specifierCopy = specifier;
  identifierCopy = identifier;
  categoryCopy = category;
  prefixCopy = prefix;
  lCopy = l;
  if ([categoryCopy length])
  {
    v20 = categoryCopy;
    *childCategory = categoryCopy;
    if ([lCopy length])
    {
      if (!row)
      {
        *path = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", lCopy, identifierCopy];
        [lCopy length];
LABEL_12:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:root=%@&path=%@", prefixCopy, categoryCopy, *path];
        goto LABEL_14;
      }

      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@", lCopy, identifierCopy];
    }

    else
    {
      identifierCopy = identifierCopy;
    }

    *path = identifierCopy;
    if (![lCopy length] && row)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:root=%@#%@", prefixCopy, categoryCopy, *path];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v22 = identifierCopy;
  *childCategory = identifierCopy;
  if (row)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:root=ROOT#%@", prefixCopy, identifierCopy, v29];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:root=%@", prefixCopy, identifierCopy, v29];
  }

  v23 = LABEL_14:;
  v24 = [specifierCopy propertyForKey:@"AppBundleID"];

  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [specifierCopy propertyForKey:@"AppBundleID"];
    v27 = [v25 stringWithFormat:@"%@&thirdPartyBundleID=%@", v23, v26];

    v23 = v27;
  }

  return v23;
}

- (id)_urlsFromManifestForSpecifier:(id)specifier bundle:(id)bundle
{
  v51 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  bundleCopy = bundle;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = bundleCopy;
  bundleURL = [bundleCopy bundleURL];
  v9 = [(PSCoreSpotlightIndexer *)self manifestsFromDirectory:bundleURL];

  obj = v9;
  v34 = [v9 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v34)
  {
    v31 = *v42;
    *&v10 = 138412546;
    v29 = v10;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:{v12, v29}];
        lastPathComponent = [v12 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

        v35 = stringByDeletingPathExtension;
        v36 = v13;
        v16 = SearchSpecifiersFromPlist(v13, specifierCopy, stringByDeletingPathExtension, v32);
        v17 = PKLogForCategory(4);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          v47 = v12;
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Manifest found: %@\nspecifiers: %@", buf, 0x16u);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v37 + 1) + 8 * j);
              if (ShouldIndexSpecifier(v23))
              {
                name = [v23 name];
                v25 = [name length];

                if (v25)
                {
                  v26 = [v23 objectForKeyedSubscript:@"searchURL"];
                  [v7 addObject:v26];
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v20);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v34);
  }

  v27 = [v7 copy];

  return v27;
}

- (void)indexThirdPartyAppsWithPrefix:(id)prefix completion:(id)completion
{
  prefixCopy = prefix;
  completionCopy = completion;
  spotlightIndexQueue = self->_spotlightIndexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke;
  block[3] = &unk_1E71DC5E8;
  block[4] = self;
  v12 = prefixCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = prefixCopy;
  dispatch_async(spotlightIndexQueue, block);
}

void __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Started indexing 3rd party specifiers", buf, 2u);
  }

  v3 = +[PSSystemPolicyManager thirdPartyApplications];
  v4 = [PSSystemPolicyManager specifiersForThirdPartyApps:v3];

  v5 = [*(a1 + 32) csSearchableItemsFromSpecifiers:v4 bundle:0 category:0 pathURL:0 withURLPrefix:*(a1 + 40) parentSpecifierNames:0];
  v6 = *(a1 + 32);
  v7 = [v6 searchableThirdPartyItemClassIdentifier];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke_404;
  v12[3] = &unk_1E71DCB90;
  v12[4] = *(a1 + 32);
  v13 = v5;
  v9 = *(a1 + 48);
  v14 = v4;
  v15 = v9;
  v10 = v4;
  v11 = v5;
  [v6 deleteIndexWithDomainIdentifiers:v8 completionBlock:v12];
}

void __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke_404(uint64_t a1)
{
  v2 = PKLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Deleted 3rd party index", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke_405;
  v5[3] = &unk_1E71DD230;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v3 _indexSearchableItems:v4 completionHandler:v5];
}

void __67__PSCoreSpotlightIndexer_indexThirdPartyAppsWithPrefix_completion___block_invoke_405(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = PKLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "Finished indexing %@ 3rd party specifiers", &v5, 0xCu);
  }
}

- (void)performYukonManifestMigrationWithCompletion:(id)completion
{
  completionCopy = completion;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"PSCoreSpolightIndexerHasPerformediOS13Migration"];

  if (v6)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PSCoreSpotlightIndexer_performYukonManifestMigrationWithCompletion___block_invoke;
    v7[3] = &unk_1E71DC0D8;
    v8 = completionCopy;
    [(PSCoreSpotlightIndexer *)self deleteIndexWithCompletionBlock:v7];
  }
}

uint64_t __70__PSCoreSpotlightIndexer_performYukonManifestMigrationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:1 forKey:@"PSCoreSpolightIndexerHasPerformediOS13Migration"];

  v3 = PKLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "Deleted index for index domain migration", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id __49__PSCoreSpotlightIndexer__allowedManifestBundles__block_invoke()
{
  if (kNameKey_block_invoke_na_once_token_62 != -1)
  {
    __49__PSCoreSpotlightIndexer__allowedManifestBundles__block_invoke_cold_1();
  }

  v1 = kNameKey_block_invoke_na_once_object_62;

  return v1;
}

void __49__PSCoreSpotlightIndexer__allowedManifestBundles__block_invoke_2()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = MEMORY[0x1E695DFF8];
  v6 = v2 = @"/System/Library/PreferenceManifests/FitnessSettingsSearch.bundle/";
  v3 = [v1 fileURLWithPath:v6];
  v4 = [v0 setWithObjects:{v3, 0}];
  v5 = kNameKey_block_invoke_na_once_object_62;
  kNameKey_block_invoke_na_once_object_62 = v4;
}

- (id)bundleBlockList
{
  v3 = __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_3;
  v7[3] = &unk_1E71DEA38;
  v7[4] = self;
  v4 = [v3 na_flatMap:v7];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];

  return v5;
}

id __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke()
{
  if (kNameKey_block_invoke_2_na_once_token_63 != -1)
  {
    __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_cold_1();
  }

  v1 = kNameKey_block_invoke_2_na_once_object_63;

  return v1;
}

void __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_2()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFF8];
  v2 = v1 = @"/System/Library/PreferenceManifests/";
  v3 = [v0 fileURLWithPath:v2];
  v10[0] = v3;
  v4 = MEMORY[0x1E695DFF8];
  v6 = v5 = @"/System/Library/PreferenceManifestsInternal/";
  v7 = [v4 fileURLWithPath:v6];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9 = kNameKey_block_invoke_2_na_once_object_63;
  kNameKey_block_invoke_2_na_once_object_63 = v8;
}

id __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_4;
  v14[3] = &unk_1E71DE9E8;
  v14[4] = *(a1 + 32);
  v7 = v3;
  v15 = v7;
  v8 = [v6 na_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_5;
  v12[3] = &unk_1E71DEA10;
  v13 = v7;
  v9 = v7;
  v10 = [v8 na_map:v12];

  return v10;
}

uint64_t __41__PSCoreSpotlightIndexer_bundleBlockList__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"bundle"];

  if (v5)
  {
    v6 = [objc_opt_class() _allowedManifestBundles];
    v7 = [*(a1 + 40) URLByAppendingPathComponent:v3];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __78__PSCoreSpotlightIndexer__allowedManifestFilesFromPreferenceManifestsInternal__block_invoke()
{
  if (kNameKey_block_invoke_3_na_once_token_64 != -1)
  {
    __78__PSCoreSpotlightIndexer__allowedManifestFilesFromPreferenceManifestsInternal__block_invoke_cold_1();
  }

  v1 = kNameKey_block_invoke_3_na_once_object_64;

  return v1;
}

void __78__PSCoreSpotlightIndexer__allowedManifestFilesFromPreferenceManifestsInternal__block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = kNameKey_block_invoke_3_na_once_object_64;
  kNameKey_block_invoke_3_na_once_object_64 = v0;
}

- (id)manifestBlockList
{
  v3 = MEMORY[0x1E695DFF8];
  v5 = v4 = @"/System/Library/PreferenceManifestsInternal/PreferencesManifests.bundle/";
  v6 = [v3 fileURLWithPath:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__PSCoreSpotlightIndexer_manifestBlockList__block_invoke;
  v18[3] = &unk_1E71DE9E8;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  v11 = [v9 na_filter:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PSCoreSpotlightIndexer_manifestBlockList__block_invoke_2;
  v16[3] = &unk_1E71DEA10;
  v17 = v10;
  v12 = v10;
  v13 = [v11 na_map:v16];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];

  return v14;
}

uint64_t __43__PSCoreSpotlightIndexer_manifestBlockList__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"plist"];

  if (v5 && [v3 hasPrefix:@"SettingsSearchManifest"])
  {
    v6 = [objc_opt_class() _allowedManifestFilesFromPreferenceManifestsInternal];
    v7 = [*(a1 + 40) URLByAppendingPathComponent:v3];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end