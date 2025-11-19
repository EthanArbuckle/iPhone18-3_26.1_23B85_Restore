@interface SKGDiskManager
- (BOOL)transferJournalsForProtectionClasses:(id)a3;
- (SKGDiskManager)initWithJobContext:(id)a3;
- (void)_clearLegacyResources;
- (void)_clearSpotlightIndexWithGroup:(id)a3;
- (void)_clearSpotlightKnowledgeResources;
- (void)createPath:(id)a3 markPurgeable:(BOOL)a4;
- (void)destroyWithGroup:(id)a3;
- (void)load;
- (void)refresh;
- (void)resetWithGroup:(id)a3;
@end

@implementation SKGDiskManager

- (SKGDiskManager)initWithJobContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKGDiskManager;
  v6 = [(SKGDiskManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_jobContext, a3);
    v7->_deleteCount = 0;
    *&v7->_graphSize = 0u;
    *&v7->_journalCount = 0u;
    [(SKGDiskManager *)v7 load];
  }

  return v7;
}

- (void)refresh
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "SKG: checking current resource stats", v20, 2u);
    }
  }

  v4 = [(SKGJobContext *)self->_jobContext allProtectionClasses];
  v5 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
  v6 = fileSizeAtPath(v5, &unk_2846E8208, 0);

  v7 = [(SKGJobContext *)self->_jobContext deleteArchivePath];
  v8 = fileSizeAtPathForProtectionClasses(v7, v4, &unk_2846E8220, 0);

  v9 = [(SKGJobContext *)self->_jobContext journalArchivePath];
  v10 = fileSizeAtPathForProtectionClasses(v9, v4, &unk_2846E8238, 0);

  v11 = [(SKGJobContext *)self->_jobContext peopleArchivePath];
  v12 = fileSizeAtPathForProtectionClasses(v11, v4, &unk_2846E8250, 0);

  v13 = [v6 objectForKeyedSubscript:@"fileSize"];
  self->_graphSize = [v13 unsignedIntValue];

  v14 = [v10 objectForKeyedSubscript:@"fileSize"];
  self->_journalsSize = [v14 unsignedIntValue];

  v15 = [v10 objectForKeyedSubscript:@"fileCount"];
  self->_journalsCount = [v15 unsignedIntValue];

  v16 = [v8 objectForKeyedSubscript:@"fileSize"];
  self->_deletesSize = [v16 unsignedIntValue];

  v17 = [v8 objectForKeyedSubscript:@"fileCount"];
  self->_deletesCount = [v17 unsignedIntValue];

  v18 = [v12 objectForKeyedSubscript:@"fileSize"];
  self->_peopleArchiveSize = [v18 unsignedIntValue];

  v19 = [v12 objectForKeyedSubscript:@"fileCount"];
  self->_peopleArchiveCount = [v19 unsignedIntValue];
}

- (void)resetWithGroup:(id)a3
{
  v4 = a3;
  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self _clearSpotlightKnowledgeResources];
  [(SKGDiskManager *)self _clearSpotlightIndexWithGroup:v4];

  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self load];

  [(SKGDiskManager *)self refresh];
}

- (void)destroyWithGroup:(id)a3
{
  v4 = [(SKGDiskManager *)self feedback];
  [v4 clear];

  v5 = [(SKGDiskManager *)self feedback];
  [v5 logFlag:12 message:@"didDestroy"];

  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self _clearSpotlightKnowledgeResources];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
    v13 = 0;
    [v9 removeItemAtPath:v10 error:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = [(SKGDiskManager *)self feedback];
      [v12 logError:9 message:@"could not clear spotlight resources"];
    }
  }
}

- (void)createPath:(id)a3 markPurgeable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:&v23];
    v10 = v23;

    if (v10)
    {
      v11 = [(SKGDiskManager *)self feedback];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v10 description];
      v14 = [v12 stringWithFormat:@"could not create graph resources (%@)", v13];
      [v11 logError:10 message:v14];
    }

    else if (v4)
    {
      v22 = 65541;
      v15 = open([v6 UTF8String], 0);
      if (v15 < 0)
      {
        v19 = [(SKGDiskManager *)self feedback];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not read resources (%@)", v6];
        [v19 logError:8 message:v20];
      }

      else
      {
        v16 = v15;
        if (ffsctl(v15, 0xC0084A44uLL, &v22, 0))
        {
          v17 = [(SKGDiskManager *)self feedback];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not mark purgeable resources (%@)", v6];
          [v17 logError:11 message:v18];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: marked resources purgeable", buf, 2u);
          }

          v17 = [(SKGDiskManager *)self feedback];
          [v17 logMarkedPurgeableAtPath:v6];
        }

        close(v16);
      }
    }
  }
}

