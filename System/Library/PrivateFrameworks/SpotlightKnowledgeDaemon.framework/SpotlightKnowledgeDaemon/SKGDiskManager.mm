@interface SKGDiskManager
- (BOOL)transferJournalsForProtectionClasses:(id)classes;
- (SKGDiskManager)initWithJobContext:(id)context;
- (void)_clearLegacyResources;
- (void)_clearSpotlightIndexWithGroup:(id)group;
- (void)_clearSpotlightKnowledgeResources;
- (void)createPath:(id)path markPurgeable:(BOOL)purgeable;
- (void)destroyWithGroup:(id)group;
- (void)load;
- (void)refresh;
- (void)resetWithGroup:(id)group;
@end

@implementation SKGDiskManager

- (SKGDiskManager)initWithJobContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SKGDiskManager;
  v6 = [(SKGDiskManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_jobContext, context);
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

  allProtectionClasses = [(SKGJobContext *)self->_jobContext allProtectionClasses];
  spotlightKnowledgeGraphPath = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
  v6 = fileSizeAtPath(spotlightKnowledgeGraphPath, &unk_2846E8208, 0);

  deleteArchivePath = [(SKGJobContext *)self->_jobContext deleteArchivePath];
  v8 = fileSizeAtPathForProtectionClasses(deleteArchivePath, allProtectionClasses, &unk_2846E8220, 0);

  journalArchivePath = [(SKGJobContext *)self->_jobContext journalArchivePath];
  v10 = fileSizeAtPathForProtectionClasses(journalArchivePath, allProtectionClasses, &unk_2846E8238, 0);

  peopleArchivePath = [(SKGJobContext *)self->_jobContext peopleArchivePath];
  v12 = fileSizeAtPathForProtectionClasses(peopleArchivePath, allProtectionClasses, &unk_2846E8250, 0);

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

- (void)resetWithGroup:(id)group
{
  groupCopy = group;
  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self _clearSpotlightKnowledgeResources];
  [(SKGDiskManager *)self _clearSpotlightIndexWithGroup:groupCopy];

  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self load];

  [(SKGDiskManager *)self refresh];
}

- (void)destroyWithGroup:(id)group
{
  feedback = [(SKGDiskManager *)self feedback];
  [feedback clear];

  feedback2 = [(SKGDiskManager *)self feedback];
  [feedback2 logFlag:12 message:@"didDestroy"];

  [(SKGDiskManager *)self _clearLegacyResources];
  [(SKGDiskManager *)self _clearSpotlightKnowledgeResources];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  spotlightKnowledgePath = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
  v8 = [defaultManager fileExistsAtPath:spotlightKnowledgePath];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    spotlightKnowledgePath2 = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
    v13 = 0;
    [defaultManager2 removeItemAtPath:spotlightKnowledgePath2 error:&v13];
    v11 = v13;

    if (v11)
    {
      feedback3 = [(SKGDiskManager *)self feedback];
      [feedback3 logError:9 message:@"could not clear spotlight resources"];
    }
  }
}

- (void)createPath:(id)path markPurgeable:(BOOL)purgeable
{
  purgeableCopy = purgeable;
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:pathCopy];

  if ((v8 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    [defaultManager2 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:&v23];
    v10 = v23;

    if (v10)
    {
      feedback = [(SKGDiskManager *)self feedback];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v10 description];
      v14 = [v12 stringWithFormat:@"could not create graph resources (%@)", v13];
      [feedback logError:10 message:v14];
    }

    else if (purgeableCopy)
    {
      v22 = 65541;
      v15 = open([pathCopy UTF8String], 0);
      if (v15 < 0)
      {
        feedback2 = [(SKGDiskManager *)self feedback];
        pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"could not read resources (%@)", pathCopy];
        [feedback2 logError:8 message:pathCopy];
      }

      else
      {
        v16 = v15;
        if (ffsctl(v15, 0xC0084A44uLL, &v22, 0))
        {
          feedback3 = [(SKGDiskManager *)self feedback];
          pathCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not mark purgeable resources (%@)", pathCopy];
          [feedback3 logError:11 message:pathCopy2];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: marked resources purgeable", buf, 2u);
          }

          feedback3 = [(SKGDiskManager *)self feedback];
          [feedback3 logMarkedPurgeableAtPath:pathCopy];
        }

        close(v16);
      }
    }
  }
}

