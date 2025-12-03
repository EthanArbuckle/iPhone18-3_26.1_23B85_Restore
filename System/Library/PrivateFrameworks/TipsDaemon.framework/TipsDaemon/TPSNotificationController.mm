@interface TPSNotificationController
+ (BOOL)isValidNotificationInterval;
+ (double)standardNotificationInterval;
+ (id)cacheDirectoryCreateIfEmpty:(BOOL)empty;
+ (int64_t)remainingCountOfNotificationsUntilOptOut;
+ (void)removeAssetCacheDirectory;
+ (void)removeNotificationCache;
- (BOOL)canUpdateHintEligibilityForIdentifier:(id)identifier;
- (BOOL)collectionEligibleForNotification:(id)notification;
- (BOOL)isDocumentHintDisplayedOnOtherDevices:(id)devices;
- (BOOL)isNotificationDeliveryInfoValid:(id)valid identifier:(id)identifier overrideOptOutContentOnly:(BOOL)only ignoreSuppressContent:(BOOL)content;
- (BOOL)isSoftOptedOut;
- (BOOL)shouldDisplayCollectionIcon;
- (BOOL)updateHintEligibleForTip:(id)tip isValid:(BOOL)valid;
- (NSBundle)frameworkBundle;
- (TPSNotificationController)init;
- (TPSNotificationControllerDelegate)delegate;
- (id)assetsConfigurationForDocument:(id)document;
- (id)cacheAssetFileURLForDocument:(id)document;
- (id)cacheFilePathForFile:(id)file;
- (id)copyFileURL:(id)l cachePath:(id)path;
- (id)documentToNotifyForTipsInCollection:(id)collection tipMap:(id)map tipDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap overrideOptOutContentOnly:(BOOL)only;
- (id)notificationDeliveryInfoForIdentifier:(id)identifier documentDeliveryIdentifierMap:(id)map deliveryInfoMap:(id)infoMap;
- (id)updateNotificationCacheWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type extensionPayload:(id)payload;
- (void)_registerWakingEvents;
- (void)_unregisterAllWakingEvents;
- (void)_updateNotificationCache;
- (void)_updateWakingEventMapCache;
- (void)clearNotificationCache;
- (void)clearNotificationCount;
- (void)dataProviderManager:(id)manager didReceiveCallbackWithResult:(id)result type:(int64_t)type;
- (void)fetchNotificationAssetIfNeededCompletionHandler:(id)handler;
- (void)notificationPosted;
- (void)registerWakingEventsForDeliveryIdentifierMap:(id)map deliveryInfoMap:(id)infoMap;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)showNotificationWithCompletionHandler:(id)handler;
- (void)updateDocumentToNotifyWithPreferredIdentifiers:(id)identifiers collectionOrder:(id)order collectionMap:(id)map collectionDeliveryIdentifierMap:(id)identifierMap tipMap:(id)tipMap tipsDeliveryIdentifierMap:(id)deliveryIdentifierMap deliveryInfoMap:(id)infoMap documentDictionaryMap:(id)self0 metadataDictionary:(id)self1 completionHandler:(id)self2;
- (void)updateNotificationCount;
- (void)updateNotificationRegistrationEventsWithCollectionDeliveryIdentifierMap:(id)map tipsDeliveryIdentifierMap:(id)identifierMap deliveryInfoMap:(id)infoMap completionHandler:(id)handler;
@end

@implementation TPSNotificationController

