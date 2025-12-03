@interface PPMapsSupport
+ (BOOL)harvestMapItem:(id)item documentIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier includingPostalAddress:(BOOL)address localNamedEntityStore:(id)store localLocationStore:(id)locationStore error:(id *)error;
+ (void)importMapsDataWithCollectionRequest:(id)request localNamedEntityStore:(id)store localLocationStore:(id)locationStore shouldContinueBlock:(id)block;
+ (void)importMapsDataWithFavoriteRequest:(id)request localNamedEntityStore:(id)store localLocationStore:(id)locationStore shouldContinueBlock:(id)block;
+ (void)importMapsDataWithShouldContinueBlock:(id)block;
@end

@implementation PPMapsSupport

+ (BOOL)harvestMapItem:(id)item documentIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier includingPostalAddress:(BOOL)address localNamedEntityStore:(id)store localLocationStore:(id)locationStore error:(id *)error
{
  addressCopy = address;
  v94[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  storeCopy = store;
  locationStoreCopy = locationStore;
  v18 = pp_default_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v87 = identifierCopy;
    v88 = 2112;
    v89 = groupIdentifierCopy;
    v90 = 1024;
    LODWORD(v91) = addressCopy;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: harvesting map item for document: %@ group: %@ includingPostalAddress:%d", buf, 0x1Cu);
  }

  v19 = +[PPConfiguration sharedInstance];
  v20 = *MEMORY[0x277D3A650];
  v21 = [v19 extractionAlgorithmsForBundleId:*MEMORY[0x277D3A650] sourceLanguage:0 conservative:0 domain:1];

  v22 = +[PPConfiguration sharedInstance];
  v23 = [v22 extractionAlgorithmsForBundleId:v20 sourceLanguage:0 conservative:0 domain:2];

  v80 = v21;
  v24 = [v21 containsObject:&unk_284784728];
  v25 = [v23 containsObject:&unk_284784740];
  v82 = itemCopy;
  if (v24 & 1) != 0 || (v25)
  {
    v73 = v25;
    geoAddress = [itemCopy geoAddress];
    structuredAddress = [geoAddress structuredAddress];
    v78 = structuredAddress;
    v79 = objc_opt_new();
    v76 = identifierCopy;
    v77 = storeCopy;
    v75 = locationStoreCopy;
    if (addressCopy)
    {
      if ([structuredAddress hasThoroughfare])
      {
        v29 = objc_alloc(MEMORY[0x277D3A420]);
        thoroughfare = [v78 thoroughfare];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        languageCode = [currentLocale languageCode];
        v33 = [v29 initWithName:thoroughfare category:8 language:languageCode];

        identifierCopy = v76;
        storeCopy = v77;
        v34 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v33 score:0.5];
        [v79 addObject:v34];

        structuredAddress = v78;
      }

      if ([structuredAddress hasLocality])
      {
        v35 = objc_alloc(MEMORY[0x277D3A420]);
        locality = [v78 locality];
        currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
        languageCode2 = [currentLocale2 languageCode];
        v39 = [v35 initWithName:locality category:9 language:languageCode2];

        identifierCopy = v76;
        storeCopy = v77;

        v40 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v39 score:0.5];
        [v79 addObject:v40];

        structuredAddress = v78;
      }
    }

    if ([structuredAddress hasAdministrativeArea])
    {
      v41 = objc_alloc(MEMORY[0x277D3A420]);
      administrativeArea = [v78 administrativeArea];
      currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
      languageCode3 = [currentLocale3 languageCode];
      v45 = [v41 initWithName:administrativeArea category:10 language:languageCode3];

      identifierCopy = v76;
      storeCopy = v77;

      v46 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v45 score:0.5];
      [v79 addObject:v46];
    }

    name = [itemCopy name];

    if (name)
    {
      v48 = objc_alloc(MEMORY[0x277D3A420]);
      name2 = [itemCopy name];
      currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
      languageCode4 = [currentLocale4 languageCode];
      v52 = [v48 initWithName:name2 category:3 language:languageCode4];

      identifierCopy = v76;
      storeCopy = v77;

      v53 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v52 score:0.5];
      [v79 addObject:v53];
    }

    if (![v79 count])
    {
      v56 = pp_default_log_handle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v87 = identifierCopy;
        v88 = 2112;
        v89 = groupIdentifierCopy;
        v90 = 1024;
        LODWORD(v91) = addressCopy;
        _os_log_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: harvested 0 entities from map item for document: %@ group: %@ includingPostalAddress:%d", buf, 0x1Cu);
      }

      v27 = 1;
      locationStoreCopy = v75;
      goto LABEL_47;
    }

    v54 = objc_alloc(MEMORY[0x277D3A4D8]);
    v55 = objc_opt_new();
    v56 = [v54 initWithBundleId:v20 groupId:groupIdentifierCopy documentId:identifierCopy date:v55];

    if (v24)
    {
      v85 = 0;
      v57 = [storeCopy donateNamedEntities:v79 source:v56 algorithm:7 cloudSync:1 sentimentScore:&v85 error:0.0];
      v58 = v85;
      v59 = v58;
      locationStoreCopy = v75;
      if ((v57 & 1) == 0)
      {
        v62 = pp_default_log_handle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v87 = v59;
          _os_log_error_impl(&dword_23224A000, v62, OS_LOG_TYPE_ERROR, "PPMapsSupport failed to donate Maps interaction structured location to PPLocalNamedEntityStore: %@", buf, 0xCu);
        }

        v27 = 0;
        goto LABEL_46;
      }

      v60 = v58;
    }

    else
    {
      v61 = pp_default_log_handle();
      locationStoreCopy = v75;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v61, OS_LOG_TYPE_DEBUG, "PPMapsSupport: Not donating events from maps interaction because it is disabled.", buf, 2u);
      }

      v60 = 0;
    }

    if (v73)
    {
      v62 = [PPLocalLocationStore locationFromMapItem:v82];
      v63 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v62 score:1.0 sentimentScore:0.0];
      v94[0] = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
      v84 = v60;
      v65 = [locationStoreCopy donateLocations:v64 source:v56 contextualNamedEntities:0 algorithm:7 cloudSync:1 error:&v84];
      v59 = v84;

      if ((v65 & 1) == 0)
      {
        v70 = pp_default_log_handle();
        storeCopy = v77;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v87 = v59;
          _os_log_error_impl(&dword_23224A000, v70, OS_LOG_TYPE_ERROR, "PPMapsSupport failed to donate Maps interaction structured location to PPLocalLocationStore: %@", buf, 0xCu);
        }

        v27 = 0;
        locationStoreCopy = v75;
        goto LABEL_46;
      }

      storeCopy = v77;
      locationStoreCopy = v75;
    }

    else
    {
      v62 = pp_default_log_handle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v62, OS_LOG_TYPE_DEBUG, "PPMapsSupport: not donating locations from maps interaction because it is disabled.", buf, 2u);
      }

      v59 = v60;
      storeCopy = v77;
    }

    v83 = 0;
    v66 = [storeCopy flushDonationsWithError:&v83];
    v62 = v83;
    if ((v66 & 1) == 0)
    {
      v67 = pp_default_log_handle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v62;
        _os_log_impl(&dword_23224A000, v67, OS_LOG_TYPE_DEFAULT, "PPMapsSupport warning: failed to flush named entities: %@", buf, 0xCu);
      }
    }

    v68 = pp_default_log_handle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [v79 count];
      *buf = 134218754;
      v87 = v69;
      v88 = 2112;
      v89 = identifierCopy;
      v90 = 2112;
      v91 = groupIdentifierCopy;
      v92 = 1024;
      v93 = addressCopy;
      _os_log_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: completed harvesting %lu entities from map item for document: %@ group: %@ includingPostalAddress:%d", buf, 0x26u);
    }

    v27 = 1;
