@interface SKDItemProcessor
- (SKDEventLogger)logger;
- (SKDItemProcessor)initWithPipelines:(id)pipelines;
- (id)processItemWithRecord:(id)record filePath:(id)path;
- (id)processItemWithRecord:(id)record uniqueID:(id)d bundleID:(id)iD;
- (void)processItemUpdate:(id)update record:(id)record bundleID:(id)d;
- (void)resume;
- (void)suspend;
@end

@implementation SKDItemProcessor

- (SKDItemProcessor)initWithPipelines:(id)pipelines
{
  v24 = *MEMORY[0x277D85DE8];
  pipelinesCopy = pipelines;
  v22.receiver = self;
  v22.super_class = SKDItemProcessor;
  v6 = [(SKDItemProcessor *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelines, pipelines);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 addObjectsFromArray:&unk_2846E8130];
    fetchAttributes = [(SKDItemProcessor *)v7 fetchAttributes];
    [v8 addObjectsFromArray:fetchAttributes];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    pipelines = [(SKDItemProcessor *)v7 pipelines];
    v11 = [pipelines countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(pipelines);
          }

          fetchAttributes2 = [*(*(&v18 + 1) + 8 * v14) fetchAttributes];
          [v8 addObjectsFromArray:fetchAttributes2];

          ++v14;
        }

        while (v12 != v14);
        v12 = [pipelines countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    [(SKDItemProcessor *)v7 setFetchAttributes:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)processItemUpdate:(id)update record:(id)record bundleID:(id)d
{
  v99 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  recordCopy = record;
  dCopy = d;
  selfCopy = self;
  logger = [(SKDItemProcessor *)self logger];
  v44 = [logger trackingEventBeginWithName:@"process-item" event:updateCopy];

  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__12;
  v89 = __Block_byref_object_dispose__12;
  v90 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v10 = [recordCopy mutableCopy];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [(SKDItemProcessor *)self pipelines];
  v49 = [obj countByEnumeratingWithState:&v77 objects:v98 count:16];
  if (v49)
  {
    v46 = *v78;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v78 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        descriptor = [v12 descriptor];
        if ([descriptor enabled])
        {
          canRun = [v12 canRun];

          if (canRun)
          {
            fetchAttributes = [v12 fetchAttributes];
            v16 = [v10 queryRecordEntriesWithKeys:fetchAttributes];

            if ([v12 supportsRecord:v16 bundleID:dCopy])
            {
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              processors = [v12 processors];
              v18 = [processors countByEnumeratingWithState:&v73 objects:v97 count:16];
              v52 = processors;
              if (v18)
              {
                v54 = *v74;
LABEL_11:
                v19 = 0;
                while (1)
                {
                  if (*v74 != v54)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v20 = *(*(&v73 + 1) + 8 * v19);
                  v21 = objc_autoreleasePoolPush();
                  if ([v20 willProcessRecord:v16 bundleID:dCopy])
                  {
                    activityJournal = [(CSEmbeddingsUpdater *)v20 activityJournal];
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __54__SKDItemProcessor_processItemUpdate_record_bundleID___block_invoke;
                    block[3] = &unk_27893E310;
                    block[4] = v20;
                    v65 = v16;
                    v66 = dCopy;
                    v67 = v44;
                    v68 = v10;
                    v69 = v12;
                    v70 = &v91;
                    v71 = &v81;
                    v72 = &v85;
                    dispatch_sync(activityJournal, block);
                  }

                  objc_autoreleasePoolPop(v21);
                  if (*(v82 + 24) != 1)
                  {
                    break;
                  }

                  if (v18 == ++v19)
                  {
                    v18 = [v52 countByEnumeratingWithState:&v73 objects:v97 count:16];
                    if (v18)
                    {
                      goto LABEL_11;
                    }

                    break;
                  }
                }
              }
            }

            v23 = *(v82 + 24);

            if ((v23 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
        }
      }

      v49 = [obj countByEnumeratingWithState:&v77 objects:v98 count:16];
    }

    while (v49);
  }

LABEL_25:

  logger2 = [(SKDItemProcessor *)selfCopy logger];
  [logger2 trackingEventEnd:v44];

  v25 = *(v92 + 24);
  if (!v25)
  {
    v25 = 2;
  }

  *(v92 + 24) = v25;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  pipelines = [(SKDItemProcessor *)selfCopy pipelines];
  v51 = [pipelines countByEnumeratingWithState:&v60 objects:v96 count:16];
  if (v51)
  {
    v50 = *v61;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(pipelines);
        }

        v53 = *(*(&v60 + 1) + 8 * j);
        descriptor2 = [v53 descriptor];
        enabled = [descriptor2 enabled];

        if (enabled && [v53 canRun])
        {
          if (*(v92 + 24) == 2)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            processedAttributes = [v53 processedAttributes];
            v29 = 0;
            v30 = [processedAttributes countByEnumeratingWithState:&v56 objects:v95 count:16];
            if (v30)
            {
              v31 = *v57;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v57 != v31)
                  {
                    objc_enumerationMutation(processedAttributes);
                  }

                  v33 = *(*(&v56 + 1) + 8 * k);
                  attributes = [updateCopy attributes];
                  v35 = [attributes objectForKeyedSubscript:v33];
                  if (v35)
                  {
                  }

                  else
                  {
                    v36 = [v10 objectForKey:v33];

                    if (v36)
                    {
                      [updateCopy addAttribute:v33 value:v36];
                      v29 = v36;
                    }

                    else
                    {
                      v29 = 0;
                    }
                  }
                }

                v30 = [processedAttributes countByEnumeratingWithState:&v56 objects:v95 count:16];
              }

              while (v30);
            }
          }

          else
          {
            v29 = 0;
          }

          errorAttribute = [v53 errorAttribute];
          v38 = [v10 objectForKey:errorAttribute];

          if (v38)
          {
            errorAttribute2 = [v53 errorAttribute];
            [updateCopy addAttribute:errorAttribute2 value:v38];
          }

          [(SKDItemProcessor *)selfCopy completeItemUpdate:updateCopy pipeline:v53];
        }
      }

      v51 = [pipelines countByEnumeratingWithState:&v60 objects:v96 count:16];
    }

    while (v51);
  }

  if (v86[5])
  {
    [updateCopy updateInfo:?];
  }

  [updateCopy updateStatus:*(v92 + 24)];

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);

  _Block_object_dispose(&v91, 8);
  v40 = *MEMORY[0x277D85DE8];
}

