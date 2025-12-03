@interface PRSBagHandler
+ (id)sharedHandler;
+ (void)initialize;
- (BOOL)isEnabled;
- (PRSBagHandler)init;
- (PRSSessionController)client;
- (id)_base64CEPDataNoCopyFromFeatureData:(id)data;
- (id)applicationNameForUserAgent;
- (id)excludedDomainIdentifiers;
- (void)_processQIFeatures:(id)features forClient:(id)client;
- (void)fetchModifiedResourceFromSession:(id)session resource:(id)resource completion:(id)completion;
- (void)getFTEStringsWithReply:(id)reply;
- (void)parseCEPFromData:(id)data forClient:(id)client;
- (void)removeTask:(id)task;
- (void)triggerTaskWhenReady:(id)ready;
- (void)updateFromSession:(id)session bag:(id)bag forClient:(id)client error:(id)error;
- (void)updateWithBagDictionary:(id)dictionary error:(id)error;
@end

@implementation PRSBagHandler

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults stringForKey:@"ParsecExtraParam"];

    v3 = v6;
    if (v6)
    {
      if ([v6 hasPrefix:@"&"])
      {
        v4 = [v6 copy];
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"&%@", v6];
      }

      v5 = gExtraParam;
      gExtraParam = v4;

      v3 = v6;
    }
  }
}

+ (id)sharedHandler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PRSBagHandler_sharedHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHandler_onceToken != -1)
  {
    dispatch_once(&sharedHandler_onceToken, block);
  }

  v2 = sharedHandler_sharedHandler;

  return v2;
}

uint64_t __30__PRSBagHandler_sharedHandler__block_invoke(uint64_t a1)
{
  sharedHandler_sharedHandler = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (PRSBagHandler)init
{
  v19.receiver = self;
  v19.super_class = PRSBagHandler;
  v2 = [(PRSBagHandler *)&v19 init];
  *&v2->_searchRenderTimeout = xmmword_1DA0D50D0;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("Bag queue", v3);
  bagQueue = v2->_bagQueue;
  v2->_bagQueue = v4;

  v6 = dispatch_group_create();
  locationGroup = v2->_locationGroup;
  v2->_locationGroup = v6;

  v8 = objc_alloc_init(MEMORY[0x1E69E58C0]);
  lockObject = v2->_lockObject;
  v2->_lockObject = v8;

  v10 = NSHomeDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"Library/Spotlight/parsecResources.plist"];

  v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  [(PRSBagHandler *)v2 setResourceMetadata:v14];

  [(PRSBagHandler *)v2 setResourceMetadataNeedsWrite:0];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("Resource fetch queue", v16);
  [(PRSBagHandler *)v2 setResourceFetchQueue:v17];

  [(PRSBagHandler *)v2 setResourceMetadataPath:v11];
  return v2;
}

- (id)_base64CEPDataNoCopyFromFeatureData:(id)data
{
  dataCopy = data;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = -1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3810000000;
  v12 = "";
  v13 = xmmword_1DA0D50E0;
  v14 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PRSBagHandler__base64CEPDataNoCopyFromFeatureData___block_invoke;
  aBlock[3] = &unk_1E8595690;
  aBlock[4] = v16;
  aBlock[5] = &v9;
  aBlock[6] = v15;
  aBlock[7] = "qi_features";
  v4 = _Block_copy(aBlock);
  [dataCopy bytes];
  [dataCopy length];
  if (json_parse() && *(v10 + 8) == 4 && (v5 = v10[5]) != 0)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:v10[6] freeWhenDone:0];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);

  return v6;
}