LABEL_46:

LABEL_47:
    v26 = geoAddress;

    goto LABEL_48;
  }

  v26 = pp_default_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: Maps Interaction blocked for both named entities and locations, skipping.", buf, 2u);
  }

  v27 = 1;
LABEL_48:

  v71 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (void)importMapsDataWithFavoriteRequest:(id)request localNamedEntityStore:(id)store localLocationStore:(id)locationStore shouldContinueBlock:(id)block
{
  storeCopy = store;
  locationStoreCopy = locationStore;
  blockCopy = block;
  requestCopy = request;
  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: harvesting Maps Favorite Items", buf, 2u);
  }

  v14 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __112__PPMapsSupport_importMapsDataWithFavoriteRequest_localNamedEntityStore_localLocationStore_shouldContinueBlock___block_invoke;
  v22 = &unk_278976E08;
  v23 = storeCopy;
  v24 = locationStoreCopy;
  v25 = v14;
  v26 = blockCopy;
  v15 = v14;
  v16 = locationStoreCopy;
  v17 = storeCopy;
  v18 = blockCopy;
  [requestCopy fetchWithCompletionHandler:&v19];

  [MEMORY[0x277D425A0] waitForSemaphore:{v15, v19, v20, v21, v22}];
}

void __112__PPMapsSupport_importMapsDataWithFavoriteRequest_localNamedEntityStore_localLocationStore_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = a3;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSFavoriteItemRequest fetchContents called with %tu places", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    v10 = *MEMORY[0x277D3A6F8];
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      if (((*(*(a1 + 56) + 16))() & 1) == 0)
      {
        break;
      }

      v13 = [v12 identifier];
      v14 = [v13 UUIDString];
      v15 = v14 == 0;

      if (v15)
      {
        v16 = pp_default_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSFavoriteItemRequest item missing storage identifier", buf, 2u);
        }
      }

      else
      {
        v16 = [v12 mapItemStorage];
        if (v16)
        {
          v17 = [v12 identifier];
          v18 = [v17 UUIDString];
          [PPMapsSupport harvestMapItem:v16 documentIdentifier:v18 groupIdentifier:v10 includingPostalAddress:1 localNamedEntityStore:*(a1 + 32) localLocationStore:*(a1 + 40) error:0, v20, v21];
        }

        else
        {
          v17 = pp_default_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSFavoriteItemRequest item missing map item", buf, 2u);
          }
        }
      }

      if (v8 == ++v11)
      {
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)importMapsDataWithCollectionRequest:(id)request localNamedEntityStore:(id)store localLocationStore:(id)locationStore shouldContinueBlock:(id)block
{
  storeCopy = store;
  locationStoreCopy = locationStore;
  blockCopy = block;
  requestCopy = request;
  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: harvesting Maps Collections", buf, 2u);
  }

  v14 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __114__PPMapsSupport_importMapsDataWithCollectionRequest_localNamedEntityStore_localLocationStore_shouldContinueBlock___block_invoke;
  v22 = &unk_278976E08;
  v23 = storeCopy;
  v24 = locationStoreCopy;
  v25 = v14;
  v26 = blockCopy;
  v15 = v14;
  v16 = locationStoreCopy;
  v17 = storeCopy;
  v18 = blockCopy;
  [requestCopy fetchWithCompletionHandler:&v19];

  [MEMORY[0x277D425A0] waitForSemaphore:{v15, v19, v20, v21, v22}];
}

