@interface TPSNotificationController
+ (BOOL)isValidNotificationInterval;
+ (double)standardNotificationInterval;
+ (id)cacheDirectoryCreateIfEmpty:(BOOL)a3;
+ (int64_t)remainingCountOfNotificationsUntilOptOut;
+ (void)removeAssetCacheDirectory;
+ (void)removeNotificationCache;
- (BOOL)canUpdateHintEligibilityForIdentifier:(id)a3;
- (BOOL)collectionEligibleForNotification:(id)a3;
- (BOOL)isDocumentHintDisplayedOnOtherDevices:(id)a3;
- (BOOL)isNotificationDeliveryInfoValid:(id)a3 identifier:(id)a4 overrideOptOutContentOnly:(BOOL)a5 ignoreSuppressContent:(BOOL)a6;
- (BOOL)isSoftOptedOut;
- (BOOL)shouldDisplayCollectionIcon;
- (BOOL)updateHintEligibleForTip:(id)a3 isValid:(BOOL)a4;
- (NSBundle)frameworkBundle;
- (TPSNotificationController)init;
- (TPSNotificationControllerDelegate)delegate;
- (id)assetsConfigurationForDocument:(id)a3;
- (id)cacheAssetFileURLForDocument:(id)a3;
- (id)cacheFilePathForFile:(id)a3;
- (id)copyFileURL:(id)a3 cachePath:(id)a4;
- (id)documentToNotifyForTipsInCollection:(id)a3 tipMap:(id)a4 tipDeliveryInfoMap:(id)a5 deliveryInfoMap:(id)a6 overrideOptOutContentOnly:(BOOL)a7;
- (id)notificationDeliveryInfoForIdentifier:(id)a3 documentDeliveryIdentifierMap:(id)a4 deliveryInfoMap:(id)a5;
- (id)updateNotificationCacheWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5 extensionPayload:(id)a6;
- (void)_registerWakingEvents;
- (void)_unregisterAllWakingEvents;
- (void)_updateNotificationCache;
- (void)_updateWakingEventMapCache;
- (void)clearNotificationCache;
- (void)clearNotificationCount;
- (void)dataProviderManager:(id)a3 didReceiveCallbackWithResult:(id)a4 type:(int64_t)a5;
- (void)fetchNotificationAssetIfNeededCompletionHandler:(id)a3;
- (void)notificationPosted;
- (void)registerWakingEventsForDeliveryIdentifierMap:(id)a3 deliveryInfoMap:(id)a4;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)showNotificationWithCompletionHandler:(id)a3;
- (void)updateDocumentToNotifyWithPreferredIdentifiers:(id)a3 collectionOrder:(id)a4 collectionMap:(id)a5 collectionDeliveryIdentifierMap:(id)a6 tipMap:(id)a7 tipsDeliveryIdentifierMap:(id)a8 deliveryInfoMap:(id)a9 documentDictionaryMap:(id)a10 metadataDictionary:(id)a11 completionHandler:(id)a12;
- (void)updateNotificationCount;
- (void)updateNotificationRegistrationEventsWithCollectionDeliveryIdentifierMap:(id)a3 tipsDeliveryIdentifierMap:(id)a4 deliveryInfoMap:(id)a5 completionHandler:(id)a6;
@end

@implementation TPSNotificationController

+ (double)standardNotificationInterval
{
  v2 = [MEMORY[0x277D71740] standardNotificationInterval];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 259200.0;
  }

  return v5;
}

+ (int64_t)remainingCountOfNotificationsUntilOptOut
{
  if (!+[TPSNotificationController respectsOptOut])
  {
    return -1;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"ConsecutiveNotificationsCount"];
  v4 = [v3 intValue];

  return +[TPSNotificationController softOptOutNotificationCount]- v4;
}

+ (id)cacheDirectoryCreateIfEmpty:(BOOL)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if (![v4 count])
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v4 firstObject];
  v6 = [v5 stringByAppendingPathComponent:@"com.apple.TipsDaemon"];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v7 fileExistsAtPath:v6] & 1) == 0)
  {
    if (!v3)
    {

      goto LABEL_9;
    }

    v11 = 0;
    [v7 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:0 error:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = v8;

LABEL_9:
      v6 = 0;
    }
  }

LABEL_11:

  return v6;
}

+ (void)removeAssetCacheDirectory
{
  v2 = [TPSNotificationController cacheDirectoryCreateIfEmpty:0];
  if (v2)
  {
    v9 = v2;
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 enumeratorAtPath:v9];
    v5 = [v4 nextObject];
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [v9 stringByAppendingPathComponent:v6];
        if (v7)
        {
          [v3 removeItemAtPath:v7 error:0];
        }

        v8 = [v4 nextObject];

        v6 = v8;
      }

      while (v8);
    }

    v2 = v9;
  }
}

+ (void)removeNotificationCache
{
  [MEMORY[0x277D717A8] archivedDataWithRootObject:0 forKey:@"NotificationCache"];
  v2 = MEMORY[0x277D717A8];

  [v2 archivedDataWithRootObject:0 forKey:@"RegisteredWakingEventMapKey"];
}

