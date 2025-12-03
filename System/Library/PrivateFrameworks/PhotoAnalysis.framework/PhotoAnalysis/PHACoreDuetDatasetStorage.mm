@interface PHACoreDuetDatasetStorage
- (PHACoreDuetDatasetStorage)init;
- (PHACoreDuetDatasetStorage)initWithKnowledgeStore:(id)store;
- (id)_getEventStreamForDatasetName:(id)name;
- (id)samplesForDataset:(id)dataset subset:(id)subset;
- (void)addSample:(id)sample toDataset:(id)dataset;
@end

@implementation PHACoreDuetDatasetStorage

- (id)_getEventStreamForDatasetName:(id)name
{
  v3 = MEMORY[0x277CFE1B8];
  nameCopy = name;
  v5 = [v3 typeForName:@"PFLDatasetSampleSchemaVersion"];
  v6 = [MEMORY[0x277CFE1E8] eventStreamWithName:nameCopy valueType:v5];

  return v6;
}

- (PHACoreDuetDatasetStorage)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = PHACoreDuetDatasetStorage;
  v6 = [(PHACoreDuetDatasetStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
  }

  return v7;
}

- (id)samplesForDataset:(id)dataset subset:(id)subset
{
  v57[1] = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  subsetCopy = subset;
  v8 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v44 = datasetCopy;
  v9 = [(PHACoreDuetDatasetStorage *)self _getEventStreamForDatasetName:datasetCopy];
  v57[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [v8 setEventStreams:v10];

  v11 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v56 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  [v8 setSortDescriptors:v12];

  if (subsetCopy)
  {
    v13 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:@"_DKPhotosMetadataKey.subset" andStringValue:subsetCopy];
    [v8 setPredicate:v13];
  }

  [v8 setLimit:250];
  knowledgeStore = [(PHACoreDuetDatasetStorage *)self knowledgeStore];
  v50 = 0;
  v15 = [knowledgeStore executeQuery:v8 error:&v50];
  v16 = v50;
  v17 = v16;
  if (v15)
  {
    v40 = v16;
    v41 = knowledgeStore;
    v42 = v8;
    v43 = subsetCopy;
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v15;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (!v19)
    {
      goto LABEL_24;
    }

    v20 = v19;
    v21 = *v47;
    while (1)
    {
      v22 = 0;
      do
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v46 + 1) + 8 * v22);
        metadata = [v23 metadata];
        v25 = [metadata objectForKey:@"_DKPhotosMetadataKey.identifier"];

        metadata2 = [v23 metadata];
        v27 = [metadata2 objectForKey:@"_DKPhotosMetadataKey.subset"];

        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [PHACoreDuetDatasetSample alloc];
            startDate = [v23 startDate];
            v30 = [(PHACoreDuetDatasetSample *)v28 initWithIdentifier:v25 andDate:startDate forSubset:v27];

            [v45 addObject:v30];
            goto LABEL_19;
          }

          if (__PXLog_genericOnceToken != -1)
          {
            dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_27);
          }

          v35 = __PXLog_genericOSLog;
          if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v53 = v44;
            v54 = 2112;
            v55 = v25;
            v32 = v35;
            v33 = "Failed to retrieve item from dataset %@. Sample identifier is not a string: %@.";
            v34 = 22;
            goto LABEL_22;
          }
        }

        else
        {
          if (__PXLog_genericOnceToken != -1)
          {
            dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_23);
          }

          v31 = __PXLog_genericOSLog;
          if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v44;
            v32 = v31;
            v33 = "Failed to retrieve item from dataset %@. Sample identifier is nil.";
            v34 = 12;
LABEL_22:
            _os_log_error_impl(&dword_22FA28000, v32, OS_LOG_TYPE_ERROR, v33, buf, v34);
          }
        }

LABEL_19:

        ++v22;
      }

      while (v20 != v22);
      v36 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v20 = v36;
      if (!v36)
      {
LABEL_24:

        v8 = v42;
        subsetCopy = v43;
        v17 = v40;
        knowledgeStore = v41;
        v15 = v39;
        goto LABEL_30;
      }
    }
  }

  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_19);
  }

  v37 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v53 = v44;
    v54 = 2112;
    v55 = v17;
    _os_log_error_impl(&dword_22FA28000, v37, OS_LOG_TYPE_ERROR, "Failed to query items from dataset %@. Error: %@.", buf, 0x16u);
  }

  v45 = MEMORY[0x277CBEBF8];
LABEL_30:

  return v45;
}

uint64_t __54__PHACoreDuetDatasetStorage_samplesForDataset_subset___block_invoke_25()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__PHACoreDuetDatasetStorage_samplesForDataset_subset___block_invoke_21()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__PHACoreDuetDatasetStorage_samplesForDataset_subset___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)addSample:(id)sample toDataset:(id)dataset
{
  v32[2] = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  sampleCopy = sample;
  v8 = [(PHACoreDuetDatasetStorage *)self _getEventStreamForDatasetName:datasetCopy];
  v9 = MEMORY[0x277CFE1F0];
  v10 = [MEMORY[0x277CFE1B8] typeForName:@"PFLDatasetSampleSchemaVersion"];
  v11 = [v9 identifierWithString:@"PFLDatasetSample-v1.0" type:v10];

  v31[0] = @"_DKPhotosMetadataKey.identifier";
  identifier = [sampleCopy identifier];
  v31[1] = @"_DKPhotosMetadataKey.subset";
  v32[0] = identifier;
  subset = [sampleCopy subset];
  v32[1] = subset;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v15 = MEMORY[0x277CFE1D8];
  date = [sampleCopy date];
  date2 = [sampleCopy date];

  v18 = [v15 eventWithStream:v8 startDate:date endDate:date2 value:v11 metadata:v14];

  knowledgeStore = [(PHACoreDuetDatasetStorage *)self knowledgeStore];
  v30 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v23 = 0;
  LOBYTE(date2) = [knowledgeStore saveObjects:v20 error:&v23];
  v21 = v23;

  if ((date2 & 1) == 0)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_1146);
    }

    v22 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = datasetCopy;
      v26 = 1024;
      v27 = 0;
      v28 = 2112;
      v29 = v21;
      _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "Failed to save sample to dataset %@. OK Value: %d, error: %@.", buf, 0x1Cu);
    }
  }
}

uint64_t __49__PHACoreDuetDatasetStorage_addSample_toDataset___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHACoreDuetDatasetStorage)init
{
  v6.receiver = self;
  v6.super_class = PHACoreDuetDatasetStorage;
  v2 = [(PHACoreDuetDatasetStorage *)&v6 init];
  if (v2)
  {
    knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
    knowledgeStore = v2->_knowledgeStore;
    v2->_knowledgeStore = knowledgeStore;
  }

  return v2;
}

@end