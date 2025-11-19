@interface PHAUserAnalyticsBiomeTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithPhotoLibrary:(id)a3 analytics:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (BOOL)shouldRunWithPhotoLibrary:(id)a3;
- (NSString)name;
- (PHAUserAnalyticsBiomeTask)initWithTaskType:(signed __int16)a3;
- (double)period;
- (id)biomeUUIDsFrom:(id)a3 progressReporter:(id)a4;
- (id)deletedAssetUUIDsFromBiomeFrom:(id)a3 biomeUUIDs:(id)a4;
- (id)deletedMemoryUUIDsFromBiomeFrom:(id)a3 biomeUUIDs:(id)a4;
- (id)taskClassDependencies;
- (void)pruneBiomeEventsWithUUIDs:(id)a3;
- (void)pruneDeletedRecordsFromBiomeFrom:(id)a3 progressReporter:(id)a4;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAUserAnalyticsBiomeTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAUserAnalyticsBiomeTask timeoutFatal:]", "PHAUserAnalyticsBiomeTask.m", 266, "NO");
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "PHAUserAnalyticsBiomeTask is stuck", v4, 2u);
  }
}

- (BOOL)runWithPhotoLibrary:(id)a3 analytics:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = self->_loggingConnection;
  v12 = os_signpost_id_generate(v11);
  info = 0;
  mach_timebase_info(&info);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UserAnalyticsBiomeTask", "", buf, 2u);
  }

  v15 = mach_absolute_time();
  v16 = v10;
  v17 = v16;
  v18 = v16;
  if (self->_taskType == 1)
  {
    v18 = [v16 childProgressReporterForStep:0 outOf:3];
  }

  [(PHAUserAnalyticsBiomeTask *)self pruneDeletedRecordsFromBiomeFrom:v9 progressReporter:v18];
  if (self->_taskType == 1)
  {
    v19 = [v17 childProgressReporterForStep:2 outOf:3];
    v20 = [[PHAPhotoStyle alloc] initWithphotoLibrary:v9];
    v21 = [(PHAPhotoStyle *)v20 updateStyleStreamWithProgressReporter:v19 error:a6];
  }

  else
  {
    v21 = 1;
  }

  v22 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v25 = v14;
  v26 = v25;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v26, OS_SIGNPOST_INTERVAL_END, v12, "UserAnalyticsBiomeTask", "", buf, 2u);
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "UserAnalyticsBiomeTask";
    v31 = 2048;
    v32 = ((((v22 - v15) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v21;
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 workingContext];
  v11 = [v10 photoLibrary];
  v12 = [v9 analytics];

  LOBYTE(a5) = [(PHAUserAnalyticsBiomeTask *)self runWithPhotoLibrary:v11 analytics:v12 progressReporter:v8 error:a5];
  return a5;
}

- (id)deletedMemoryUUIDsFromBiomeFrom:(id)a3 biomeUUIDs:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:v6];
    v8 = [v5 librarySpecificFetchOptions];
    v18[0] = *MEMORY[0x277CD9C40];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v8 setFetchPropertySets:v9];

    [v8 setIncludeStoryMemories:1];
    v10 = [MEMORY[0x277CD98D8] localIdentifiersWithUUIDs:v7];
    if ([v10 count])
    {
      v11 = MEMORY[0x277CD97B8];
      v12 = [v10 allObjects];
      v13 = [v11 fetchAssetCollectionsWithType:4 localIdentifiers:v12 options:v8];

      if ([v13 count])
      {
        v14 = 0;
        do
        {
          v15 = [v13 objectAtIndexedSubscript:v14];
          v16 = [v15 uuid];
          [v7 removeObject:v16];

          ++v14;
        }

        while (v14 < [v13 count]);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

- (id)deletedAssetUUIDsFromBiomeFrom:(id)a3 biomeUUIDs:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:v6];
    v8 = [v5 librarySpecificFetchOptions];
    v17[0] = *MEMORY[0x277CD9AA8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 setFetchPropertySets:v9];

    [v8 setIncludeHiddenAssets:0];
    v10 = MEMORY[0x277CD97A8];
    v11 = [v6 allObjects];
    v12 = [v10 fetchAssetsWithUUIDs:v11 options:v8];

    if ([v12 count])
    {
      v13 = 0;
      do
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        v15 = [v14 uuid];
        [v7 removeObject:v15];

        ++v13;
      }

      while (v13 < [v12 count]);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

- (id)biomeUUIDsFrom:(id)a3 progressReporter:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v5;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v13 = v10;
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v22 + 1) + 8 * i) intValue];
          v21 = v10;
          v15 = [PHABiomeUtilities readUUIDsWithStream:v14 progressReporter:v6 error:&v21];
          v10 = v21;

          if (v15)
          {
            [v20 unionSet:v15];
          }

          else
          {
            loggingConnection = self->_loggingConnection;
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v10;
              _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Reading from Biome Failed with error: %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);

      v5 = v18;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
  }

  return v20;
}