- (TPSNotificationController)init
{
  v27.receiver = self;
  v27.super_class = TPSNotificationController;
  v2 = [(TPSNotificationController *)&v27 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [MEMORY[0x277D717A8] unarchivedObjectOfClass:objc_opt_class() forKey:@"NotificationCache"];
    notificationCache = v2->_notificationCache;
    v2->_notificationCache = v4;

    v6 = [v3 objectForKey:@"ConsecutiveNotificationsCount"];
    v2->_notificationCount = [v6 intValue];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.tips.TPSNotificationController", v7);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    assetURLSessionMap = v2->_assetURLSessionMap;
    v2->_assetURLSessionMap = v10;

    v12 = objc_alloc_init(MEMORY[0x277D71750]);
    eventsProviderManager = v2->_eventsProviderManager;
    v2->_eventsProviderManager = v12;

    [(TPSEventsProviderManager *)v2->_eventsProviderManager setDelegate:v2];
    v14 = [TPSUserNotificationController alloc];
    v15 = [MEMORY[0x277D716E8] notificationBundleIdentifier];
    v16 = [(TPSUserNotificationController *)v14 initWithBundleIdentifier:v15];
    localNotificationController = v2->_localNotificationController;
    v2->_localNotificationController = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [MEMORY[0x277D717A8] unarchivedObjectOfClasses:v21 forKey:@"RegisteredWakingEventMapKey"];
    registeredWakingEventMap = v2->_registeredWakingEventMap;
    v2->_registeredWakingEventMap = v22;

    if (v2->_registeredWakingEventMap)
    {
      [(TPSNotificationController *)v2 _registerWakingEvents];
    }

    else
    {
      v24 = [MEMORY[0x277CBEB38] dictionary];
      v25 = v2->_registeredWakingEventMap;
      v2->_registeredWakingEventMap = v24;
    }

    if ([MEMORY[0x277D71740] resetDaemonData])
    {
      [(TPSNotificationController *)v2 clearNotificationCount];
    }
  }

  return v2;
}

+ (BOOL)isValidNotificationInterval
{
  v16 = *MEMORY[0x277D85DE8];
  +[TPSNotificationController standardNotificationInterval];
  if (v2 <= 0.0)
  {
    v8 = 1;
  }

  else
  {
    v3 = v2;
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 objectForKey:@"TPSLastNotificationDate"];

    [v5 timeIntervalSinceNow];
    v7 = v6;
    v8 = fabs(v6) > v3 || v6 >= 0.0;
    if (!v8)
    {
      v9 = [MEMORY[0x277D71778] data];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v7;
        v14 = 2048;
        v15 = v3;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_DEFAULT, "Last notification interval: %f is less than expected interval %f", &v12, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSBundle)frameworkBundle
{
  frameworkBundle = self->_frameworkBundle;
  if (!frameworkBundle)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = self->_frameworkBundle;
    self->_frameworkBundle = v4;

    frameworkBundle = self->_frameworkBundle;
  }

  return frameworkBundle;
}

