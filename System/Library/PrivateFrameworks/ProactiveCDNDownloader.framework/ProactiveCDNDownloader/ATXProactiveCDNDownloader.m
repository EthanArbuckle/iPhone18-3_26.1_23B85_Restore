@interface ATXProactiveCDNDownloader
- (ATXProactiveCDNDownloader)init;
- (ATXProactiveCDNDownloader)initWithTileLoader:(id)a3 tileDataReader:(id)a4;
- (id)sha256HashForText:(id)a3;
- (void)_heroDatasForLocation:(id)a3 completion:(id)a4;
- (void)heroDatasForLocation:(id)a3 completion:(id)a4;
- (void)highConfidenceHeroDatasForCurrentLocationWithCompletion:(id)a3;
@end

@implementation ATXProactiveCDNDownloader

- (ATXProactiveCDNDownloader)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXProactiveCDNDownloader *)self initWithTileLoader:v3 tileDataReader:v4];

  return v5;
}

- (ATXProactiveCDNDownloader)initWithTileLoader:(id)a3 tileDataReader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = ATXProactiveCDNDownloader;
  v9 = [(ATXProactiveCDNDownloader *)&v23 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v9->_queue;
    v9->_queue = v14;

    objc_storeStrong(&v9->_tileLoader, a3);
    objc_storeStrong(&v9->_tileDataReader, a4);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("_clCallbackQueue", v16);
    clQueue = v9->_clQueue;
    v9->_clQueue = v17;

    v19 = v9->_clQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ATXProactiveCDNDownloader_initWithTileLoader_tileDataReader___block_invoke;
    block[3] = &unk_279AB6D68;
    v22 = v9;
    dispatch_sync(v19, block);
  }

  return v9;
}

uint64_t __63__ATXProactiveCDNDownloader_initWithTileLoader_tileDataReader___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/CoreParsec.framework" delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)heroDatasForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXProactiveCDNDownloader *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATXProactiveCDNDownloader_heroDatasForLocation_completion___block_invoke;
  block[3] = &unk_279AB6D90;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)highConfidenceHeroDatasForCurrentLocationWithCompletion:(id)a3
{
  v4 = a3;
  clQueue = self->_clQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke;
  v7[3] = &unk_279AB6E78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clQueue, v7);
}

void __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2;
  v4[3] = &unk_279AB6E50;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _fetchPlaceInferencesWithFidelityPolicy:0 handler:v4];
}

void __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v22 = __atxlog_handle_hero();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260C92000, v22, OS_LOG_TYPE_DEFAULT, "No place inference while getting high quality app clip predictions: No inference returned from CLLocationManager", buf, 2u);
      }

      v8 = *(*(a1 + 40) + 16);
      goto LABEL_5;
    }

    v9 = [v5 _pas_filteredArrayWithTest:&__block_literal_global];
    v10 = [v9 firstObject];

    v11 = __atxlog_handle_hero();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v10 preferredName];
        [v10 confidence];
        *buf = 138412546;
        v33 = v13;
        v34 = 2048;
        v35 = v14;
        _os_log_impl(&dword_260C92000, v11, OS_LOG_TYPE_DEFAULT, "Best place Point of Interest name: %@. Confidence score: %f", buf, 0x16u);
      }

      [v10 confidence];
      if (v15 >= 0.5)
      {
        v16 = [v10 placemark];
        v17 = [v16 copy];

        v18 = [v17 _geoMapItemHandle];
        v19 = v18;
        if (v18)
        {
          if (!*(*(a1 + 32) + 24) || ![v18 isEqualToData:?])
          {
            v23 = objc_opt_new();
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_35;
            v29[3] = &unk_279AB6E28;
            v24 = *(a1 + 40);
            v25 = *(a1 + 32);
            v31 = v24;
            v29[4] = v25;
            v30 = v19;
            [v23 resolveMapItemFromHandle:v30 completionHandler:v29];

LABEL_27:
            goto LABEL_28;
          }

          v20 = *(*(a1 + 32) + 32);
          v21 = *(*(a1 + 40) + 16);
        }

        else
        {
          v26 = __atxlog_handle_hero();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v10 preferredName];
            *buf = 138412290;
            v33 = v27;
            _os_log_impl(&dword_260C92000, v26, OS_LOG_TYPE_DEFAULT, "No place inference while getting high quality app clip predictions: No GEOMapItem data available for best place point of interest with name: %@", buf, 0xCu);
          }

          v21 = *(*(a1 + 40) + 16);
        }

        v21();
        goto LABEL_27;
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_260C92000, v11, OS_LOG_TYPE_DEFAULT, "No best place inference while getting high quality app clip predictions: No point of interest identified in place inference", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
LABEL_28:

    goto LABEL_29;
  }

  v7 = __atxlog_handle_hero();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2_cold_1(v6, v7);
  }

  v8 = *(*(a1 + 40) + 16);
