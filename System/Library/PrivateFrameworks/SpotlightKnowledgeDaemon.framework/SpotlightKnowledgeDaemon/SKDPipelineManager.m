@interface SKDPipelineManager
+ (id)sharedManager;
- (SKDPipelineManager)initWithDescriptors:(id)a3 processorCache:(id)a4 logger:(id)a5;
- (id)indexProcessingJobWithProtectionClasses:(id)a3;
- (id)journalProcessingJobs;
@end

@implementation SKDPipelineManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SKDPipelineManager sharedManager];
  }

  v3 = sharedManager_sSharedManager;

  return v3;
}

void __35__SKDPipelineManager_sharedManager__block_invoke()
{
  v7 = +[SKDDefaults sharedDefaults];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 pipelineKeyphrasesEnabled])
  {
    v1 = configureKeyphraseDescriptor(v7);
    [v0 addObject:v1];
  }

  else
  {
    if (![v7 pipelineEnabled])
    {
      goto LABEL_6;
    }

    v1 = getSystemDefinedDescriptors(v7);
    [v0 addObjectsFromArray:v1];
  }

LABEL_6:
  if ([v7 pipelineDebugEnabled])
  {
    v2 = configureMockDescriptor(v7, 1);
    [v0 addObject:v2];
  }

  v3 = [SKDPipelineManager alloc];
  v4 = +[SKDRecordProcessorCache sharedCache];
  v5 = [(SKDPipelineManager *)v3 initWithDescriptors:v0 processorCache:v4 logger:0];
  v6 = sharedManager_sSharedManager;
  sharedManager_sSharedManager = v5;
}

- (id)journalProcessingJobs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(SKDPipelineManager *)self pipelines];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        v10 = [v8 descriptor];
        v11 = [v10 name];
        v12 = [v9 stringWithFormat:@"journal-%@", v11];

        v13 = [SKDJournalProcessingJob alloc];
        v14 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
        v15 = [(SKDJournalProcessingJob *)v13 initWithName:v12 version:&unk_2846E7A88 pipelines:v14];

        if (self->_logger)
        {
          [(SKDBaseJob *)v15 setLogger:?];
        }

        [v3 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)indexProcessingJobWithProtectionClasses:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = [(SKDPipelineManager *)self pipelines];
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v6)
  {

    v36 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v7 = v6;
  v39 = self;
  v40 = v5;
  v8 = 0;
  v9 = *v54;
  v43 = *v54;
  v41 = v4;
  do
  {
    v10 = 0;
    v44 = v7;
    do
    {
      if (*v54 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v53 + 1) + 8 * v10);
      v12 = [v11 descriptor];
      if (![v12 enabled])
      {

        goto LABEL_41;
      }

      v13 = [v11 canRun];

      if ((v13 & 1) == 0)
      {
        goto LABEL_41;
      }

      v14 = [v11 requiredAttributes];

      if (v14)
      {
        if (indexProcessingJobWithProtectionClasses__onceToken != -1)
        {
          [SKDPipelineManager indexProcessingJobWithProtectionClasses:];
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v15 = [v11 requiredAttributes];
        v16 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v50;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v50 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if (![indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs containsObject:*(*(&v49 + 1) + 8 * i)])
              {

                v9 = v43;
                v7 = v44;
                goto LABEL_22;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_36;
      }

LABEL_22:
      if ([v4 count])
      {
        v42 = v8;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v20 = v4;
        v21 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v46;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v46 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v45 + 1) + 8 * j);
              v26 = [v11 descriptor];
              v27 = [v26 requiredProtectionClasses];

              v28 = [v11 descriptor];
              v29 = v28;
              if (v27)
              {
                v30 = [v28 requiredProtectionClasses];
                v31 = [v30 containsObject:v25];

                if (v31)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v32 = [v28 excludedProtectionClasses];

                if (!v32 || ([v11 descriptor], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "excludedProtectionClasses"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "containsObject:", v25), v34, v33, !v35))
                {
LABEL_37:

                  v4 = v41;
                  v8 = v42;
                  v5 = v40;
                  v9 = v43;
                  v7 = v44;
                  goto LABEL_38;
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v4 = v41;
        v8 = v42;
        v5 = v40;
LABEL_36:
        v9 = v43;
        v7 = v44;
        goto LABEL_41;
      }

LABEL_38:
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v8 addObject:v11];
LABEL_41:
      ++v10;
    }

    while (v10 != v7);
    v7 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
  }

  while (v7);

  if (v8)
  {
    v36 = [(SKDBaseCSQueryProcessingJob *)[SKDIndexProcessingJob alloc] initWithName:@"index" version:&unk_2846E7A88 pipelines:v8];
  }

  else
  {
    v36 = 0;
  }

  self = v39;
LABEL_48:
  if (self->_logger)
  {
    [(SKDBaseJob *)v36 setLogger:?];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __62__SKDPipelineManager_indexProcessingJobWithProtectionClasses___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CC31A0];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs;
  indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (SKDPipelineManager)initWithDescriptors:(id)a3 processorCache:(id)a4 logger:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v36 = a4;
  v9 = a5;
  v45.receiver = self;
  v45.super_class = SKDPipelineManager;
  v10 = [(SKDPipelineManager *)&v45 init];
  v11 = v10;
  if (v10)
  {
    v31 = v10;
    v32 = a4;
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [v16 processorNames];
          v18 = [v36 processorsWithNames:v17];

          if (v9)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v38;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v38 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [*(*(&v37 + 1) + 8 * j) setLogger:v9];
                }

                v21 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
              }

              while (v21);
            }
          }

          v24 = [[SKDPipeline alloc] initWithDescriptor:v16 processors:v18];
          v25 = [(SKDPipeline *)v24 descriptor];
          v26 = [v25 name];
          [(NSDictionary *)v35 setObject:v24 forKeyedSubscript:v26];
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v13);
    }

    v11 = v31;
    pipelines = v31->_pipelines;
    v31->_pipelines = v35;
    v28 = v35;

    objc_storeStrong(&v31->_processorCache, v32);
    v8 = v33;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

@end