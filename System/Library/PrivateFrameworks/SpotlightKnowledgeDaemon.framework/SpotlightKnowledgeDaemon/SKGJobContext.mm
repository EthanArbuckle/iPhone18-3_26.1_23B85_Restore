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
- (id)deletesPathWithProtectionClass:(id)class;
- (id)getEmbeddingGenCompletenessForBundle:(id)bundle;
- (id)journalsPathWithProtectionClass:(id)class;
- (id)peopleArchivePathWithProtectionClass:(id)class;
- (id)updateArchivePathWithCurrentDateAndDeviceUnlocked:(BOOL)unlocked isCleanupPath:(BOOL)path;
- (id)updateArchivePathWithProtectionClass:(id)class;
- (int64_t)getGenCompleteDayString:(id)string forBundle:(id)bundle;
- (int64_t)graphVersion;
- (void)_resetWithGroup:(id)group;
- (void)commonInitWithResourcePath:(id)path bundleIdentifier:(id)identifier isProtected:(BOOL)protected isDeviceUnlocked:(BOOL)unlocked force:(BOOL)force;
- (void)destroyWithGroup:(id)group;
- (void)end;
- (void)ignoreWithGroup:(id)group;
- (void)loadWithGroup:(id)group;
- (void)logArchiveItemsProcessed:(id)processed;
- (void)logArchiveWithName:(id)name protectionClass:(id)class;
- (void)logError:(int64_t)error message:(id)message;
- (void)logEvent:(int64_t)event message:(id)message;
- (void)logFlag:(int64_t)flag message:(id)message;
- (void)logJournalItemsProcessed:(id)processed;
- (void)logProcessedArchiveWithName:(id)name protectionClass:(id)class;
- (void)logProcessedJournalWithName:(id)name protectionClass:(id)class;
- (void)logQueryItemsArchived:(id)archived;
- (void)logQueryItemsProcessed:(id)processed;
- (void)logQueryItemsUpdated:(id)updated;
- (void)logReindexCount:(unint64_t)count;
- (void)logSignpost:(int64_t)signpost message:(id)message;
- (void)resetWithGroup:(id)group;
- (void)setEmbeddingGenCompleteness:(id)completeness forBundle:(id)bundle;
- (void)setGenCompleteDayString:(id)string forBundle:(id)bundle day:(int64_t)day;
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

- (void)commonInitWithResourcePath:(id)path bundleIdentifier:(id)identifier isProtected:(BOOL)protected isDeviceUnlocked:(BOOL)unlocked force:(BOOL)force
{
  pathCopy = path;
  identifierCopy = identifier;
  if (force)
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

  objc_storeStrong(&self->_spotlightResourcesRoot, path);
  objc_storeStrong(&self->_bundleIdentifier, identifier);
  currentMessage = self->_currentMessage;
  self->_currentMessage = 0;

  events = self->_events;
  self->_events = MEMORY[0x277CBEBF8];

  self->_isProtectedActivity = protected;
  self->_isDeviceUnlocked = unlocked;
  self->_isForTesting = 0;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  self->_maxItemCountPerJob = [mEMORY[0x277D657A0] maxQueryItemCount];

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  self->_maxItemCountPerBatch = [mEMORY[0x277D657A0]2 maxItemBatchCount];

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
  corespotlightResourcesRootPath = [(SKGJobContext *)self corespotlightResourcesRootPath];
  v4 = [v2 stringWithFormat:@"%@/CoreSpotlight", corespotlightResourcesRootPath];

  return v4;
}

- (NSString)spotlightResourcesRootPath
{
  spotlightResourcesRoot = self->_spotlightResourcesRoot;
  if (spotlightResourcesRoot)
  {
    corespotlightResourcesPath = spotlightResourcesRoot;
  }

  else
  {
    corespotlightResourcesPath = [(SKGJobContext *)self corespotlightResourcesPath];
  }

  return corespotlightResourcesPath;
}

