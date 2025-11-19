@interface SKGJobContext
- (BOOL)canDefer;
- (BOOL)canDoGraphAnalysis;
- (BOOL)canDoGraphScoring;
- (BOOL)done;
- (BOOL)finishedDeletes;
- (BOOL)finishedFileTextQueries;
- (BOOL)finishedGraphAnalysis;
- (BOOL)finishedGraphAnalysisJob;
- (BOOL)finishedGraphScoring;
- (BOOL)finishedItemUpdates;
- (BOOL)finishedItemUpdatesJob;
- (BOOL)finishedJournals;
- (BOOL)finishedMegadomeIndexing;
- (BOOL)finishedPeopleArchives;
- (BOOL)finishedPeopleIndexingJob;
- (BOOL)finishedPeopleQueries;
- (BOOL)finishedTextProcessingJob;
- (BOOL)finishedTextQueries;
- (BOOL)shouldDestroy;
- (BOOL)shouldIgnore;
- (BOOL)shouldReset;
- (BOOL)startDeletes;
- (BOOL)startFileTextQueries;
- (BOOL)startGraphAnalysis;
- (BOOL)startGraphAnalysisJob;
- (BOOL)startGraphScoring;
- (BOOL)startItemUpdates;
- (BOOL)startItemUpdatesJob;
- (BOOL)startJournals;
- (BOOL)startMegadomeIndexing;
- (BOOL)startPeopleArchives;
- (BOOL)startPeopleIndexingJob;
- (BOOL)startPeopleQueries;
- (BOOL)startTextProcessingJob;
- (BOOL)startTextQueries;
- (NSArray)protectionClasses;
- (NSDate)documentUnderstandingGenStartTime;
- (NSDate)embeddingGenStartTime;
- (NSDate)keyphraseGenStartTime;
- (NSDate)suggestedEventsGenStartTime;
- (NSString)corespotlightResourcesPath;
- (NSString)corespotlightResourcesRootPath;
- (NSString)deleteArchivePath;
- (NSString)eventArchivePath;
- (NSString)jobIdentifier;
- (NSString)journalArchivePath;
- (NSString)keyphraseArchivePath;
- (NSString)peopleArchivePath;
- (NSString)spotlightKnowledgeGraphConfigPath;
- (NSString)spotlightKnowledgeGraphPath;
- (NSString)spotlightKnowledgePath;
- (NSString)spotlightResourcesRootPath;
- (SKGJobContext)init;
- (id)allProtectionClasses;
- (id)deletesPathWithProtectionClass:(id)a3;
- (id)getEmbeddingGenCompletenessForBundle:(id)a3;
- (id)journalsPathWithProtectionClass:(id)a3;
- (id)peopleArchivePathWithProtectionClass:(id)a3;
- (id)updateArchivePathWithCurrentDateAndDeviceUnlocked:(BOOL)a3 isCleanupPath:(BOOL)a4;
- (id)updateArchivePathWithProtectionClass:(id)a3;
- (int64_t)getGenCompleteDayString:(id)a3 forBundle:(id)a4;
- (int64_t)graphVersion;
- (void)_resetWithGroup:(id)a3;
- (void)commonInitWithResourcePath:(id)a3 bundleIdentifier:(id)a4 isProtected:(BOOL)a5 isDeviceUnlocked:(BOOL)a6 force:(BOOL)a7;
- (void)destroyWithGroup:(id)a3;
- (void)end;
- (void)ignoreWithGroup:(id)a3;
- (void)loadWithGroup:(id)a3;
- (void)logArchiveItemsProcessed:(id)a3;
- (void)logArchiveWithName:(id)a3 protectionClass:(id)a4;
- (void)logError:(int64_t)a3 message:(id)a4;
- (void)logEvent:(int64_t)a3 message:(id)a4;
- (void)logFlag:(int64_t)a3 message:(id)a4;
- (void)logJournalItemsProcessed:(id)a3;
- (void)logProcessedArchiveWithName:(id)a3 protectionClass:(id)a4;
- (void)logProcessedJournalWithName:(id)a3 protectionClass:(id)a4;
- (void)logQueryItemsArchived:(id)a3;
- (void)logQueryItemsProcessed:(id)a3;
- (void)logQueryItemsUpdated:(id)a3;
- (void)logReindexCount:(unint64_t)a3;
- (void)logSignpost:(int64_t)a3 message:(id)a4;
- (void)resetWithGroup:(id)a3;
- (void)setEmbeddingGenCompleteness:(id)a3 forBundle:(id)a4;
- (void)setGenCompleteDayString:(id)a3 forBundle:(id)a4 day:(int64_t)a5;
- (void)start;
- (void)timeout;
@end

