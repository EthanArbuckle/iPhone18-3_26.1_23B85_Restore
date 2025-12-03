@interface PLFrequentLocationManager
- (BOOL)frequentLocationsDidChangeFromUpdateWithMoments:(id)moments;
- (PLFrequentLocationManager)initWithMomentGenerationDataManager:(id)manager;
- (PLMomentGenerationDataManagement)momentGenerationDataManager;
- (id)_createFrequentLocationsWithMoments:(id)moments;
@end

@implementation PLFrequentLocationManager

- (PLMomentGenerationDataManagement)momentGenerationDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);

  return WeakRetained;
}

- (id)_createFrequentLocationsWithMoments:(id)moments
{
  v31 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  v5 = PLMomentGenerationGetLog();
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CreateFrequentLocations", "", buf, 2u);
  }

  v9 = mach_absolute_time();
  v10 = [MEMORY[0x1E695DFD8] setWithArray:momentsCopy];
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  locationsOfInterest = [WeakRetained locationsOfInterest];
  v13 = [PLFrequentLocationProcessor processFrequentLocationsWithItems:v10 locationsOfInterest:locationsOfInterest progressBlock:0];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v8;
  v18 = v17;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = [momentsCopy count];
    *buf = 134217984;
    v26 = v19;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v6, "CreateFrequentLocations", "[FrequentLocationGeneration] Creating Frequent Locations for %lu moments", buf, 0xCu);
  }

  v20 = v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = (((v14 - v9) * numer) / denom) / 1000000.0;
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[FrequentLocationGeneration] Creating Frequent Locations for %lu moments", objc_msgSend(momentsCopy, "count")];
    *buf = 136315650;
    v26 = "CreateFrequentLocations";
    v27 = 2112;
    v28 = v22;
    v29 = 2048;
    v30 = v21;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  return v13;
}

- (BOOL)frequentLocationsDidChangeFromUpdateWithMoments:(id)moments
{
  v37 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  currentFrequentLocations = [(PLFrequentLocationManager *)self currentFrequentLocations];
  if ([currentFrequentLocations count])
  {
    invalidateCurrentFrequentLocations = self->_invalidateCurrentFrequentLocations;

    if (!invalidateCurrentFrequentLocations)
    {
      v7 = 0;
      goto LABEL_28;
    }
  }

  else
  {
  }

  currentFrequentLocations2 = [(PLFrequentLocationManager *)self currentFrequentLocations];
  v9 = [currentFrequentLocations2 copy];

  v10 = [(PLFrequentLocationManager *)self _createFrequentLocationsWithMoments:momentsCopy];
  [(PLFrequentLocationManager *)self setCurrentFrequentLocations:v10];

  self->_invalidateCurrentFrequentLocations = 0;
  v11 = [v9 count];
  currentFrequentLocations3 = [(PLFrequentLocationManager *)self currentFrequentLocations];
  v13 = [currentFrequentLocations3 count];

  if (v11 == v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    currentFrequentLocations4 = [(PLFrequentLocationManager *)self currentFrequentLocations];
    v15 = [currentFrequentLocations4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      v26 = momentsCopy;
      while (1)
      {
        v18 = 0;
LABEL_9:
        if (*v32 != v17)
        {
          objc_enumerationMutation(currentFrequentLocations4);
        }

        v19 = *(*(&v31 + 1) + 8 * v18);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v9;
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (!v21)
        {
          break;
        }

        v22 = v21;
        v23 = *v28;
LABEL_13:
        v24 = 0;
        while (1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if ([*(*(&v27 + 1) + 8 * v24) isSimilarToFrequentLocation:v19])
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v22)
            {
              goto LABEL_13;
            }

            goto LABEL_24;
          }
        }

        if (++v18 != v16)
        {
          goto LABEL_9;
        }

        v16 = [currentFrequentLocations4 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v7 = 0;
        momentsCopy = v26;
        if (!v16)
        {
          goto LABEL_26;
        }
      }

LABEL_24:

      v7 = 1;
      momentsCopy = v26;
    }

    else
    {
      v7 = 0;
    }

LABEL_26:
  }

  else
  {
    v7 = 1;
  }

LABEL_28:
  return v7;
}

- (PLFrequentLocationManager)initWithMomentGenerationDataManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PLFrequentLocationManager;
  v5 = [(PLFrequentLocationManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_invalidateCurrentFrequentLocations = 0;
    objc_storeWeak(&v5->_momentGenerationDataManager, managerCopy);
    v7 = [MEMORY[0x1E695DFD8] set];
    [(PLFrequentLocationManager *)v6 setCurrentFrequentLocations:v7];
  }

  return v6;
}

@end