- (NSString)spotlightKnowledgePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightResourcesRootPath = [(SKGJobContext *)self spotlightResourcesRootPath];
  v4 = [v2 stringWithFormat:@"%@/SpotlightKnowledge/index.V2", spotlightResourcesRootPath];

  return v4;
}

- (NSString)spotlightKnowledgeGraphConfigPath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/kg_config.mdplist", spotlightKnowledgePath];

  return v4;
}

- (NSString)spotlightKnowledgeGraphPath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/KG", spotlightKnowledgePath];

  return v4;
}

- (NSString)deleteArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/deletes", spotlightKnowledgePath];

  return v4;
}

- (NSString)journalArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/journals", spotlightKnowledgePath];

  return v4;
}

- (NSString)peopleArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/archives", spotlightKnowledgePath];

  return v4;
}

- (NSString)keyphraseArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/keyphrases", spotlightKnowledgePath];

  return v4;
}

- (NSString)eventArchivePath
{
  v2 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v4 = [v2 stringWithFormat:@"%@/events", spotlightKnowledgePath];

  return v4;
}

- (id)deletesPathWithProtectionClass:(id)class
{
  v4 = MEMORY[0x277CCACA8];
  classCopy = class;
  deleteArchivePath = [(SKGJobContext *)self deleteArchivePath];
  classCopy = [v4 stringWithFormat:@"%@/%@", deleteArchivePath, classCopy];

  return classCopy;
}

- (id)journalsPathWithProtectionClass:(id)class
{
  v4 = MEMORY[0x277CCACA8];
  classCopy = class;
  journalArchivePath = [(SKGJobContext *)self journalArchivePath];
  classCopy = [v4 stringWithFormat:@"%@/%@", journalArchivePath, classCopy];

  return classCopy;
}

- (id)peopleArchivePathWithProtectionClass:(id)class
{
  v4 = MEMORY[0x277CCACA8];
  classCopy = class;
  peopleArchivePath = [(SKGJobContext *)self peopleArchivePath];
  classCopy = [v4 stringWithFormat:@"%@/%@", peopleArchivePath, classCopy];

  return classCopy;
}

- (id)updateArchivePathWithProtectionClass:(id)class
{
  v4 = MEMORY[0x277CCACA8];
  classCopy = class;
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  classCopy = [v4 stringWithFormat:@"%@/updates/%@", spotlightKnowledgePath, classCopy];

  return classCopy;
}

- (id)updateArchivePathWithCurrentDateAndDeviceUnlocked:(BOOL)unlocked isCleanupPath:(BOOL)path
{
  pathCopy = path;
  unlockedCopy = unlocked;
  date = [MEMORY[0x277CBEAA8] date];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd"];
  v9 = [v8 stringFromDate:date];
  v10 = "locked";
  if (unlockedCopy)
  {
    v10 = "unlocked";
  }

  v11 = "reindex";
  if (pathCopy)
  {
    v11 = "cleanup";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%s/%@", v10, v11, v9];
  v13 = MEMORY[0x277CCACA8];
  spotlightKnowledgePath = [(SKGJobContext *)self spotlightKnowledgePath];
  v15 = [v13 stringWithFormat:@"%@/updates/%@", spotlightKnowledgePath, v12];

  return v15;
}

- (void)logEvent:(int64_t)event message:(id)message
{
  events = self->_events;
  v7 = MEMORY[0x277CCABB0];
  messageCopy = message;
  v9 = [v7 numberWithInteger:event];
  v10 = [(NSArray *)events arrayByAddingObject:v9];
  v11 = self->_events;
  self->_events = v10;

  feedback = [(SKGJobContext *)self feedback];
  [feedback logEvent:event message:messageCopy];
}

- (void)logError:(int64_t)error message:(id)message
{
  messageCopy = message;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logError:error message:messageCopy];
}

- (void)logFlag:(int64_t)flag message:(id)message
{
  messageCopy = message;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logFlag:flag message:messageCopy];

  currentMessage = self->_currentMessage;
  self->_currentMessage = messageCopy;
}

