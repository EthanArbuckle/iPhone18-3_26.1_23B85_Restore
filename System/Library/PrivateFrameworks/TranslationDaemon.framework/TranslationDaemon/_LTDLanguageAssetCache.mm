@interface _LTDLanguageAssetCache
+ (id)_normalizeAndSortUpdatesFromObservations:(id)observations toObservations:(id)toObservations;
+ (id)shared;
- (BOOL)applyProgressUpdateForAsset:(id)asset;
- (BOOL)isReadyForFilter:(unint64_t)filter;
- (_LTDLanguageAssetCache)init;
- (_LTObservationFilteringConditions)observationFilterConditions;
- (id)_availableIdentifiers;
- (id)_readAllAssets;
- (id)assetForIdentifier:(id)identifier;
- (id)assetsFilteredUsing:(unint64_t)using;
- (id)preheatWithLanguages:(id)languages;
- (void)addObserver:(id)observer;
- (void)applyAssetUpdates:(id)updates;
- (void)markReadyForFilter:(unint64_t)filter;
- (void)multicastObservers;
- (void)notify:(id)notify ofObservations:(id)observations;
- (void)removeObserverForID:(id)d;
- (void)reset;
- (void)setInitialObservationsForIdentifiers:(id)identifiers;
- (void)setRequiredAssets:(id)assets localeRanks:(id)ranks;
@end

@implementation _LTDLanguageAssetCache

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[_LTDLanguageAssetCache shared];
  }

  v3 = shared__cache;

  return v3;
}

- (id)_readAllAssets
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_cache allValues];
  v4 = [allValues copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (_LTObservationFilteringConditions)observationFilterConditions
{
  WeakRetained = objc_loadWeakRetained(&self->_observationFilterConditions);

  return WeakRetained;
}

- (_LTDLanguageAssetCache)init
{
  v11.receiver = self;
  v11.super_class = _LTDLanguageAssetCache;
  v2 = [(_LTDLanguageAssetCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_opt_new();
    requiredAssetIdentifiers = v2->_requiredAssetIdentifiers;
    v2->_requiredAssetIdentifiers = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_readyFilterSet = 0;
    objc_storeWeak(&v2->_observationFilterConditions, v2);
    v7 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = v2;
  }

  return v2;
}

- (id)_availableIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_cache allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)markReadyForFilter:(unint64_t)filter
{
  os_unfair_lock_lock(&self->_lock);
  v5 = __ROR8__(filter, 4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = self->_readyFilterSet | 0x20;
      goto LABEL_11;
    }

    if (v5 == 4)
    {
      v6 = self->_readyFilterSet | 0x40;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    if (v5 == 1)
    {
      v6 = self->_readyFilterSet | 0x10;
LABEL_11:
      self->_readyFilterSet = v6;
      goto LABEL_12;
    }
  }

  v7 = _LTOSLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_LTDLanguageAssetCache *)filter markReadyForFilter:v7];
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self multicastObservers];
}

- (BOOL)isReadyForFilter:(unint64_t)filter
{
  os_unfair_lock_lock(&self->_lock);
  readyFilterSet = self->_readyFilterSet;
  os_unfair_lock_unlock(&self->_lock);
  return (filter & ~readyFilterSet) == 0;
}