@implementation SKGJobContext

- (SKGJobContext)init
{
  v5.receiver = self;
  v5.super_class = SKGJobContext;
  v2 = [(SKGJobContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKGJobContext *)v2 commonInitWithResourcePath:0 bundleIdentifier:@"com.apple.spotlight.contacts" isProtected:1 isDeviceUnlocked:0 force:1];
  }

  return v3;
}

- (void)commonInitWithResourcePath:(id)a3 bundleIdentifier:(id)a4 isProtected:(BOOL)a5 isDeviceUnlocked:(BOOL)a6 force:(BOOL)a7
{
  v25 = a3;
  v13 = a4;
  if (a7)
  {
    [MEMORY[0x277D657A8] sharedProcessorListener];
  }

  else
  {
    [MEMORY[0x277D657A8] sharedClientListener];
  }
  v14 = ;
  listener = self->_listener;
  self->_listener = v14;

  objc_storeStrong(&self->_spotlightResourcesRoot, a3);
  objc_storeStrong(&self->_bundleIdentifier, a4);
  currentMessage = self->_currentMessage;
  self->_currentMessage = 0;

  events = self->_events;
  self->_events = MEMORY[0x277CBEBF8];

  self->_isProtectedActivity = a5;
  self->_isDeviceUnlocked = a6;
  self->_isForTesting = 0;
  v18 = [MEMORY[0x277D657A0] sharedContext];
  self->_maxItemCountPerJob = [v18 maxQueryItemCount];

  v19 = [MEMORY[0x277D657A0] sharedContext];
  self->_maxItemCountPerBatch = [v19 maxItemBatchCount];

  self->_upgradePathIsOldThresInWeeks = 2;
  v20 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGJobContext"];
  v21 = [v20 objectForKey:@"upgradePathIsOldThresInWeeks"];

  if (v21)
  {
    self->_upgradePathIsOldThresInWeeks = [v20 integerForKey:@"upgradePathIsOldThresInWeeks"];
  }

  self->_upgradePathCleanupAll = 0;
  v22 = [v20 objectForKey:@"upgradePathCleanupAll"];

  if (v22)
  {
    self->_upgradePathCleanupAll = [v20 BOOLForKey:@"upgradePathCleanupAll"];
  }

  self->_logFullItemIDs = [v20 BOOLForKey:@"logFullItemIDs"];
  v23 = objc_alloc_init(SKGKnowledgeFeedback);
  feedback = self->_feedback;
  self->_feedback = v23;
}

- (NSString)jobIdentifier
{
  if ([(SKGJobContext *)self debug])
  {
    v2 = @"V2.debug";
  }

  else
  {
    v2 = @"V2";
  }

  return v2;
}

- (NSString)corespotlightResourcesRootPath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSHomeDirectory();
  v4 = [v2 stringWithFormat:@"%@/%@", v3, @"Library/Spotlight"];

  return v4;
}

- (NSString)corespotlightResourcesPath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self corespotlightResourcesRootPath];
  v4 = [v2 stringWithFormat:@"%@/CoreSpotlight", v3];

  return v4;
}

- (NSString)spotlightResourcesRootPath
{
  spotlightResourcesRoot = self->_spotlightResourcesRoot;
  if (spotlightResourcesRoot)
  {
    v3 = spotlightResourcesRoot;
  }

  else
  {
    v3 = [(SKGJobContext *)self corespotlightResourcesPath];
  }

  return v3;
}