- (void)updateDocumentToNotifyWithPreferredIdentifiers:(id)a3 collectionOrder:(id)a4 collectionMap:(id)a5 collectionDeliveryIdentifierMap:(id)a6 tipMap:(id)a7 tipsDeliveryIdentifierMap:(id)a8 deliveryInfoMap:(id)a9 documentDictionaryMap:(id)a10 metadataDictionary:(id)a11 completionHandler:(id)a12
{
  v123[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v62 = a5;
  v55 = a6;
  v61 = a7;
  v56 = a8;
  v19 = v18;
  v57 = a9;
  v58 = a10;
  v59 = a11;
  v60 = a12;
  v20 = [MEMORY[0x277D71778] data];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232D6F000, v20, OS_LOG_TYPE_DEFAULT, "Checking document to notify.", buf, 2u);
  }

  if ([v18 count] && objc_msgSend(v62, "count") || objc_msgSend(v61, "count"))
  {
    *buf = 0;
    v116 = buf;
    v117 = 0x3032000000;
    v118 = __Block_byref_object_copy__10;
    v119 = __Block_byref_object_dispose__10;
    v120 = 0;
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__10;
    v113 = __Block_byref_object_dispose__10;
    v114 = 0;
    v103 = 0;
    v104 = &v103;
    v105 = 0x3032000000;
    v106 = __Block_byref_object_copy__10;
    v107 = __Block_byref_object_dispose__10;
    v108 = 0;
    v54 = [(TPSNotificationController *)self isSoftOptedOut];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke;
    aBlock[3] = &unk_2789B0CD0;
    v100 = buf;
    v101 = &v109;
    v102 = &v103;
    v97 = v58;
    v98 = v59;
    v17 = v17;
    v99 = v17;
    v21 = _Block_copy(aBlock);
    v22 = [MEMORY[0x277D71740] notificationDocument];
    v53 = v22;
    if (v22)
    {
      v123[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:1];
      v24 = [v23 arrayByAddingObjectsFromArray:v17];

      v17 = v24;
    }

    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_2;
    v80[3] = &unk_2789B0CF8;
    v25 = v62;
    v88 = &v109;
    v81 = v25;
    v82 = self;
    v26 = v55;
    v83 = v26;
    v27 = v57;
    v84 = v27;
    v91 = v54;
    v28 = v61;
    v85 = v28;
    v29 = v56;
    v86 = v29;
    v30 = v21;
    v87 = v30;
    v89 = buf;
    v90 = &v92;
    [v17 enumerateObjectsUsingBlock:v80];
    if (![v17 count])
    {
      v31 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v32 = [v31 objectForKey:@"LastNotifiedCollectionIdentifier"];
      v33 = *(v116 + 5);
      *(v116 + 5) = v32;

      v34 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v116 + 5);
        *v121 = 138412290;
        v122 = v35;
        _os_log_impl(&dword_232D6F000, v34, OS_LOG_TYPE_DEFAULT, "Last notified collection identifier %@", v121, 0xCu);
      }

      if (!*(v116 + 5))
      {
        goto LABEL_14;
      }

      v36 = [v19 indexOfObject:?];
      v37 = [v19 count];
      if (v36 >= v37 - 1)
      {
        goto LABEL_14;
      }

      v38 = v36 + 1;
      v39 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v36 + 1, v37 - (v36 + 1)}];
      v52 = [v19 objectsAtIndexes:v39];

      v40 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v38}];
      v41 = [v19 objectsAtIndexes:v40];

      v42 = [MEMORY[0x277CBEB18] arrayWithArray:v52];
      [v42 addObjectsFromArray:v41];

      if (!v42)
      {
LABEL_14:
        v42 = [MEMORY[0x277CBEB18] arrayWithArray:v19];
      }

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_54;
      v72[3] = &unk_2789B0D20;
      v43 = v25;
      v77 = &v109;
      v73 = v43;
      v74 = self;
      v75 = v26;
      v44 = v27;
      v79 = v54;
      v76 = v44;
      v78 = buf;
      [v42 enumerateObjectsUsingBlock:v72];
      if (!v110[5])
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_2_55;
        v64[3] = &unk_2789B0D48;
        v65 = v43;
        v66 = self;
        v67 = v28;
        v68 = v29;
        v69 = v44;
        v71 = v54;
        v70 = v30;
        [v42 enumerateObjectsUsingBlock:v64];
      }
    }

    v45 = *(v116 + 5);
    v46 = v110[5];
    v47 = v93[3];
    v48 = [v104[5] copy];
    v49 = [(TPSNotificationController *)self updateNotificationCacheWithCollectionIdentifier:v45 document:v46 type:v47 extensionPayload:v48];

    v60[2](v60, self->_notificationCache);
    _Block_object_dispose(&v92, 8);

    _Block_object_dispose(&v103, 8);
    _Block_object_dispose(&v109, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v50 = [MEMORY[0x277D71778] data];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232D6F000, v50, OS_LOG_TYPE_DEFAULT, "No collections or tips available.", buf, 2u);
    }

    [(TPSNotificationController *)self clearNotificationCache];
    v60[2](v60, self->_notificationCache);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = v8;
  if (!v8)
  {
    v3 = [v25 collectionIdentifiers];
    v9 = [v3 firstObject];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
  if (!v8)
  {
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (([v25 isIntro] & 1) == 0 && (objc_msgSend(v25, "isOutro") & 1) == 0)
  {
    if (+[TPSNotificationController supportsExtension])
    {
      v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(a1 + 32);
      v14 = [*(*(*(a1 + 64) + 8) + 40) identifier];
      v15 = [v13 objectForKeyedSubscript:v14];
      [*(*(*(a1 + 72) + 8) + 40) setObject:v15 forKeyedSubscript:*MEMORY[0x277D71940]];

      [*(*(*(a1 + 72) + 8) + 40) setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x277D71960]];
      if ([*(*(*(a1 + 72) + 8) + 40) count] != 2)
      {
        v16 = *(*(a1 + 72) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = 0;
      }
    }
  }

  if (([*(a1 + 48) containsObject:*(*(*(a1 + 56) + 8) + 40)] & 1) != 0 || +[TPSNotificationController alwaysDisplayCollectionIcon](TPSNotificationController, "alwaysDisplayCollectionIcon"))
  {
    v18 = [*(*(*(a1 + 64) + 8) + 40) notification];
    v19 = [v18 assets];

    if (!v19)
    {
      v20 = [v7 tileAssets];
      v21 = [*(*(*(a1 + 64) + 8) + 40) notification];
      [v21 setAssets:v20];

      if (+[TPSNotificationController supportsRemoteIcon])
      {
        v22 = [*(*(*(a1 + 64) + 8) + 40) assetFileInfoManager];
        v23 = [v7 assetFileInfoManager];
        v24 = [v23 fileMap];
        [v22 addNewAssetInfoFromFileMap:v24];
      }
    }
  }
}

void __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v7 = [*(a1 + 40) documentToNotifyForCollection:v6 collectionDeliveryInfoMap:*(a1 + 48) deliveryInfoMap:*(a1 + 56) overrideOptOutContentOnly:*(a1 + 112)];
  v8 = *(*(a1 + 88) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v10 = [v6 identifier];
    v11 = *(*(a1 + 96) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v12 = [*(a1 + 40) tipDocumentToNotifyWithIdentifier:v13 tipMap:*(a1 + 64) tipDeliveryInfoMap:*(a1 + 72) deliveryInfoMap:*(a1 + 56) overrideOptOutContentOnly:*(a1 + 112)];
    if (v12)
    {
      (*(*(a1 + 80) + 16))();
    }
  }

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    *(*(*(a1 + 104) + 8) + 24) = 2;
    *a4 = 1;
  }
}