- (void)pruneDeletedRecordsFromBiomeFrom:(id)a3 progressReporter:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "Biome deletion task starting", &v24, 2u);
  }

  v9 = +[PHABiomeUtilities availableAssetBiomeStreams];
  v10 = +[PHABiomeUtilities availableSessionBiomeStreams];
  v11 = [v9 arrayByAddingObjectsFromArray:v10];

  if ([v11 count])
  {
    v12 = [(PHAUserAnalyticsBiomeTask *)self biomeUUIDsFrom:v11 progressReporter:v7];
    if ([v12 count])
    {
      v13 = [(PHAUserAnalyticsBiomeTask *)self deletedAssetUUIDsFromBiomeFrom:v6 biomeUUIDs:v12];
      v14 = [v13 count];
      if (v14)
      {
        v15 = v14;
        [(PHAUserAnalyticsBiomeTask *)self pruneBiomeEventsWithUUIDs:v13];
        v16 = self->_loggingConnection;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v24 = 134217984;
          v25 = v15;
          _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_INFO, "Biome deletion task deleted events for %lu memories).", &v24, 0xCu);
        }
      }
    }
  }

  v17 = +[PHABiomeUtilities availableMemoryBiomeStreams];
  if ([v17 count])
  {
    v18 = [(PHAUserAnalyticsBiomeTask *)self biomeUUIDsFrom:v17 progressReporter:v7];
    if ([v18 count])
    {
      v19 = [(PHAUserAnalyticsBiomeTask *)self deletedMemoryUUIDsFromBiomeFrom:v6 biomeUUIDs:v18];
      v20 = [v19 count];
      if (v20)
      {
        v21 = v20;
        [(PHAUserAnalyticsBiomeTask *)self pruneBiomeEventsWithUUIDs:v19];
        v22 = self->_loggingConnection;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = 134217984;
          v25 = v21;
          _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_INFO, "Biome deletion task deleted events for %lu assets).", &v24, 0xCu);
        }
      }
    }
  }

  v23 = self->_loggingConnection;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_22FA28000, v23, OS_LOG_TYPE_INFO, "Biome deletion task completed.", &v24, 2u);
  }
}

- (void)pruneBiomeEventsWithUUIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PHABiomeUtilities availableAssetBiomeLibraryStream];
  v5 = +[PHABiomeUtilities availableMemoryBiomeLibraryStream];
  v6 = +[PHABiomeUtilities availableSessionBiomeLibraryStream];
  v7 = [v4 arrayByAddingObjectsFromArray:v5];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 pruner];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__PHAUserAnalyticsBiomeTask_pruneBiomeEventsWithUUIDs___block_invoke;
        v16[3] = &unk_2788B31E8;
        v16[4] = v13;
        v17 = v3;
        [v14 deleteWithPolicy:@"deleted-or-hidden-asset" eventsPassingTest:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

uint64_t __55__PHAUserAnalyticsBiomeTask_pruneBiomeEventsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) identifier];
  v5 = BiomeLibrary();
  v6 = [v5 AeroML];
  v7 = [v6 RawEvent];
  v8 = [v7 PhotosSearchSession];
  v9 = [v8 identifier];

  if (v4 == v9)
  {
    v21 = [v3 eventBody];
    v22 = [v21 valueForKey:@"presentedAssets"];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      while (2)
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v31 + 1) + 8 * v27) valueForKey:{@"assetUUID", v31}];
          v29 = [*(a1 + 40) containsObject:v28];

          if (v29)
          {
            v18 = 1;
            goto LABEL_16;
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_16:
  }

  else
  {
    v10 = [*(a1 + 32) identifier];
    v11 = BiomeLibrary();
    v12 = [v11 Photos];
    v13 = [v12 Memories];
    v14 = [v13 Curation];
    v15 = [v14 identifier];

    if (v10 == v15 && ([v3 eventBody], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "valueForKey:", @"type"), v17 = objc_claimAutoreleasedReturnValue(), v16, LODWORD(v16) = objc_msgSend(v17, "intValue"), v17, v16 == 4))
    {
      v18 = 0;
    }

    else
    {
      v19 = [v3 eventBody];
      v20 = [v19 valueForKey:@"identifier"];

      v18 = [*(a1 + 40) containsObject:v20];
    }
  }

  return v18;
}

- (BOOL)shouldRunWithPhotoLibrary:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 isSystemPhotoLibrary];
  if ((v4 & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = loggingConnection;
      v8 = [(PHAUserAnalyticsBiomeTask *)self name];
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEBUG, "Task is running on a non system photo library: not running %@ job", &v9, 0xCu);
    }
  }

  return v4;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskType == 1 && ![v4 isReady])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 photoLibrary];
    v7 = [(PHAUserAnalyticsBiomeTask *)self shouldRunWithPhotoLibrary:v6];
  }

  return v7;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (double)period
{
  result = dbl_22FCDE4F0[self->_taskType == 1];
  if (!self->_taskType)
  {
    return 86400.0;
  }

  return result;
}

- (NSString)name
{
  v2 = @"PHAUserAnalyticsBiomeUnknown";
  if (self->_taskType == 1)
  {
    v2 = @"PHAUserAnalyticsBiomeWeeklyTask";
  }

  if (self->_taskType)
  {
    return &v2->isa;
  }

  else
  {
    return @"PHAUserAnalyticsBiomeDailyTask";
  }
}

- (PHAUserAnalyticsBiomeTask)initWithTaskType:(signed __int16)a3
{
  v9.receiver = self;
  v9.super_class = PHAUserAnalyticsBiomeTask;
  v4 = [(PHAUserAnalyticsBiomeTask *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_taskType = a3;
    v6 = os_log_create("com.apple.photoanalysisd", "UserAnalyticsBiomeTask");
    loggingConnection = v5->_loggingConnection;
    v5->_loggingConnection = v6;
  }

  return v5;
}

@end