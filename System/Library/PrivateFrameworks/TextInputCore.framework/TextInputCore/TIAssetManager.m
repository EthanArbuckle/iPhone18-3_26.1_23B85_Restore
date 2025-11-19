@interface TIAssetManager
+ (id)_addressFromRegion:(id)a3;
+ (id)_regionFromAddress:(id)a3;
+ (id)sharedAssetManagerWithEnabledInputModesProvider:(id)a3;
+ (id)singletonInstanceWithEnabledInputModesProvider:(id)a3;
+ (int64_t)assetUpdateStatusforDDSAssetUpdateStatus:(int64_t)a3;
+ (void)setSharedAssetManager:(id)a3;
- (BOOL)inputModeHasRegions:(id)a3;
- (BOOL)requireMecabraDictionaryRapidUpdatesAssetsForLanguageIdentifier:(id)a3;
- (NSMutableSet)languagesWithWarmedAssets;
- (TIAssetManager)initWithRequestedInputModes:(id)a3 inputModePreferenceProvider:(id)a4 enabledInputModesProvider:(id)a5;
- (id)_ddsContentItemsFromAssets:(id)a3 contentType:(id)a4 filteredWithRegion:(BOOL)a5;
- (id)activeInputModeLevels;
- (id)activeInputModes;
- (id)assetTypeForAssertionId:(id)a3;
- (id)ddsAssertionIDsFromInputMode:(id)a3 withPotentialRegions:(id)a4;
- (id)ddsLanguageIdentifierFromInputMode:(id)a3;
- (id)ddsLinguisticAssetQueryWithAssetType:(id)a3 inputModeIdentifier:(id)a4 withRegions:(id)a5;
- (id)defaultEnabledInputModes;
- (id)enabledInputModes;
- (id)levelsForInputMode:(id)a3;
- (id)localeIdentifierForAssertionId:(id)a3 inputMode:(id)a4;
- (id)multilingualLocaleIdentifierForInputMode:(id)a3;
- (id)topActiveRegions;
- (id)updatedActiveRegions;
- (void)_warmAssetQueriesForInputModes:(id)a3;
- (void)_warmAssetQueryForLanguage:(id)a3;
- (void)_warmLDEnumerateAssetQueriesForInputMode:(id)a3;
- (void)addAssertionWithInputMode:(id)a3 assertionID:(id)a4 potentialRegions:(id)a5;
- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7;
- (void)appleKeyboardsPreferencesChanged:(id)a3;
- (void)ddsAssetContentItemsWithContentType:(id)a3 inputMode:(id)a4 filteredWithRegion:(BOOL)a5 completion:(id)a6;
- (void)ddsAssetsForInputMode:(id)a3 cachedOnly:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)didUpdateAssets;
- (void)didUpdateAssetsWithType:(id)a3;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4;
- (void)getActiveRegionsWithCompletion:(id)a3;
- (void)normalizedRegionsForGeoCodedAddresses:(id)a3 withCompletion:(id)a4;
- (void)registerCacheDeleteCallbacks;
- (void)registerForNotifications;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5;
- (void)requestAssetDownloadForLanguage:(id)a3 completion:(id)a4;
- (void)scheduleAssetsDidChangeNotificationWithDelay:(double)a3;
- (void)setEnabledInputModeIdentifiersProviderBlock:(id)a3;
- (void)unregisterForNotifications;
- (void)updateAssertionsForInputModes:(id)a3;
- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4;
- (void)updatedActiveRegionsWithCompletionWithCompletion:(id)a3;
@end

@implementation TIAssetManager

- (NSMutableSet)languagesWithWarmedAssets
{
  languagesWithWarmedAssets = self->_languagesWithWarmedAssets;
  if (!languagesWithWarmedAssets)
  {
    v4 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    v5 = self->_languagesWithWarmedAssets;
    self->_languagesWithWarmedAssets = v4;

    languagesWithWarmedAssets = self->_languagesWithWarmedAssets;
  }

  return languagesWithWarmedAssets;
}

void __48__TIAssetManager_tryToPurgeAssetAmount_urgency___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeInputModes];
  [*(a1 + 32) updateAssertionsForInputModes:v2];
}

void __48__TIAssetManager_tryToPurgeAssetAmount_urgency___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeInputModes];
  [*(a1 + 32) updateAssertionsForInputModes:v2];
}

- (void)registerCacheDeleteCallbacks
{
  objc_initWeak(&location, self);
  v2[1] = MEMORY[0x277D85DD0];
  v2[2] = 3221225472;
  v2[3] = __46__TIAssetManager_registerCacheDeleteCallbacks__block_invoke;
  v2[4] = &unk_278730780;
  objc_copyWeak(&v3, &location);
  objc_copyWeak(v2, &location);
  CacheDeleteRegisterInfoCallbacks();
  objc_destroyWeak(v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

uint64_t __46__TIAssetManager_registerCacheDeleteCallbacks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CacheDelete - Purgable(urgency=%d)", "-[TIAssetManager registerCacheDeleteCallbacks]_block_invoke", a2];
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v8 = [WeakRetained amountOfPurgeableAssetsWithUrgency:a2];
  v14[0] = @"CACHE_DELETE_VOLUME";
  v9 = [a3 objectForKey:?];
  v14[1] = @"CACHE_DELETE_AMOUNT";
  v15[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __46__TIAssetManager_registerCacheDeleteCallbacks__block_invoke_336(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [a3 objectForKey:@"CACHE_DELETE_AMOUNT"];
  v7 = [v6 intValue];

  v8 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CacheDelete - Purge(amount=%lld, urgency=%d)", "-[TIAssetManager registerCacheDeleteCallbacks]_block_invoke", v7, a2];
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v10 = [WeakRetained tryToPurgeAssetAmount:v7 urgency:a2];
  v16[0] = @"CACHE_DELETE_VOLUME";
  v11 = [a3 objectForKey:?];
  v16[1] = @"CACHE_DELETE_AMOUNT";
  v17[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __46__TIAssetManager_registerCacheDeleteCallbacks__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"CACHE_DELETE_VOLUME";
  v3 = [a3 objectForKey:?];
  v7[1] = @"CACHE_DELETE_AMOUNT";
  v8[0] = v3;
  v8[1] = &unk_28400BD48;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)getActiveRegionsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TIAssetManager_getActiveRegionsWithCompletion___block_invoke;
  v6[3] = &unk_2787312C0;
  v7 = v4;
  v5 = v4;
  [(TIAssetManager *)self updatedActiveRegionsWithCompletionWithCompletion:v6];
}

- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke;
  v10[3] = &unk_2787313D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(TIAssetManager *)self getActiveRegionsWithCompletion:v10];
}

void __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_2;
  aBlock[3] = &unk_278730730;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v17 = v4;
  v18 = *(a1 + 48);
  v19 = &v23;
  v20 = v21;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) multilingualLocaleIdentifierForInputMode:*(a1 + 40)];
  if (v6)
  {
    ++v24[3];
    v7 = [*(a1 + 32) ddsLinguisticAssetQueryForInputModeIdentifier:v6 withRegions:v3];
    v8 = [MEMORY[0x277D04010] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_323;
    v14[3] = &unk_278730758;
    v15 = v5;
    [v8 updateAssetForQuery:v7 callback:v14];
  }

  v9 = [*(a1 + 32) ddsLinguisticAssetQueryForInputModeIdentifier:*(a1 + 40) withRegions:v3];
  v10 = [MEMORY[0x277D04010] sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_2_324;
  v12[3] = &unk_278730758;
  v13 = v5;
  v11 = v5;
  [v10 updateAssetForQuery:v9 callback:v12];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
}

void __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) dispatchQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_3;
  v9[3] = &unk_278730708;
  v7 = *(a1 + 40);
  v14 = a2;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = v5;
  dispatch_async(v6, v9);
}