void __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_54(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v16 = v6;
  v10 = [*(a1 + 40) documentToNotifyForCollection:? collectionDeliveryInfoMap:? deliveryInfoMap:? overrideOptOutContentOnly:?];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v13 = [v16 identifier];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a4 = 1;
  }
}

void __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_2_55(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v12 = v6;
  v11 = [*(a1 + 40) documentToNotifyForTipsInCollection:? tipMap:? tipDeliveryInfoMap:? deliveryInfoMap:? overrideOptOutContentOnly:?];
  if (v11)
  {
    (*(*(a1 + 72) + 16))();
    *a4 = 1;
  }
}

- (void)updateNotificationRegistrationEventsWithCollectionDeliveryIdentifierMap:(id)a3 tipsDeliveryIdentifierMap:(id)a4 deliveryInfoMap:(id)a5 completionHandler:(id)a6
{
  v12 = a6;
  v10 = a5;
  v11 = a4;
  [(TPSNotificationController *)self registerWakingEventsForDeliveryIdentifierMap:a3 deliveryInfoMap:v10];
  [(TPSNotificationController *)self registerWakingEventsForDeliveryIdentifierMap:v11 deliveryInfoMap:v10];

  v12[2](v12, 0);
}

- (void)registerWakingEventsForDeliveryIdentifierMap:(id)a3 deliveryInfoMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allKeys];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = [MEMORY[0x277D716E8] sharedInstance];
  v11 = [v10 tipStatusController];

  v12 = [(TPSNotificationController *)self isSoftOptedOut];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke;
  v21[3] = &unk_2789B0D70;
  v13 = v11;
  v22 = v13;
  v23 = self;
  v14 = v6;
  v24 = v14;
  v15 = v7;
  v25 = v15;
  v27 = v12;
  v16 = v9;
  v26 = v16;
  [v8 enumerateObjectsUsingBlock:v21];
  if ([v16 count])
  {
    v17 = [(TPSNotificationController *)self syncQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke_2;
    v18[3] = &unk_2789B08F8;
    v19 = v16;
    v20 = self;
    dispatch_sync(v17, v18);
  }
}

void __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isContentNeverVisibleForIdentifier:v3])
  {
    v4 = [*(a1 + 40) notificationDeliveryInfoForIdentifier:v3 documentDeliveryIdentifierMap:*(a1 + 48) deliveryInfoMap:*(a1 + 56)];
    if (![v4 TPSSafeBoolForKey:@"immediate"] || *(a1 + 72) == 1 && !objc_msgSend(v4, "TPSSafeBoolForKey:", @"overrideOptOut"))
    {
      goto LABEL_23;
    }

    v5 = [v4 TPSSafeDictionaryForKey:@"preconditions"];
    if ([v5 count])
    {
      v6 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v5];
      v7 = [(TPSDeliveryPrecondition *)v6 conditionsForType:1];
      if (![v7 count])
      {
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v8 = [TPSTargetingValidator validateConditions:v7 joinType:[(TPSDeliveryPrecondition *)v6 joinType] context:v3 cache:0 completionQueue:0 error:0];

      if (!v8)
      {
        v9 = [(TPSDeliveryPrecondition *)v6 conditionsForType:2];
        if (![v9 count])
        {

LABEL_26:
          v7 = [(TPSDeliveryPrecondition *)v6 registrableEvents];
LABEL_13:
          if ([v7 count])
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = v7;
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v18;
              do
              {
                v15 = 0;
                do
                {
                  if (*v18 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  [*(*(&v17 + 1) + 8 * v15++) addObserverIdentifier:{v3, v17}];
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
              }

              while (v13);
            }

            [*(a1 + 64) addObjectsFromArray:v11];
          }

          goto LABEL_22;
        }

        v10 = [TPSTargetingValidator validateConditions:v9 joinType:[(TPSDeliveryPrecondition *)v6 joinType] context:v3 cache:0 completionQueue:0 error:0];

        if (v10)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_13;
  }

LABEL_24:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) registeredWakingEventMap];
        v9 = [v7 identifier];
        [v8 setObject:v7 forKeyedSubscript:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _updateWakingEventMapCache];
  result = [*(a1 + 40) _registerWakingEvents];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TPSNotificationController *)self localNotificationController];
  [v5 removeNotificationWithIdentifier:v4];

  v6 = [(TPSNotificationController *)self notificationCache];
  v7 = [v6 document];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:v4];

  if (v9)
  {

    [(TPSNotificationController *)self clearNotificationCache];
  }
}

- (void)removeAllNotifications
{
  v3 = [(TPSNotificationController *)self localNotificationController];
  [v3 removeAllNotifications];

  [(TPSNotificationController *)self clearNotificationCache];

  [(TPSNotificationController *)self clearNotificationCount];
}

