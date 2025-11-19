@interface PPSOffDeviceIngesterUtilities
+ (id)allDataSourcesForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5;
+ (id)dataSourceForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5;
+ (id)metricDefinitionForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 metricName:(id)a6;
+ (id)metricDefinitionsForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 metricNames:(id)a6;
@end

@implementation PPSOffDeviceIngesterUtilities

+ (id)dataSourceForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_opt_class() metricDefinitionHistoriesForFilepath:v7 subsystem:v8 category:v9];
  v12 = [v11 objectEnumerator];
  v13 = [v12 nextObject];
  v14 = [v13 lastObject];

  v15 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v14];
  if (!v15)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v9];
  }

  objc_autoreleasePoolPop(v10);

  return v15;
}

+ (id)allDataSourcesForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() metricDefinitionHistoriesForFilepath:v7 subsystem:v8 category:v9];
  v13 = [v12 objectEnumerator];
  v14 = [v13 nextObject];
  v15 = [v14 lastObject];

  v16 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v15];
  if (v16)
  {
    v17 = v16;
    v18 = [PPSDataIngesterCommonUtilities allTableNamesForMetadataHistory:v12 withEntryKey:v16];
    if (v18)
    {
      [v10 addObjectsFromArray:v18];
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v9];
  }

  [v10 addObject:v17];
  v19 = [v10 sortedArrayUsingComparator:&__block_literal_global_1];

  objc_autoreleasePoolPop(v11);

  return v19;
}

+ (id)metricDefinitionForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 metricName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() metricDefinitionHistoryForFilepath:v12 subsystem:v11 category:v10 metricName:v9];

  v14 = [v13 lastObject];

  return v14;
}

+ (id)metricDefinitionsForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 metricNames:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v27 = a4;
  v9 = a5;
  v10 = a6;
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        if (([v16 isEqualToString:@"timestamp"] & 1) == 0)
        {
          v18 = [a1 metricDefinitionForFilepath:v26 subsystem:v27 category:v9 metricName:v16];
          v19 = PPSReaderLog();
          v20 = v19;
          if (v18)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v33 = v27;
              v34 = 2112;
              v35 = v9;
              v36 = 2112;
              v37 = v16;
              _os_log_debug_impl(&dword_25E225000, v20, OS_LOG_TYPE_DEBUG, "Found metric definition for '%@::%@::%@'", buf, 0x20u);
            }

            [v24 setObject:v18 forKeyedSubscript:v16];
          }

          else
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v33 = v27;
              v34 = 2112;
              v35 = v9;
              v36 = 2112;
              v37 = v16;
              _os_log_error_impl(&dword_25E225000, v20, OS_LOG_TYPE_ERROR, "No metric definition found for '%@::%@::%@'", buf, 0x20u);
            }
          }
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);
  }

  v21 = [v24 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end