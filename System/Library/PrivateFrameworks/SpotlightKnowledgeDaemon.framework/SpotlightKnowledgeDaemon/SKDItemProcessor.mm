@interface SKDItemProcessor
- (SKDEventLogger)logger;
- (SKDItemProcessor)initWithPipelines:(id)a3;
- (id)processItemWithRecord:(id)a3 filePath:(id)a4;
- (id)processItemWithRecord:(id)a3 uniqueID:(id)a4 bundleID:(id)a5;
- (void)processItemUpdate:(id)a3 record:(id)a4 bundleID:(id)a5;
- (void)resume;
- (void)suspend;
@end

@implementation SKDItemProcessor

- (SKDItemProcessor)initWithPipelines:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SKDItemProcessor;
  v6 = [(SKDItemProcessor *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelines, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 addObjectsFromArray:&unk_2846E8130];
    v9 = [(SKDItemProcessor *)v7 fetchAttributes];
    [v8 addObjectsFromArray:v9];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(SKDItemProcessor *)v7 pipelines];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) fetchAttributes];
          [v8 addObjectsFromArray:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    [(SKDItemProcessor *)v7 setFetchAttributes:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)processItemUpdate:(id)a3 record:(id)a4 bundleID:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v41 = a4;
  v48 = a5;
  v45 = self;
  v9 = [(SKDItemProcessor *)self logger];
  v44 = [v9 trackingEventBeginWithName:@"process-item" event:v8];

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
  v10 = [v41 mutableCopy];
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
        v13 = [v12 descriptor];
        if ([v13 enabled])
        {
          v14 = [v12 canRun];

          if (v14)
          {
            v15 = [v12 fetchAttributes];
            v16 = [v10 queryRecordEntriesWithKeys:v15];

            if ([v12 supportsRecord:v16 bundleID:v48])
            {
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v17 = [v12 processors];
              v18 = [v17 countByEnumeratingWithState:&v73 objects:v97 count:16];
              v52 = v17;
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
                  if ([v20 willProcessRecord:v16 bundleID:v48])
                  {
                    v22 = [(CSEmbeddingsUpdater *)v20 activityJournal];
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __54__SKDItemProcessor_processItemUpdate_record_bundleID___block_invoke;
                    block[3] = &unk_27893E310;
                    block[4] = v20;
                    v65 = v16;
                    v66 = v48;
                    v67 = v44;
                    v68 = v10;
                    v69 = v12;
                    v70 = &v91;
                    v71 = &v81;
                    v72 = &v85;
                    dispatch_sync(v22, block);
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

  v24 = [(SKDItemProcessor *)v45 logger];
  [v24 trackingEventEnd:v44];

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
  v47 = [(SKDItemProcessor *)v45 pipelines];
  v51 = [v47 countByEnumeratingWithState:&v60 objects:v96 count:16];
  if (v51)
  {
    v50 = *v61;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v53 = *(*(&v60 + 1) + 8 * j);
        v26 = [v53 descriptor];
        v27 = [v26 enabled];

        if (v27 && [v53 canRun])
        {
          if (*(v92 + 24) == 2)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v28 = [v53 processedAttributes];
            v29 = 0;
            v30 = [v28 countByEnumeratingWithState:&v56 objects:v95 count:16];
            if (v30)
            {
              v31 = *v57;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v57 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v56 + 1) + 8 * k);
                  v34 = [v8 attributes];
                  v35 = [v34 objectForKeyedSubscript:v33];
                  if (v35)
                  {
                  }

                  else
                  {
                    v36 = [v10 objectForKey:v33];

                    if (v36)
                    {
                      [v8 addAttribute:v33 value:v36];
                      v29 = v36;
                    }

                    else
                    {
                      v29 = 0;
                    }
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v56 objects:v95 count:16];
              }

              while (v30);
            }
          }

          else
          {
            v29 = 0;
          }

          v37 = [v53 errorAttribute];
          v38 = [v10 objectForKey:v37];

          if (v38)
          {
            v39 = [v53 errorAttribute];
            [v8 addAttribute:v39 value:v38];
          }

          [(SKDItemProcessor *)v45 completeItemUpdate:v8 pipeline:v53];
        }
      }

      v51 = [v47 countByEnumeratingWithState:&v60 objects:v96 count:16];
    }

    while (v51);
  }

  if (v86[5])
  {
    [v8 updateInfo:?];
  }

  [v8 updateStatus:*(v92 + 24)];

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

- (id)processItemWithRecord:(id)a3 uniqueID:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [SKDItemUpdate alloc];
  v12 = [objc_opt_class() description];
  v13 = [(SKDItemUpdate *)v11 initWithStatus:0 identifier:v12 uniqueID:v9 bundleID:v10];

  v14 = objc_autoreleasePoolPush();
  v15 = [(SKDItemProcessor *)self fetchAttributes];
  v16 = [v8 queryRecordEntriesWithKeys:v15];

  [(SKDItemProcessor *)self processItemUpdate:v13 record:v16 bundleID:v10];
  v17 = [(SKDItemProcessor *)self logger];
  [v17 logEvent:v13 level:5];

  objc_autoreleasePoolPop(v14);

  return v13;
}

- (id)processItemWithRecord:(id)a3 filePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [SKDItemUpdate alloc];
  v10 = [objc_opt_class() description];
  v11 = [(SKDItemUpdate *)v9 initWithStatus:0 identifier:v10 uniqueID:v7 bundleID:@"com.apple.Metadata"];

  v12 = [(SKDItemProcessor *)self fetchAttributes];
  v13 = [v6 queryRecordEntriesWithKeys:v12];

  [(SKDItemProcessor *)self processItemUpdate:v11 record:v13 bundleID:@"com.apple.Metadata"];
  v14 = [(SKDItemProcessor *)self logger];
  [v14 logEvent:v11 level:5];

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
  v3 = [(SKDItemProcessor *)self pipelines];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 processors];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(v9);
              }

              [*(*(&v17 + 1) + 8 * v13++) suspend];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = [(SKDItemProcessor *)self logger];
  v15 = +[SKDPipelineEvent stateSuspendedEvent];
  [v14 logEvent:v15 level:6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(SKDItemProcessor *)self pipelines];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 processors];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(v9);
              }

              [*(*(&v17 + 1) + 8 * v13++) resume];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = [(SKDItemProcessor *)self logger];
  v15 = +[SKDPipelineEvent stateResumedEvent];
  [v14 logEvent:v15 level:6];

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