- (void)logSignpost:(int64_t)signpost message:(id)message
{
  messageCopy = message;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:signpost message:messageCopy];
}

- (void)logReindexCount:(unint64_t)count
{
  feedback = [(SKGJobContext *)self feedback];
  taskName = [(SKGJobContext *)self taskName];
  [feedback logUpdateTaskReindexCount:count taskName:taskName];
}

- (int64_t)graphVersion
{
  feedback = [(SKGJobContext *)self feedback];
  graphVersion = [feedback graphVersion];

  return graphVersion;
}

- (void)start
{
  feedback = [(SKGJobContext *)self feedback];
  [feedback logStart];
}

- (void)end
{
  feedback = [(SKGJobContext *)self feedback];
  [feedback logEnd];
}

- (void)timeout
{
  feedback = [(SKGJobContext *)self feedback];
  [feedback logFlag:17 message:@"didTimeout"];
}

- (void)loadWithGroup:(id)group
{
  groupCopy = group;
  if ([(SKGJobContext *)self shouldIndexPeople]|| [(SKGJobContext *)self shouldAnalyzeGraph])
  {
    v4 = [[SKGDiskManager alloc] initWithJobContext:self];
    spotlightKnowledgeGraphConfigPath = [(SKGJobContext *)self spotlightKnowledgeGraphConfigPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager fileExistsAtPath:spotlightKnowledgeGraphConfigPath];

    if (v7)
    {
      v8 = [[SKGConfig alloc] initWithConfigPath:spotlightKnowledgeGraphConfigPath];
      resourceVersion = [(SKGConfig *)v8 resourceVersion];
      if (resourceVersion == [(SKGJobContext *)self graphVersion])
      {
        releaseVersion = [(SKGConfig *)v8 releaseVersion];
        mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
        releaseVersion2 = [mEMORY[0x277D657A0] releaseVersion];

        if (releaseVersion == releaseVersion2)
        {
LABEL_9:
          if (![(SKGJobContext *)self debug])
          {
            protectionClasses = [(SKGJobContext *)self protectionClasses];
            [(SKGDiskManager *)v4 transferJournalsForProtectionClasses:protectionClasses];
          }

          [(SKGDiskManager *)v4 refresh];
          graphSize = [(SKGDiskManager *)v4 graphSize];
          mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
          maxGraphSize = [mEMORY[0x277D657A0]2 maxGraphSize];

          if (graphSize > maxGraphSize)
          {
            [(SKGJobContext *)self logError:3 message:@"graph too large"];
          }

          peopleArchiveSize = [(SKGDiskManager *)v4 peopleArchiveSize];
          mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
          maxArchiveSize = [mEMORY[0x277D657A0]3 maxArchiveSize];

          if (peopleArchiveSize > maxArchiveSize)
          {
            [(SKGJobContext *)self logError:6 message:@"archive size too large"];
          }

          journalsSize = [(SKGDiskManager *)v4 journalsSize];
          mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
          if (journalsSize <= [mEMORY[0x277D657A0]4 maxJournalSize])
          {
            deletesSize = [(SKGDiskManager *)v4 deletesSize];
            mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
            maxJournalSize = [mEMORY[0x277D657A0]5 maxJournalSize];

            if (deletesSize <= maxJournalSize)
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
      [(SKGDiskManager *)v4 resetWithGroup:groupCopy];
      [(SKGJobContext *)self _resetWithGroup:groupCopy];
    }

    else
    {
      [(SKGDiskManager *)v4 resetWithGroup:groupCopy];
      [(SKGJobContext *)self _resetWithGroup:groupCopy];
    }

    v8 = 0;
    goto LABEL_9;
  }

LABEL_20:
}

- (void)ignoreWithGroup:(id)group
{
  feedback = [(SKGJobContext *)self feedback];
  [feedback logFlag:10 message:@"didIgnore"];
}

- (void)_resetWithGroup:(id)group
{
  feedback = [(SKGJobContext *)self feedback];
  graphVersion = [feedback graphVersion];

  feedback2 = [(SKGJobContext *)self feedback];
  [feedback2 clear];

  feedback3 = [(SKGJobContext *)self feedback];
  [feedback3 logGraphVersion:graphVersion + 1];

  feedback4 = [(SKGJobContext *)self feedback];
  [feedback4 logFlag:11 message:@"didReset"];
}

- (void)resetWithGroup:(id)group
{
  groupCopy = group;
  v5 = [[SKGDiskManager alloc] initWithJobContext:self];
  [(SKGDiskManager *)v5 resetWithGroup:groupCopy];
  [(SKGJobContext *)self _resetWithGroup:groupCopy];
}

- (void)destroyWithGroup:(id)group
{
  groupCopy = group;
  v5 = [[SKGDiskManager alloc] initWithJobContext:self];
  [(SKGDiskManager *)v5 destroyWithGroup:groupCopy];
}

- (BOOL)shouldIgnore
{
  v19 = *MEMORY[0x277D85DE8];
  feedback = [(SKGJobContext *)self feedback];
  v4 = 1;
  v5 = [feedback hasFlag:1];

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
          feedback2 = [(SKGJobContext *)self feedback];
          LOBYTE(v10) = [feedback2 hasError:{objc_msgSend(v10, "intValue")}];

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
  feedback = [(SKGJobContext *)self feedback];
  v4 = [feedback hasEvent:7];

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
      feedback2 = [(SKGJobContext *)self feedback];
      LOBYTE(v10) = [feedback2 hasError:{objc_msgSend(v10, "intValue")}];

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
  feedback = [(SKGJobContext *)self feedback];
  v4 = [feedback hasFlag:3];

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
      feedback2 = [(SKGJobContext *)self feedback];
      LOBYTE(v11) = [feedback2 hasError:{objc_msgSend(v11, "intValue")}];

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

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:1 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedTextProcessingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textProcessingJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:2 message:self->_currentMessage];

  return 1;
}

- (BOOL)startItemUpdatesJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdatesJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:5 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedItemUpdatesJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdatesJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:6 message:self->_currentMessage];

  return 1;
}