void *__53__PRSBagHandler__base64CEPDataNoCopyFromFeatureData___block_invoke(void *result, int a2, __int128 *a3, _BYTE *a4)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v6 = *(result[4] + 8);
      v7 = *(v6 + 24);
      *(v6 + 24) = v7 - 1;
      if (!v7 && *(*(result[5] + 8) + 32) != 4)
      {
        *a4 = 1;
      }
    }

    else if (a2 == 6 && !*(*(result[4] + 8) + 24) && *(*(result[6] + 8) + 24) == result[7])
    {
      v4 = *(result[5] + 8);
      v5 = *a3;
      *(v4 + 48) = *(a3 + 2);
      *(v4 + 32) = v5;
    }
  }

  else if (a2 == 1)
  {
    ++*(*(result[4] + 8) + 24);
  }

  else if (a2 == 2)
  {
    *(*(result[6] + 8) + 24) = 0;
    if (!*(*(result[4] + 8) + 24) && *(a3 + 2) == 11)
    {
      v8 = result[7];
      v9 = *(a3 + 1);
      v10 = *v9;
      v11 = *(v9 + 3);
      if (*v8 == v10 && *(v8 + 3) == v11)
      {
        *(*(result[6] + 8) + 24) = v8;
      }
    }
  }

  return result;
}

- (void)_processQIFeatures:(id)features forClient:(id)client
{
  featuresCopy = features;
  clientCopy = client;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3810000000;
  v20[3] = "";
  v21 = xmmword_1DA0D50E0;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = -1;
  v8 = *MEMORY[0x1E695E480];
  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginDictionary();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PRSBagHandler__processQIFeatures_forClient___block_invoke;
  aBlock[3] = &unk_1E8595690;
  aBlock[4] = v16;
  aBlock[5] = v18;
  aBlock[6] = v20;
  aBlock[7] = Mutable;
  v10 = _Block_copy(aBlock);
  [featuresCopy bytes];
  [featuresCopy length];
  v11 = json_parse();
  _MDPlistContainerEndDictionary();
  _MDPlistContainerEndContainer();
  if (v11)
  {
    v12 = [[SSPlistDataReader alloc] initWithPlistContainer:Mutable];
  }

  else
  {
    v12 = 0;
  }

  CFRelease(Mutable);
  if (v12)
  {
    [(PRSBagHandler *)self setCep_server_values:v12];
    v13 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_INFO, "Loaded qi features", v14, 2u);
    }
  }

  else
  {
    v13 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PRSBagHandler _processQIFeatures:v13 forClient:?];
    }
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

void __46__PRSBagHandler__processQIFeatures_forClient___block_invoke(void *a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  bzero(__s1, 0x400uLL);
  bzero(v29, 0x400uLL);
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 6 && *(*(a1[4] + 8) + 24) == 1)
      {
        v8 = *(*(a1[5] + 8) + 24);
        if (v8 == 1)
        {
          json_utf8_string(*(a1[6] + 8) + 32, __s1, 0x400uLL);
          json_utf8_string(a3, v29, 0x400uLL);
          if ((*a3 & 0xFFFFFFFE) == 6)
          {
            v14 = 0;
            v15 = MEMORY[0x1E69E9830];
            do
            {
              v16 = __s1[v14];
              if (!__s1[v14])
              {
                break;
              }

              if ((v16 & 0x80) == 0 && (*(v15 + 4 * v16 + 60) & 0x8000) != 0)
              {
                __s1[v14] = __tolower(v16);
              }

              ++v14;
            }

            while (v14 != 1024);
            v17 = a1[7];
            _MDPlistContainerAddCString();
            v18 = a1[7];
            atof(v29);
            _MDPlistContainerAddDoubleValue();
          }

          else
          {
            v19 = PRSLogCategoryDefault();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = *a3;
              v21 = *(&sQIFetureKeys + *(*(a1[5] + 8) + 24));
              v22[0] = 67109890;
              v22[1] = v20;
              v23 = 2080;
              v24 = v21;
              v25 = 2080;
              v26 = __s1;
              v27 = 2080;
              v28 = v29;
              _os_log_error_impl(&dword_1D9F69000, v19, OS_LOG_TYPE_ERROR, "## unexpected type:%d %s-%s value:%s", v22, 0x26u);
            }
          }
        }

        else if (v8 == 2)
        {
          json_utf8_string(*(a1[6] + 8) + 32, __s1, 0x400uLL);
          json_utf8_string(a3, v29, 0x400uLL);
        }
      }

      goto LABEL_19;
    }

    v9 = *(a1[4] + 8);
    v10 = *(v9 + 24) - 1;