- (void)_clearLegacyResources
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removePersistentDomainForName:@"com.apple.spotlightknowledged"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = [@"com.apple.spotlightknowledged" UTF8String];
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deleting legacy index %s", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" bundleIdentifier:@"com.apple.spotlightknowledged"];
  [v4 deleteAllSearchableItemsWithCompletionHandler:&__block_literal_global_30];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(SKGJobContext *)self->_jobContext corespotlightResourcesRootPath];
  v7 = [v5 stringWithFormat:@"%@/SpotlightKnowledge", v6];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v39 = 0;
    [v10 removeItemAtPath:v7 error:&v39];
    v11 = v39;

    if (v11)
    {
      v12 = [(SKGDiskManager *)self feedback];
      [v12 logError:9 message:@"could not clear legacy spotlight resources"];
    }
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [(SKGJobContext *)self->_jobContext keyphraseArchivePath];
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [(SKGJobContext *)self->_jobContext keyphraseArchivePath];
    v38 = 0;
    [v16 removeItemAtPath:v17 error:&v38];
    v18 = v38;

    if (v18)
    {
      v19 = [(SKGDiskManager *)self feedback];
      [v19 logError:9 message:@"could not clear keyphrase archives"];
    }
  }

  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [(SKGJobContext *)self->_jobContext eventArchivePath];
  v22 = [v20 fileExistsAtPath:v21];

  if (v22)
  {
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [(SKGJobContext *)self->_jobContext eventArchivePath];
    v37 = 0;
    [v23 removeItemAtPath:v24 error:&v37];
    v25 = v37;

    if (v25)
    {
      v26 = [(SKGDiskManager *)self feedback];
      [v26 logError:9 message:@"could not clear keyphrase archives"];
    }
  }

  v27 = [MEMORY[0x277D657A0] sharedContext];
  v28 = [v27 enableEventUpdater];

  if (v28)
  {
    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = [(SKGJobContext *)self->_jobContext journalArchivePath];
    v31 = [v29 fileExistsAtPath:v30];

    if (v31)
    {
      v32 = [MEMORY[0x277CCAA00] defaultManager];
      v33 = [(SKGJobContext *)self->_jobContext journalArchivePath];
      v36 = 0;
      [v32 removeItemAtPath:v33 error:&v36];
      v34 = v36;

      if (v34)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [SKGDiskManager _clearLegacyResources];
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __39__SKGDiskManager__clearLegacyResources__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __39__SKGDiskManager__clearLegacyResources__block_invoke_cold_1(v2);
  }
}