void __61__TIAssetManager_updateAssetForInputModeIdentifier_callback___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 72))
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s updateAssetForQuery for identifier: %@ completed with didSucceed: %@, error: %@", "-[TIAssetManager updateAssetForInputModeIdentifier:callback:]_block_invoke_3", *(a1 + 32), v7, *(a1 + 40)];
    *buf = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    --*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24) &= *(a1 + 72);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      goto LABEL_6;
    }

    v5 = *(*(*(a1 + 64) + 8) + 24);
    v6 = *(a1 + 40);
    v3 = *(*(a1 + 48) + 16);
  }

  v3();
LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke;
  v10[3] = &unk_2787313D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(TIAssetManager *)self getActiveRegionsWithCompletion:v10];
}

void __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_2;
  aBlock[3] = &unk_2787306B8;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v17 = v4;
  v18 = *(a1 + 48);
  v19 = v25;
  v20 = v24;
  v21 = v23;
  v22 = &v26;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) multilingualLocaleIdentifierForInputMode:*(a1 + 40)];
  if (v6)
  {
    ++v27[3];
    v7 = [*(a1 + 32) ddsLinguisticAssetQueryForInputModeIdentifier:v6 withRegions:v3];
    v8 = [MEMORY[0x277D04010] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_311;
    v14[3] = &unk_2787306E0;
    v15 = v5;
    [v8 fetchAssetUpdateStatusForQuery:v7 callback:v14];
  }

  v9 = [*(a1 + 32) ddsLinguisticAssetQueryForInputModeIdentifier:*(a1 + 40) withRegions:v3];
  v10 = [MEMORY[0x277D04010] sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_2_312;
  v12[3] = &unk_2787306E0;
  v13 = v5;
  v11 = v5;
  [v10 fetchAssetUpdateStatusForQuery:v9 callback:v12];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);
}

void __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) dispatchQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_3;
  v9[3] = &unk_278730690;
  v7 = *(a1 + 40);
  v15 = a2;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v8 = v5;
  dispatch_async(v6, v9);
}

void __72__TIAssetManager_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s fetchAssetUpdateStatusForQuery for identifier: %@ completed with status: %ld, error: %@", "-[TIAssetManager fetchAssetUpdateStatusForInputModeIdentifier:callback:]_block_invoke_3", a1[4], a1[11], a1[5]];
    *buf = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (a1[5])
  {
    v3 = *(a1[6] + 16);
LABEL_9:
    v3();
    goto LABEL_10;
  }

  v4 = a1[11];
  if (v4 <= 2)
  {
    v5 = *(*(a1 + qword_22CC8A418[v4]) + 8);
    ++*(v5 + 24);
  }

  if (*(*(a1[10] + 8) + 24) == *(*(a1[8] + 8) + 24) + *(*(a1[7] + 8) + 24) + *(*(a1[9] + 8) + 24))
  {
    v6 = a1[5];
    v3 = *(a1[6] + 16);
    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)ddsLinguisticAssetQueryWithAssetType:(id)a3 inputModeIdentifier:(id)a4 withRegions:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TIAssetManager *)self ddsLanguageIdentifierFromInputMode:v9];
  v12 = [objc_alloc(MEMORY[0x277D04020]) initWithAssetType:v8 languageIdentifier:v11];
  [v12 setInstalledOnly:0];
  v33 = v12;
  [v12 setLocalOnly:0];
  if ([(TIAssetManager *)self inputModeHasRegions:v9])
  {
    if ([v10 count])
    {
      v28 = v11;
      v29 = v10;
      v30 = v9;
      v31 = v8;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v10;
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        v16 = *MEMORY[0x277D03FE8];
        v17 = *MEMORY[0x277D03FF0];
        v18 = *MEMORY[0x277D03FE0];
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v34 + 1) + 8 * i);
            v21 = [v20 objectForKeyedSubscript:{v16, v28, v29, v30, v31}];
            v22 = [v20 objectForKeyedSubscript:v17];
            v23 = [v20 objectForKeyedSubscript:v18];
            v24 = [v33 filter];
            [v24 addRegionWithCountry:v21 province:v22 city:v23];
          }

          v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v14);
      }

      v9 = v30;
      v8 = v31;
      v11 = v28;
      v10 = v29;
    }

    else
    {
      v25 = [v12 filter];
      [v25 addRegionWithCountry:0 province:0 city:0];
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)topActiveRegions
{
  v2 = [(TIAssetManager *)self currentNormalizedActiveRegions];
  v3 = [TIMobileAssetMatch mobileAssetMatchWithTypes:MEMORY[0x277CBEBF8] inputModeLevels:MEMORY[0x277CBEBF8] regions:v2];

  v4 = [v3 regions];

  return v4;
}