- (id)preheatWithLanguages:(id)languages
{
  v65 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v43 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(languagesCopy, "count")}];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(languagesCopy, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = languagesCopy;
  v6 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v60;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        locale = [v10 locale];
        [v4 addObject:locale];

        ltIdentifier = [v10 ltIdentifier];
        [v5 addObject:ltIdentifier];
      }

      v7 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v7);
  }

  [_LTDLanguageAssetService setSelectedLocales:v4];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(_LTDLanguageAssetCache *)v5 preheatWithLanguages:v13];
  }

  v14 = MEMORY[0x277CBEB58];
  selfCopy2 = self;
  _availableIdentifiers = [(_LTDLanguageAssetCache *)self _availableIdentifiers];
  v17 = [v14 setWithArray:_availableIdentifiers];

  [v17 unionSet:v43];
  [v17 unionSet:v5];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v19)
  {
    v20 = v19;
    v50 = *v56;
    v44 = v5;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v55 + 1) + 8 * j);
        v23 = [(_LTDLanguageAssetCache *)selfCopy2 assetForIdentifier:v22];
        if (![v5 containsObject:v22])
        {
          progress = [v23 progress];
          [progress removeAllComponents];

          progress2 = [v23 progress];
          [progress2 setOfflineState:0];
LABEL_42:

          goto LABEL_43;
        }

        if ([v4 count] == 1)
        {
          if ([v22 isEqualToString:@"hi_IN"])
          {
            goto LABEL_43;
          }

          progress3 = [v23 progress];
          [progress3 setComponentFilter:@"ASR"];
        }

        else
        {
          if ([v22 isEqualToString:@"uk_UA"])
          {
            v27 = _LTOSLogAssets();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [(_LTDLanguageAssetCache *)&v53 preheatWithLanguages:v54];
            }

            progress3 = [v23 progress];
            if ([progress3 isFinished])
            {
              v28 = @"ASR";
            }

            else
            {
              v28 = @"ASR|MT";
            }
          }

          else
          {
            if ([v22 isEqualToString:@"hi_IN"])
            {
              v29 = _LTOSLogAssets();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                [(_LTDLanguageAssetCache *)&v51 preheatWithLanguages:v52];
              }

              progress3 = [v23 progress];
              v30 = [progress3 isFinished] == 0;
              v31 = @"PB|MT";
              v32 = @"PB";
            }

            else
            {
              progress3 = [v23 progress];
              v30 = [progress3 isFinished] == 0;
              v31 = @"ASR|PB|MT";
              v32 = @"ASR|PB";
            }

            if (v30)
            {
              v28 = v31;
            }

            else
            {
              v28 = v32;
            }
          }

          progress4 = [v23 progress];
          [progress4 setComponentFilter:v28];
        }

        if (+[_LTDAssetService _awaitDownloadOfTTSAssets])
        {
          v34 = v20;
          v35 = v4;
          v36 = v18;
          progress2 = [v23 progress];
          componentFilter = [progress2 componentFilter];
          v38 = [componentFilter length];
          if (v38)
          {
            progress5 = [v23 progress];
            componentFilter2 = [progress5 componentFilter];
            v39 = [componentFilter2 stringByAppendingString:@"|TTS"];
            v46 = v39;
          }

          else
          {
            v39 = @"TTS";
          }

          progress6 = [v23 progress];
          [progress6 setComponentFilter:v39];

          if (v38)
          {
          }

          v18 = v36;
          v4 = v35;
          v20 = v34;
          v5 = v44;
          selfCopy2 = self;
          goto LABEL_42;
        }

LABEL_43:
      }

      v20 = [v18 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v20);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)applyAssetUpdates:(id)updates
{
  v33 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v21 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = updatesCopy;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = MEMORY[0x277CBEB58];
        localeIdentifiers = [v6 localeIdentifiers];
        v9 = [v7 setWithArray:localeIdentifiers];

        [v9 intersectSet:v21];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [(_LTDLanguageAssetCache *)self assetForIdentifier:*(*(&v23 + 1) + 8 * j)];
              progress = [v15 progress];
              progress2 = [v6 progress];
              [progress addComponent:progress2];
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  [(_LTDLanguageAssetCache *)self multicastObservers];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)setRequiredAssets:(id)assets localeRanks:(id)ranks
{
  ranksCopy = ranks;
  assetsCopy = assets;
  v11 = [assetsCopy _ltCompactMap:&__block_literal_global_36];
  os_unfair_lock_lock(&self->_lock);
  v8 = [MEMORY[0x277CBEB98] setWithArray:v11];
  requiredAssetIdentifiers = self->_requiredAssetIdentifiers;
  self->_requiredAssetIdentifiers = v8;

  localeRanks = self->_localeRanks;
  self->_localeRanks = ranksCopy;

  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self applyAssetUpdates:assetsCopy];
}

- (BOOL)applyProgressUpdateForAsset:(id)asset
{
  v49 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  os_unfair_lock_lock(&self->_lock);
  requiredAssetIdentifiers = self->_requiredAssetIdentifiers;
  identifier = [assetCopy identifier];
  v7 = [(NSSet *)requiredAssetIdentifiers containsObject:identifier];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    shouldPurgeWithLocale = 0;
  }

  else
  {
    shouldPurgeWithLocale = [assetCopy shouldPurgeWithLocale];
  }

  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v26 = v9;
    identifier2 = [assetCopy identifier];
    progress = [assetCopy progress];
    [progress fractionCompleted];
    *buf = 138544130;
    v42 = identifier2;
    v43 = 2048;
    v44 = v29;
    v45 = 1024;
    v46 = v7;
    v47 = 1024;
    v48 = shouldPurgeWithLocale;
    _os_log_debug_impl(&dword_232E53000, v26, OS_LOG_TYPE_DEBUG, "Cache progress update: %{public}@ [%f] required: %{BOOL}i cancelled: %{BOOL}i", buf, 0x22u);

    if (!shouldPurgeWithLocale)
    {
      goto LABEL_22;
    }
  }

  else if (!shouldPurgeWithLocale)
  {
    goto LABEL_22;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  components = [assetCopy components];
  v11 = [components countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(components);
        }

        progress2 = [*(*(&v34 + 1) + 8 * v14) progress];
        [progress2 cancel];

        ++v14;
      }

      while (v12 != v14);
      v12 = [components countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v12);
  }

  if ([assetCopy isMultiLocaleAsset])
  {
    _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = [_readAllAssets countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        v20 = 0;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(_readAllAssets);
          }

          progress3 = [*(*(&v30 + 1) + 8 * v20) progress];
          progress4 = [assetCopy progress];
          [progress3 removeComponent:progress4];

          ++v20;
        }

        while (v18 != v20);
        v18 = [_readAllAssets countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v18);
    }
  }

