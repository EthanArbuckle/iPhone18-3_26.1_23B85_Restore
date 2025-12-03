@interface SUIUtilities
+ (BOOL)isSWKeyboardHiddenForWindow:(id)window;
+ (BOOL)isSpotlightUICLI;
+ (id)prototypeDefaults;
+ (id)spotlightCacheQueue;
+ (id)visionResourcesQueue;
+ (unint64_t)deviceAuthenticationStateForView:(id)view;
+ (unint64_t)stateForSearchUIAuthenticationState:(unint64_t)state;
+ (void)performDeleteCommand:(id)command;
+ (void)prewarmVisionForImageDerivedColors;
+ (void)releaseVisionCachedResources;
+ (void)setFiltersToSimulateDelete:(id)delete;
@end

@implementation SUIUtilities

void __50__SUIUtilities_prewarmVisionForImageDerivedColors__block_invoke()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  [v0 setRevision:2];
  v1 = [MEMORY[0x277CE2E18] globalSession];
  v11[0] = v0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = 0;
  v3 = [v1 prepareForPerformingRequests:v2 error:&v6];
  v4 = v6;

  if (os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B8E8000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "vision_prewarm", "", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26B8E8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Pre-warmed Vision framework for image-derived colors (success: %d, error: %@)", buf, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setFiltersToSimulateDelete:(id)delete
{
  sSUIFiltersToSimulateDelete = [delete copy];

  MEMORY[0x2821F96F8]();
}

+ (id)visionResourcesQueue
{
  if (visionResourcesQueue_onceToken[0] != -1)
  {
    +[SUIUtilities visionResourcesQueue];
  }

  v3 = visionResourcesQueue_queue;

  return v3;
}

void __36__SUIUtilities_visionResourcesQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("spotlight vision prewarm queue", v0);
  v2 = visionResourcesQueue_queue;
  visionResourcesQueue_queue = v1;
}

+ (void)prewarmVisionForImageDerivedColors
{
  if (os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B8E8000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "vision_prewarm", "", v4, 2u);
  }

  visionResourcesQueue = [self visionResourcesQueue];
  dispatch_async(visionResourcesQueue, &__block_literal_global_223);
}

+ (void)releaseVisionCachedResources
{
  visionResourcesQueue = [self visionResourcesQueue];
  dispatch_async(visionResourcesQueue, &__block_literal_global_228);
}

void __44__SUIUtilities_releaseVisionCachedResources__block_invoke()
{
  v0 = [MEMORY[0x277CE2E18] globalSession];
  [v0 releaseCachedResources];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26B8E8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Released Vision framework cached resources for image-derived colors", v1, 2u);
  }
}

+ (id)prototypeDefaults
{
  if (prototypeDefaults_onceToken != -1)
  {
    +[SUIUtilities prototypeDefaults];
  }

  v3 = prototypeDefaults_prototypeDefaults;

  return v3;
}

uint64_t __33__SUIUtilities_prototypeDefaults__block_invoke()
{
  prototypeDefaults_prototypeDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlight.prototype"];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isSpotlightUICLI
{
  if (isSpotlightUICLI_onceToken != -1)
  {
    +[SUIUtilities isSpotlightUICLI];
  }

  return isSpotlightUICLI_isSpotlightUICLI;
}

void __32__SUIUtilities_isSpotlightUICLI__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlightUICLI_isSpotlightUICLI = [v0 isEqualToString:@"com.apple.spotlightui.cli"];
}