- (void)_clearSpotlightKnowledgeResources
{
  v3 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphConfigPath];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v41 = 0;
    [v6 removeItemAtPath:v3 error:&v41];
    v7 = v41;

    if (v7)
    {
      v8 = [(SKGDiskManager *)self feedback];
      [v8 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
    v40 = 0;
    [v12 removeItemAtPath:v13 error:&v40];
    v14 = v40;

    if (v14)
    {
      v15 = [(SKGDiskManager *)self feedback];
      [v15 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [(SKGJobContext *)self->_jobContext journalArchivePath];
  v18 = [v16 fileExistsAtPath:v17];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [(SKGJobContext *)self->_jobContext journalArchivePath];
    v39 = 0;
    [v19 removeItemAtPath:v20 error:&v39];
    v21 = v39;

    if (v21)
    {
      v22 = [(SKGDiskManager *)self feedback];
      [v22 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = [(SKGJobContext *)self->_jobContext peopleArchivePath];
  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    v26 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = [(SKGJobContext *)self->_jobContext peopleArchivePath];
    v38 = 0;
    [v26 removeItemAtPath:v27 error:&v38];
    v28 = v38;

    if (v28)
    {
      v29 = [(SKGDiskManager *)self feedback];
      [v29 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  v30 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = [(SKGJobContext *)self->_jobContext deleteArchivePath];
  v32 = [v30 fileExistsAtPath:v31];

  if (v32)
  {
    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = [(SKGJobContext *)self->_jobContext deleteArchivePath];
    v37 = 0;
    [v33 removeItemAtPath:v34 error:&v37];
    v35 = v37;

    if (v35)
    {
      v36 = [(SKGDiskManager *)self feedback];
      [v36 logError:9 message:@"could not clear spotlight resources"];
    }
  }
}

- (void)_clearSpotlightIndexWithGroup:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SKGJobContext *)self->_jobContext debug])
  {
    v5 = objc_alloc(MEMORY[0x277CC34A8]);
    v6 = [(SKGJobContext *)self->_jobContext knowledgeIndexIdentifier];
    v7 = [v5 initWithName:@"KnowledgeIndex" bundleIdentifier:v6];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SKGJobContext *)self->_jobContext knowledgeIndexIdentifier];
      *buf = 136315138;
      v13 = [v8 UTF8String];
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deleting index %s", buf, 0xCu);
    }

    dispatch_group_enter(v4);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SKGDiskManager__clearSpotlightIndexWithGroup___block_invoke;
    v10[3] = &unk_27893E840;
    v11 = v4;
    [v7 deleteAllSearchableItemsWithCompletionHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __48__SKGDiskManager__clearSpotlightIndexWithGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __39__SKGDiskManager__clearLegacyResources__block_invoke_cold_1(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)transferJournalsForProtectionClasses:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  group = dispatch_group_create();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v68;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v68 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v67 + 1) + 8 * i);
        v10 = [(SKGJobContext *)self->_jobContext deletesPathWithProtectionClass:v9];
        [(SKGDiskManager *)self createPurgeablePath:v10];
        v11 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:v9];
        dispatch_group_enter(group);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __55__SKGDiskManager_transferJournalsForProtectionClasses___block_invoke;
        v65[3] = &unk_27893E840;
        v12 = group;
        v66 = v12;
        [v11 transferDeletionJournalsForProtectionClass:v9 toDirectory:v10 completionHandler:v65];
        v13 = dispatch_time(0, 1000000000000);
        dispatch_group_wait(v12, v13);
      }

      v6 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v6);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v14 = obj;
  v45 = [v14 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v45)
  {
    v15 = 0x27893B000uLL;
    v16 = *v62;
    v17 = @"skg_";
    v44 = *v62;
    v47 = v14;
    do
    {
      v18 = 0;
      do
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v46 = v18;
        v19 = *(*(&v61 + 1) + 8 * v18);
        v52 = [(SKGJobContext *)self->_jobContext journalsPathWithProtectionClass:v19];
        [(SKGDiskManager *)self createPurgeablePath:?];
        v20 = [(SKGJobContext *)self->_jobContext deletesPathWithProtectionClass:v19];
        [(SKGDiskManager *)self createPath:v20 markPurgeable:0];
        v50 = v20;
        v49 = [objc_alloc(*(v15 + 3200)) initWithResourceDirectoryPath:v20];
        v21 = [v49 journalPaths];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        obja = v21;
        v22 = [obja countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v58;
          while (2)
          {
            v25 = 0;
            v51 = v23;
            do
            {
              if (*v58 != v24)
              {
                objc_enumerationMutation(obja);
              }

              v26 = *(*(&v57 + 1) + 8 * v25);
              v27 = [v26 lastPathComponent];
              v28 = [v27 isEqualToString:v17];

              if (v28)
              {
                v40 = [(SKGDiskManager *)self feedback];
                [v40 logError:7 message:@"journals too large"];
LABEL_33:

                v41 = 0;
                v14 = v47;
                goto LABEL_34;
              }

              v29 = [v26 lastPathComponent];
              v30 = [v29 hasPrefix:@"skg_knowledgeEntr"];

              if (v30)
              {
                v31 = v24;
                v32 = v17;
                v33 = MEMORY[0x277CCACA8];
                v34 = [v26 lastPathComponent];
                v35 = [MEMORY[0x277CCAD78] UUID];
                v36 = [v33 stringWithFormat:@"%@/%@.%@", v52, v34, v35];

                v37 = [MEMORY[0x277CCAA00] defaultManager];
                v38 = [v26 path];
                v56 = 0;
                v39 = [v37 moveItemAtPath:v38 toPath:v36 error:&v56];
                v40 = v56;

                if (!v39 || v40)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    [SKGDiskManager transferJournalsForProtectionClasses:v40];
                  }

                  goto LABEL_33;
                }

                v17 = v32;
                v24 = v31;
                v23 = v51;
              }

              ++v25;
            }

            while (v23 != v25);
            v23 = [obja countByEnumeratingWithState:&v57 objects:v71 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v18 = v46 + 1;
        v15 = 0x27893B000;
        v16 = v44;
        v14 = v47;
      }

      while (v46 + 1 != v45);
      v41 = 1;
      v45 = [v47 countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v45);
  }

  else
  {
    v41 = 1;
  }

LABEL_34:

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

void __55__SKGDiskManager_transferJournalsForProtectionClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__SKGDiskManager_transferJournalsForProtectionClasses___block_invoke_cold_1(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)load
{
  v3 = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v14 = 0, objc_msgSend(v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v3, 1, MEMORY[0x277CBEC10], &v14), v7 = v14, v6, !v7))
  {
    v7 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
    [(SKGDiskManager *)self createPath:v7 markPurgeable:1];
    v12 = [(SKGJobContext *)self->_jobContext deleteArchivePath];
    [(SKGDiskManager *)self createPath:v12 markPurgeable:0];

    v13 = [(SKGJobContext *)self->_jobContext journalArchivePath];
    [(SKGDiskManager *)self createPath:v13 markPurgeable:1];

    v8 = [(SKGJobContext *)self->_jobContext peopleArchivePath];
    [(SKGDiskManager *)self createPath:v8 markPurgeable:1];
  }

  else
  {
    v8 = [(SKGDiskManager *)self feedback];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 description];
    v11 = [v9 stringWithFormat:@"could not create resources (%@)", v10];
    [v8 logError:10 message:v11];
  }
}

void __39__SKGDiskManager__clearLegacyResources__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, MEMORY[0x277D86220], v2, "SKG: unable to remove legacy index: %s", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)transferJournalsForProtectionClasses:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, MEMORY[0x277D86220], v2, "SKG: unable to copy journal file: %s", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SKGDiskManager_transferJournalsForProtectionClasses___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, MEMORY[0x277D86220], v2, "SKG: unable to transfer journal file: %s", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end