- (void)normalizedRegionsForGeoCodedAddresses:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v8 = getCLGeocoderClass_softClass;
    v33 = getCLGeocoderClass_softClass;
    if (!getCLGeocoderClass_softClass)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __getCLGeocoderClass_block_invoke;
      v29[3] = &unk_278733760;
      v29[4] = &v30;
      __getCLGeocoderClass_block_invoke(v29);
      v8 = v31[3];
    }

    v9 = v8;
    _Block_object_dispose(&v30, 8);
    v10 = objc_alloc_init(v8);
    v11 = objc_alloc_init(TIGeocodeCompletionHandlerHolder);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__TIAssetManager_normalizedRegionsForGeoCodedAddresses_withCompletion___block_invoke;
    aBlock[3] = &unk_278730668;
    v12 = v5;
    v19 = v12;
    v24 = &v25;
    v20 = v7;
    v21 = v10;
    v22 = v11;
    v23 = v6;
    v13 = v11;
    v14 = v10;
    v15 = _Block_copy(aBlock);
    [(TIGeocodeCompletionHandlerHolder *)v13 setGeocodeCompletionHandler:v15];
    v16 = [v12 objectAtIndexedSubscript:v26[3]];
    v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v14 geocodePostalAddress:v16 preferredLocale:v17 completionHandler:v15];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    (*(v6 + 2))(v6, v7);
  }
}

void __71__TIAssetManager_normalizedRegionsForGeoCodedAddresses_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
      v10 = [v8 stringWithFormat:@"%s ERROR: Cannot geocode address %@ : %@", "-[TIAssetManager normalizedRegionsForGeoCodedAddresses:withCompletion:]_block_invoke", v9, v6];
      *buf = 138412290;
      v37 = v10;
      _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [v5 firstObject];
    v11 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v31 = MEMORY[0x277CCACA8];
      v32 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
      v33 = [v31 stringWithFormat:@"%s Successfully geocoded address %@ to %@", "-[TIAssetManager normalizedRegionsForGeoCodedAddresses:withCompletion:]_block_invoke", v32, v7];
      *buf = 138412290;
      v37 = v33;
      _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v34[0] = @"City";
    v12 = [v7 locality];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }

    v35[0] = v14;
    v34[1] = @"Province";
    v15 = [v7 administrativeArea];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_283FDFAF8;
    }

    v35[1] = v17;
    v34[2] = @"Country";
    v18 = [v7 country];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_283FDFAF8;
    }

    v35[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

    [*(a1 + 40) addObject:v21];
  }

  v22 = ++*(*(*(a1 + 72) + 8) + 24);
  if (v22 >= [*(a1 + 32) count])
  {
    v27 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Finished geocoding %d addresses", "-[TIAssetManager normalizedRegionsForGeoCodedAddresses:withCompletion:]_block_invoke", objc_msgSend(*(a1 + 32), "count")];
      *buf = 138412290;
      v37 = v30;
      _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [*(a1 + 56) setGeocodeCompletionHandler:0];
    v28 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
    v25 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    v26 = [*(a1 + 56) geocodeCompletionHandler];
    [v23 geocodePostalAddress:v24 preferredLocale:v25 completionHandler:v26];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updatedActiveRegionsWithCompletionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(TIAssetManager *)self currentActiveRegions];
  v7 = [v5 setWithArray:v6];

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__7036;
  v12[4] = __Block_byref_object_dispose__7037;
  v13 = _Block_copy(v4);
  dispatchQueue = self->_dispatchQueue;
  v11 = v4;
  v9 = v4;
  v10 = v7;
  TIDispatchAsync();

  _Block_object_dispose(v12, 8);
}

