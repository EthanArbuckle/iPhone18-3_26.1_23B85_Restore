@interface PPConnectionsPasteboardSource
+ (PPConnectionsPasteboardSource)sharedInstance;
- (PPConnectionsPasteboardSource)init;
- (id)_mostRecentPasteboardItem;
- (id)addressPasteboardTextItemFromNotification:(BOOL)a3;
- (id)fetchedPasteboardItem;
- (id)locationItemsWithCriteria:(id)a3 earliest:(id)a4 latest:(id)a5 limit:(unint64_t)a6 consumer:(unint64_t)a7 explanationSet:(id)a8;
- (id)supportedSemanticTags;
- (id)validUTTypes;
- (void)_setMostRecentPasteboardItem:(id)a3;
- (void)dealloc;
@end

@implementation PPConnectionsPasteboardSource

- (id)_mostRecentPasteboardItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18635;
  v10 = __Block_byref_object_dispose__18636;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConnectionsPasteboardSource__mostRecentPasteboardItem__block_invoke;
  v5[3] = &unk_278976B78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__PPConnectionsPasteboardSource__mostRecentPasteboardItem__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = a2[1];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

- (id)locationItemsWithCriteria:(id)a3 earliest:(id)a4 latest:(id)a5 limit:(unint64_t)a6 consumer:(unint64_t)a7 explanationSet:(id)a8
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a8;
  v15 = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
  if (!v15)
  {
    v20 = 0.04;
    if (a7 != 1)
    {
      v20 = 1.0;
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:self->_init_sem timeoutSeconds:v20] == 1)
    {
      v16 = pp_connections_log_handle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = "PPConnectionsPasteboardSource: timed out waiting for pasteboard source initialization.";
    }

    else
    {
      dispatch_semaphore_signal(self->_init_sem);
      v15 = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
      if (v15)
      {
        goto LABEL_2;
      }

      [v14 push:26];
      v16 = pp_connections_log_handle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = "PPConnectionsPasteboardSource: pasteboard is empty";
    }

    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_28;
  }

LABEL_2:
  v16 = v15;
  v17 = [v15 createdAt];
  v18 = [v13 compare:v17];

  if (v18 == 1)
  {
    [v14 push:6];
    v19 = pp_connections_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: pasteboard is too old", buf, 2u);
    }

    goto LABEL_28;
  }

  v22 = [(PPConnectionsPasteboardSource *)self supportedSemanticTags];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v12, "locationField")}];
  v24 = [v22 containsObject:v23];

  if (!v24)
  {
LABEL_28:
    v31 = 0;
    goto LABEL_29;
  }

  v25 = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
  v26 = pp_connections_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v25 text];
    v28 = [v27 length];
    v29 = [v25 bundleIdentifier];
    *buf = 134218242;
    v56 = v28;
    v57 = 2112;
    v58 = v29;
    _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: most recent pasteboard item has text length %tu from bundle %@", buf, 0x16u);
  }

  v30 = [v25 text];
  if (![v30 length])
  {
    goto LABEL_35;
  }

  v31 = [v25 bundleIdentifier];

  if (v31)
  {
    v32 = [v12 locationField];
    v33 = [v25 text];
    v34 = [v25 addressComponents];
    v35 = [PPConnectionsDataDetectors addressComponentValueWithLocationField:v32 forDataDetectorsMatch:v33 addressComponents:v34];
    v30 = PPCollapseWhitespaceAndStrip();

    if (v30 && [v30 length])
    {
      v36 = [v25 addressComponents];
      v37 = [v36 objectForKeyedSubscript:*MEMORY[0x277CCA6E8]];
      v38 = PPCollapseWhitespaceAndStrip();

      if (!v38)
      {
        v38 = v30;
      }

      v39 = objc_alloc(MEMORY[0x277D3A348]);
      v40 = [v25 bundleIdentifier];
      v41 = [v39 initWithOriginatingBundleID:v40];

      [v41 setName:v38];
      [v41 setLabel:v38];
      [v41 setValue:v30];
      [v41 setShortValue:v30];
      [v41 setShouldAggregate:0];
      v42 = [v25 createdAt];
      v43 = [v42 copy];
      [v41 setCreatedAt:v43];

      [v41 setSource:@"pasteboard"];
      [v41 setCopiedToPasteboard:1];
      v44 = MEMORY[0x277CCABB0];
      v45 = +[PPConnectionsParameters sharedInstance];
      [v45 pasteboardItemExpirySeconds];
      v46 = [v44 numberWithDouble:?];
      [v41 setLifetime:v46];

      v47 = pp_connections_log_handle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        [v41 originatingBundleID];
        v48 = v53 = v38;
        v49 = [v41 createdAt];
        *buf = 138412546;
        v56 = v48;
        v57 = 2112;
        v58 = v49;
        _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: returning location item from %@ created at %@", buf, 0x16u);

        v38 = v53;
      }

      if (!v41)
      {
        v31 = 0;
        goto LABEL_37;
      }

      v54 = v41;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v30 = v41;
      goto LABEL_36;
    }

    v52 = pp_connections_log_handle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v52, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: no address value", buf, 2u);
    }