LABEL_5:
  v8();
LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

void __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2_cold_1(v6, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [v5 _quickLinks];
    v10 = [v9 count];

    if (v10)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = [v5 _quickLinks];
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            if ([v16 type] == 2)
            {
              v17 = [v16 URLString];
              [v8 addObject:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v13);
      }
    }

    if ([v5 _hasMUID])
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "_muid")}];
    }

    else
    {
      v18 = 0;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_38;
    v34[3] = &unk_279AB6DD8;
    v34[4] = *(a1 + 32);
    v19 = v18;
    v35 = v19;
    v20 = [v8 _pas_mappedArrayWithTransform:v34];
    v21 = [v5 _poiCategory];
    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x277D131B8]);
      v23 = [v22 initWithPredictedAdamId:*MEMORY[0x277D131F0] bundleId:*MEMORY[0x277D131F8] latitude:*MEMORY[0x277D131D8] longitude:*MEMORY[0x277D131E0] radiusInMeters:*MEMORY[0x277D131C8] rank:0 isTouristApp:*MEMORY[0x277D131D0] score:*MEMORY[0x277D131D0] urlHash:*MEMORY[0x277D131E8] clipMetadata:0 poiCategory:v21 poiMuid:0];
      v24 = [v20 arrayByAddingObject:v23];

      v20 = v24;
    }

    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = *(v26 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2_41;
    block[3] = &unk_279AB6E00;
    block[4] = v26;
    v31 = v25;
    v32 = v20;
    v33 = *(a1 + 48);
    v28 = v20;
    dispatch_async(v27, block);
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D131B8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D131F0];
  v7 = *MEMORY[0x277D131F8];
  v8 = *MEMORY[0x277D131D0];
  v9 = *MEMORY[0x277D131D8];
  v10 = *MEMORY[0x277D131E0];
  v11 = *MEMORY[0x277D131C8];
  v12 = *MEMORY[0x277D131E8];
  v13 = [*(a1 + 32) sha256HashForText:v4];

  v14 = [v5 initWithPredictedAdamId:v6 bundleId:v7 latitude:v9 longitude:v10 radiusInMeters:v11 rank:v13 isTouristApp:v8 score:v8 urlHash:v12 clipMetadata:0 poiCategory:0 poiMuid:*(a1 + 40)];

  return v14;
}

uint64_t __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2_41(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)_heroDatasForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXProactiveCDNDownloader *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc(MEMORY[0x277D425F8]);
  v10 = objc_opt_new();
  v11 = [v9 initWithGuardedData:v10];

  objc_initWeak(&location, self);
  v12 = [(ATXProactiveCDNDownloader *)self tileLoader];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke;
  v19[3] = &unk_279AB6EF0;
  v13 = v7;
  v22 = v13;
  objc_copyWeak(&v23, &location);
  v14 = v6;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  [v12 requestGEOTileDataForLocation:v14 tileDataHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke_4;
  v17[3] = &unk_279AB6F18;
  v16 = v13;
  v18 = v16;
  [v15 runWithLockAcquired:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = [WeakRetained tileDataReader];
    v8 = [v7 appAndClipEntryForTileData:v5];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke_2;
    v14[3] = &unk_279AB6EA0;
    v15 = *(a1 + 32);
    v9 = [v8 _pas_mappedArrayWithTransform:v14];
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke_3;
    v12[3] = &unk_279AB6EC8;
    v13 = v9;
    v11 = v9;
    [v10 runWithLockAcquired:v12];
  }
}

void __62__ATXProactiveCDNDownloader__heroDatasForLocation_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_hero();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ATXProactiveCDNDownloader _heroDatasForLocation:completion:]_block_invoke_4";
    v10 = 2048;
    v11 = [v3 count];
    _os_log_impl(&dword_260C92000, v4, OS_LOG_TYPE_DEFAULT, "%s Sending %lu predictions back from GEOTileLoader for location", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 copy];
  (*(v5 + 16))(v5, v6, 0);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)sha256HashForText:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a3 UTF8String];
  v4 = strlen(v3);
  CC_SHA256(v3, v4, md);
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

void __85__ATXProactiveCDNDownloader_highConfidenceHeroDatasForCurrentLocationWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260C92000, a2, OS_LOG_TYPE_ERROR, "Error while pulling high quality predictions from GeoMapService: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end