void __67__TIAssetManager_updatedActiveRegionsWithCompletionWithCompletion___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Updating active regions...", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v47;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v3 = [*(a1 + 32) lastMeCardRegionFetchTime];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  if (v5 >= -60.0)
  {
    v7 = [*(a1 + 32) cachedMeCardRegions];
    v10 = TIAssetsOSLogFacility();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Retrieved meCard regions from cache", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    goto LABEL_11;
  }

  v6 = +[TIProactiveQuickTypeManager sharedInstance];
  v7 = [v6 searchForMeCardRegions];

  if (!v7)
  {
    v8 = +[TIProactiveQuickTypeManager sharedInstance];
    v7 = [v8 searchForMeCardRegions];

    if (!v7)
    {
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  [*(a1 + 32) setCachedMeCardRegions:v7];
  v9 = [MEMORY[0x277CBEAA8] now];
  [*(a1 + 32) setLastMeCardRegionFetchTime:v9];

  v10 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Updated the meCard regions cache.", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
LABEL_11:
    _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

LABEL_12:
  v50 = a1;

  v12 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Got me card regions from InputContext : %@", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke", v7];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v48;
    _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
  v54 = v13;
  if (v14)
  {
    v15 = v14;
    v52 = *v71;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v71 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v70 + 1) + 8 * i) mutableCopy];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v18 = +[TIMobileAssetMatch knownAssetRegionAttributes];
        v19 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v67;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v67 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v66 + 1) + 8 * j);
              v24 = [v17 objectForKeyedSubscript:v23];

              if (!v24)
              {
                [v17 setObject:&stru_283FDFAF8 forKeyedSubscript:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
          }

          while (v20);
        }

        v13 = v54;
        [v54 addObject:v17];
      }

      v15 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v15);
  }

  v25 = [*(a1 + 32) preferencesProviderBlock];

  if (v25)
  {
    v26 = [*(a1 + 32) preferencesProviderBlock];
    v27 = v26[2]();

    [v27 objectForKeyedSubscript:*MEMORY[0x277D6FA00]];
  }

  else
  {
    v27 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [v27 valueForPreferenceKey:*MEMORY[0x277D6FA00]];
  }
  v28 = ;

  v29 = [v28 integerValue] - 1;
  if (v29 <= 2)
  {
    [v13 addObject:*(&off_2787307D8 + v29)];
  }

  v30 = [MEMORY[0x277CBEB98] setWithArray:v13];
  if ([v30 isEqualToSet:*(v50 + 40)])
  {
    v31 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Regions unchanged, returning old set %@", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke_2", *(v50 + 40)];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v49;
      _os_log_debug_impl(&dword_22CA55000, v31, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    v32 = *(v50 + 48);
    if (v32)
    {
      v33 = [*(v50 + 40) allObjects];
      (*(v32 + 16))(v32, v33);
    }
  }

  else
  {
    v53 = v28;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__279;
    v78 = __Block_byref_object_dispose__280;
    v79 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__TIAssetManager_updatedActiveRegionsWithCompletionWithCompletion___block_invoke_281;
    aBlock[3] = &unk_278730618;
    aBlock[4] = *(v50 + 32);
    v34 = v13;
    v63 = v34;
    p_buf = &buf;
    v65 = *(v50 + 56);
    v35 = _Block_copy(aBlock);
    v36 = [TIMobileAssetMatch mobileAssetMatchWithTypes:0 inputModeLevels:0 regions:v34];
    v37 = [MEMORY[0x277CBEB18] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = [v36 regions];
    v39 = [v38 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v59;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [TIAssetManager _addressFromRegion:*(*(&v58 + 1) + 8 * k)];
          [v37 addObject:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v40);
    }

    v44 = *(v50 + 32);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __67__TIAssetManager_updatedActiveRegionsWithCompletionWithCompletion___block_invoke_285;
    v55[3] = &unk_2787313B0;
    v56 = v35;
    v57 = &buf;
    v45 = v35;
    [v44 normalizedRegionsForGeoCodedAddresses:v37 withCompletion:v55];

    _Block_object_dispose(&buf, 8);
    v28 = v53;
    v13 = v54;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __67__TIAssetManager_updatedActiveRegionsWithCompletionWithCompletion___block_invoke_281(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCurrentActiveRegions:*(a1 + 40)];
  [*(a1 + 32) setCurrentNormalizedActiveRegions:*(*(*(a1 + 48) + 8) + 40)];
  v2 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 32) currentActiveRegions];
    v8 = [*(a1 + 32) currentNormalizedActiveRegions];
    v9 = [v6 stringWithFormat:@"%s Set active regions: %@, normalized regions: %@", "-[TIAssetManager updatedActiveRegionsWithCompletionWithCompletion:]_block_invoke", v7, v8];
    *buf = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) currentNormalizedActiveRegions];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __67__TIAssetManager_updatedActiveRegionsWithCompletionWithCompletion___block_invoke_285(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = a2;
  v4 = *(a1 + 32);
  TIDispatchAsync();
}

- (id)updatedActiveRegions
{
  [(TIAssetManager *)self updatedActiveRegionsWithCompletionWithCompletion:0];

  return [(TIAssetManager *)self currentNormalizedActiveRegions];
}

- (id)activeInputModeLevels
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(TIAssetManager *)self enabledInputModes];
  v4 = [(TIAssetManager *)self requestedInputModes_mainThreadCache];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(TIAssetManager *)self levelsForInputMode:*(*(&v16 + 1) + 8 * i), v16];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)activeInputModes
{
  v3 = [(TIAssetManager *)self enabledInputModes];
  v4 = [(TIAssetManager *)self requestedInputModes_mainThreadCache];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)defaultEnabledInputModes
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(TIAssetManager *)self inputModePreferenceProvider];
  v3 = [v2 defaultEnabledInputModesForCurrentLocale];

  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = TIInputModeGetNormalizedIdentifier();
        [v4 addObject:{v11, v14}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)enabledInputModes
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(TIAssetManager *)self enabledInputModeIdentifiersProviderBlock];
  if (v3)
  {
    v4 = [(TIAssetManager *)self enabledInputModeIdentifiersProviderBlock];
    v4[2]();
  }

  else
  {
    v4 = [(TIAssetManager *)self inputModePreferenceProvider];
    [v4 enabledInputModeIdentifiers];
  }
  v5 = ;

  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = TIInputModeGetNormalizedIdentifier();
        [v6 addObject:{v13, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)levelsForInputMode:(id)a3
{
  v3 = TIInputModeGetComponentsFromIdentifier();
  v4 = TIInputModeGetNormalizedLevelsFromComponents();

  return v4;
}

- (void)didUpdateAssets
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Posting notifcation: %@.", "-[TIAssetManager didUpdateAssets]", @"TIAssetsDidChangeNotification"];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"TIAssetsDidChangeNotification" object:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleAssetsDidChangeNotificationWithDelay:(double)a3
{
  v3 = [(TIAssetManager *)self dispatchQueue];
  TIDispatchAsync();
}

void __63__TIAssetManager_scheduleAssetsDidChangeNotificationWithDelay___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) didUpdateAssetsTimer];

  if (!v2)
  {
    v3 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduling AssetsDidChangeNotification with delay = %g second(s)", "-[TIAssetManager scheduleAssetsDidChangeNotificationWithDelay:]_block_invoke", *(a1 + 40)];
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__TIAssetManager_scheduleAssetsDidChangeNotificationWithDelay___block_invoke_229;
    v10[3] = &unk_2787305F0;
    v10[4] = *(a1 + 32);
    v6 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:0 repeats:v10 block:v5];
    [*(a1 + 32) setDidUpdateAssetsTimer:v6];

    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    v8 = [*(a1 + 32) didUpdateAssetsTimer];
    [v7 addTimer:v8 forMode:*MEMORY[0x277CBE640]];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__TIAssetManager_scheduleAssetsDidChangeNotificationWithDelay___block_invoke_229(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  v3 = *(a1 + 32);
  TIDispatchAsync();
}

