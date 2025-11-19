@interface PGSharedLibraryAssetPropertiesMetricEvent
- (NSArray)payloads;
- (NSString)description;
- (void)gatherMetricsWithProgressBlock:(id)a3;
@end

@implementation PGSharedLibraryAssetPropertiesMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(PGSharedLibraryAssetPropertiesMetricEvent *)self identifier];
  v8 = [(PGSharedLibraryAssetPropertiesMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, v7, v8];

  return v9;
}

- (void)gatherMetricsWithProgressBlock:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(a3);
  v5 = 0.0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v25 = 0;
      v4[2](v4, &v25, 0.0);
      if (v25 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v30 = 62;
          v31 = 2080;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v5 = Current;
    }
  }

  v7 = [(NSDictionary *)self->_resultsByAssetIdentifier allKeys];
  v8 = [v7 mutableCopy];

  if ([v8 count])
  {
    [v8 pha_shuffle];
    v18 = v8;
    v19 = v4;
    if ([v8 count] <= 0x64)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v8 subarrayWithRange:{0, 100}];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v26 = @"result";
          v15 = [(NSDictionary *)self->_resultsByAssetIdentifier objectForKeyedSubscript:v14];
          v27 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          [(NSMutableDictionary *)self->_payloadByAssetIdentifier setObject:v16 forKeyedSubscript:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v11);
    }

    v8 = v18;
    v4 = v19;
    if (v19)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v25 = 0;
        v19[2](v19, &v25, 1.0);
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v30 = 79;
            v31 = 2080;
            v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }
  }

  else if (v4)
  {
    if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
    {
      v25 = 0;
      v4[2](v4, &v25, 1.0);
      if (v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v30 = 66;
          v31 = 2080;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
}

- (NSArray)payloads
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_payloadByAssetIdentifier count])
  {
    v3 = [(NSMutableDictionary *)self->_payloadByAssetIdentifier allKeys];
    v4 = [v3 mutableCopy];

    v5 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v22 = v6;
    v23 = v4;
    v7 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v4 options:v6];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = self;
    v29.receiver = self;
    v29.super_class = PGSharedLibraryAssetPropertiesMetricEvent;
    v10 = [(PGPhotosChallengeMetricEvent *)&v29 payload];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v10 mutableCopy];
          payloadByAssetIdentifier = v9->_payloadByAssetIdentifier;
          v18 = [v15 uuid];
          v19 = [(NSMutableDictionary *)payloadByAssetIdentifier objectForKeyedSubscript:v18];
          [v16 addEntriesFromDictionary:v19];

          [v16 setObject:v15 forKeyedSubscript:@"assets"];
          [v8 addObject:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

@end