- (void)clearNotificationCache
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 notificationCache];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Clear notification cache %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_registerWakingEvents
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Re-registering notification for waking events: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterAllWakingEvents
{
  v2 = [(TPSNotificationController *)self eventsProviderManager];
  [v2 unregisterAllWakingEvents];
}

- (void)_updateWakingEventMapCache
{
  v2 = MEMORY[0x277D717A8];
  v3 = [(TPSNotificationController *)self registeredWakingEventMap];
  [v2 archivedDataWithRootObject:v3 forKey:@"RegisteredWakingEventMapKey"];
}

- (void)_updateNotificationCache
{
  v2 = MEMORY[0x277D717A8];
  v3 = [(TPSNotificationController *)self notificationCache];
  [v2 archivedDataWithRootObject:v3 forKey:@"NotificationCache"];
}

- (id)updateNotificationCacheWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5 extensionPayload:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v11;
    v29 = 2112;
    v30 = v10;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&dword_232D6F000, v13, OS_LOG_TYPE_DEFAULT, "Update notification cache for document %@, collectionIdentifier %@, type %lu", buf, 0x20u);
  }

  if (!v10 || !v11)
  {
    [(TPSNotificationController *)self clearNotificationCache];
    goto LABEL_17;
  }

  v14 = [(TPSNotificationController *)self notificationCache];
  v15 = [v14 type];

  if (v15 == 1)
  {
    if (a5 != 1)
    {
      v16 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "Cannot update notification document due to a welcome type in progress.";
LABEL_14:
        _os_log_impl(&dword_232D6F000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else if (a5 != 2 && v15 == 2)
  {
    v16 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Cannot update notification document due to a immediate type in progress.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_17;
  }

  v18 = [(TPSNotificationController *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__TPSNotificationController_updateNotificationCacheWithCollectionIdentifier_document_type_extensionPayload___block_invoke;
  block[3] = &unk_2789B0D98;
  block[4] = self;
  v23 = v10;
  v24 = v11;
  v26 = a5;
  v25 = v12;
  dispatch_sync(v18, block);

LABEL_17:
  v19 = [(TPSNotificationController *)self notificationCache];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __108__TPSNotificationController_updateNotificationCacheWithCollectionIdentifier_document_type_extensionPayload___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) notificationCache];
  v3 = [v2 collectionIdentifier];
  if (([v3 isEqualToString:*(a1 + 40)] & 1) == 0)
  {

    v9 = 0;
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) notificationCache];
  v5 = [v4 document];
  v6 = [v5 identifier];
  v7 = [*(a1 + 48) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v2 = [*(a1 + 32) notificationCache];
    v9 = [v2 attachmentURL];
LABEL_5:

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = [TPSNotificationCache notificationCacheWithCollectionIdentifier:*(a1 + 40) document:*(a1 + 48) type:*(a1 + 64)];
  [*(a1 + 32) setNotificationCache:v10];

  v11 = *(a1 + 56);
  v12 = [*(a1 + 32) notificationCache];
  [v12 setExtensionPayload:v11];

  v13 = [*(a1 + 32) notificationCache];
  [v13 setAttachmentURL:v9];

  [*(a1 + 32) _updateNotificationCache];
  v14 = [*(a1 + 48) notification];
  v15 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 debugDescription];
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_232D6F000, v15, OS_LOG_TYPE_DEFAULT, "Tip found to notify user about %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)notificationDeliveryInfoForIdentifier:(id)a3 documentDeliveryIdentifierMap:(id)a4 deliveryInfoMap:(id)a5
{
  v7 = a5;
  v8 = [a4 TPSSafeStringForKey:a3];
  v9 = [v7 TPSSafeDictionaryForKey:v8];

  v10 = [v9 objectForKeyedSubscript:@"notification"];

  return v10;
}

- (id)documentToNotifyForTipsInCollection:(id)a3 tipMap:(id)a4 tipDeliveryInfoMap:(id)a5 deliveryInfoMap:(id)a6 overrideOptOutContentOnly:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v16 = [v12 tipIdentifiers];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __133__TPSNotificationController_documentToNotifyForTipsInCollection_tipMap_tipDeliveryInfoMap_deliveryInfoMap_overrideOptOutContentOnly___block_invoke;
  v22[3] = &unk_2789B0DC0;
  v26 = &v28;
  v22[4] = self;
  v17 = v13;
  v23 = v17;
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v27 = a7;
  [v16 enumerateObjectsUsingBlock:v22];

  v20 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v20;
}

void __133__TPSNotificationController_documentToNotifyForTipsInCollection_tipMap_tipDeliveryInfoMap_deliveryInfoMap_overrideOptOutContentOnly___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v6 = [*(a1 + 32) tipDocumentToNotifyWithIdentifier:a2 tipMap:*(a1 + 40) tipDeliveryInfoMap:*(a1 + 48) deliveryInfoMap:*(a1 + 56) overrideOptOutContentOnly:*(a1 + 72)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 64) + 8) + 40) != 0;
}

- (BOOL)canUpdateHintEligibilityForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D716E8] sharedInstance];
  v5 = [v4 tipStatusController];

  if ([v5 isContentNeverVisibleForIdentifier:v3] && (objc_msgSend(v5, "isHintIneligibleForIdentifier:", v3) & 1) == 0)
  {
    if ([v5 displayTypeForIdentifier:v3] == 1)
    {
      v8 = [v5 hintEligibleDateForIdentifier:v3];
      v6 = v8 != 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)updateHintEligibleForTip:(id)a3 isValid:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(TPSNotificationController *)self isDocumentHintDisplayedOnOtherDevices:v6];

  if (v8)
  {
    v9 = [(TPSNotificationController *)self delegate];
    [v9 notificationController:self markIdentifier:v7 type:1 ineligibleWithReason:3];

    v4 = 0;
  }

  v10 = [MEMORY[0x277D716E8] sharedInstance];
  v11 = [v10 tipStatusController];

  if (v4 && ![v11 displayTypeForIdentifier:v7])
  {
    v12 = [v11 hintEligibleDateForIdentifier:v7];

    if (!v12)
    {
      [v11 updateHintEligibleDateForIdentifier:v7 value:1];
    }
  }

  return v4;
}

- (BOOL)isNotificationDeliveryInfoValid:(id)a3 identifier:(id)a4 overrideOptOutContentOnly:(BOOL)a5 ignoreSuppressContent:(BOOL)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (!a6 && ([v9 TPSSafeBoolForKey:@"suppress"] & 1) != 0 || v7 && !objc_msgSend(v9, "TPSSafeBoolForKey:", @"overrideOptOut"))
  {
    v16 = 0;
  }

  else if ([v9 count])
  {
    v11 = [v9 TPSSafeDictionaryForKey:@"preconditions"];
    if ([v11 count])
    {
      v12 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [(TPSDeliveryPrecondition *)v12 conditionsForType:2];
        v18 = 0;
        v15 = [TPSTargetingValidator validateConditions:v14 joinType:[(TPSDeliveryPrecondition *)v13 joinType] context:v10 cache:0 completionQueue:0 error:&v18];
        v16 = v18 == 0 && v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)showNotificationWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSNotificationController *)self notificationCache];
  v6 = [v5 document];

  if (v6)
  {
    v7 = [(TPSNotificationController *)self notificationCache];
    v8 = [v7 hasLocaleChanged];

    v9 = v8 ^ 1;
    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  v11 = [v6 identifier];
  v12 = [MEMORY[0x277D716E8] sharedInstance];
  v13 = [v12 tipStatusController];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 1;
      if (([v13 isLockScreenHintDisplayEligibleForIdentifier:v11] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 && (v16 & 1) == 0)
      {
        v14 = 0;
LABEL_21:
        v10 = 3;
LABEL_22:
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.TipsDaemon.notificationController" code:v10 userInfo:0];
        v18 = [MEMORY[0x277D71778] daemon];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v11;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_232D6F000, v18, OS_LOG_TYPE_DEFAULT, "Notification for %@ is no longer eligible due to error %@.", &v27, 0x16u);
        }

        goto LABEL_27;
      }

      if (isKindOfClass)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      if (![(TPSNotificationController *)self collectionEligibleForNotification:v11])
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = 0;
    if (v10)
    {
      goto LABEL_22;
    }
  }

  if ([(TPSNotificationController *)self isDocumentHintDisplayedOnOtherDevices:v6])
  {
    v10 = 4;
    goto LABEL_22;
  }

  v19 = [(TPSNotificationController *)self notificationCache];
  v18 = [v19 attachmentURL];

  v20 = [(TPSNotificationController *)self localNotificationController];
  v21 = [(TPSNotificationController *)self notificationCache];
  [v20 showNotificationForNotificationCache:v21 attachmentURL:v18];

  [(TPSNotificationController *)self notificationPosted];
  v22 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = [(TPSNotificationController *)self notificationCount];
    _os_log_impl(&dword_232D6F000, v22, OS_LOG_TYPE_DEFAULT, "Consecutive notification count %ld", &v27, 0xCu);
  }

  v17 = 0;
LABEL_27:

  v23 = [MEMORY[0x277D716E8] sharedInstance];
  v24 = [(TPSNotificationController *)self notificationCache];
  v25 = [v24 collectionIdentifier];
  [v23 notifiedCollection:v25];

  [(TPSNotificationController *)self clearNotificationCache];
  v4[2](v4, v6, v14, v17);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)clearNotificationCount
{
  [(TPSNotificationController *)self setNotificationCount:0];

  [(TPSNotificationController *)self updateNotificationCount];
}

- (BOOL)isSoftOptedOut
{
  v2 = [(TPSNotificationController *)self notificationCount];
  if (v2 < +[TPSNotificationController softOptOutNotificationCount])
  {
    return 0;
  }

  return +[TPSNotificationController respectsOptOut];
}

- (void)notificationPosted
{
  [(TPSNotificationController *)self setNotificationCount:[(TPSNotificationController *)self notificationCount]+ 1];
  [(TPSNotificationController *)self updateNotificationCount];
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v6 setObject:v3 forKey:@"TPSLastNotificationDate"];

  v4 = [(TPSNotificationController *)self notificationCache];
  v5 = [v4 collectionIdentifier];
  [v6 setObject:v5 forKey:@"LastNotifiedCollectionIdentifier"];

  [v6 synchronize];
}