- (void)_clearLegacyResources
{
  v42 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removePersistentDomainForName:@"com.apple.spotlightknowledged"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    uTF8String = [@"com.apple.spotlightknowledged" UTF8String];
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deleting legacy index %s", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" bundleIdentifier:@"com.apple.spotlightknowledged"];
  [v4 deleteAllSearchableItemsWithCompletionHandler:&__block_literal_global_30];
  v5 = MEMORY[0x277CCACA8];
  corespotlightResourcesRootPath = [(SKGJobContext *)self->_jobContext corespotlightResourcesRootPath];
  v7 = [v5 stringWithFormat:@"%@/SpotlightKnowledge", corespotlightResourcesRootPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if (v9)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v39 = 0;
    [defaultManager2 removeItemAtPath:v7 error:&v39];
    v11 = v39;

    if (v11)
    {
      feedback = [(SKGDiskManager *)self feedback];
      [feedback logError:9 message:@"could not clear legacy spotlight resources"];
    }
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  keyphraseArchivePath = [(SKGJobContext *)self->_jobContext keyphraseArchivePath];
  v15 = [defaultManager3 fileExistsAtPath:keyphraseArchivePath];

  if (v15)
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    keyphraseArchivePath2 = [(SKGJobContext *)self->_jobContext keyphraseArchivePath];
    v38 = 0;
    [defaultManager4 removeItemAtPath:keyphraseArchivePath2 error:&v38];
    v18 = v38;

    if (v18)
    {
      feedback2 = [(SKGDiskManager *)self feedback];
      [feedback2 logError:9 message:@"could not clear keyphrase archives"];
    }
  }

  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  eventArchivePath = [(SKGJobContext *)self->_jobContext eventArchivePath];
  v22 = [defaultManager5 fileExistsAtPath:eventArchivePath];

  if (v22)
  {
    defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
    eventArchivePath2 = [(SKGJobContext *)self->_jobContext eventArchivePath];
    v37 = 0;
    [defaultManager6 removeItemAtPath:eventArchivePath2 error:&v37];
    v25 = v37;

    if (v25)
    {
      feedback3 = [(SKGDiskManager *)self feedback];
      [feedback3 logError:9 message:@"could not clear keyphrase archives"];
    }
  }

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEventUpdater = [mEMORY[0x277D657A0] enableEventUpdater];

  if (enableEventUpdater)
  {
    defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
    journalArchivePath = [(SKGJobContext *)self->_jobContext journalArchivePath];
    v31 = [defaultManager7 fileExistsAtPath:journalArchivePath];

    if (v31)
    {
      defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
      journalArchivePath2 = [(SKGJobContext *)self->_jobContext journalArchivePath];
      v36 = 0;
      [defaultManager8 removeItemAtPath:journalArchivePath2 error:&v36];
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
  spotlightKnowledgeGraphConfigPath = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphConfigPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:spotlightKnowledgeGraphConfigPath];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v41 = 0;
    [defaultManager2 removeItemAtPath:spotlightKnowledgeGraphConfigPath error:&v41];
    v7 = v41;

    if (v7)
    {
      feedback = [(SKGDiskManager *)self feedback];
      [feedback logError:9 message:@"could not clear spotlight resources"];
    }
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  spotlightKnowledgeGraphPath = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
  v11 = [defaultManager3 fileExistsAtPath:spotlightKnowledgeGraphPath];

  if (v11)
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    spotlightKnowledgeGraphPath2 = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
    v40 = 0;
    [defaultManager4 removeItemAtPath:spotlightKnowledgeGraphPath2 error:&v40];
    v14 = v40;

    if (v14)
    {
      feedback2 = [(SKGDiskManager *)self feedback];
      [feedback2 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  journalArchivePath = [(SKGJobContext *)self->_jobContext journalArchivePath];
  v18 = [defaultManager5 fileExistsAtPath:journalArchivePath];

  if (v18)
  {
    defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
    journalArchivePath2 = [(SKGJobContext *)self->_jobContext journalArchivePath];
    v39 = 0;
    [defaultManager6 removeItemAtPath:journalArchivePath2 error:&v39];
    v21 = v39;

    if (v21)
    {
      feedback3 = [(SKGDiskManager *)self feedback];
      [feedback3 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
  peopleArchivePath = [(SKGJobContext *)self->_jobContext peopleArchivePath];
  v25 = [defaultManager7 fileExistsAtPath:peopleArchivePath];

  if (v25)
  {
    defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
    peopleArchivePath2 = [(SKGJobContext *)self->_jobContext peopleArchivePath];
    v38 = 0;
    [defaultManager8 removeItemAtPath:peopleArchivePath2 error:&v38];
    v28 = v38;

    if (v28)
    {
      feedback4 = [(SKGDiskManager *)self feedback];
      [feedback4 logError:9 message:@"could not clear spotlight resources"];
    }
  }

  defaultManager9 = [MEMORY[0x277CCAA00] defaultManager];
  deleteArchivePath = [(SKGJobContext *)self->_jobContext deleteArchivePath];
  v32 = [defaultManager9 fileExistsAtPath:deleteArchivePath];

  if (v32)
  {
    defaultManager10 = [MEMORY[0x277CCAA00] defaultManager];
    deleteArchivePath2 = [(SKGJobContext *)self->_jobContext deleteArchivePath];
    v37 = 0;
    [defaultManager10 removeItemAtPath:deleteArchivePath2 error:&v37];
    v35 = v37;

    if (v35)
    {
      feedback5 = [(SKGDiskManager *)self feedback];
      [feedback5 logError:9 message:@"could not clear spotlight resources"];
    }
  }
}

- (void)_clearSpotlightIndexWithGroup:(id)group
{
  v14 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (![(SKGJobContext *)self->_jobContext debug])
  {
    v5 = objc_alloc(MEMORY[0x277CC34A8]);
    knowledgeIndexIdentifier = [(SKGJobContext *)self->_jobContext knowledgeIndexIdentifier];
    v7 = [v5 initWithName:@"KnowledgeIndex" bundleIdentifier:knowledgeIndexIdentifier];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      knowledgeIndexIdentifier2 = [(SKGJobContext *)self->_jobContext knowledgeIndexIdentifier];
      *buf = 136315138;
      uTF8String = [knowledgeIndexIdentifier2 UTF8String];
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deleting index %s", buf, 0xCu);
    }

    dispatch_group_enter(groupCopy);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SKGDiskManager__clearSpotlightIndexWithGroup___block_invoke;
    v10[3] = &unk_27893E840;
    v11 = groupCopy;
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

- (BOOL)transferJournalsForProtectionClasses:(id)classes
{
  v74 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  context = objc_autoreleasePoolPush();
  group = dispatch_group_create();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = classesCopy;
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
        journalPaths = [v49 journalPaths];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        obja = journalPaths;
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
              lastPathComponent = [v26 lastPathComponent];
              v28 = [lastPathComponent isEqualToString:v17];

              if (v28)
              {
                feedback = [(SKGDiskManager *)self feedback];
                [feedback logError:7 message:@"journals too large"];
LABEL_33:

                v41 = 0;
                v14 = v47;
                goto LABEL_34;
              }

              lastPathComponent2 = [v26 lastPathComponent];
              v30 = [lastPathComponent2 hasPrefix:@"skg_knowledgeEntr"];

              if (v30)
              {
                v31 = v24;
                v32 = v17;
                v33 = MEMORY[0x277CCACA8];
                lastPathComponent3 = [v26 lastPathComponent];
                uUID = [MEMORY[0x277CCAD78] UUID];
                v36 = [v33 stringWithFormat:@"%@/%@.%@", v52, lastPathComponent3, uUID];

                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                path = [v26 path];
                v56 = 0;
                v39 = [defaultManager moveItemAtPath:path toPath:v36 error:&v56];
                feedback = v56;

                if (!v39 || feedback)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    [SKGDiskManager transferJournalsForProtectionClasses:feedback];
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
  spotlightKnowledgePath = [(SKGJobContext *)self->_jobContext spotlightKnowledgePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:spotlightKnowledgePath];

  if ((v5 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v14 = 0, objc_msgSend(v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", spotlightKnowledgePath, 1, MEMORY[0x277CBEC10], &v14), spotlightKnowledgeGraphPath = v14, v6, !spotlightKnowledgeGraphPath))
  {
    spotlightKnowledgeGraphPath = [(SKGJobContext *)self->_jobContext spotlightKnowledgeGraphPath];
    [(SKGDiskManager *)self createPath:spotlightKnowledgeGraphPath markPurgeable:1];
    deleteArchivePath = [(SKGJobContext *)self->_jobContext deleteArchivePath];
    [(SKGDiskManager *)self createPath:deleteArchivePath markPurgeable:0];

    journalArchivePath = [(SKGJobContext *)self->_jobContext journalArchivePath];
    [(SKGDiskManager *)self createPath:journalArchivePath markPurgeable:1];

    peopleArchivePath = [(SKGJobContext *)self->_jobContext peopleArchivePath];
    [(SKGDiskManager *)self createPath:peopleArchivePath markPurgeable:1];
  }

  else
  {
    peopleArchivePath = [(SKGDiskManager *)self feedback];
    v9 = MEMORY[0x277CCACA8];
    v10 = [spotlightKnowledgeGraphPath description];
    v11 = [v9 stringWithFormat:@"could not create resources (%@)", v10];
    [peopleArchivePath logError:10 message:v11];
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