LABEL_35:
    v31 = 0;
LABEL_36:
  }

LABEL_37:

LABEL_29:
  v50 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)supportedSemanticTags
{
  if (supportedSemanticTags_onceToken != -1)
  {
    dispatch_once(&supportedSemanticTags_onceToken, &__block_literal_global_42_18623);
  }

  v3 = supportedSemanticTags_supportedSemanticTags;

  return v3;
}

void __54__PPConnectionsPasteboardSource_supportedSemanticTags__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784368, &unk_284784380, &unk_284784398, &unk_2847843B0, &unk_2847843C8, &unk_2847843E0, &unk_2847843F8, &unk_284784410, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = supportedSemanticTags_supportedSemanticTags;
  supportedSemanticTags_supportedSemanticTags = v1;
}

- (id)validUTTypes
{
  if (validUTTypes_onceToken != -1)
  {
    dispatch_once(&validUTTypes_onceToken, &__block_literal_global_39_18631);
  }

  v3 = validUTTypes__stringPasteboardUTTypes;

  return v3;
}

void __45__PPConnectionsPasteboardSource_validUTTypes__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [*MEMORY[0x277CE1EB0] identifier];
  v1 = [*MEMORY[0x277CE1EA8] identifier];
  v6[1] = v1;
  v2 = [*MEMORY[0x277CE1E88] identifier];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = validUTTypes__stringPasteboardUTTypes;
  validUTTypes__stringPasteboardUTTypes = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)addressPasteboardTextItemFromNotification:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPConnectionsPasteboardSource *)self fetchedPasteboardItem];
  v5 = [v4 text];
  if (![v5 length])
  {

    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v4 bundleIdentifier];

  if (!v6)
  {
LABEL_9:
    v8 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v7 = [v4 text];
  v14 = 0;
  v8 = [PPDataDetectors addressComponentsFromString:v7 extractedAddress:&v14];
  v6 = v14;

  if (!v6 || !v8)
  {

    v4 = 0;
    goto LABEL_11;
  }

  [v4 setText:v6];
  [v4 setAddressComponents:v8];
  if (v3)
  {
    v9 = +[PPConnectionsMetricsTracker sharedInstance];
    v10 = [v4 bundleIdentifier];
    [v9 trackPasteboardItemFromBundleId:v10 hasAddress:1 isEligible:1];
  }

  v11 = v4;
LABEL_12:
  v12 = v11;

  return v11;
}