- (NSString)spotlightKnowledgePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightResourcesRootPath];
  v4 = [v2 stringWithFormat:@"%@/SpotlightKnowledge/index.V2", v3];

  return v4;
}

- (NSString)spotlightKnowledgeGraphConfigPath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/kg_config.mdplist", v3];

  return v4;
}

- (NSString)spotlightKnowledgeGraphPath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/KG", v3];

  return v4;
}

- (NSString)deleteArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/deletes", v3];

  return v4;
}

- (NSString)journalArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/journals", v3];

  return v4;
}

- (NSString)peopleArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/archives", v3];

  return v4;
}

- (NSString)keyphraseArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/keyphrases", v3];

  return v4;
}

- (NSString)eventArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/events", v3];

  return v4;
}

- (id)deletesPathWithProtectionClass:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(SKGJobContext *)self deleteArchivePath];
  v7 = [v4 stringWithFormat:@"%@/%@", v6, v5];

  return v7;
}

- (id)journalsPathWithProtectionClass:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(SKGJobContext *)self journalArchivePath];
  v7 = [v4 stringWithFormat:@"%@/%@", v6, v5];

  return v7;
}

- (id)peopleArchivePathWithProtectionClass:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(SKGJobContext *)self peopleArchivePath];
  v7 = [v4 stringWithFormat:@"%@/%@", v6, v5];

  return v7;
}

- (id)updateArchivePathWithProtectionClass:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(SKGJobContext *)self spotlightKnowledgePath];
  v7 = [v4 stringWithFormat:@"%@/updates/%@", v6, v5];

  return v7;
}

- (id)updateArchivePathWithCurrentDateAndDeviceUnlocked:(BOOL)a3 isCleanupPath:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd"];
  v9 = [v8 stringFromDate:v7];
  v10 = "locked";
  if (v5)
  {
    v10 = "unlocked";
  }

  v11 = "reindex";
  if (v4)
  {
    v11 = "cleanup";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%s/%@", v10, v11, v9];
  v13 = MEMORY[0x277CCACA8];
  v14 = [(SKGJobContext *)self spotlightKnowledgePath];
  v15 = [v13 stringWithFormat:@"%@/updates/%@", v14, v12];

  return v15;
}

- (void)logEvent:(int64_t)a3 message:(id)a4
{
  events = self->_events;
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithInteger:a3];
  v10 = [(NSArray *)events arrayByAddingObject:v9];
  v11 = self->_events;
  self->_events = v10;

  v12 = [(SKGJobContext *)self feedback];
  [v12 logEvent:a3 message:v8];
}

- (void)logError:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = [(SKGJobContext *)self feedback];
  [v7 logError:a3 message:v6];
}

- (void)logFlag:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = [(SKGJobContext *)self feedback];
  [v7 logFlag:a3 message:v6];

  currentMessage = self->_currentMessage;
  self->_currentMessage = v6;
}

- (void)logSignpost:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = [(SKGJobContext *)self feedback];
  [v7 logSignpost:a3 message:v6];
}

- (void)logReindexCount:(unint64_t)a3
{
  v6 = [(SKGJobContext *)self feedback];
  v5 = [(SKGJobContext *)self taskName];
  [v6 logUpdateTaskReindexCount:a3 taskName:v5];
}

- (int64_t)graphVersion
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 graphVersion];

  return v3;
}

- (void)start
{
  v2 = [(SKGJobContext *)self feedback];
  [v2 logStart];
}

- (void)end
{
  v2 = [(SKGJobContext *)self feedback];
  [v2 logEnd];
}

- (void)timeout
{
  v2 = [(SKGJobContext *)self feedback];
  [v2 logFlag:17 message:@"didTimeout"];
}

