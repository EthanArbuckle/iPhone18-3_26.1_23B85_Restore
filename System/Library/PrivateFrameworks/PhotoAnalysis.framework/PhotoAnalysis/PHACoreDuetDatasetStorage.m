@interface PHACoreDuetDatasetStorage
- (PHACoreDuetDatasetStorage)init;
- (PHACoreDuetDatasetStorage)initWithKnowledgeStore:(id)a3;
- (id)_getEventStreamForDatasetName:(id)a3;
- (id)samplesForDataset:(id)a3 subset:(id)a4;
- (void)addSample:(id)a3 toDataset:(id)a4;
@end

@implementation PHACoreDuetDatasetStorage

- (id)_getEventStreamForDatasetName:(id)a3
{
  v3 = MEMORY[0x277CFE1B8];
  v4 = a3;
  v5 = [v3 typeForName:@"PFLDatasetSampleSchemaVersion"];
  v6 = [MEMORY[0x277CFE1E8] eventStreamWithName:v4 valueType:v5];

  return v6;
}

- (PHACoreDuetDatasetStorage)initWithKnowledgeStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHACoreDuetDatasetStorage;
  v6 = [(PHACoreDuetDatasetStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, a3);
  }

  return v7;
}

- (id)samplesForDataset:(id)a3 subset:(id)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v44 = v6;
  v9 = [(PHACoreDuetDatasetStorage *)self _getEventStreamForDatasetName:v6];
  v57[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [v8 setEventStreams:v10];

  v11 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v56 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  [v8 setSortDescriptors:v12];

  if (v7)
  {
    v13 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:@"_DKPhotosMetadataKey.subset" andStringValue:v7];
    [v8 setPredicate:v13];
  }

  [v8 setLimit:250];
  v14 = [(PHACoreDuetDatasetStorage *)self knowledgeStore];
  v50 = 0;
  v15 = [v14 executeQuery:v8 error:&v50];
  v16 = v50;
  v17 = v16;
  if (v15)
  {
    v40 = v16;
    v41 = v14;
    v42 = v8;
    v43 = v7;
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
        v24 = [v23 metadata];
        v25 = [v24 objectForKey:@"_DKPhotosMetadataKey.identifier"];

        v26 = [v23 metadata];
        v27 = [v26 objectForKey:@"_DKPhotosMetadataKey.subset"];

        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [PHACoreDuetDatasetSample alloc];
            v29 = [v23 startDate];
            v30 = [(PHACoreDuetDatasetSample *)v28 initWithIdentifier:v25 andDate:v29 forSubset:v27];

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
        v7 = v43;
        v17 = v40;
        v14 = v41;
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

- (void)addSample:(id)a3 toDataset:(id)a4
{
  v32[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(PHACoreDuetDatasetStorage *)self _getEventStreamForDatasetName:v6];
  v9 = MEMORY[0x277CFE1F0];
  v10 = [MEMORY[0x277CFE1B8] typeForName:@"PFLDatasetSampleSchemaVersion"];
  v11 = [v9 identifierWithString:@"PFLDatasetSample-v1.0" type:v10];

  v31[0] = @"_DKPhotosMetadataKey.identifier";
  v12 = [v7 identifier];
  v31[1] = @"_DKPhotosMetadataKey.subset";
  v32[0] = v12;
  v13 = [v7 subset];
  v32[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v15 = MEMORY[0x277CFE1D8];
  v16 = [v7 date];
  v17 = [v7 date];

  v18 = [v15 eventWithStream:v8 startDate:v16 endDate:v17 value:v11 metadata:v14];

  v19 = [(PHACoreDuetDatasetStorage *)self knowledgeStore];
  v30 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v23 = 0;
  LOBYTE(v17) = [v19 saveObjects:v20 error:&v23];
  v21 = v23;

  if ((v17 & 1) == 0)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_1146);
    }

    v22 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v6;
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
    v3 = [MEMORY[0x277CFE208] knowledgeStore];
    knowledgeStore = v2->_knowledgeStore;
    v2->_knowledgeStore = v3;
  }

  return v2;
}

@end