- (id)fetchedPasteboardItem
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__18635;
  v62 = __Block_byref_object_dispose__18636;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__18635;
  v56 = __Block_byref_object_dispose__18636;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__18635;
  v50 = __Block_byref_object_dispose__18636;
  v51 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [MEMORY[0x277D38BC0] defaultConnection];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke;
  v42[3] = &unk_278976BD0;
  v44 = &v52;
  v45 = &v46;
  v5 = v3;
  v43 = v5;
  [v4 localGeneralPasteboardCompletionBlock:v42];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:5.0] == 1)
  {
    v6 = pp_connections_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "PPConnectionsPasteboardSource: local general pasteboard fetch timed out";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_23224A000, v8, v9, v7, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v47[5] isEqualToString:*MEMORY[0x277D3A6B0]])
  {
    v6 = pp_connections_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "PPConnectionsPasteboardSource: Rejecting item copied in SpringBoard!";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_20;
  }

  v11 = [v53[5] items];
  v6 = [v11 firstObject];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [(PPConnectionsPasteboardSource *)self validUTTypes];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v64 count:16];
  if (v13)
  {
    v14 = *v38;
    obj = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ([v6 hasRepresentationConformingToType:v16]&& !v59[5])
        {
          v18 = [v6 representationConformingToType:v16];
          v19 = MEMORY[0x277CE1CB8];
          v20 = [v18 typeIdentifier];
          v21 = [v19 typeWithIdentifier:v20];

          v22 = dispatch_semaphore_create(0);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke_32;
          v29[3] = &unk_278976BF8;
          v23 = v21;
          v34 = &v58;
          v35 = &v52;
          v36 = &v46;
          v30 = v23;
          v31 = v16;
          v24 = v18;
          v32 = v24;
          v5 = v22;
          v33 = v5;
          v25 = [v24 loadDataWithCompletion:v29];
          [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:5.0];
        }

        objc_autoreleasePoolPop(v17);
      }

      v12 = obj;
      v13 = [obj countByEnumeratingWithState:&v37 objects:v64 count:16];
    }

    while (v13);
  }

  v10 = v59[5];
LABEL_20:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

void __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 40) + 8) + 40) originatorBundleID];
  v8 = [v7 copy];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v6)
  {
    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"PB", [v6 code]);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_23;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  if ([*(a1 + 32) conformsToType:*MEMORY[0x277CE1EB0]])
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type resolves to UTF-8", &v25, 2u);
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = v5;
    v10 = 4;
LABEL_11:
    v12 = [v8 _pas_stringWithDataNoCopy:v9 encoding:v10 nullTerminated:0];
    goto LABEL_12;
  }

  if ([*(a1 + 32) conformsToType:*MEMORY[0x277CE1EA8]])
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type resolves to UTF-16", &v25, 2u);
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = v5;
    v10 = 10;
    goto LABEL_11;
  }

  if (![*(a1 + 32) conformsToType:*MEMORY[0x277CE1E88]])
  {
    goto LABEL_20;
  }

  v19 = pp_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v25) = 0;
    _os_log_debug_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type does not resolve to UTF-8 or UTF-16", &v25, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 usedEncoding:0];
LABEL_12:
  v13 = v12;
  if (v12)
  {
    v14 = objc_opt_new();
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
    [*(*(*(a1 + 64) + 8) + 40) setCreatedAt:v17];

    [*(*(*(a1 + 64) + 8) + 40) setBundleIdentifier:*(*(*(a1 + 80) + 8) + 40)];
    [*(*(*(a1 + 64) + 8) + 40) setText:v13];
    v18 = pp_connections_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = [*(*(*(a1 + 64) + 8) + 40) text];
      v25 = 138739971;
      v26 = v24;
      _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text: %{sensitive}@", &v25, 0xCu);
    }

    goto LABEL_23;
  }

LABEL_20:
  v20 = pp_connections_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    v22 = [*(a1 + 48) typeIdentifier];
    v25 = 138412802;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = 0;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: Could not load text representation from pasteboard. Type = %@, resolved type = %@, Error: %@", &v25, 0x20u);
  }

  +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"PB", [0 code]);