- (void)loadWithGroup:(id)a3
{
  v25 = a3;
  if ([(SKGJobContext *)self shouldIndexPeople]|| [(SKGJobContext *)self shouldAnalyzeGraph])
  {
    v4 = [[SKGDiskManager alloc] initWithJobContext:self];
    v5 = [(SKGJobContext *)self spotlightKnowledgeGraphConfigPath];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if (v7)
    {
      v8 = [[SKGConfig alloc] initWithConfigPath:v5];
      v9 = [(SKGConfig *)v8 resourceVersion];
      if (v9 == [(SKGJobContext *)self graphVersion])
      {
        v10 = [(SKGConfig *)v8 releaseVersion];
        v11 = [MEMORY[0x277D657A0] sharedContext];
        v12 = [v11 releaseVersion];

        if (v10 == v12)
        {
LABEL_9:
          if (![(SKGJobContext *)self debug])
          {
            v13 = [(SKGJobContext *)self protectionClasses];
            [(SKGDiskManager *)v4 transferJournalsForProtectionClasses:v13];
          }

          [(SKGDiskManager *)v4 refresh];
          v14 = [(SKGDiskManager *)v4 graphSize];
          v15 = [MEMORY[0x277D657A0] sharedContext];
          v16 = [v15 maxGraphSize];

          if (v14 > v16)
          {
            [(SKGJobContext *)self logError:3 message:@"graph too large"];
          }

          v17 = [(SKGDiskManager *)v4 peopleArchiveSize];
          v18 = [MEMORY[0x277D657A0] sharedContext];
          v19 = [v18 maxArchiveSize];

          if (v17 > v19)
          {
            [(SKGJobContext *)self logError:6 message:@"archive size too large"];
          }

          v20 = [(SKGDiskManager *)v4 journalsSize];
          v21 = [MEMORY[0x277D657A0] sharedContext];
          if (v20 <= [v21 maxJournalSize])
          {
            v22 = [(SKGDiskManager *)v4 deletesSize];
            v23 = [MEMORY[0x277D657A0] sharedContext];
            v24 = [v23 maxJournalSize];

            if (v22 <= v24)
            {
LABEL_19:

              goto LABEL_20;
            }
          }

          else
          {
          }

          [(SKGJobContext *)self logError:7 message:@"journal size too large"];
          goto LABEL_19;
        }
      }

      [(SKGJobContext *)self logError:5 message:@"graph too old"];
      [(SKGDiskManager *)v4 resetWithGroup:v25];
      [(SKGJobContext *)self _resetWithGroup:v25];
    }

    else
    {
      [(SKGDiskManager *)v4 resetWithGroup:v25];
      [(SKGJobContext *)self _resetWithGroup:v25];
    }

    v8 = 0;
    goto LABEL_9;
  }

LABEL_20:
}

- (void)ignoreWithGroup:(id)a3
{
  v3 = [(SKGJobContext *)self feedback];
  [v3 logFlag:10 message:@"didIgnore"];
}

- (void)_resetWithGroup:(id)a3
{
  v4 = [(SKGJobContext *)self feedback];
  v5 = [v4 graphVersion];

  v6 = [(SKGJobContext *)self feedback];
  [v6 clear];

  v7 = [(SKGJobContext *)self feedback];
  [v7 logGraphVersion:v5 + 1];

  v8 = [(SKGJobContext *)self feedback];
  [v8 logFlag:11 message:@"didReset"];
}

- (void)resetWithGroup:(id)a3
{
  v4 = a3;
  v5 = [[SKGDiskManager alloc] initWithJobContext:self];
  [(SKGDiskManager *)v5 resetWithGroup:v4];
  [(SKGJobContext *)self _resetWithGroup:v4];
}

- (void)destroyWithGroup:(id)a3
{
  v4 = a3;
  v5 = [[SKGDiskManager alloc] initWithJobContext:self];
  [(SKGDiskManager *)v5 destroyWithGroup:v4];
}