LABEL_18:
    *(v9 + 24) = v10;
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    v9 = *(a1[4] + 8);
    v10 = *(v9 + 24) + 1;
    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v6 = *(*(a1[4] + 8) + 24);
    if (v6 == 1)
    {
      v12 = *(a1[6] + 8);
      v13 = *a3;
      *(v12 + 48) = *(a3 + 16);
      *(v12 + 32) = v13;
    }

    else if (!v6)
    {
      *(*(a1[5] + 8) + 24) = 0;
      json_utf8_string(a3, __s1, 0x400uLL);
      v7 = 1;
      while (strcmp(__s1, *(&sQIFetureKeys + v7)))
      {
        if (++v7 == 3)
        {
          goto LABEL_19;
        }
      }

      *(*(a1[5] + 8) + 24) = v7;
    }
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)parseCEPFromData:(id)data forClient:(id)client
{
  clientCopy = client;
  v7 = [(PRSBagHandler *)self _base64CEPDataNoCopyFromFeatureData:data];
  if (v7)
  {
    v8 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_INFO, "Loading qi features", v10, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v7 options:0];
    [(PRSBagHandler *)self _processQIFeatures:v9 forClient:clientCopy];
  }
}

- (BOOL)isEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  isEnabled = [WeakRetained isEnabled];

  return isEnabled;
}

- (id)applicationNameForUserAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_client);
    applicationNameForUserAgent = [v5 applicationNameForUserAgent];
  }

  else
  {
    applicationNameForUserAgent = 0;
  }

  return applicationNameForUserAgent;
}

- (id)excludedDomainIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_client);
    excludedDomainIdentifiers = [v5 excludedDomainIdentifiers];
  }

  else
  {
    excludedDomainIdentifiers = 0;
  }

  return excludedDomainIdentifiers;
}

- (void)updateWithBagDictionary:(id)dictionary error:(id)error
{
  if (error)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  [(PRSBagHandler *)self setStatus:v4];
}

- (void)fetchModifiedResourceFromSession:(id)session resource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PRSBagHandler_fetchModifiedResourceFromSession_resource_completion___block_invoke;
  v12[3] = &unk_1E85956D8;
  v13 = resourceCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = resourceCopy;
  [session fileHandleAndAttributesForResource:v11 completion:v12];
}

void __70__PRSBagHandler_fetchModifiedResourceFromSession_resource_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v37 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    v23 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      *buf = 138412546;
      v43 = v24;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_1D9F69000, v23, OS_LOG_TYPE_INFO, "failed fetch resource:%@ err:%@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_21;
  }

  v10 = [*(a1 + 32) isEqualToString:*MEMORY[0x1E6998688]];
  v11 = [v37 objectForKey:*MEMORY[0x1E696A350]];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [*(a1 + 40) resourceMetadata];
  objc_sync_enter(v14);
  v15 = [*(a1 + 40) resourceMetadata];
  v16 = [v15 objectForKeyedSubscript:*(a1 + 32)];

  if (v10)
  {
    v17 = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [v17 languageCode];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v19 = [v16 objectForKeyedSubscript:@"last_modified"];
    [v19 doubleValue];
    if (v13 - v20 >= 0.01)
    {

      goto LABEL_16;
    }

    v21 = [v16 objectForKeyedSubscript:@"language"];
    v22 = [v21 isEqualToString:v18];

    if ((v22 & 1) == 0)
    {
LABEL_16:
      if (v18)
      {
        v40[0] = @"last_modified";
        v29 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
        v40[1] = @"language";
        v41[0] = v29;
        v30 = [MEMORY[0x1E695DF58] currentLocale];
        v31 = [v30 languageCode];
        v41[1] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

        v16 = v32;
      }

      else
      {
        v38 = @"last_modified";
        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
        v39 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

        v18 = 0;
        v16 = v34;
      }

      goto LABEL_19;
    }

LABEL_13:
    (*(*(a1 + 48) + 16))();
    v25 = 0;
    v27 = 1;
    goto LABEL_20;
  }

  [v16 doubleValue];
  if (v13 - v26 < 0.01)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v13];

  v18 = 0;
  v16 = v28;