- (void)updateNotificationCount
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [(TPSNotificationController *)self notificationCount];
    _os_log_impl(&dword_232D6F000, v4, OS_LOG_TYPE_DEFAULT, "Consecutive notification ignore count %zd", &v8, 0xCu);
  }

  if ([(TPSNotificationController *)self isSoftOptedOut])
  {
    v5 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[TPSNotificationController softOptOutNotificationCount];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_232D6F000, v5, OS_LOG_TYPE_DEFAULT, "User hasn't launch the app after %ld notifications. Will only look for override opt-out notifications next time.", &v8, 0xCu);
    }
  }

  [v3 setInteger:-[TPSNotificationController notificationCount](self forKey:{"notificationCount"), @"ConsecutiveNotificationsCount"}];
  [v3 synchronize];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)collectionEligibleForNotification:(id)a3
{
  v3 = MEMORY[0x277D716E8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 collectionStatusForCollectionIdentifier:v4];

  if ([v6 canNotify])
  {
    v7 = [v6 firstViewedDate];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDocumentHintDisplayedOnOtherDevices:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v6 = [v3 correlationID];
    [v5 na_safeAddObject:v6];

    v7 = [v3 clonedFromID];
    [v5 na_safeAddObject:v7];

    v8 = [v3 identifier];
    [v5 na_safeAddObject:v8];

    v9 = [MEMORY[0x277D716D0] sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__TPSNotificationController_isDocumentHintDisplayedOnOtherDevices___block_invoke;
    v17[3] = &unk_2789B0DE8;
    v10 = v9;
    v18 = v10;
    if ([v5 na_any:v17])
    {
      if (![MEMORY[0x277D71740] ignoreCloud])
      {
        v4 = 1;
        goto LABEL_10;
      }

      v11 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 identifier];
        v13 = [v3 correlationID];
        v14 = [v3 clonedFromID];
        *buf = 138412802;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_232D6F000, v11, OS_LOG_TYPE_DEFAULT, "Overriding ineligibility due to content %@ already seen on other devices (correlationId: %@, cloneFromID: %@)", buf, 0x20u);
      }
    }

    v4 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)shouldDisplayCollectionIcon
{
  if (+[TPSNotificationController alwaysDisplayCollectionIcon])
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(TPSNotificationController *)self notificationCache];
    v5 = [v4 document];

    v6 = [(TPSNotificationController *)self notificationCache];
    if ([v6 type] == 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (void)fetchNotificationAssetIfNeededCompletionHandler:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSNotificationController *)self notificationCache];
  v6 = [v5 document];

  if (![(TPSNotificationController *)self shouldDisplayCollectionIcon])
  {
    goto LABEL_22;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__10;
  v57 = __Block_byref_object_dispose__10;
  v7 = [(TPSNotificationController *)self notificationCache];
  v58 = [v7 attachmentURL];

  v8 = [(TPSNotificationController *)self cacheAssetFileURLForDocument:v6];
  v9 = v54[5];
  if (v8)
  {
    if (([v9 isEqual:v8] & 1) == 0)
    {
      v10 = [(TPSNotificationController *)self notificationCache];
      [v10 setAttachmentURL:v8];

      [(TPSNotificationController *)self _updateNotificationCache];
    }

    v4[2](v4, v8);
    goto LABEL_6;
  }

  v54[5] = 0;

  if (v54[5])
  {
    v12 = [(TPSNotificationController *)self notificationCache];
    [v12 setAttachmentURL:0];

    [(TPSNotificationController *)self _updateNotificationCache];
    if (v54[5])
    {
LABEL_6:
      v11 = 1;
      goto LABEL_21;
    }
  }

  v13 = [v6 notification];
  v14 = [v13 assets];

  v15 = [v14 imageIdentifier];
  if (!v15 || ([v14 baseURL], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v17))
  {
    v11 = 1;
  }

  else
  {
    v33 = [(TPSNotificationController *)self assetsConfigurationForDocument:v6];
    v18 = [v33 cacheIdentifierForType:0];
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__10;
    v51 = __Block_byref_object_dispose__10;
    v52 = 0;
    v19 = [(TPSNotificationController *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke;
    block[3] = &unk_2789B0E10;
    v46 = &v47;
    block[4] = self;
    v20 = v18;
    v45 = v20;
    dispatch_sync(v19, block);

    v11 = 1;
    if (!v48[5] && v20)
    {
      v21 = [MEMORY[0x277D71708] assetPathFromAssetConfiguration:v33 type:0];
      v11 = v21 == 0;
      if (v21)
      {
        v32 = v21;
        objc_initWeak(&location, self);
        v22 = [MEMORY[0x277D71778] daemon];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v6 identifier];
          *buf = 138412802;
          v60 = v23;
          v61 = 2112;
          v62 = v20;
          v63 = 2112;
          v64 = v32;
          _os_log_impl(&dword_232D6F000, v22, OS_LOG_TYPE_DEFAULT, "Attempt to cache asset for document id %@ with asset identifier %@ at %@", buf, 0x20u);
        }

        v24 = [MEMORY[0x277D716A0] sharedInstance];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_71;
        v37[3] = &unk_2789B0E38;
        objc_copyWeak(&v42, &location);
        v25 = *MEMORY[0x277CCA790];
        v37[4] = self;
        v26 = v20;
        v38 = v26;
        v41 = &v53;
        v39 = v6;
        v40 = v4;
        LODWORD(v27) = v25;
        v28 = [v24 formattedDataForPath:v32 identifier:v26 attributionIdentifier:0 priority:v37 completionHandler:v27];
        v29 = v48[5];
        v48[5] = v28;

        v30 = [(TPSNotificationController *)self syncQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_73;
        v34[3] = &unk_2789B0E60;
        v34[4] = self;
        v35 = v26;
        v36 = &v47;
        dispatch_async(v30, v34);

        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
        v21 = v32;
      }
    }

    _Block_object_dispose(&v47, 8);
  }

LABEL_21:
  _Block_object_dispose(&v53, 8);

  if (v8 == 0 && v11)
  {
LABEL_22:
    v4[2](v4, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) assetURLSessionMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_71(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = [*(a1 + 32) cacheFilePathForFile:*(a1 + 40)];
  v7 = [WeakRetained copyFileURL:v4 cachePath:v6];

  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [WeakRetained syncQueue];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_2;
  v28 = &unk_2789B08F8;
  v29 = WeakRetained;
  v30 = *(a1 + 40);
  dispatch_async(v10, &v25);

  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = [MEMORY[0x277D71778] daemon];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [*(a1 + 48) identifier];
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412802;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v17 = "Asset cached for document id %@ with asset identifier %@ to %@";
      v18 = v12;
      v19 = 32;
LABEL_6:
      _os_log_impl(&dword_232D6F000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }

  else if (v13)
  {
    v14 = [*(a1 + 48) identifier];
    v20 = *(a1 + 40);
    *buf = 138412546;
    v32 = v14;
    v33 = 2112;
    v34 = v20;
    v17 = "Unable to cache asset for document id %@ with asset identifier %@";
    v18 = v12;
    v19 = 22;
    goto LABEL_6;
  }

  v21 = *(*(*(a1 + 64) + 8) + 40);
  v22 = [WeakRetained notificationCache];
  [v22 setAttachmentURL:v21];

  [WeakRetained _updateNotificationCache];
  v23 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

void __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assetURLSessionMap];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_73(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) assetURLSessionMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)assetsConfigurationForDocument:(id)a3
{
  v3 = a3;
  v4 = [v3 notification];
  v5 = [v4 assets];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D77768]);
    v7 = [v6 userInterfaceStyle] == 2;
    v8 = objc_alloc(MEMORY[0x277D716B0]);
    v9 = [v3 language];
    v10 = [v3 assetFileInfoManager];
    v11 = [v8 initWithAssets:v5 language:v9 userInterfaceStyle:v7 assetFileInfoManager:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cacheFilePathForFile:(id)a3
{
  v3 = a3;
  v4 = [TPSNotificationController cacheDirectoryCreateIfEmpty:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingPathComponent:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cacheAssetFileURLForDocument:(id)a3
{
  v4 = [(TPSNotificationController *)self assetsConfigurationForDocument:a3];
  v5 = [v4 cacheIdentifierForType:0];
  v6 = [(TPSNotificationController *)self cacheFilePathForFile:v5];
  v7 = v6;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_8:
    v10 = [(TPSNotificationController *)self frameworkBundle];
    v11 = [v10 URLForResource:v5 withExtension:&stru_284826B40];

    if (v11)
    {
      v9 = [(TPSNotificationController *)self copyFileURL:v11 cachePath:v7];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v8 fileExistsAtPath:v7] & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v9;
}

- (id)copyFileURL:(id)a3 cachePath:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = MEMORY[0x277CCAA00];
    v8 = a4;
    v9 = [v7 defaultManager];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:0];
    v10 = [v9 fileExistsAtPath:v8];

    if ((v10 & 1) == 0)
    {
      if (v6)
      {
        v15 = 0;
        v11 = [v9 copyItemAtURL:v5 toURL:v6 error:&v15];
        v12 = v15;
        v13 = v12;
        if (v11 && !v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
      }

      v6 = 0;
    }

LABEL_10:
  }

  return v6;
}

- (void)dataProviderManager:(id)a3 didReceiveCallbackWithResult:(id)a4 type:(int64_t)a5
{
  v6 = a4;
  v7 = [(TPSNotificationController *)self syncQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__TPSNotificationController_dataProviderManager_didReceiveCallbackWithResult_type___block_invoke;
  v9[3] = &unk_2789B08F8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, v9);
}

void __83__TPSNotificationController_dataProviderManager_didReceiveCallbackWithResult_type___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredWakingEventMap];
  v3 = [*(a1 + 40) identifier];
  v10 = [v2 objectForKeyedSubscript:v3];

  if (v10)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v10 observerIdentifiers];
    v7 = [v6 anyObject];
    [v4 notificationController:v5 registrableEventReceivedForDocumentIdentifier:v7];

    v8 = [*(a1 + 32) registeredWakingEventMap];
    v9 = [*(a1 + 40) identifier];
    [v8 setObject:0 forKeyedSubscript:v9];

    [*(a1 + 32) _updateWakingEventMapCache];
  }
}

- (TPSNotificationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end