+ (double)standardNotificationInterval
{
  standardNotificationInterval = [MEMORY[0x277D71740] standardNotificationInterval];
  v3 = standardNotificationInterval;
  if (standardNotificationInterval)
  {
    [standardNotificationInterval doubleValue];
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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ConsecutiveNotificationsCount"];
  intValue = [v3 intValue];

  return +[TPSNotificationController softOptOutNotificationCount]- intValue;
}

+ (id)cacheDirectoryCreateIfEmpty:(BOOL)empty
{
  emptyCopy = empty;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if (![v4 count])
  {
    v6 = 0;
    goto LABEL_11;
  }

  firstObject = [v4 firstObject];
  v6 = [firstObject stringByAppendingPathComponent:@"com.apple.TipsDaemon"];

  if (!v6)
  {
    goto LABEL_11;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:v6] & 1) == 0)
  {
    if (!emptyCopy)
    {

      goto LABEL_9;
    }

    v11 = 0;
    [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:0 error:&v11];
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
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager enumeratorAtPath:v9];
    nextObject = [v4 nextObject];
    if (nextObject)
    {
      v6 = nextObject;
      do
      {
        v7 = [v9 stringByAppendingPathComponent:v6];
        if (v7)
        {
          [defaultManager removeItemAtPath:v7 error:0];
        }

        nextObject2 = [v4 nextObject];

        v6 = nextObject2;
      }

      while (nextObject2);
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [MEMORY[0x277D717A8] unarchivedObjectOfClass:objc_opt_class() forKey:@"NotificationCache"];
    notificationCache = v2->_notificationCache;
    v2->_notificationCache = v4;

    v6 = [standardUserDefaults objectForKey:@"ConsecutiveNotificationsCount"];
    v2->_notificationCount = [v6 intValue];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.tips.TPSNotificationController", v7);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assetURLSessionMap = v2->_assetURLSessionMap;
    v2->_assetURLSessionMap = dictionary;

    v12 = objc_alloc_init(MEMORY[0x277D71750]);
    eventsProviderManager = v2->_eventsProviderManager;
    v2->_eventsProviderManager = v12;

    [(TPSEventsProviderManager *)v2->_eventsProviderManager setDelegate:v2];
    v14 = [TPSUserNotificationController alloc];
    notificationBundleIdentifier = [MEMORY[0x277D716E8] notificationBundleIdentifier];
    v16 = [(TPSUserNotificationController *)v14 initWithBundleIdentifier:notificationBundleIdentifier];
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
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v25 = v2->_registeredWakingEventMap;
      v2->_registeredWakingEventMap = dictionary2;
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"TPSLastNotificationDate"];

    [v5 timeIntervalSinceNow];
    v7 = v6;
    v8 = fabs(v6) > v3 || v6 >= 0.0;
    if (!v8)
    {
      data = [MEMORY[0x277D71778] data];
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v7;
        v14 = 2048;
        v15 = v3;
        _os_log_impl(&dword_232D6F000, data, OS_LOG_TYPE_DEFAULT, "Last notification interval: %f is less than expected interval %f", &v12, 0x16u);
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

- (void)updateDocumentToNotifyWithPreferredIdentifiers:(id)identifiers collectionOrder:(id)order collectionMap:(id)map collectionDeliveryIdentifierMap:(id)identifierMap tipMap:(id)tipMap tipsDeliveryIdentifierMap:(id)deliveryIdentifierMap deliveryInfoMap:(id)infoMap documentDictionaryMap:(id)self0 metadataDictionary:(id)self1 completionHandler:(id)self2
{
  v123[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  orderCopy = order;
  mapCopy = map;
  identifierMapCopy = identifierMap;
  tipMapCopy = tipMap;
  deliveryIdentifierMapCopy = deliveryIdentifierMap;
  v19 = orderCopy;
  infoMapCopy = infoMap;
  dictionaryMapCopy = dictionaryMap;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  data = [MEMORY[0x277D71778] data];
  if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232D6F000, data, OS_LOG_TYPE_DEFAULT, "Checking document to notify.", buf, 2u);
  }

  if ([orderCopy count] && objc_msgSend(mapCopy, "count") || objc_msgSend(tipMapCopy, "count"))
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
    isSoftOptedOut = [(TPSNotificationController *)self isSoftOptedOut];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke;
    aBlock[3] = &unk_2789B0CD0;
    v100 = buf;
    v101 = &v109;
    v102 = &v103;
    v97 = dictionaryMapCopy;
    v98 = dictionaryCopy;
    identifiersCopy = identifiersCopy;
    v99 = identifiersCopy;
    v21 = _Block_copy(aBlock);
    notificationDocument = [MEMORY[0x277D71740] notificationDocument];
    v53 = notificationDocument;
    if (notificationDocument)
    {
      v123[0] = notificationDocument;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:1];
      v24 = [v23 arrayByAddingObjectsFromArray:identifiersCopy];

      identifiersCopy = v24;
    }

    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __246__TPSNotificationController_updateDocumentToNotifyWithPreferredIdentifiers_collectionOrder_collectionMap_collectionDeliveryIdentifierMap_tipMap_tipsDeliveryIdentifierMap_deliveryInfoMap_documentDictionaryMap_metadataDictionary_completionHandler___block_invoke_2;
    v80[3] = &unk_2789B0CF8;
    v25 = mapCopy;
    v88 = &v109;
    v81 = v25;
    selfCopy = self;
    v26 = identifierMapCopy;
    v83 = v26;
    v27 = infoMapCopy;
    v84 = v27;
    v91 = isSoftOptedOut;
    v28 = tipMapCopy;
    v85 = v28;
    v29 = deliveryIdentifierMapCopy;
    v86 = v29;
    v30 = v21;
    v87 = v30;
    v89 = buf;
    v90 = &v92;
    [identifiersCopy enumerateObjectsUsingBlock:v80];
    if (![identifiersCopy count])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v32 = [standardUserDefaults objectForKey:@"LastNotifiedCollectionIdentifier"];
      v33 = *(v116 + 5);
      *(v116 + 5) = v32;

      daemon = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v116 + 5);
        *v121 = 138412290;
        v122 = v35;
        _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Last notified collection identifier %@", v121, 0xCu);
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
      selfCopy2 = self;
      v75 = v26;
      v44 = v27;
      v79 = isSoftOptedOut;
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
        selfCopy3 = self;
        v67 = v28;
        v68 = v29;
        v69 = v44;
        v71 = isSoftOptedOut;
        v70 = v30;
        [v42 enumerateObjectsUsingBlock:v64];
      }
    }

    v45 = *(v116 + 5);
    v46 = v110[5];
    v47 = v93[3];
    v48 = [v104[5] copy];
    v49 = [(TPSNotificationController *)self updateNotificationCacheWithCollectionIdentifier:v45 document:v46 type:v47 extensionPayload:v48];

    handlerCopy[2](handlerCopy, self->_notificationCache);
    _Block_object_dispose(&v92, 8);

    _Block_object_dispose(&v103, 8);
    _Block_object_dispose(&v109, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    data2 = [MEMORY[0x277D71778] data];
    if (os_log_type_enabled(data2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232D6F000, data2, OS_LOG_TYPE_DEFAULT, "No collections or tips available.", buf, 2u);
    }

    [(TPSNotificationController *)self clearNotificationCache];
    handlerCopy[2](handlerCopy, self->_notificationCache);
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

- (void)updateNotificationRegistrationEventsWithCollectionDeliveryIdentifierMap:(id)map tipsDeliveryIdentifierMap:(id)identifierMap deliveryInfoMap:(id)infoMap completionHandler:(id)handler
{
  handlerCopy = handler;
  infoMapCopy = infoMap;
  identifierMapCopy = identifierMap;
  [(TPSNotificationController *)self registerWakingEventsForDeliveryIdentifierMap:map deliveryInfoMap:infoMapCopy];
  [(TPSNotificationController *)self registerWakingEventsForDeliveryIdentifierMap:identifierMapCopy deliveryInfoMap:infoMapCopy];

  handlerCopy[2](handlerCopy, 0);
}

- (void)registerWakingEventsForDeliveryIdentifierMap:(id)map deliveryInfoMap:(id)infoMap
{
  mapCopy = map;
  infoMapCopy = infoMap;
  allKeys = [mapCopy allKeys];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allKeys, "count")}];
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

  isSoftOptedOut = [(TPSNotificationController *)self isSoftOptedOut];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke;
  v21[3] = &unk_2789B0D70;
  v13 = tipStatusController;
  v22 = v13;
  selfCopy = self;
  v14 = mapCopy;
  v24 = v14;
  v15 = infoMapCopy;
  v25 = v15;
  v27 = isSoftOptedOut;
  v16 = v9;
  v26 = v16;
  [allKeys enumerateObjectsUsingBlock:v21];
  if ([v16 count])
  {
    syncQueue = [(TPSNotificationController *)self syncQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__TPSNotificationController_registerWakingEventsForDeliveryIdentifierMap_deliveryInfoMap___block_invoke_2;
    v18[3] = &unk_2789B08F8;
    v19 = v16;
    selfCopy2 = self;
    dispatch_sync(syncQueue, v18);
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

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  localNotificationController = [(TPSNotificationController *)self localNotificationController];
  [localNotificationController removeNotificationWithIdentifier:identifierCopy];

  notificationCache = [(TPSNotificationController *)self notificationCache];
  document = [notificationCache document];
  identifier = [document identifier];
  v9 = [identifier isEqualToString:identifierCopy];

  if (v9)
  {

    [(TPSNotificationController *)self clearNotificationCache];
  }
}

- (void)removeAllNotifications
{
  localNotificationController = [(TPSNotificationController *)self localNotificationController];
  [localNotificationController removeAllNotifications];

  [(TPSNotificationController *)self clearNotificationCache];

  [(TPSNotificationController *)self clearNotificationCount];
}

- (void)clearNotificationCache
{
  v7 = *MEMORY[0x277D85DE8];
  notificationCache = [self notificationCache];
  v5 = 138412290;
  v6 = notificationCache;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Clear notification cache %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_registerWakingEvents
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Re-registering notification for waking events: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterAllWakingEvents
{
  eventsProviderManager = [(TPSNotificationController *)self eventsProviderManager];
  [eventsProviderManager unregisterAllWakingEvents];
}

- (void)_updateWakingEventMapCache
{
  v2 = MEMORY[0x277D717A8];
  registeredWakingEventMap = [(TPSNotificationController *)self registeredWakingEventMap];
  [v2 archivedDataWithRootObject:registeredWakingEventMap forKey:@"RegisteredWakingEventMapKey"];
}

- (void)_updateNotificationCache
{
  v2 = MEMORY[0x277D717A8];
  notificationCache = [(TPSNotificationController *)self notificationCache];
  [v2 archivedDataWithRootObject:notificationCache forKey:@"NotificationCache"];
}

- (id)updateNotificationCacheWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type extensionPayload:(id)payload
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  documentCopy = document;
  payloadCopy = payload;
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = documentCopy;
    v29 = 2112;
    v30 = identifierCopy;
    v31 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Update notification cache for document %@, collectionIdentifier %@, type %lu", buf, 0x20u);
  }

  if (!identifierCopy || !documentCopy)
  {
    [(TPSNotificationController *)self clearNotificationCache];
    goto LABEL_17;
  }

  notificationCache = [(TPSNotificationController *)self notificationCache];
  type = [notificationCache type];

  if (type == 1)
  {
    if (type != 1)
    {
      daemon2 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "Cannot update notification document due to a welcome type in progress.";
LABEL_14:
        _os_log_impl(&dword_232D6F000, daemon2, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else if (type != 2 && type == 2)
  {
    daemon2 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Cannot update notification document due to a immediate type in progress.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_17;
  }

  syncQueue = [(TPSNotificationController *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__TPSNotificationController_updateNotificationCacheWithCollectionIdentifier_document_type_extensionPayload___block_invoke;
  block[3] = &unk_2789B0D98;
  block[4] = self;
  v23 = identifierCopy;
  v24 = documentCopy;
  typeCopy2 = type;
  v25 = payloadCopy;
  dispatch_sync(syncQueue, block);

LABEL_17:
  notificationCache2 = [(TPSNotificationController *)self notificationCache];

  v20 = *MEMORY[0x277D85DE8];

  return notificationCache2;
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

- (id)notificationDeliveryInfoForIdentifier:(id)identifier documentDeliveryIdentifierMap:(id)map deliveryInfoMap:(id)infoMap
{
  infoMapCopy = infoMap;
  v8 = [map TPSSafeStringForKey:identifier];
  v9 = [infoMapCopy TPSSafeDictionaryForKey:v8];

  v10 = [v9 objectForKeyedSubscript:@"notification"];

  return v10;
}

- (id)documentToNotifyForTipsInCollection:(id)collection tipMap:(id)map tipDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap overrideOptOutContentOnly:(BOOL)only
{
  collectionCopy = collection;
  mapCopy = map;
  infoMapCopy = infoMap;
  deliveryInfoMapCopy = deliveryInfoMap;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  tipIdentifiers = [collectionCopy tipIdentifiers];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __133__TPSNotificationController_documentToNotifyForTipsInCollection_tipMap_tipDeliveryInfoMap_deliveryInfoMap_overrideOptOutContentOnly___block_invoke;
  v22[3] = &unk_2789B0DC0;
  v26 = &v28;
  v22[4] = self;
  v17 = mapCopy;
  v23 = v17;
  v18 = infoMapCopy;
  v24 = v18;
  v19 = deliveryInfoMapCopy;
  v25 = v19;
  onlyCopy = only;
  [tipIdentifiers enumerateObjectsUsingBlock:v22];

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

- (BOOL)canUpdateHintEligibilityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

  if ([tipStatusController isContentNeverVisibleForIdentifier:identifierCopy] && (objc_msgSend(tipStatusController, "isHintIneligibleForIdentifier:", identifierCopy) & 1) == 0)
  {
    if ([tipStatusController displayTypeForIdentifier:identifierCopy] == 1)
    {
      v8 = [tipStatusController hintEligibleDateForIdentifier:identifierCopy];
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

- (BOOL)updateHintEligibleForTip:(id)tip isValid:(BOOL)valid
{
  validCopy = valid;
  tipCopy = tip;
  identifier = [tipCopy identifier];
  v8 = [(TPSNotificationController *)self isDocumentHintDisplayedOnOtherDevices:tipCopy];

  if (v8)
  {
    delegate = [(TPSNotificationController *)self delegate];
    [delegate notificationController:self markIdentifier:identifier type:1 ineligibleWithReason:3];

    validCopy = 0;
  }

  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

  if (validCopy && ![tipStatusController displayTypeForIdentifier:identifier])
  {
    v12 = [tipStatusController hintEligibleDateForIdentifier:identifier];

    if (!v12)
    {
      [tipStatusController updateHintEligibleDateForIdentifier:identifier value:1];
    }
  }

  return validCopy;
}

- (BOOL)isNotificationDeliveryInfoValid:(id)valid identifier:(id)identifier overrideOptOutContentOnly:(BOOL)only ignoreSuppressContent:(BOOL)content
{
  onlyCopy = only;
  validCopy = valid;
  identifierCopy = identifier;
  if (!content && ([validCopy TPSSafeBoolForKey:@"suppress"] & 1) != 0 || onlyCopy && !objc_msgSend(validCopy, "TPSSafeBoolForKey:", @"overrideOptOut"))
  {
    v16 = 0;
  }

  else if ([validCopy count])
  {
    v11 = [validCopy TPSSafeDictionaryForKey:@"preconditions"];
    if ([v11 count])
    {
      v12 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [(TPSDeliveryPrecondition *)v12 conditionsForType:2];
        v18 = 0;
        v15 = [TPSTargetingValidator validateConditions:v14 joinType:[(TPSDeliveryPrecondition *)v13 joinType] context:identifierCopy cache:0 completionQueue:0 error:&v18];
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

- (void)showNotificationWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCache = [(TPSNotificationController *)self notificationCache];
  document = [notificationCache document];

  if (document)
  {
    notificationCache2 = [(TPSNotificationController *)self notificationCache];
    hasLocaleChanged = [notificationCache2 hasLocaleChanged];

    v9 = hasLocaleChanged ^ 1;
    if (hasLocaleChanged)
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

  identifier = [document identifier];
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 1;
      if (([tipStatusController isLockScreenHintDisplayEligibleForIdentifier:identifier] & 1) == 0)
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
        daemon = [MEMORY[0x277D71778] daemon];
        if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          notificationCount = identifier;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Notification for %@ is no longer eligible due to error %@.", &v27, 0x16u);
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

      if (![(TPSNotificationController *)self collectionEligibleForNotification:identifier])
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

  if ([(TPSNotificationController *)self isDocumentHintDisplayedOnOtherDevices:document])
  {
    v10 = 4;
    goto LABEL_22;
  }

  notificationCache3 = [(TPSNotificationController *)self notificationCache];
  daemon = [notificationCache3 attachmentURL];

  localNotificationController = [(TPSNotificationController *)self localNotificationController];
  notificationCache4 = [(TPSNotificationController *)self notificationCache];
  [localNotificationController showNotificationForNotificationCache:notificationCache4 attachmentURL:daemon];

  [(TPSNotificationController *)self notificationPosted];
  daemon2 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon2, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    notificationCount = [(TPSNotificationController *)self notificationCount];
    _os_log_impl(&dword_232D6F000, daemon2, OS_LOG_TYPE_DEFAULT, "Consecutive notification count %ld", &v27, 0xCu);
  }

  v17 = 0;
LABEL_27:

  mEMORY[0x277D716E8]2 = [MEMORY[0x277D716E8] sharedInstance];
  notificationCache5 = [(TPSNotificationController *)self notificationCache];
  collectionIdentifier = [notificationCache5 collectionIdentifier];
  [mEMORY[0x277D716E8]2 notifiedCollection:collectionIdentifier];

  [(TPSNotificationController *)self clearNotificationCache];
  handlerCopy[2](handlerCopy, document, v14, v17);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)clearNotificationCount
{
  [(TPSNotificationController *)self setNotificationCount:0];

  [(TPSNotificationController *)self updateNotificationCount];
}

- (BOOL)isSoftOptedOut
{
  notificationCount = [(TPSNotificationController *)self notificationCount];
  if (notificationCount < +[TPSNotificationController softOptOutNotificationCount])
  {
    return 0;
  }

  return +[TPSNotificationController respectsOptOut];
}

- (void)notificationPosted
{
  [(TPSNotificationController *)self setNotificationCount:[(TPSNotificationController *)self notificationCount]+ 1];
  [(TPSNotificationController *)self updateNotificationCount];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  [standardUserDefaults setObject:date forKey:@"TPSLastNotificationDate"];

  notificationCache = [(TPSNotificationController *)self notificationCache];
  collectionIdentifier = [notificationCache collectionIdentifier];
  [standardUserDefaults setObject:collectionIdentifier forKey:@"LastNotifiedCollectionIdentifier"];

  [standardUserDefaults synchronize];
}

- (void)updateNotificationCount
{
  v10 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    notificationCount = [(TPSNotificationController *)self notificationCount];
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Consecutive notification ignore count %zd", &v8, 0xCu);
  }

  if ([(TPSNotificationController *)self isSoftOptedOut])
  {
    daemon2 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[TPSNotificationController softOptOutNotificationCount];
      v8 = 134217984;
      notificationCount = v6;
      _os_log_impl(&dword_232D6F000, daemon2, OS_LOG_TYPE_DEFAULT, "User hasn't launch the app after %ld notifications. Will only look for override opt-out notifications next time.", &v8, 0xCu);
    }
  }

  [standardUserDefaults setInteger:-[TPSNotificationController notificationCount](self forKey:{"notificationCount"), @"ConsecutiveNotificationsCount"}];
  [standardUserDefaults synchronize];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)collectionEligibleForNotification:(id)notification
{
  v3 = MEMORY[0x277D716E8];
  notificationCopy = notification;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance collectionStatusForCollectionIdentifier:notificationCopy];

  if ([v6 canNotify])
  {
    firstViewedDate = [v6 firstViewedDate];
    v8 = firstViewedDate == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDocumentHintDisplayedOnOtherDevices:(id)devices
{
  v25 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    correlationID = [devicesCopy correlationID];
    [v5 na_safeAddObject:correlationID];

    clonedFromID = [devicesCopy clonedFromID];
    [v5 na_safeAddObject:clonedFromID];

    identifier = [devicesCopy identifier];
    [v5 na_safeAddObject:identifier];

    mEMORY[0x277D716D0] = [MEMORY[0x277D716D0] sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__TPSNotificationController_isDocumentHintDisplayedOnOtherDevices___block_invoke;
    v17[3] = &unk_2789B0DE8;
    v10 = mEMORY[0x277D716D0];
    v18 = v10;
    if ([v5 na_any:v17])
    {
      if (![MEMORY[0x277D71740] ignoreCloud])
      {
        v4 = 1;
        goto LABEL_10;
      }

      daemon = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [devicesCopy identifier];
        correlationID2 = [devicesCopy correlationID];
        clonedFromID2 = [devicesCopy clonedFromID];
        *buf = 138412802;
        v20 = identifier2;
        v21 = 2112;
        v22 = correlationID2;
        v23 = 2112;
        v24 = clonedFromID2;
        _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Overriding ineligibility due to content %@ already seen on other devices (correlationId: %@, cloneFromID: %@)", buf, 0x20u);
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
    notificationCache = [(TPSNotificationController *)self notificationCache];
    document = [notificationCache document];

    notificationCache2 = [(TPSNotificationController *)self notificationCache];
    if ([notificationCache2 type] == 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)fetchNotificationAssetIfNeededCompletionHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCache = [(TPSNotificationController *)self notificationCache];
  document = [notificationCache document];

  if (![(TPSNotificationController *)self shouldDisplayCollectionIcon])
  {
    goto LABEL_22;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__10;
  v57 = __Block_byref_object_dispose__10;
  notificationCache2 = [(TPSNotificationController *)self notificationCache];
  attachmentURL = [notificationCache2 attachmentURL];

  v8 = [(TPSNotificationController *)self cacheAssetFileURLForDocument:document];
  v9 = v54[5];
  if (v8)
  {
    if (([v9 isEqual:v8] & 1) == 0)
    {
      notificationCache3 = [(TPSNotificationController *)self notificationCache];
      [notificationCache3 setAttachmentURL:v8];

      [(TPSNotificationController *)self _updateNotificationCache];
    }

    handlerCopy[2](handlerCopy, v8);
    goto LABEL_6;
  }

  v54[5] = 0;

  if (v54[5])
  {
    notificationCache4 = [(TPSNotificationController *)self notificationCache];
    [notificationCache4 setAttachmentURL:0];

    [(TPSNotificationController *)self _updateNotificationCache];
    if (v54[5])
    {
LABEL_6:
      v11 = 1;
      goto LABEL_21;
    }
  }

  notification = [document notification];
  assets = [notification assets];

  imageIdentifier = [assets imageIdentifier];
  if (!imageIdentifier || ([assets baseURL], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, imageIdentifier, v17))
  {
    v11 = 1;
  }

  else
  {
    v33 = [(TPSNotificationController *)self assetsConfigurationForDocument:document];
    v18 = [v33 cacheIdentifierForType:0];
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__10;
    v51 = __Block_byref_object_dispose__10;
    v52 = 0;
    syncQueue = [(TPSNotificationController *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke;
    block[3] = &unk_2789B0E10;
    v46 = &v47;
    block[4] = self;
    v20 = v18;
    v45 = v20;
    dispatch_sync(syncQueue, block);

    v11 = 1;
    if (!v48[5] && v20)
    {
      v21 = [MEMORY[0x277D71708] assetPathFromAssetConfiguration:v33 type:0];
      v11 = v21 == 0;
      if (v21)
      {
        v32 = v21;
        objc_initWeak(&location, self);
        daemon = [MEMORY[0x277D71778] daemon];
        if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [document identifier];
          *buf = 138412802;
          v60 = identifier;
          v61 = 2112;
          v62 = v20;
          v63 = 2112;
          v64 = v32;
          _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Attempt to cache asset for document id %@ with asset identifier %@ at %@", buf, 0x20u);
        }

        mEMORY[0x277D716A0] = [MEMORY[0x277D716A0] sharedInstance];
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
        v39 = document;
        v40 = handlerCopy;
        LODWORD(v27) = v25;
        v28 = [mEMORY[0x277D716A0] formattedDataForPath:v32 identifier:v26 attributionIdentifier:0 priority:v37 completionHandler:v27];
        v29 = v48[5];
        v48[5] = v28;

        syncQueue2 = [(TPSNotificationController *)self syncQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __77__TPSNotificationController_fetchNotificationAssetIfNeededCompletionHandler___block_invoke_73;
        v34[3] = &unk_2789B0E60;
        v34[4] = self;
        v35 = v26;
        v36 = &v47;
        dispatch_async(syncQueue2, v34);

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
    handlerCopy[2](handlerCopy, 0);
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

- (id)assetsConfigurationForDocument:(id)document
{
  documentCopy = document;
  notification = [documentCopy notification];
  assets = [notification assets];

  if (assets)
  {
    v6 = objc_alloc_init(MEMORY[0x277D77768]);
    v7 = [v6 userInterfaceStyle] == 2;
    v8 = objc_alloc(MEMORY[0x277D716B0]);
    language = [documentCopy language];
    assetFileInfoManager = [documentCopy assetFileInfoManager];
    v11 = [v8 initWithAssets:assets language:language userInterfaceStyle:v7 assetFileInfoManager:assetFileInfoManager];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cacheFilePathForFile:(id)file
{
  fileCopy = file;
  v4 = [TPSNotificationController cacheDirectoryCreateIfEmpty:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingPathComponent:fileCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cacheAssetFileURLForDocument:(id)document
{
  v4 = [(TPSNotificationController *)self assetsConfigurationForDocument:document];
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
    frameworkBundle = [(TPSNotificationController *)self frameworkBundle];
    v11 = [frameworkBundle URLForResource:v5 withExtension:&stru_284826B40];

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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:v7] & 1) == 0)
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

- (id)copyFileURL:(id)l cachePath:(id)path
{
  lCopy = l;
  v6 = 0;
  if (lCopy && path)
  {
    v7 = MEMORY[0x277CCAA00];
    pathCopy = path;
    defaultManager = [v7 defaultManager];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
    v10 = [defaultManager fileExistsAtPath:pathCopy];

    if ((v10 & 1) == 0)
    {
      if (v6)
      {
        v15 = 0;
        v11 = [defaultManager copyItemAtURL:lCopy toURL:v6 error:&v15];
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

- (void)dataProviderManager:(id)manager didReceiveCallbackWithResult:(id)result type:(int64_t)type
{
  resultCopy = result;
  syncQueue = [(TPSNotificationController *)self syncQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__TPSNotificationController_dataProviderManager_didReceiveCallbackWithResult_type___block_invoke;
  v9[3] = &unk_2789B08F8;
  v9[4] = self;
  v10 = resultCopy;
  v8 = resultCopy;
  dispatch_sync(syncQueue, v9);
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