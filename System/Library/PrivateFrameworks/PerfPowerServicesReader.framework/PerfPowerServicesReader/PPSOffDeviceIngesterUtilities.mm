@interface PPSOffDeviceIngesterUtilities
+ (id)allDataSourcesForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category;
+ (id)dataSourceForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category;
+ (id)metricDefinitionForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category metricName:(id)name;
+ (id)metricDefinitionsForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category metricNames:(id)names;
@end

@implementation PPSOffDeviceIngesterUtilities

+ (id)dataSourceForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category
{
  filepathCopy = filepath;
  subsystemCopy = subsystem;
  categoryCopy = category;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_opt_class() metricDefinitionHistoriesForFilepath:filepathCopy subsystem:subsystemCopy category:categoryCopy];
  objectEnumerator = [v11 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  lastObject = [nextObject lastObject];

  categoryCopy = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:lastObject];
  if (!categoryCopy)
  {
    categoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", subsystemCopy, categoryCopy];
  }

  objc_autoreleasePoolPop(v10);

  return categoryCopy;
}

+ (id)allDataSourcesForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category
{
  filepathCopy = filepath;
  subsystemCopy = subsystem;
  categoryCopy = category;
  v10 = objc_opt_new();
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() metricDefinitionHistoriesForFilepath:filepathCopy subsystem:subsystemCopy category:categoryCopy];
  objectEnumerator = [v12 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  lastObject = [nextObject lastObject];

  v16 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:lastObject];
  if (v16)
  {
    categoryCopy = v16;
    v18 = [PPSDataIngesterCommonUtilities allTableNamesForMetadataHistory:v12 withEntryKey:v16];
    if (v18)
    {
      [v10 addObjectsFromArray:v18];
    }
  }

  else
  {
    categoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", subsystemCopy, categoryCopy];
  }

  [v10 addObject:categoryCopy];
  v19 = [v10 sortedArrayUsingComparator:&__block_literal_global_1];

  objc_autoreleasePoolPop(v11);

  return v19;
}

+ (id)metricDefinitionForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category metricName:(id)name
{
  nameCopy = name;
  categoryCopy = category;
  subsystemCopy = subsystem;
  filepathCopy = filepath;
  v13 = [objc_opt_class() metricDefinitionHistoryForFilepath:filepathCopy subsystem:subsystemCopy category:categoryCopy metricName:nameCopy];

  lastObject = [v13 lastObject];

  return lastObject;
}

+ (id)metricDefinitionsForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category metricNames:(id)names
{
  v39 = *MEMORY[0x277D85DE8];
  filepathCopy = filepath;
  subsystemCopy = subsystem;
  categoryCopy = category;
  namesCopy = names;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = namesCopy;
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
          v18 = [self metricDefinitionForFilepath:filepathCopy subsystem:subsystemCopy category:categoryCopy metricName:v16];
          v19 = PPSReaderLog();
          v20 = v19;
          if (v18)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v33 = subsystemCopy;
              v34 = 2112;
              v35 = categoryCopy;
              v36 = 2112;
              v37 = v16;
              _os_log_debug_impl(&dword_25E225000, v20, OS_LOG_TYPE_DEBUG, "Found metric definition for '%@::%@::%@'", buf, 0x20u);
            }

            [dictionary setObject:v18 forKeyedSubscript:v16];
          }

          else
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v33 = subsystemCopy;
              v34 = 2112;
              v35 = categoryCopy;
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

  v21 = [dictionary copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end