- (BOOL)shouldIgnore
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGJobContext *)self feedback];
  v4 = 1;
  v5 = [v3 hasFlag:1];

  if ((v5 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [&unk_2846E83E8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(&unk_2846E83E8);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(SKGJobContext *)self feedback];
          LOBYTE(v10) = [v11 hasError:{objc_msgSend(v10, "intValue")}];

          if (v10)
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v7 = [&unk_2846E83E8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v4 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)shouldReset
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SKGJobContext *)self feedback];
  v4 = [v3 hasEvent:7];

  if ((v4 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [&unk_2846E8400 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
      goto LABEL_3;
    }

    v7 = v5;
    v8 = *v14;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(&unk_2846E8400);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(SKGJobContext *)self feedback];
      LOBYTE(v10) = [v11 hasError:{objc_msgSend(v10, "intValue")}];

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [&unk_2846E8400 countByEnumeratingWithState:&v13 objects:v17 count:16];
        LOBYTE(v5) = 0;
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  LOBYTE(v5) = 1;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)shouldDestroy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SKGJobContext *)self feedback];
  v4 = [v3 hasFlag:3];

  if ((v4 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [&unk_2846E8418 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v7)
    {
LABEL_12:
      result = [(SKGSystemListener *)self->_listener hasDiskCapacity]^ 1;
      goto LABEL_3;
    }

    v8 = v7;
    v9 = *v14;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(&unk_2846E8418);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = [(SKGJobContext *)self feedback];
      LOBYTE(v11) = [v12 hasError:{objc_msgSend(v11, "intValue")}];

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [&unk_2846E8418 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  result = 1;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)allProtectionClasses
{
  v7[6] = *MEMORY[0x277D85DE8];
  if (self->_isProtectedActivity)
  {
    v2 = *MEMORY[0x277CCA198];
    v7[0] = *MEMORY[0x277CCA190];
    v7[1] = v2;
    v3 = *MEMORY[0x277CCA1A0];
    v7[2] = *MEMORY[0x277CCA1A8];
    v7[3] = v3;
    v7[4] = @"MobileMailIndex";
    v7[5] = @"Priority";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  }

  else
  {
    v4 = &unk_2846E8430;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)protectionClasses
{
  v13[6] = *MEMORY[0x277D85DE8];
  if (self->_isProtectedActivity)
  {
    if (self->_isForTesting)
    {
      v2 = *MEMORY[0x277CCA198];
      v13[0] = *MEMORY[0x277CCA190];
      v13[1] = v2;
      v3 = *MEMORY[0x277CCA1A0];
      v13[2] = *MEMORY[0x277CCA1A8];
      v13[3] = v3;
      v13[4] = @"MobileMailIndex";
      v13[5] = @"Priority";
      v4 = MEMORY[0x277CBEA60];
      v5 = v13;
      v6 = 6;
    }

    else
    {
      if (self->_isDeviceUnlocked)
      {
        v8 = *MEMORY[0x277CCA198];
        v12[0] = *MEMORY[0x277CCA190];
        v12[1] = v8;
        v12[2] = *MEMORY[0x277CCA1A8];
        v4 = MEMORY[0x277CBEA60];
        v5 = v12;
      }

      else
      {
        v11[0] = *MEMORY[0x277CCA1A0];
        v11[1] = @"MobileMailIndex";
        v11[2] = @"Priority";
        v4 = MEMORY[0x277CBEA60];
        v5 = v11;
      }

      v6 = 3;
    }

    v7 = [v4 arrayWithObjects:v5 count:v6];
  }

  else
  {
    v7 = &unk_2846E8448;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)startTextProcessingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textProcessingJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:1 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedTextProcessingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textProcessingJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:2 message:self->_currentMessage];

  return 1;
}

- (BOOL)startItemUpdatesJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdatesJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:5 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedItemUpdatesJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdatesJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:6 message:self->_currentMessage];

  return 1;
}

- (BOOL)startPeopleIndexingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleIndexingJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:13 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleIndexingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleIndexingJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:14 message:self->_currentMessage];

  return 1;
}