LABEL_22:
  if (v7)
  {
    v38 = assetCopy;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [(_LTDLanguageAssetCache *)self applyAssetUpdates:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
  return shouldPurgeWithLocale ^ 1;
}

- (id)assetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifierCopy];
    v5 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v6 state:3];
    cache = self->_cache;
    ltIdentifier = [v5 ltIdentifier];
    [(NSMutableDictionary *)cache setObject:v5 forKeyedSubscript:ltIdentifier];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)assetsFilteredUsing:(unint64_t)using
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(_LTDLanguageAssetCache *)self isReadyForFilter:?])
  {
    v8 = 0;
    goto LABEL_26;
  }

  _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
  v6 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v7 = v6;
  v8 = 0;
  v9 = __ROR8__(using, 4);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = _readAllAssets;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v11)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = *v23;
        while (1)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            ltIdentifier = [v15 ltIdentifier];
            if (([v7 containsObject:ltIdentifier] & 1) == 0)
            {
              state = [v15 state];

              if (!state)
              {
                continue;
              }

              ltIdentifier = [v15 progress];
              [ltIdentifier setOfflineState:0];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (!v12)
          {
LABEL_16:

            v18 = v10;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      v18 = _readAllAssets;
LABEL_22:
      v8 = v18;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke_2;
    v26[3] = &unk_2789B6108;
    v27 = v6;
    v8 = [_readAllAssets lt_filterUsingBlock:v26];
    v19 = v27;
    goto LABEL_24;
  }

  if (v9 == 4)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke;
    v28[3] = &unk_2789B6108;
    v29 = v6;
    v8 = [_readAllAssets lt_filterUsingBlock:v28];
    v19 = v29;
LABEL_24:
  }

LABEL_25:

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  self->_readyFilterSet = 0;
  [(NSMutableDictionary *)self->_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  observerId = [observerCopy observerId];
  [(NSMutableDictionary *)observers setObject:observerCopy forKeyedSubscript:observerId];

  isIndeterminate = [observerCopy isIndeterminate];
  v8 = 24;
  if (isIndeterminate)
  {
    v8 = 32;
  }

  v9 = [*(&self->super.isa + v8) copy];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [v9 count];
  v11 = _LTOSLogAssets();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Using lastObservations", buf, 2u);
    }

    [(_LTDLanguageAssetCache *)self notify:observerCopy ofObservations:v9];
  }

  else if (v12)
  {
    *v13 = 0;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "There are no lastObservations", v13, 2u);
  }
}

- (void)removeObserverForID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_observers setObject:0 forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = v7;
  if (v7)
  {
    completion = [v7 completion];
    completion[2](completion, 0);

    v5 = v7;
  }
}