LABEL_23:
  dispatch_semaphore_signal(*(a1 + 56));

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setMostRecentPasteboardItem:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 memoryFootprintEstimate];
  if (v5 >= 0x4000)
  {
    v6 = v5;
    v7 = pp_connections_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v6;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: dropping pasteboard item because it uses too much memory (estimated footprint %tu)", buf, 0xCu);
    }

    v4 = 0;
  }

  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PPConnectionsPasteboardSource__setMostRecentPasteboardItem___block_invoke;
  v11[3] = &unk_278976BA0;
  v12 = v4;
  v9 = v4;
  [(_PASLock *)lock runWithLockAcquired:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __62__PPConnectionsPasteboardSource__setMostRecentPasteboardItem___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_storeStrong((a2 + 8), *(a1 + 32));
  }
}

- (void)dealloc
{
  if (self->_pasteboardObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_pasteboardObserver];
  }

  v4.receiver = self;
  v4.super_class = PPConnectionsPasteboardSource;
  [(PPConnectionsPasteboardSource *)&v4 dealloc];
}

- (PPConnectionsPasteboardSource)init
{
  v23.receiver = self;
  v23.super_class = PPConnectionsPasteboardSource;
  v2 = [(PPConnectionsPasteboardSource *)&v23 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = dispatch_semaphore_create(0);
    init_sem = v2->_init_sem;
    v2->_init_sem = v7;

    v9 = objc_opt_new();
    pbQueue = v2->_pbQueue;
    v2->_pbQueue = v9;

    [(NSOperationQueue *)v2->_pbQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_pbQueue setSuspended:1];
    v11 = v2->_pbQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__PPConnectionsPasteboardSource_init__block_invoke;
    v20[3] = &unk_2789797B8;
    objc_copyWeak(&v21, &location);
    [(NSOperationQueue *)v11 addOperationWithBlock:v20];
    v2->_pasteboardNotificationState = [MEMORY[0x277D38BC0] beginListeningToPasteboardChangeNotifications];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277D38BC8];
    v14 = v2->_pbQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__PPConnectionsPasteboardSource_init__block_invoke_18;
    v18[3] = &unk_278977828;
    objc_copyWeak(&v19, &location);
    v15 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v18];
    pasteboardObserver = v2->_pasteboardObserver;
    v2->_pasteboardObserver = v15;

    [(NSOperationQueue *)v2->_pbQueue setSuspended:0];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__PPConnectionsPasteboardSource_init__block_invoke(uint64_t a1)
{
  v2 = pp_connections_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: fetching from pasteboard asynchronously after initialization.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshMostRecentPasteboardItemFromNotification:0 explanationSet:0];
}

void __37__PPConnectionsPasteboardSource_init__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = pp_connections_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: handling PBPasteboardChangedNotification", buf, 2u);
    }

    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D38BD0]];
    v8 = [v7 intValue];

    if (WeakRetained[2] != v8)
    {
      WeakRetained[2] = v8;
      v9 = WeakRetained[6];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__PPConnectionsPasteboardSource_init__block_invoke_19;
      v10[3] = &unk_2789797B8;
      objc_copyWeak(&v11, (a1 + 32));
      [v9 addOperationWithBlock:v10];
      objc_destroyWeak(&v11);
    }
  }
}

void __37__PPConnectionsPasteboardSource_init__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshMostRecentPasteboardItemFromNotification:1 explanationSet:0];
}

+ (PPConnectionsPasteboardSource)sharedInstance
{
  if (sharedInstance_once_18670 != -1)
  {
    dispatch_once(&sharedInstance_once_18670, &__block_literal_global_18671);
  }

  v3 = sharedInstance_shared_18672;

  return v3;
}

uint64_t __47__PPConnectionsPasteboardSource_sharedInstance__block_invoke()
{
  sharedInstance_shared_18672 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end