- (BOOL)startGraphAnalysisJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"graphAnalysisJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:15 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphAnalysisJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"graphAnalysisJob";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:16 message:self->_currentMessage];

  return 1;
}

- (BOOL)startDeletes
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readDeleteJournals";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:19 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedDeletes
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readDeleteJournals";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:20 message:self->_currentMessage];

  return 1;
}

- (BOOL)startJournals
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readJournals";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:17 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedJournals
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readJournals";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:18 message:self->_currentMessage];

  return 1;
}

- (BOOL)startItemUpdates
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdates";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:5 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedItemUpdates
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdates";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:6 message:self->_currentMessage];

  return 1;
}

- (BOOL)startTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:24 message:self->_currentMessage];

  v5 = [(SKGJobContext *)self feedback];
  v6 = [v5 queryItemExtractedCount];
  v7 = [(SKGJobContext *)self maxItemCountPerJob];

  if (v6 >= v7)
  {
    v8 = [(SKGJobContext *)self feedback];
    [v8 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startFileTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"fileTextQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedFileTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"fileTextQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:24 message:self->_currentMessage];

  v5 = [(SKGJobContext *)self feedback];
  v6 = [v5 queryItemExtractedCount];
  v7 = [(SKGJobContext *)self maxItemCountPerJob];

  if (v6 >= v7)
  {
    v8 = [(SKGJobContext *)self feedback];
    [v8 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startPeopleArchives
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readPeopleArchives";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:21 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleArchives
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readPeopleArchives";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:22 message:self->_currentMessage];

  return 1;
}

- (BOOL)startPeopleQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleQueries";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:24 message:self->_currentMessage];

  v5 = [(SKGJobContext *)self feedback];
  v6 = [v5 queryItemExtractedCount];
  v7 = [(SKGJobContext *)self maxItemCountPerJob];

  if (v6 >= v7)
  {
    v8 = [(SKGJobContext *)self feedback];
    [v8 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startMegadomeIndexing
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"megadomeIndexing";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:25 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedMegadomeIndexing
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"megadomeIndexing";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:26 message:self->_currentMessage];

  return 1;
}

- (BOOL)startGraphAnalysis
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"analyzingGraph";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:27 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphAnalysis
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"analyzingGraph";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:28 message:self->_currentMessage];

  return 1;
}

- (BOOL)canDoGraphAnalysis
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 hasCurrentFlagWithName:@"didAnalyzeGraph"];

  return v3 ^ 1;
}

- (BOOL)startGraphScoring
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"scoringGraph";

  v4 = [(SKGJobContext *)self feedback];
  [v4 logSignpost:27 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphScoring
{
  v3 = [(SKGJobContext *)self feedback];
  [v3 logSignpost:30 message:self->_currentMessage];

  v4 = [(SKGJobContext *)self feedback];
  [v4 logFlag:21 message:@"didScoreGraph"];

  return 1;
}

- (BOOL)canDoGraphScoring
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 hasCurrentFlagWithName:@"didScoreGraph"];

  return v3 ^ 1;
}

- (BOOL)canDefer
{
  if (![(SKGJobContext *)self debug])
  {
    if ([(SKGJobContext *)self shouldProcessText])
    {
      v4 = [MEMORY[0x277D657A0] sharedContext];
      v5 = [v4 enableEventUpdater];

      if ((v5 & 1) == 0)
      {
        v6 = [(SKGJobContext *)self journalArchivePath];
        v7 = [(SKGJobContext *)self protectionClasses];
        v8 = &unk_2846E8460;
LABEL_8:
        v9 = fileSizeAtPathForProtectionClasses(v6, v7, v8, 0);

        v10 = [v9 objectForKeyedSubscript:@"fileCount"];
        v11 = [v10 intValue];

        v3 = v11 != 0;
LABEL_9:

        return v3;
      }
    }

    else
    {
      if ([(SKGJobContext *)self shouldIndexPeople])
      {
        v6 = [(SKGJobContext *)self peopleArchivePath];
        v7 = [(SKGJobContext *)self protectionClasses];
        v8 = &unk_2846E8478;
        goto LABEL_8;
      }

      if (![(SKGJobContext *)self shouldReportProgress])
      {
        v9 = [(SKGJobContext *)self feedback];
        [v9 elapsedTime];
        v3 = v13 < 600.0;
        goto LABEL_9;
      }
    }

    return 1;
  }

  return 0;
}