uint64_t __63__TIAssetManager_scheduleAssetsDidChangeNotificationWithDelay___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Firing delayed AssetsDidChangeNotification now", "-[TIAssetManager scheduleAssetsDidChangeNotificationWithDelay:]_block_invoke_2"];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  TIDispatchAsync();
  result = [*(a1 + 32) setDidUpdateAssetsTimer:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)inputModeHasRegions:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"zh"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsString:@"yue"];
  }

  return v4;
}

- (id)ddsLanguageIdentifierFromInputMode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([(__CFString *)v3 hasPrefix:@"ars"])
  {
    v4 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Override the ars locale with ar", "-[TIAssetManager ddsLanguageIdentifierFromInputMode:]"];
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v3 = @"ar";
  }

  v6 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v3];
  if ([v6 hasPrefix:@"fil"])
  {
    v7 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Override the language code from fil to tl for Tagalog", "-[TIAssetManager ddsLanguageIdentifierFromInputMode:]"];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v9 = @"tl";
  }

  else
  {
    if ([v6 isEqualToString:@"mul"])
    {
      v10 = v3;
    }

    else
    {
      v11 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v10 = v11;
      v6 = v10;
    }

    v9 = v10;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)ddsAssertionIDsFromInputMode:(id)a3 withPotentialRegions:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TIAssetManager *)self ddsLanguageIdentifierFromInputMode:v6];
  v9 = [@"com.apple.TextInput.assertion" stringByAppendingFormat:@".%@", v8];
  v45 = [v9 mutableCopy];

  if ([(TIAssetManager *)self inputModeHasRegions:v8])
  {
    v39 = self;
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v44 = *v47;
      v12 = *MEMORY[0x277D03FE8];
      v13 = *MEMORY[0x277D04000];
      v14 = *MEMORY[0x277D03FF0];
      v15 = *MEMORY[0x277D03FE0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:v12];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v13;
          }

          v21 = v20;

          v22 = [v17 objectForKeyedSubscript:v14];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = v13;
          }

          v25 = v24;

          v26 = [v17 objectForKeyedSubscript:v15];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v13;
          }

          v29 = v28;

          [v45 appendFormat:@"_%@_%@_%@", v21, v25, v29];
        }

        v11 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v11);
    }

    v7 = v41;
    v6 = v42;
    self = v39;
    v8 = v40;
  }

  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v45, 0}];
  if ([(TIAssetManager *)self requireMecabraDictionaryRapidUpdatesAssetsForLanguageIdentifier:v8])
  {
    v31 = [v45 stringByAppendingString:@".mecabra_dictionary_rapid_updates_new"];
    [v30 addObject:v31];
  }

  v32 = [(TIAssetManager *)self multilingualLocaleIdentifierForInputMode:v6];
  if (v32)
  {
    v33 = [(TIAssetManager *)self ddsLanguageIdentifierFromInputMode:v32];
    v34 = [@"com.apple.TextInput.assertion" stringByAppendingFormat:@".%@.%@", v6, v33];
    v35 = [v34 mutableCopy];

    v36 = [v35 stringByAppendingString:@".preferred_mul_locale"];
    [v30 addObject:v36];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)addAssertionWithInputMode:(id)a3 assertionID:(id)a4 potentialRegions:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(TIAssetManager *)self assetTypeForAssertionId:v8];
  v12 = [(TIAssetManager *)self localeIdentifierForAssertionId:v8 inputMode:v10];

  v13 = [(TIAssetManager *)self ddsLinguisticAssetQueryWithAssetType:v11 inputModeIdentifier:v12 withRegions:v9];

  v14 = objc_alloc_init(MEMORY[0x277D04018]);
  [v14 setPreferredDownloadFrequency:2];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v15 = TIOSLogFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding assertion: %@ with assetType: %@ query: %@ policy: %@", "-[TIAssetManager addAssertionWithInputMode:assertionID:potentialRegions:]", v11, v8, v13, v14];
    *buf = 138412290;
    v20 = v18;
    _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D04010] sharedInstance];
  [v16 addAssertionForAssetsWithQuery:v13 policy:v14 assertionID:v8 clientID:@"com.apple.TextInput"];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)localeIdentifierForAssertionId:(id)a3 inputMode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIAssetManager *)self multilingualLocaleIdentifierForInputMode:v6];
  v9 = [v7 hasSuffix:@".preferred_mul_locale"];

  if ((v9 & (v8 != 0)) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

- (id)multilingualLocaleIdentifierForInputMode:(id)a3
{
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F718]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 performSelector:sel_stringValue];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)assetTypeForAssertionId:(id)a3
{
  if ([a3 hasSuffix:@".mecabra_dictionary_rapid_updates_new"])
  {
    v3 = @"com.apple.MobileAsset.MecabraDictionaryRapidUpdates";
  }

  else
  {
    v3 = *MEMORY[0x277D04008];
  }

  return v3;
}

- (void)updateAssertionsForInputModes:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.kbd"];

  if (v6)
  {
    v7 = _TIQueueUserInitiated();
    v11 = v3;
    TIDispatchAsync();
  }

  else
  {
    v8 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Skipping update asset assertions", "-[TIAssetManager updateAssertionsForInputModes:]"];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __48__TIAssetManager_updateAssertionsForInputModes___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TIAssetManager_updateAssertionsForInputModes___block_invoke_2;
  v5[3] = &unk_278730EA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 getActiveRegionsWithCompletion:v5];
}