+ (unint64_t)stateForSearchUIAuthenticationState:(unint64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

+ (unint64_t)deviceAuthenticationStateForView:(id)view
{
  v3 = [MEMORY[0x277D4C898] deviceAuthenticationStateForView:view];

  return [SUIUtilities stateForSearchUIAuthenticationState:v3];
}

+ (id)spotlightCacheQueue
{
  if (spotlightCacheQueue_onceToken != -1)
  {
    +[SUIUtilities spotlightCacheQueue];
  }

  v3 = spotlightCacheQueue_queue;

  return v3;
}

uint64_t __35__SUIUtilities_spotlightCacheQueue__block_invoke()
{
  spotlightCacheQueue_queue = dispatch_queue_create("com.apple.spotlight.spotlightCacheQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (void)performDeleteCommand:(id)command
{
  v51 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  itemIdentifiers = [commandCopy itemIdentifiers];
  v6 = [itemIdentifiers count];

  if (v6)
  {
    v7 = SUISGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      itemIdentifiers2 = [commandCopy itemIdentifiers];
      v9 = [itemIdentifiers2 count];
      *buf = 134217984;
      v50 = v9;
      _os_log_impl(&dword_26B8E8000, v7, OS_LOG_TYPE_DEFAULT, "Deleting expired items (%lu)", buf, 0xCu);
    }

    defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    itemIdentifiers3 = [commandCopy itemIdentifiers];
    [defaultSearchableIndex indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:itemIdentifiers3 clientState:0 protectionClass:0 forBundleID:0 options:32 completionHandler:&__block_literal_global_250];
  }

  domainIdentifiers = [commandCopy domainIdentifiers];
  v13 = [domainIdentifiers count];

  if (v13)
  {
    itemIdentifiers4 = [commandCopy itemIdentifiers];
    v15 = [itemIdentifiers4 count];

    if (!v15)
    {
      v16 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      domainIdentifiers2 = [commandCopy domainIdentifiers];
      v18 = [domainIdentifiers2 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(domainIdentifiers2);
            }

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemDomainIdentifier != %@", *(*(&v43 + 1) + 8 * i)];
            [v16 addObject:v22];
          }

          v19 = [domainIdentifiers2 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v19);
      }

      v23 = [v16 componentsJoinedByString:@" && "];
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CBEAA8] now];
      [v25 timeIntervalSinceReferenceDate];
      v27 = [v24 stringWithFormat:@"(%@) || kMDItemLastUsedDate >= %lf", v23, v26];
      v47 = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [self setFiltersToSimulateDelete:v28];
    }

    v29 = SUISGeneralLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      domainIdentifiers3 = [commandCopy domainIdentifiers];
      v31 = [domainIdentifiers3 count];
      *buf = 134217984;
      v50 = v31;
      _os_log_impl(&dword_26B8E8000, v29, OS_LOG_TYPE_DEFAULT, "Deleting expired domains (%lu)", buf, 0xCu);
    }

    defaultSearchableIndex2 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    domainIdentifiers4 = [commandCopy domainIdentifiers];
    [defaultSearchableIndex2 deleteSearchableItemsWithDomainIdentifiers:domainIdentifiers4 protectionClass:0 forBundleID:0 options:32 completionHandler:&__block_literal_global_265];
  }

  filesToDelete = [commandCopy filesToDelete];
  v35 = [filesToDelete count];

  if (v35)
  {
    v36 = SUISGeneralLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      filesToDelete2 = [commandCopy filesToDelete];
      v38 = [filesToDelete2 count];
      *buf = 134217984;
      v50 = v38;
      _os_log_impl(&dword_26B8E8000, v36, OS_LOG_TYPE_DEFAULT, "Deleting expired files (%lu)", buf, 0xCu);
    }

    v39 = +[SUIUtilities spotlightCacheQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SUIUtilities_performDeleteCommand___block_invoke_266;
    block[3] = &unk_279D10308;
    v42 = commandCopy;
    dispatch_async(v39, block);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __37__SUIUtilities_performDeleteCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SUISPasteboardIndexingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__SUIUtilities_performDeleteCommand___block_invoke_cold_1(v2, v3);
    }
  }
}

void __37__SUIUtilities_performDeleteCommand___block_invoke_263(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SUISGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__SUIUtilities_performDeleteCommand___block_invoke_263_cold_1(v2, v3);
    }
  }
}

void __37__SUIUtilities_performDeleteCommand___block_invoke_266(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 32) filesToDelete];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 path];
        v11 = [v2 fileExistsAtPath:v10];

        if (v11)
        {
          v16 = 0;
          [v2 removeItemAtURL:v9 error:&v16];
          v12 = v16;
          if (v12)
          {
            v13 = SUISGeneralLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v22 = v12;
              _os_log_error_impl(&dword_26B8E8000, v13, OS_LOG_TYPE_ERROR, "failed to delete expired files with error: %@", buf, 0xCu);
            }
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSWKeyboardHiddenForWindow:(id)window
{
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  identity = [displayConfiguration identity];
  if ([identity isContinuityDisplay])
  {
    isInHardwareKeyboardMode = 1;
  }

  else
  {
    isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
  }

  return isInHardwareKeyboardMode;
}

void __37__SUIUtilities_performDeleteCommand___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B8E8000, a2, OS_LOG_TYPE_ERROR, "failed to delete expired items with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __37__SUIUtilities_performDeleteCommand___block_invoke_263_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B8E8000, a2, OS_LOG_TYPE_ERROR, "failed to delete expired domains with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end