+ (id)_normalizeAndSortUpdatesFromObservations:(id)observations toObservations:(id)toObservations
{
  v42 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  toObservationsCopy = toObservations;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(toObservationsCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = toObservationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        locale = [v13 locale];
        _ltLocaleIdentifier = [locale _ltLocaleIdentifier];
        [v7 setObject:v13 forKeyedSubscript:_ltLocaleIdentifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = observationsCopy;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        locale2 = [v21 locale];
        _ltLocaleIdentifier2 = [locale2 _ltLocaleIdentifier];

        v24 = [v7 objectForKeyedSubscript:_ltLocaleIdentifier2];
        if ([v21 status] != 1 || objc_msgSend(v24, "status") != 1 || (objc_msgSend(v21, "progress"), v26 = v25, objc_msgSend(v24, "progress"), v26 <= v27))
        {
          if (v24)
          {
            v21 = v24;
          }
        }

        [v7 setObject:v21 forKeyedSubscript:_ltLocaleIdentifier2];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  allValues = [v7 allValues];
  v29 = [allValues sortedArrayUsingSelector:sel_compare_];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)multicastObservers
{
  v48 = *MEMORY[0x277D85DE8];
  if ([(_LTDLanguageAssetCache *)self _isReadyForObservers])
  {
    _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
    if ([_readAllAssets count])
    {
      os_unfair_lock_lock(&self->_lock);
      v4 = [(NSDictionary *)self->_localeRanks copy];
      os_unfair_lock_unlock(&self->_lock);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __44___LTDLanguageAssetCache_multicastObservers__block_invoke;
      v43[3] = &unk_2789B6130;
      v5 = v4;
      v44 = v5;
      v6 = [_readAllAssets _ltCompactMap:v43];
      os_unfair_lock_lock(&self->_lock);
      v7 = [objc_opt_class() _normalizeAndSortUpdatesFromObservations:self->_lastObservationsSorted toObservations:v6];
      if ([v7 isEqualToArray:self->_lastObservationsSorted])
      {
        os_unfair_lock_unlock(&self->_lock);
        v8 = _LTOSLogAssets();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(_LTDLanguageAssetCache *)v8 multicastObservers];
        }
      }

      else
      {
        v33 = v6;
        v34 = v5;
        v35 = _readAllAssets;
        allValues = [(NSMutableDictionary *)self->_observers allValues];
        v12 = [v7 copy];
        lastObservationsSorted = self->_lastObservationsSorted;
        self->_lastObservationsSorted = v12;

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __44___LTDLanguageAssetCache_multicastObservers__block_invoke_2;
        v42[3] = &unk_2789B6158;
        v42[4] = self;
        v36 = [v7 _ltCompactMap:v42];
        v14 = [v36 isEqualToArray:self->_lastIndeterminateObservationsSorted];
        if ((v14 & 1) == 0)
        {
          v15 = [v36 copy];
          lastIndeterminateObservationsSorted = self->_lastIndeterminateObservationsSorted;
          self->_lastIndeterminateObservationsSorted = v15;
        }

        selfCopy = self;
        os_unfair_lock_unlock(&self->_lock);
        v18 = _LTOSLogAssets();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = MEMORY[0x277CE1B28];
          v20 = v18;
          v21 = [v19 describeObservations:v7];
          *buf = 138412290;
          v47 = v21;
          _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "Obsv xpcmsg [%@]", buf, 0xCu);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = allValues;
        v23 = [v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v39;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v38 + 1) + 8 * i);
              v28 = v14 & [v27 isIndeterminate];
              v29 = _LTOSLogAssets();
              v30 = v29;
              if (v28 == 1)
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  [(_LTDLanguageAssetCache *)buf multicastObservers];
                }
              }

              else
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *v37 = 0;
                  _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Sending observer multicast", v37, 2u);
                }

                if ([v27 isIndeterminate])
                {
                  v31 = v36;
                }

                else
                {
                  v31 = v7;
                }

                [(_LTDLanguageAssetCache *)selfCopy notify:v27 ofObservations:v31];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
          }

          while (v24);
        }

        v5 = v34;
        _readAllAssets = v35;
        v6 = v33;
      }
    }

    else
    {
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_LTDLanguageAssetCache *)v10 multicastObservers];
      }
    }
  }

  else
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Skipping observer multicast due to not ready", buf, 2u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)notify:(id)notify ofObservations:(id)observations
{
  notifyCopy = notify;
  observationsCopy = observations;
  observationFilterConditions = [(_LTDLanguageAssetCache *)self observationFilterConditions];
  v9 = [observationFilterConditions supportedLocalesSubsetForTask:{objc_msgSend(notifyCopy, "taskHint")}];

  v10 = observationsCopy;
  v11 = v10;
  if ([v9 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48___LTDLanguageAssetCache_notify_ofObservations___block_invoke;
    v13[3] = &unk_2789B6180;
    v14 = v9;
    v11 = [v10 lt_filterUsingBlock:v13];
  }

  observations = [notifyCopy observations];
  (observations)[2](observations, v11);
}

- (void)setInitialObservationsForIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v10, v16];
        if (!v11)
        {
          v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];
          v11 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v12 state:3];
          cache = self->_cache;
          ltIdentifier = [v11 ltIdentifier];
          [(NSMutableDictionary *)cache setObject:v11 forKeyedSubscript:ltIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self markReadyForFilter:16];
  [(_LTDLanguageAssetCache *)self markReadyForFilter:32];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)markReadyForFilter:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Invalid mark ready filter: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)preheatWithLanguages:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Cache update new identifiers: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end