void __48__TIAssetManager_updateAssertionsForInputModes___block_invoke_2(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [MEMORY[0x277D04010] sharedInstance];
  v6 = [v5 assertionIDsForClientID:@"com.apple.TextInput"];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    v10 = *MEMORY[0x277D6F790];
    v28 = *MEMORY[0x277D6F790];
    v29 = *v42;
    do
    {
      v11 = 0;
      v30 = v8;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        if (([v12 containsString:v10] & 1) == 0)
        {
          v32 = v11;
          v13 = [*(a1 + 40) ddsAssertionIDsFromInputMode:v12 withPotentialRegions:v3];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v37 + 1) + 8 * i);
                if (([v6 containsObject:v18] & 1) == 0 && (objc_msgSend(v4, "containsObject:", v18) & 1) == 0)
                {
                  [*(a1 + 40) addAssertionWithInputMode:v12 assertionID:v18 potentialRegions:v3];
                }

                [v4 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v15);
          }

          v10 = v28;
          v9 = v29;
          v8 = v30;
          v11 = v32;
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v8);
  }

  v19 = [v6 mutableCopy];
  [v19 minusSet:v4];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        v26 = [MEMORY[0x277D04010] sharedInstance];
        [v26 removeAssertionWithIdentifier:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v22);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)requireMecabraDictionaryRapidUpdatesAssetsForLanguageIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_28400B970 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_28400B970);
        }

        if ([v3 isEqualToString:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&unk_28400B970 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)appleKeyboardsPreferencesChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Observed keyboard preferences changed.", "-[TIAssetManager appleKeyboardsPreferencesChanged:]"];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v8 = self;
    v6 = [(TIAssetManager *)self activeInputModeLevels];
    [(TIAssetManager *)v8 updateAssertionsForInputModes:v6];
  }

  else
  {
    TIDispatchSync();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__TIAssetManager_appleKeyboardsPreferencesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeInputModeLevels];
  [*(a1 + 32) updateAssertionsForInputModes:v2];
}

void __51__TIAssetManager_appleKeyboardsPreferencesChanged___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeInputModeLevels];
  [*(a1 + 32) updateAssertionsForInputModes:v2];
}

- (void)didUpdateAssetsWithType:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Handling DDS update of asset type: %@", "-[TIAssetManager didUpdateAssetsWithType:]", v3];
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  TIDispatchAsync();
  v6 = *MEMORY[0x277D85DE8];
}

void __42__TIAssetManager_didUpdateAssetsWithType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeInputModeLevels];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TIAssetManager_didUpdateAssetsWithType___block_invoke_2;
  v5[3] = &unk_278730EA8;
  v5[4] = v3;
  v6 = v2;
  v4 = v2;
  [v3 getActiveRegionsWithCompletion:v5];
}

void __42__TIAssetManager_didUpdateAssetsWithType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  TIDispatchAsync();
}

uint64_t __42__TIAssetManager_didUpdateAssetsWithType___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) languagesWithWarmedAssets];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _warmAssetQueriesForInputModes:v4];
}

- (void)unregisterForNotifications
{
  v3 = [MEMORY[0x277D04010] sharedInstance];
  [v3 unregisterDelegate:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];
}

- (void)registerForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_appleKeyboardsPreferencesChanged_ name:@"AppleKeyboardsPreferencesChangedNotification_Private" object:0];

  v4 = [MEMORY[0x277D04010] sharedInstance];
  [v4 registerDelegate:self];

  [(TIAssetManager *)self registerCacheDeleteCallbacks];
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277D04010];
  v9 = a5;
  v7 = a3;
  v8 = [v6 sharedInstance];
  [v8 removeAssertionWithIdentifier:v7];

  v9[2](v9, 0);
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7
{
  v22 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(TIAssetManager *)self ddsLanguageIdentifierFromInputMode:a3];
  v16 = [objc_alloc(MEMORY[0x277D04020]) initWithLanguageIdentifier:v15];
  [v16 setLocalOnly:0];
  [v16 setInstalledOnly:0];
  if ([v22 count])
  {
    v17 = [v22 objectForKey:*MEMORY[0x277D03FE8]];
    v18 = [v22 objectForKey:*MEMORY[0x277D03FF0]];
    v19 = [v22 objectForKey:*MEMORY[0x277D03FE0]];
    [v16 addRegionWithCountry:v17 province:v18 city:v19];
  }

  v20 = objc_alloc_init(MEMORY[0x277D04018]);
  [v20 setPreferredDownloadFrequency:1];
  v21 = [MEMORY[0x277D04010] sharedInstance];
  [v21 addAssertionForAssetsWithQuery:v16 policy:v20 assertionID:v14 clientID:v13];

  v12[2](v12, 0);
}

- (void)requestAssetDownloadForLanguage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TIAssetManager_requestAssetDownloadForLanguage_completion___block_invoke;
  v10[3] = &unk_2787313D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(TIAssetManager *)self getActiveRegionsWithCompletion:v10];
}

void __61__TIAssetManager_requestAssetDownloadForLanguage_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) ddsAssertionIDsFromInputMode:*(a1 + 40) withPotentialRegions:a2];
  v20 = a1;
  v19 = [*(a1 + 32) ddsLanguageIdentifierFromInputMode:*(a1 + 40)];
  v4 = [MEMORY[0x277D04010] sharedInstance];
  v5 = [v4 assertionIDsForClientID:@"com.apple.TextInput"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v5 containsObject:v11] & 1) == 0)
        {
          v12 = [*(v20 + 32) assetTypeForAssertionId:v11];
          v13 = TIAssetsOSLogFacility();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s AssertionId: %@, AssetType: %@", "-[TIAssetManager requestAssetDownloadForLanguage:completion:]_block_invoke", v11, v12];
            *buf = 138412290;
            v26 = v17;
            _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v14 = [objc_alloc(MEMORY[0x277D04020]) initWithAssetType:v12 languageIdentifier:v19];
          [v14 setLocalOnly:0];
          [v14 setInstalledOnly:0];
          v15 = objc_alloc_init(MEMORY[0x277D04018]);
          v16 = [MEMORY[0x277D04010] sharedInstance];
          [v16 addAssertionForAssetsWithQuery:v14 policy:v15 assertionID:v11 clientID:@"com.apple.TextInput"];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  (*(*(v20 + 48) + 16))();
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_warmAssetQueryForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(TIAssetManager *)self dispatchQueue];
  v6 = v4;
  TIDispatchAsync();
}