- (BOOL)startPeopleIndexingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleIndexingJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:13 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleIndexingJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleIndexingJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:14 message:self->_currentMessage];

  return 1;
}

- (BOOL)startGraphAnalysisJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"graphAnalysisJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:15 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphAnalysisJob
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"graphAnalysisJob";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:16 message:self->_currentMessage];

  return 1;
}

- (BOOL)startDeletes
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readDeleteJournals";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:19 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedDeletes
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readDeleteJournals";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:20 message:self->_currentMessage];

  return 1;
}

- (BOOL)startJournals
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readJournals";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:17 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedJournals
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readJournals";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:18 message:self->_currentMessage];

  return 1;
}

- (BOOL)startItemUpdates
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdates";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:5 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedItemUpdates
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"itemUpdates";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:6 message:self->_currentMessage];

  return 1;
}

- (BOOL)startTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"textQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:24 message:self->_currentMessage];

  feedback2 = [(SKGJobContext *)self feedback];
  queryItemExtractedCount = [feedback2 queryItemExtractedCount];
  maxItemCountPerJob = [(SKGJobContext *)self maxItemCountPerJob];

  if (queryItemExtractedCount >= maxItemCountPerJob)
  {
    feedback3 = [(SKGJobContext *)self feedback];
    [feedback3 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startFileTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"fileTextQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedFileTextQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"fileTextQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:24 message:self->_currentMessage];

  feedback2 = [(SKGJobContext *)self feedback];
  queryItemExtractedCount = [feedback2 queryItemExtractedCount];
  maxItemCountPerJob = [(SKGJobContext *)self maxItemCountPerJob];

  if (queryItemExtractedCount >= maxItemCountPerJob)
  {
    feedback3 = [(SKGJobContext *)self feedback];
    [feedback3 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startPeopleArchives
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readPeopleArchives";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:21 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleArchives
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"readPeopleArchives";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:22 message:self->_currentMessage];

  return 1;
}

- (BOOL)startPeopleQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:23 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedPeopleQueries
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"peopleQueries";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:24 message:self->_currentMessage];

  feedback2 = [(SKGJobContext *)self feedback];
  queryItemExtractedCount = [feedback2 queryItemExtractedCount];
  maxItemCountPerJob = [(SKGJobContext *)self maxItemCountPerJob];

  if (queryItemExtractedCount >= maxItemCountPerJob)
  {
    feedback3 = [(SKGJobContext *)self feedback];
    [feedback3 logFlag:29 message:@"didHitMax"];
  }

  return 1;
}

