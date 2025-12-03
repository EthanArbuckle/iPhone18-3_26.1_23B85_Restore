@interface PXAnalyticsFeatureUsageCountDestination
- (PHPhotoLibrary)photoLibrary;
- (void)processEvent:(id)event;
- (void)setPhotoLibrary:(id)library;
@end

@implementation PXAnalyticsFeatureUsageCountDestination

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)processEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  photoLibrary = [(PXAnalyticsFeatureUsageCountDestination *)self photoLibrary];

  if (photoLibrary)
  {
    name = [eventCopy name];
    v7 = [name isEqualToString:*MEMORY[0x1E6991C90]];

    if (v7)
    {
      copyRawPayload = [eventCopy copyRawPayload];
      if ([copyRawPayload count])
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(copyRawPayload, "count")}];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = copyRawPayload;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * i);
              v16 = [v10 objectForKeyedSubscript:{v15, v19}];
              [v9 setObject:v16 forKeyedSubscript:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v12);
        }

        photoLibrary2 = [(PXAnalyticsFeatureUsageCountDestination *)self photoLibrary];
        photoAnalysisClient = [photoLibrary2 photoAnalysisClient];
        [photoAnalysisClient recordFeatureUsageFromCounts:v9 reply:&__block_literal_global_107210];
      }
    }
  }
}

void __56__PXAnalyticsFeatureUsageCountDestination_processEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "PXAnalyticsFeatureUsageCountDestination - recordFeatureUsageCounts completed";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "PXAnalyticsFeatureUsageCountDestination - recordFeatureUsageCounts failed. Error: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

- (void)setPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

    if (WeakRetained)
    {
      PXAssertGetLog();
    }
  }

  objc_storeWeak(&self->_photoLibrary, libraryCopy);
}

@end