void __45__TIAssetManager__warmAssetQueryForLanguage___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) languagesWithWarmedAssets];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) languagesWithWarmedAssets];
    [v4 addObject:*(a1 + 40)];

    v5 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warming asset query for language '%@'", "-[TIAssetManager _warmAssetQueryForLanguage:]_block_invoke", *(a1 + 40)];
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = [*(a1 + 32) _ddsAssetsForLanguageIdentifier:*(a1 + 40) cachedOnly:0];
    v9 = [v7 initWithArray:v8];

    if ([*(a1 + 32) requireMecabraDictionaryRapidUpdatesAssetsForLanguageIdentifier:*(a1 + 40)])
    {
      v10 = TIAssetsOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warming MecabraDictionaryRapidUpdates asset query for language '%@'", "-[TIAssetManager _warmAssetQueryForLanguage:]_block_invoke", *(a1 + 40)];
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v12 = [*(a1 + 32) _ddsAssetsForAssetType:@"com.apple.MobileAsset.MecabraDictionaryRapidUpdates" languageIdentifier:*(a1 + 40) cachedOnly:0];
      [v9 addObjectsFromArray:v12];
    }

    v13 = [v9 count];
    v14 = TIAssetsOSLogFacility();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warmed asset query for language '%@' returned %lu assets", "-[TIAssetManager _warmAssetQueryForLanguage:]_block_invoke", *(a1 + 40), objc_msgSend(v9, "count")];
        *buf = 138412290;
        v20 = v16;
        _os_log_impl(&dword_22CA55000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      [*(a1 + 32) scheduleAssetsDidChangeNotificationWithDelay:3.0];
    }

    else
    {
      if (v15)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warmed asset query for language '%@' returned no assets", "-[TIAssetManager _warmAssetQueryForLanguage:]_block_invoke", *(a1 + 40)];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&dword_22CA55000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_warmLDEnumerateAssetQueriesForInputMode:(id)a3
{
  v4 = a3;
  v5 = [(TIAssetManager *)self dispatchQueue];
  v6 = v4;
  TIDispatchAsync();
}

void __59__TIAssetManager__warmLDEnumerateAssetQueriesForInputMode___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v2 addObject:*(a1 + 32)];
  v3 = [*(a1 + 40) multilingualLocaleIdentifierForInputMode:*(a1 + 32)];
  if (v3)
  {
    [v2 addObject:v3];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{*(*(&v11 + 1) + 8 * v8), v11}];
        LDEnumerateAssetDataItems();

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_warmAssetQueriesForInputModes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(TIAssetManager *)self ddsLanguageIdentifierFromInputMode:v9];
        [(TIAssetManager *)self _warmAssetQueryForLanguage:v10];
        [(TIAssetManager *)self _warmLDEnumerateAssetQueriesForInputMode:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_ddsContentItemsFromAssets:(id)a3 contentType:(id)a4 filteredWithRegion:(BOOL)a5
{
  v5 = a5;
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v8 count];
    v13 = "NO";
    if (v5)
    {
      v13 = "YES";
    }

    v14 = [v11 stringWithFormat:@"%s Filtering content items from %lu asset(s) for contentType '%@' (filteredWithRegion: %s)", "-[TIAssetManager _ddsContentItemsFromAssets:contentType:filteredWithRegion:]", v12, v9, v13];
    *buf = 138412290;
    v46 = v14;
    _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if ([v8 count])
  {
    v15 = [MEMORY[0x277D04028] attributeFilter];
    [v15 addContentType:v9];
    if ([v9 isEqualToString:@"LanguageModel"])
    {
      [v15 addContentType:@"MultilingualLanguageModel"];
    }

    if (v5)
    {
      v36 = v5;
      v37 = v9;
      v38 = v8;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = [(TIAssetManager *)self topActiveRegions];
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        v39 = v16;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"Country"];
            v23 = [v21 objectForKeyedSubscript:@"Province"];
            v24 = [v21 objectForKeyedSubscript:@"City"];
            v25 = TIAssetsOSLogFacility();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding country: %@, province: %@, city: %@", "-[TIAssetManager _ddsContentItemsFromAssets:contentType:filteredWithRegion:]", v22, v23, v24];
              *buf = 138412290;
              v46 = v26;
              _os_log_debug_impl(&dword_22CA55000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

              v16 = v39;
            }

            [v15 addRegionWithCountry:v22 province:v23 city:v24];
          }

          v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v18);
      }

      v9 = v37;
      v8 = v38;
      v5 = v36;
    }

    [v15 addRegionWithCountry:&stru_283FDFAF8 province:&stru_283FDFAF8 city:&stru_283FDFAF8];
    v27 = [MEMORY[0x277D04010] sharedInstance];
    v28 = [v27 contentItemsFromAssets:v8 matchingFilter:v15];

    v29 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [v28 count];
      v32 = "NO";
      if (v5)
      {
        v32 = "YES";
      }

      v33 = [v30 stringWithFormat:@"%s Found %lu content item(s) for contentType '%@' (filteredWithRegion: %s)", "-[TIAssetManager _ddsContentItemsFromAssets:contentType:filteredWithRegion:]", v31, v9, v32];
      *buf = 138412290;
      v46 = v33;
      _os_log_impl(&dword_22CA55000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)ddsAssetsForInputMode:(id)a3 cachedOnly:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(TIAssetManager *)self dispatchQueue];
  v12 = v8;
  v10 = v7;
  v11 = v8;
  TIDispatchAsync();
}

void __62__TIAssetManager_ddsAssetsForInputMode_cachedOnly_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) normalizedIdentifier];
    v5 = [v2 ddsLanguageIdentifierFromInputMode:v3];

    v4 = [*(a1 + 32) _ddsAssetsForLanguageIdentifier:v5 cachedOnly:*(a1 + 56)];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)ddsAssetContentItemsWithContentType:(id)a3 inputMode:(id)a4 filteredWithRegion:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(TIAssetManager *)self dispatchQueue];
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  TIDispatchAsync();
}

void __94__TIAssetManager_ddsAssetContentItemsWithContentType_inputMode_filteredWithRegion_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) normalizedIdentifier];
  v7 = [v2 ddsLanguageIdentifierFromInputMode:v3];

  v4 = [*(a1 + 32) _ddsAssetsForLanguageIdentifier:v7 cachedOnly:0];
  v5 = [*(a1 + 32) _ddsContentItemsFromAssets:v4 contentType:*(a1 + 48) filteredWithRegion:*(a1 + 64)];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

