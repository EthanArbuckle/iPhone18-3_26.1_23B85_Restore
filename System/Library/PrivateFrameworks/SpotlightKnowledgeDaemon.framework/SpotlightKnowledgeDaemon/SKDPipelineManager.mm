@interface SKDPipelineManager
+ (id)sharedManager;
- (SKDPipelineManager)initWithDescriptors:(id)descriptors processorCache:(id)cache logger:(id)logger;
- (id)indexProcessingJobWithProtectionClasses:(id)classes;
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
        descriptor = [v8 descriptor];
        name = [descriptor name];
        v12 = [v9 stringWithFormat:@"journal-%@", name];

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

- (id)indexProcessingJobWithProtectionClasses:(id)classes
{
  v60 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  pipelines = [(SKDPipelineManager *)self pipelines];
  v6 = [pipelines countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v6)
  {

    v36 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v7 = v6;
  selfCopy = self;
  v40 = pipelines;
  v8 = 0;
  v9 = *v54;
  v43 = *v54;
  v41 = classesCopy;
  do
  {
    v10 = 0;
    v44 = v7;
    do
    {
      if (*v54 != v9)
      {
        objc_enumerationMutation(pipelines);
      }

      v11 = *(*(&v53 + 1) + 8 * v10);
      descriptor = [v11 descriptor];
      if (![descriptor enabled])
      {

        goto LABEL_41;
      }

      canRun = [v11 canRun];

      if ((canRun & 1) == 0)
      {
        goto LABEL_41;
      }

      requiredAttributes = [v11 requiredAttributes];

      if (requiredAttributes)
      {
        if (indexProcessingJobWithProtectionClasses__onceToken != -1)
        {
          [SKDPipelineManager indexProcessingJobWithProtectionClasses:];
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        requiredAttributes2 = [v11 requiredAttributes];
        v16 = [requiredAttributes2 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
                objc_enumerationMutation(requiredAttributes2);
              }

              if (![indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs containsObject:*(*(&v49 + 1) + 8 * i)])
              {

                v9 = v43;
                v7 = v44;
                goto LABEL_22;
              }
            }

            v17 = [requiredAttributes2 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
      if ([classesCopy count])
      {
        v42 = v8;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v20 = classesCopy;
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
              descriptor2 = [v11 descriptor];
              requiredProtectionClasses = [descriptor2 requiredProtectionClasses];

              descriptor3 = [v11 descriptor];
              v29 = descriptor3;
              if (requiredProtectionClasses)
              {
                requiredProtectionClasses2 = [descriptor3 requiredProtectionClasses];
                v31 = [requiredProtectionClasses2 containsObject:v25];

                if (v31)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                excludedProtectionClasses = [descriptor3 excludedProtectionClasses];

                if (!excludedProtectionClasses || ([v11 descriptor], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "excludedProtectionClasses"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "containsObject:", v25), v34, v33, !v35))
                {
LABEL_37:

                  classesCopy = v41;
                  v8 = v42;
                  pipelines = v40;
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

        classesCopy = v41;
        v8 = v42;
        pipelines = v40;
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
    v7 = [pipelines countByEnumeratingWithState:&v53 objects:v59 count:16];
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

  self = selfCopy;
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

- (SKDPipelineManager)initWithDescriptors:(id)descriptors processorCache:(id)cache logger:(id)logger
{
  v48 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  cacheCopy = cache;
  loggerCopy = logger;
  v45.receiver = self;
  v45.super_class = SKDPipelineManager;
  v10 = [(SKDPipelineManager *)&v45 init];
  v11 = v10;
  if (v10)
  {
    v31 = v10;
    cacheCopy2 = cache;
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = descriptorsCopy;
    obj = descriptorsCopy;
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
          processorNames = [v16 processorNames];
          v18 = [cacheCopy processorsWithNames:processorNames];

          if (loggerCopy)
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

                  [*(*(&v37 + 1) + 8 * j) setLogger:loggerCopy];
                }

                v21 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
              }

              while (v21);
            }
          }

          v24 = [[SKDPipeline alloc] initWithDescriptor:v16 processors:v18];
          descriptor = [(SKDPipeline *)v24 descriptor];
          name = [descriptor name];
          [(NSDictionary *)v35 setObject:v24 forKeyedSubscript:name];
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v13);
    }

    v11 = v31;
    pipelines = v31->_pipelines;
    v31->_pipelines = v35;
    v28 = v35;

    objc_storeStrong(&v31->_processorCache, cacheCopy2);
    descriptorsCopy = v33;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

@end