void __114__PPMapsSupport_importMapsDataWithCollectionRequest_localNamedEntityStore_localLocationStore_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = a3;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSCollectionPlaceItemRequest fetchContents called with %tu locations", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    v10 = *MEMORY[0x277D3A6F0];
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      if (((*(*(a1 + 56) + 16))() & 1) == 0)
      {
        break;
      }

      v13 = [v12 identifier];
      v14 = [v13 UUIDString];
      v15 = v14 == 0;

      if (v15)
      {
        v16 = pp_default_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSCollectionPlaceItemRequest item missing storage identifier", buf, 2u);
        }
      }

      else
      {
        v16 = [v12 mapItemStorage];
        if (v16)
        {
          v17 = [v12 identifier];
          v18 = [v17 UUIDString];
          [PPMapsSupport harvestMapItem:v16 documentIdentifier:v18 groupIdentifier:v10 includingPostalAddress:1 localNamedEntityStore:*(a1 + 32) localLocationStore:*(a1 + 40) error:0, v20, v21];
        }

        else
        {
          v17 = pp_default_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPMapsSupport: MSCollectionPlaceItemRequest item missing map item", buf, 2u);
          }
        }
      }

      if (v8 == ++v11)
      {
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)importMapsDataWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  if ((blockCopy[2])())
  {
    v4 = +[PPSettings sharedInstance];
    v5 = [v4 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A650]];

    if ((v5 & 1) == 0)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "skipping Maps import due to settings";
        v14 = buf;
        goto LABEL_9;
      }

LABEL_10:

      goto LABEL_11;
    }

    if (blockCopy[2](blockCopy))
    {
      v6 = objc_opt_new();
      v7 = +[PPLocalNamedEntityStore defaultStore];
      v8 = +[PPLocalLocationStore defaultStore];
      [PPMapsSupport importMapsDataWithCollectionRequest:v6 localNamedEntityStore:v7 localLocationStore:v8 shouldContinueBlock:blockCopy];

      if (blockCopy[2](blockCopy))
      {
        v9 = objc_opt_new();
        v10 = +[PPLocalNamedEntityStore defaultStore];
        v11 = +[PPLocalLocationStore defaultStore];
        [PPMapsSupport importMapsDataWithFavoriteRequest:v9 localNamedEntityStore:v10 localLocationStore:v11 shouldContinueBlock:blockCopy];

        v12 = pp_default_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 0;
          v13 = "PPMapsSupport: Maps import complete";
          v14 = &v15;
LABEL_9:
          _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

@end