- (void)setEnabledInputModeIdentifiersProviderBlock:(id)a3
{
  v4 = [a3 copy];
  enabledInputModeIdentifiersProviderBlock = self->_enabledInputModeIdentifiersProviderBlock;
  self->_enabledInputModeIdentifiersProviderBlock = v4;

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(TIAssetManager *)self unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = TIAssetManager;
  [(TIAssetManager *)&v3 dealloc];
}

- (TIAssetManager)initWithRequestedInputModes:(id)a3 inputModePreferenceProvider:(id)a4 enabledInputModesProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = TIAssetManager;
  v11 = [(TIAssetManager *)&v40 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.TextInput.asset-manager", v12);
    dispatchQueue = v11->_dispatchQueue;
    v11->_dispatchQueue = v13;

    if (v8)
    {
      v15 = v8;
      requestedInputModes = v11->_requestedInputModes;
      v11->_requestedInputModes = v15;
    }

    else
    {
      v17 = [TIRequestedInputModes alloc];
      requestedInputModes = +[TIRequestedInputModes defaultDatabaseURL];
      v18 = [(TIRequestedInputModes *)v17 initWithURL:requestedInputModes];
      v19 = v11->_requestedInputModes;
      v11->_requestedInputModes = v18;
    }

    requestedInputModes_mainThreadCache = v11->_requestedInputModes_mainThreadCache;
    v21 = MEMORY[0x277CBEBF8];
    v11->_requestedInputModes_mainThreadCache = MEMORY[0x277CBEBF8];

    if (v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = objc_alloc_init(_TIInputModePreferenceProvider);
    }

    inputModePreferenceProvider = v11->_inputModePreferenceProvider;
    v11->_inputModePreferenceProvider = v22;

    v24 = [v10 copy];
    enabledInputModeIdentifiersProviderBlock = v11->_enabledInputModeIdentifiersProviderBlock;
    v11->_enabledInputModeIdentifiersProviderBlock = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEA60]);
    currentActiveRegions = v11->_currentActiveRegions;
    v11->_currentActiveRegions = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEA60]);
    currentNormalizedActiveRegions = v11->_currentNormalizedActiveRegions;
    v11->_currentNormalizedActiveRegions = v28;

    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-60.0];
    lastMeCardRegionFetchTime = v11->_lastMeCardRegionFetchTime;
    v11->_lastMeCardRegionFetchTime = v30;

    cachedMeCardRegions = v11->_cachedMeCardRegions;
    v11->_cachedMeCardRegions = v21;

    v33 = MEMORY[0x277CBEAA8];
    [(TIAssetManager *)v11 requestExpirationInterval];
    v35 = [v33 dateWithTimeIntervalSinceNow:-v34];
    v36 = v11->_requestedInputModes;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke;
    v38[3] = &unk_2787320D0;
    v39 = v11;
    [(TIRequestedInputModes *)v36 removeInputModesBeforeDate:v35 handler:v38];
  }

  return v11;
}

void __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  TIDispatchAsync();
}

void __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRequestedInputModes_mainThreadCache:*(a1 + 40)];
  v2 = [*(a1 + 32) activeInputModeLevels];
  v3 = [*(a1 + 32) dispatchQueue];
  v5 = *(a1 + 32);
  v4 = v2;
  TIDispatchAsync();
}

void __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) registerForNotifications];
  [*(a1 + 32) updateAssertionsForInputModes:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke_4;
  v3[3] = &unk_278730EA8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 getActiveRegionsWithCompletion:v3];
}

uint64_t __100__TIAssetManager_initWithRequestedInputModes_inputModePreferenceProvider_enabledInputModesProvider___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _warmAssetQueriesForInputModes:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 scheduleAssetsDidChangeNotificationWithDelay:3.0];
}

+ (int64_t)assetUpdateStatusforDDSAssetUpdateStatus:(int64_t)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if (a3 >= 3)
  {
    v4 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unexpected asset update status: %ld returned from the data delivery service", "+[TIAssetManager assetUpdateStatusforDDSAssetUpdateStatus:]", v3];
      *buf = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)_regionFromAddress:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"City";
  v3 = a3;
  v4 = [v3 city];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  v16[0] = v6;
  v15[1] = @"Province";
  v7 = [v3 state];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v16[1] = v9;
  v15[2] = @"Country";
  v10 = [v3 country];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_283FDFAF8;
  }

  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_addressFromRegion:(id)a3
{
  v3 = MEMORY[0x277CBDB60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectForKeyedSubscript:@"City"];
  [v5 setCity:v6];

  v7 = [v4 objectForKeyedSubscript:@"Province"];
  [v5 setState:v7];

  v8 = [v4 objectForKeyedSubscript:@"Country"];

  [v5 setCountry:v8];

  return v5;
}

+ (id)singletonInstanceWithEnabledInputModesProvider:(id)a3
{
  v3 = a3;
  if (TI_DEVICE_UNLOCKED_SINCE_BOOT())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__TIAssetManager_singletonInstanceWithEnabledInputModesProvider___block_invoke;
    block[3] = &unk_2787338C0;
    v7 = v3;
    if (singletonInstanceWithEnabledInputModesProvider__onceToken != -1)
    {
      dispatch_once(&singletonInstanceWithEnabledInputModesProvider__onceToken, block);
    }

    v4 = singletonInstanceWithEnabledInputModesProvider__singletonInstance;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __65__TIAssetManager_singletonInstanceWithEnabledInputModesProvider___block_invoke(uint64_t a1)
{
  singletonInstanceWithEnabledInputModesProvider__singletonInstance = [[TIAssetManager alloc] initWithRequestedInputModes:0 inputModePreferenceProvider:0 enabledInputModesProvider:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedAssetManagerWithEnabledInputModesProvider:(id)a3
{
  if (__testingInstance_7212)
  {
    v3 = __testingInstance_7212;
  }

  else
  {
    v3 = [TIAssetManager singletonInstanceWithEnabledInputModesProvider:a3];
  }

  return v3;
}

+ (void)setSharedAssetManager:(id)a3
{
  v4 = a3;
  if (__testingInstance_7212 != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance_7212, a3);
    v4 = v5;
  }
}

@end