LABEL_19:
  v35 = [*(a1 + 40) resourceMetadata];
  [v35 setObject:v16 forKeyedSubscript:*(a1 + 32)];

  [*(a1 + 40) setResourceMetadataNeedsWrite:1];
  v25 = v7;
  v27 = 0;
LABEL_20:

  objc_sync_exit(v14);
  if ((v27 & 1) == 0)
  {
LABEL_21:
    (*(*(a1 + 48) + 16))();
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)updateFromSession:(id)session bag:(id)bag forClient:(id)client error:(id)error
{
  sessionCopy = session;
  bagCopy = bag;
  clientCopy = client;
  errorCopy = error;
  bagQueue = self->_bagQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke;
  block[3] = &unk_1E85957F0;
  block[4] = self;
  v20 = bagCopy;
  v21 = errorCopy;
  v22 = sessionCopy;
  v23 = clientCopy;
  v15 = clientCopy;
  v16 = sessionCopy;
  v17 = errorCopy;
  v18 = bagCopy;
  dispatch_async(bagQueue, block);
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = [*(a1 + 40) enabledDomains];
  [*(a1 + 32) setEnabledDomains:v2];

  v3 = [*(a1 + 40) firstUseDescriptionText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F556FE60;
  }

  [*(a1 + 32) setFteLocString:v5];

  v6 = [*(a1 + 40) firstUseLearnMoreText];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F556FE60;
  }

  [*(a1 + 32) setFteLearnMoreString:v8];

  v9 = [*(a1 + 40) firstUseContinueText];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F556FE60;
  }

  [*(a1 + 32) setFteContinueString:v11];

  [*(a1 + 32) setCollectAnonymousData:{objc_msgSend(*(a1 + 40), "collectAnonymousMetadata")}];
  [*(a1 + 32) setDisableAsTypedSuggestion:{objc_msgSend(*(a1 + 40), "disableAsTypedSuggestion")}];
  v12 = [*(a1 + 40) searchRenderTimeout];
  [v12 doubleValue];
  v14 = v13;

  [*(a1 + 32) setSearchRenderTimeout:v14 / 1000.0];
  v15 = [*(a1 + 40) minSuggestionRenderTimeout];
  [v15 doubleValue];
  v17 = v16;

  [*(a1 + 32) setSuggestionsRenderTimeout:v17 / 1000.0];
  [*(a1 + 32) setCollectScores:{objc_msgSend(*(a1 + 40), "collectScores")}];
  v18 = [*(a1 + 40) anonymousMetadataPreference];
  if (v18)
  {
    [*(a1 + 32) setAnonymousMetadataUndesiredBundleIDs:v18];
  }

  else
  {
    v53[0] = @"com.apple.application";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    [*(a1 + 32) setAnonymousMetadataUndesiredBundleIDs:v19];
  }

  if (*(a1 + 48))
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  [*(a1 + 32) setStatus:v20];
  [*(a1 + 32) setUse2LayerRanking:{objc_msgSend(*(a1 + 40), "use2LayerRanking")}];
  v21 = [*(a1 + 40) suggestionRankerModel];
  [*(a1 + 32) setSuggestionRankerModelParams:v21];

  *(*(a1 + 32) + 61) = [*(a1 + 40) isEnabled];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = *(*(a1 + 32) + 32);
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v48 + 1) + 8 * i) triggerQuery:{objc_msgSend(*(a1 + 32), "status") == 2}];
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v24);
  }

  v27 = [*(a1 + 32) resourceFetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_2;
  block[3] = &unk_1E85957A0;
  v28 = *(a1 + 56);
  v29 = *(a1 + 32);
  v45 = v28;
  v46 = v29;
  v47 = *(a1 + 64);
  dispatch_async(v27, block);

  v30 = [*(a1 + 32) enabledDomains];
  v31 = [v30 copy];

  v32 = [*(a1 + 32) suggestionRankerModelParams];
  v33 = [v32 copy];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_7;
  v39[3] = &unk_1E85957C8;
  v40 = *(a1 + 64);
  v41 = v31;
  v42 = *(a1 + 32);
  v43 = v33;
  v34 = v33;
  v35 = v31;
  dispatch_async(MEMORY[0x1E69E96A0], v39);
  v36 = *(a1 + 32);
  v37 = *(v36 + 32);
  *(v36 + 32) = 0;

  v38 = *MEMORY[0x1E69E9840];
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E6998690];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_3;
  v16[3] = &unk_1E8595700;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  v17 = v4;
  [v3 fileHandleAndAttributesForResource:v2 completion:v16];
  v5 = [*(a1 + 40) resourceFetchQueue];
  dispatch_suspend(v5);

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *MEMORY[0x1E6998688];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_4;
  v13[3] = &unk_1E8595750;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  [v6 fetchModifiedResourceFromSession:v7 resource:v8 completion:v13];
  v11 = [*(a1 + 40) resourceFetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_6;
  block[3] = &unk_1E8595778;
  block[4] = *(a1 + 40);
  dispatch_async(v11, block);
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [a2 prs_mappedData];
    [*(a1 + 32) parseCEPFromData:v5 forClient:*(a1 + 40)];
  }
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      v5 = dispatch_get_global_queue(9, 0);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_5;
      v10 = &unk_1E8595728;
      v11 = *(a1 + 32);
      v12 = v3;
      dispatch_async(v5, &v7);
    }
  }

  v6 = [*(a1 + 40) resourceFetchQueue];
  dispatch_resume(v6);
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_6(uint64_t a1)
{
  obj = [*(a1 + 32) resourceMetadata];
  objc_sync_enter(obj);
  if ([*(a1 + 32) resourceMetadataNeedsWrite])
  {
    v2 = [*(a1 + 32) resourceMetadata];
    v3 = [*(a1 + 32) resourceMetadataPath];
    [v2 writeToFile:v3 atomically:1];

    [*(a1 + 32) setResourceMetadataNeedsWrite:0];
  }

  objc_sync_exit(obj);
}