void __54__SKDItemProcessor_processItemUpdate_record_bundleID___block_invoke(uint64_t a1)
{
  v16 = [*(a1 + 32) processRecord:*(a1 + 40) bundleID:*(a1 + 48)];
  [*(a1 + 56) logEvent:v16];
  v2 = [v16 status];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      *(*(*(a1 + 80) + 8) + 24) = 3;
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_11;
      }

      *(*(*(a1 + 80) + 8) + 24) = 4;
      v8 = [v16 info];
      v9 = *(*(a1 + 96) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(a1 + 64);
      v12 = [*(a1 + 72) errorAttribute];
      [v11 setObject:&unk_2846E7A40 forKey:v12];
    }

    *(*(*(a1 + 88) + 8) + 24) = 0;
  }

  else if (v2 == 1)
  {
    v13 = *(a1 + 64);
    v14 = [*(a1 + 72) versionValue];
    v15 = [*(a1 + 72) versionAttribute];
    [v13 setObject:v14 forKey:v15];
  }

  else if (v2 == 2)
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 72) versionValue];
    v5 = [*(a1 + 72) versionAttribute];
    [v3 setObject:v4 forKey:v5];

    v6 = *(a1 + 64);
    v7 = [v16 attributes];
    [v6 addEntriesFromDictionary:v7];
  }

LABEL_11:
}

- (id)processItemWithRecord:(id)record uniqueID:(id)d bundleID:(id)iD
{
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  v11 = [SKDItemUpdate alloc];
  v12 = [objc_opt_class() description];
  v13 = [(SKDItemUpdate *)v11 initWithStatus:0 identifier:v12 uniqueID:dCopy bundleID:iDCopy];

  v14 = objc_autoreleasePoolPush();
  fetchAttributes = [(SKDItemProcessor *)self fetchAttributes];
  v16 = [recordCopy queryRecordEntriesWithKeys:fetchAttributes];

  [(SKDItemProcessor *)self processItemUpdate:v13 record:v16 bundleID:iDCopy];
  logger = [(SKDItemProcessor *)self logger];
  [logger logEvent:v13 level:5];

  objc_autoreleasePoolPop(v14);

  return v13;
}

- (id)processItemWithRecord:(id)record filePath:(id)path
{
  recordCopy = record;
  pathCopy = path;
  v8 = objc_autoreleasePoolPush();
  v9 = [SKDItemUpdate alloc];
  v10 = [objc_opt_class() description];
  v11 = [(SKDItemUpdate *)v9 initWithStatus:0 identifier:v10 uniqueID:pathCopy bundleID:@"com.apple.Metadata"];

  fetchAttributes = [(SKDItemProcessor *)self fetchAttributes];
  v13 = [recordCopy queryRecordEntriesWithKeys:fetchAttributes];

  [(SKDItemProcessor *)self processItemUpdate:v11 record:v13 bundleID:@"com.apple.Metadata"];
  logger = [(SKDItemProcessor *)self logger];
  [logger logEvent:v11 level:5];

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (void)suspend
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pipelines = [(SKDItemProcessor *)self pipelines];
  v4 = [pipelines countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(pipelines);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        processors = [v8 processors];
        v10 = [processors countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            v13 = 0;
            do
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(processors);
              }

              [*(*(&v17 + 1) + 8 * v13++) suspend];
            }

            while (v11 != v13);
            v11 = [processors countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [pipelines countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  logger = [(SKDItemProcessor *)self logger];
  v15 = +[SKDPipelineEvent stateSuspendedEvent];
  [logger logEvent:v15 level:6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pipelines = [(SKDItemProcessor *)self pipelines];
  v4 = [pipelines countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(pipelines);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        processors = [v8 processors];
        v10 = [processors countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            v13 = 0;
            do
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(processors);
              }

              [*(*(&v17 + 1) + 8 * v13++) resume];
            }

            while (v11 != v13);
            v11 = [processors countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [pipelines countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  logger = [(SKDItemProcessor *)self logger];
  v15 = +[SKDPipelineEvent stateResumedEvent];
  [logger logEvent:v15 level:6];

  v16 = *MEMORY[0x277D85DE8];
}

- (SKDEventLogger)logger
{
  logger = self->_logger;
  if (!logger)
  {
    v4 = [SKDPipelineLogger alloc];
    v5 = [objc_opt_class() description];
    v6 = [(SKDPipelineLogger *)v4 initWithDomain:v5];

    [(SKDItemProcessor *)self setLogger:v6];
    logger = self->_logger;
  }

  return logger;
}

@end