- (BOOL)startMegadomeIndexing
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"megadomeIndexing";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:25 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedMegadomeIndexing
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"megadomeIndexing";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:26 message:self->_currentMessage];

  return 1;
}

- (BOOL)startGraphAnalysis
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"analyzingGraph";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:27 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphAnalysis
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"analyzingGraph";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:28 message:self->_currentMessage];

  return 1;
}

- (BOOL)canDoGraphAnalysis
{
  feedback = [(SKGJobContext *)self feedback];
  v3 = [feedback hasCurrentFlagWithName:@"didAnalyzeGraph"];

  return v3 ^ 1;
}

- (BOOL)startGraphScoring
{
  currentMessage = self->_currentMessage;
  self->_currentMessage = @"scoringGraph";

  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:27 message:self->_currentMessage];

  return 1;
}

- (BOOL)finishedGraphScoring
{
  feedback = [(SKGJobContext *)self feedback];
  [feedback logSignpost:30 message:self->_currentMessage];

  feedback2 = [(SKGJobContext *)self feedback];
  [feedback2 logFlag:21 message:@"didScoreGraph"];

  return 1;
}

- (BOOL)canDoGraphScoring
{
  feedback = [(SKGJobContext *)self feedback];
  v3 = [feedback hasCurrentFlagWithName:@"didScoreGraph"];

  return v3 ^ 1;
}