- (BOOL)done
{
  if ([(SKGJobContext *)self debug])
  {
    goto LABEL_2;
  }

  if ([(SKGJobContext *)self shouldProcessText])
  {
    v4 = [(SKGJobContext *)self feedback];
    v5 = v4;
    v6 = 23;
  }

  else if ([(SKGJobContext *)self shouldIndexPeople])
  {
    v4 = [(SKGJobContext *)self feedback];
    v5 = v4;
    v6 = 26;
  }

  else if ([(SKGJobContext *)self shouldAnalyzeGraph])
  {
    v4 = [(SKGJobContext *)self feedback];
    v5 = v4;
    v6 = 27;
  }

  else
  {
    if (![(SKGJobContext *)self shouldReportProgress])
    {
LABEL_2:
      LOBYTE(v3) = 1;
      return v3;
    }

    v4 = [(SKGJobContext *)self feedback];
    v5 = v4;
    v6 = 28;
  }

  if ([v4 hasFlag:v6])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = ![(SKGJobContext *)self canDefer];
  }

  return v3;
}

- (void)logQueryItemsUpdated:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(SKGJobContext *)self feedback];
        [v11 logUpdatedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logQueryItemsArchived:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(SKGJobContext *)self feedback];
        [v11 logArchivedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logQueryItemsProcessed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(SKGJobContext *)self feedback];
        [v11 logExtractedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logJournalItemsProcessed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(SKGJobContext *)self feedback];
        [v11 logExtractedJournalItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveItemsProcessed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(SKGJobContext *)self feedback];
        [v11 logExtractedArchiveItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveWithName:(id)a3 protectionClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKGJobContext *)self feedback];
  [v8 logArchiveWithIdentifier:v7 protectionClass:v6];
}

- (void)logProcessedArchiveWithName:(id)a3 protectionClass:(id)a4
{
  v5 = a3;
  v6 = [(SKGJobContext *)self feedback];
  [v6 logProcessedArchiveWithName:v5];
}

- (void)logProcessedJournalWithName:(id)a3 protectionClass:(id)a4
{
  v5 = a3;
  v6 = [(SKGJobContext *)self feedback];
  [v6 logProcessedJournalWithName:v5];
}

- (int64_t)getGenCompleteDayString:(id)a3 forBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKGJobContext *)self feedback];
  v9 = [v8 getGenCompleteDayString:v7 forBundle:v6];

  return v9;
}

- (void)setGenCompleteDayString:(id)a3 forBundle:(id)a4 day:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SKGJobContext *)self feedback];
  [v10 setGenCompleteDayString:v9 forBundle:v8 day:a5];
}

- (id)getEmbeddingGenCompletenessForBundle:(id)a3
{
  v4 = a3;
  v5 = [(SKGJobContext *)self feedback];
  v6 = [v5 getEmbeddingGenCompletenessForBundle:v4];

  return v6;
}

- (void)setEmbeddingGenCompleteness:(id)a3 forBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKGJobContext *)self feedback];
  [v8 setEmbeddingGenCompleteness:v7 forBundle:v6];
}

- (NSDate)embeddingGenStartTime
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 embeddingGenStartTime];

  return v3;
}

- (NSDate)suggestedEventsGenStartTime
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 suggestedEventsGenStartTime];

  return v3;
}

- (NSDate)documentUnderstandingGenStartTime
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 documentUnderstandingGenStartTime];

  return v3;
}

- (NSDate)keyphraseGenStartTime
{
  v2 = [(SKGJobContext *)self feedback];
  v3 = [v2 keyphraseGenStartTime];

  return v3;
}

@end