void __55__PRSBagHandler_updateFromSession_bag_forClient_error___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) sessionReceivedBagWithEnabledDomains:*(a1 + 40)];
  }

  v4 = [*(a1 + 48) suggestionRankerModelParams];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [*(a1 + 32) sessionReceivedSuggestionsParameters:*(a1 + 56)];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)removeTask:(id)task
{
  taskCopy = task;
  bagQueue = self->_bagQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__PRSBagHandler_removeTask___block_invoke;
  v7[3] = &unk_1E8595728;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(bagQueue, v7);
}

- (void)triggerTaskWhenReady:(id)ready
{
  readyCopy = ready;
  if ([readyCopy needsBag])
  {
    bagQueue = self->_bagQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__PRSBagHandler_triggerTaskWhenReady___block_invoke;
    v6[3] = &unk_1E8595728;
    v6[4] = self;
    v7 = readyCopy;
    dispatch_async(bagQueue, v6);
  }

  else
  {
    [readyCopy triggerQuery:1];
  }
}

uint64_t __38__PRSBagHandler_triggerTaskWhenReady___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) status] == 4 || objc_msgSend(*(a1 + 32), "status") == 2 || objc_msgSend(*(a1 + 32), "status") == 3)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) status] == 2;

    return [v2 triggerQuery:v3];
  }

  else
  {
    v5 = *(*(a1 + 32) + 32);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 32);
      *(v7 + 32) = v6;

      v5 = *(*(a1 + 32) + 32);
    }

    v9 = *(a1 + 40);

    return [v5 addObject:v9];
  }
}

- (void)getFTEStringsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PRSBagHandler getFTEStringsWithReply:v5];
  }

  v6 = [[PRSFTETask alloc] initWithReply:replyCopy];
  [(PRSBagHandler *)self triggerTaskWhenReady:v6];
}

- (PRSSessionController)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end