- (BOOL)canDefer
{
  if (![(SKGJobContext *)self debug])
  {
    if ([(SKGJobContext *)self shouldProcessText])
    {
      mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
      enableEventUpdater = [mEMORY[0x277D657A0] enableEventUpdater];

      if ((enableEventUpdater & 1) == 0)
      {
        journalArchivePath = [(SKGJobContext *)self journalArchivePath];
        protectionClasses = [(SKGJobContext *)self protectionClasses];
        v8 = &unk_2846E8460;
LABEL_8:
        feedback = fileSizeAtPathForProtectionClasses(journalArchivePath, protectionClasses, v8, 0);

        v10 = [feedback objectForKeyedSubscript:@"fileCount"];
        intValue = [v10 intValue];

        v3 = intValue != 0;
LABEL_9:

        return v3;
      }
    }

    else
    {
      if ([(SKGJobContext *)self shouldIndexPeople])
      {
        journalArchivePath = [(SKGJobContext *)self peopleArchivePath];
        protectionClasses = [(SKGJobContext *)self protectionClasses];
        v8 = &unk_2846E8478;
        goto LABEL_8;
      }

      if (![(SKGJobContext *)self shouldReportProgress])
      {
        feedback = [(SKGJobContext *)self feedback];
        [feedback elapsedTime];
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
    feedback = [(SKGJobContext *)self feedback];
    v5 = feedback;
    v6 = 23;
  }

  else if ([(SKGJobContext *)self shouldIndexPeople])
  {
    feedback = [(SKGJobContext *)self feedback];
    v5 = feedback;
    v6 = 26;
  }

  else if ([(SKGJobContext *)self shouldAnalyzeGraph])
  {
    feedback = [(SKGJobContext *)self feedback];
    v5 = feedback;
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

    feedback = [(SKGJobContext *)self feedback];
    v5 = feedback;
    v6 = 28;
  }

  if ([feedback hasFlag:v6])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = ![(SKGJobContext *)self canDefer];
  }

  return v3;
}

- (void)logQueryItemsUpdated:(id)updated
{
  v18 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [updatedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(updatedCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [updatedCopy objectForKeyedSubscript:v9];
        feedback = [(SKGJobContext *)self feedback];
        [feedback logUpdatedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [updatedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logQueryItemsArchived:(id)archived
{
  v18 = *MEMORY[0x277D85DE8];
  archivedCopy = archived;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [archivedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(archivedCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [archivedCopy objectForKeyedSubscript:v9];
        feedback = [(SKGJobContext *)self feedback];
        [feedback logArchivedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [archivedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logQueryItemsProcessed:(id)processed
{
  v18 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(processedCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [processedCopy objectForKeyedSubscript:v9];
        feedback = [(SKGJobContext *)self feedback];
        [feedback logExtractedQueryItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logJournalItemsProcessed:(id)processed
{
  v18 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(processedCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [processedCopy objectForKeyedSubscript:v9];
        feedback = [(SKGJobContext *)self feedback];
        [feedback logExtractedJournalItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveItemsProcessed:(id)processed
{
  v18 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(processedCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [processedCopy objectForKeyedSubscript:v9];
        feedback = [(SKGJobContext *)self feedback];
        [feedback logExtractedArchiveItemCount:objc_msgSend(v10 bundleIdentifier:{"intValue"), v9}];
      }

      v6 = [processedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveWithName:(id)name protectionClass:(id)class
{
  classCopy = class;
  nameCopy = name;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logArchiveWithIdentifier:nameCopy protectionClass:classCopy];
}

- (void)logProcessedArchiveWithName:(id)name protectionClass:(id)class
{
  nameCopy = name;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logProcessedArchiveWithName:nameCopy];
}

- (void)logProcessedJournalWithName:(id)name protectionClass:(id)class
{
  nameCopy = name;
  feedback = [(SKGJobContext *)self feedback];
  [feedback logProcessedJournalWithName:nameCopy];
}

- (int64_t)getGenCompleteDayString:(id)string forBundle:(id)bundle
{
  bundleCopy = bundle;
  stringCopy = string;
  feedback = [(SKGJobContext *)self feedback];
  v9 = [feedback getGenCompleteDayString:stringCopy forBundle:bundleCopy];

  return v9;
}

- (void)setGenCompleteDayString:(id)string forBundle:(id)bundle day:(int64_t)day
{
  bundleCopy = bundle;
  stringCopy = string;
  feedback = [(SKGJobContext *)self feedback];
  [feedback setGenCompleteDayString:stringCopy forBundle:bundleCopy day:day];
}

- (id)getEmbeddingGenCompletenessForBundle:(id)bundle
{
  bundleCopy = bundle;
  feedback = [(SKGJobContext *)self feedback];
  v6 = [feedback getEmbeddingGenCompletenessForBundle:bundleCopy];

  return v6;
}

- (void)setEmbeddingGenCompleteness:(id)completeness forBundle:(id)bundle
{
  bundleCopy = bundle;
  completenessCopy = completeness;
  feedback = [(SKGJobContext *)self feedback];
  [feedback setEmbeddingGenCompleteness:completenessCopy forBundle:bundleCopy];
}

- (NSDate)embeddingGenStartTime
{
  feedback = [(SKGJobContext *)self feedback];
  embeddingGenStartTime = [feedback embeddingGenStartTime];

  return embeddingGenStartTime;
}

- (NSDate)suggestedEventsGenStartTime
{
  feedback = [(SKGJobContext *)self feedback];
  suggestedEventsGenStartTime = [feedback suggestedEventsGenStartTime];

  return suggestedEventsGenStartTime;
}

- (NSDate)documentUnderstandingGenStartTime
{
  feedback = [(SKGJobContext *)self feedback];
  documentUnderstandingGenStartTime = [feedback documentUnderstandingGenStartTime];

  return documentUnderstandingGenStartTime;
}

- (NSDate)keyphraseGenStartTime
{
  feedback = [(SKGJobContext *)self feedback];
  keyphraseGenStartTime = [feedback keyphraseGenStartTime];

  return keyphraseGenStartTime;
}

@end