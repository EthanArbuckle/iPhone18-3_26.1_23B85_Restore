@interface CSEventListenerManager
- (CSEventListenerManager)initWithIndexType:(int)type indexPath:(id)path eventListener:(id)listener isManagedEventListener:(BOOL)eventListener homePathHash:(unsigned int)hash;
- (double)journalMapLock;
- (double)journalQueueLock;
- (id)description;
- (uint64_t)folderFd;
- (uint64_t)homePathHash;
- (uint64_t)indexType;
- (uint64_t)isAssertionsAllowed;
- (uint64_t)isManagedEventListener;
- (uint64_t)journalMap;
- (uint64_t)journalMapLockPtr;
- (uint64_t)journalQueue;
- (uint64_t)journalQueueLockPtr;
- (uint64_t)setTotalJournalSize:(uint64_t)result;
- (uint64_t)signposter;
- (uint64_t)throttled;
- (uint64_t)totalJournalSize;
- (void)_cleanupJournalsWithEvent:(id)event;
- (void)_loadJournals;
- (void)_processJournalsWithProcessedJournalsCount:(unint64_t)count completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteFirstJournal:(id)journal;
- (void)dropAssertions:(id)assertions;
- (void)handleMessage:(void *)message basePath:(void *)path withDispatchGroup:;
- (void)lostConnection;
- (void)processJournals;
- (void)purgeJournalsProactive;
- (void)runThrottledTaskAsync;
- (void)setSignposter:(uint64_t)signposter;
- (void)sortJournals;
- (void)startUp;
- (void)takeAssertions:(id)assertions;
@end

@implementation CSEventListenerManager

- (void)_loadJournals
{
  v68 = *MEMORY[0x277D85DE8];
  folderFd = self->_folderFd;
  bzero(v64, 0x400uLL);
  v4 = fcntl(folderFd, 50, v64) == -1 || v64[0] == 0;
  if (v4 || (v5 = opendir(v64)) == 0)
  {
    i = 0;
  }

  else
  {
    v6 = v5;
    v7 = readdir(v5);
    for (i = 0; v7; v7 = readdir(v6))
    {
      if ((v7->d_type | 2) == 0xA || v7->d_namlen > 0xFEu)
      {
        d_name = v7->d_name;
        if (!strncmp(v7->d_name, "evt_", 4uLL))
        {
          v10 = strrchr(d_name, 46);
          v11 = v10;
          if (!v10 || (v12 = v10 + 1, !v11[1]) || !strncmp(v12, "journal", 7uLL))
          {
            memset(v63, 0, 255);
            __strncpy_chk();
            if (SKGLogGetCurrentLoggingLevel() >= 7)
            {
              v13 = SKGLogUpdaterInit();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v62 = v63;
                _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "### found %s", buf, 0xCu);
              }
            }

            if (i)
            {
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v63];
              [i addObject:v14];
            }

            else
            {
              v15 = MEMORY[0x277CBEB18];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v63];
              i = [v15 arrayWithObject:v14];
            }
          }
        }
      }
    }

    closedir(v6);
  }

  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = i;
  v54 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v54)
  {
    v51 = 0;
    p_journalMapLock = &self->_journalMapLock;
    v53 = *v57;
    p_journalQueueLock = &self->_journalQueueLock;
    obj = v16;
    do
    {
      v17 = 0;
      do
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v56 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [(CSEventListenerManager *)v18 componentsSeparatedByString:@"_"];
        if ([v20 count] != 5 && SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v21 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *v64 = 138412290;
            selfCopy = v18;
            _os_log_error_impl(&dword_231B25000, v21, OS_LOG_TYPE_ERROR, "CSEventListenerManager#_loadJournals invalid journalName %@", v64, 0xCu);
          }
        }

        v22 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v23 = [v20 objectAtIndexedSubscript:4];
        v24 = [v23 componentsSeparatedByString:@"."];
        v25 = [v24 objectAtIndexedSubscript:0];
        v26 = [v22 numberFromString:v25];

        unsignedLongLongValue = [v26 unsignedLongLongValue];
        v28 = [v20 objectAtIndexedSubscript:2];
        v29 = [CSJournalProcessor alloc];
        if (self)
        {
          v30 = self->_folderFd;
        }

        else
        {
          v30 = 0;
        }

        v31 = [(CSJournalProcessor *)v29 initWithParentFd:v30 eventListener:self->_eventListener indexType:self->_indexType journalNumber:unsignedLongLongValue journalCookie:v28 name:v18];
        v33 = v31;
        if (v31)
        {
          v55 = v19;
          *(v31 + 13) = self->_isManagedEventListener;
          *(v31 + 64) = self->_homePathHash;
          objc_setProperty_nonatomic_copy(v31, v32, &__block_literal_global_4, 184);
          v34 = &self->_journalMapLock;
          pthread_rwlock_wrlock(p_journalMapLock);
          v35 = self->_journalMap;
          v36 = [v33 key];
          v37 = [(NSMutableDictionary *)v35 objectForKeyedSubscript:v36];

          if (!v37)
          {
            v38 = self->_journalMap;
            v39 = [v33 key];
            [(NSMutableDictionary *)v38 setObject:v33 forKeyedSubscript:v39];

            pthread_rwlock_unlock(p_journalMapLock);
            v34 = &self->_journalQueueLock;
            pthread_rwlock_wrlock(p_journalQueueLock);
            [(NSMutableArray *)self->_journalQueue addObject:v33];
            self->_totalJournalSize += v33[15];
          }

          pthread_rwlock_unlock(v34);
          v51 = 1;
          v19 = v55;
        }

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v54 != v17);
      v16 = obj;
      v40 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      v54 = v40;
    }

    while (v40);

    if (v51)
    {
      [(CSEventListenerManager *)self sortJournals];
      pthread_rwlock_rdlock(p_journalQueueLock);
      v41 = [(NSMutableArray *)self->_journalQueue count];
      if (v41)
      {
        v42 = v41;
        for (j = 0; j != v42; ++j)
        {
          if (self)
          {
            journalQueue = self->_journalQueue;
          }

          else
          {
            journalQueue = 0;
          }

          v45 = journalQueue;
          v46 = [(NSMutableArray *)v45 objectAtIndexedSubscript:j];

          [v46 markComplete:0 processingDone:0];
          if (SKGLogGetCurrentLoggingLevel() >= 5)
          {
            v47 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *v64 = 138412546;
              selfCopy = self;
              v66 = 2112;
              v67 = v46;
              _os_log_impl(&dword_231B25000, v47, OS_LOG_TYPE_INFO, "### loaded %@ - %@ ", v64, 0x16u);
            }
          }
        }
      }

      pthread_rwlock_unlock(p_journalQueueLock);
      v16 = obj;
    }
  }

  else
  {
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (CSEventListenerManager)initWithIndexType:(int)type indexPath:(id)path eventListener:(id)listener isManagedEventListener:(BOOL)eventListener homePathHash:(unsigned int)hash
{
  v71 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  listenerCopy = listener;
  v50.receiver = self;
  v50.super_class = CSEventListenerManager;
  v14 = [(CSEventListenerManager *)&v50 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_31;
  }

  v14->_indexType = type;
  objc_storeStrong(&v14->_eventListener, listener);
  v15->_isManagedEventListener = eventListener;
  v15->_folderFd = -1;
  v15->_homePathHash = hash;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [defaultManager fileExistsAtPath:pathCopy];

  if (!v17)
  {
LABEL_17:

    v15 = 0;
    goto LABEL_31;
  }

  v18 = open([pathCopy fileSystemRepresentation], 0x8000);
  v15->_folderFd = v18;
  if (v18 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v29 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CSEventListenerManager initWithIndexType:indexPath:eventListener:isManagedEventListener:homePathHash:];
      }
    }

    goto LABEL_17;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *__str = 0u;
  v56 = 0u;
  if (listenerCopy)
  {
    taskName = [listenerCopy[1] taskName];
    uTF8String = [taskName UTF8String];

    CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(type);
    snprintf(__str, 0x100uLL, "com.apple.spotlight.indexevents.%s.%s.queue", CSIndexTypeShortNameCString, uTF8String);
    v22 = listenerCopy[1];
  }

  else
  {
    [CSEventListenerManager initWithIndexType:type indexPath:__str eventListener:? isManagedEventListener:? homePathHash:?];
    v22 = 0;
  }

  v23 = v22;
  eventType = [v23 eventType];
  if (eventType != 2)
  {
    v25 = listenerCopy ? listenerCopy[1] : 0;
    listener = v25;
    if ([listener eventType] != 1)
    {

      v28 = 5;
LABEL_26:

      goto LABEL_28;
    }
  }

  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  enableEmbeddingsHigherQoS = [mEMORY[0x277D657A8] enableEmbeddingsHigherQoS];

  if (eventType != 2)
  {

    if ((enableEmbeddingsHigherQoS & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (enableEmbeddingsHigherQoS)
  {
LABEL_19:
    if (SKGLogGetCurrentLoggingLevel() < 5)
    {
      v28 = QOS_CLASS_UTILITY;
      goto LABEL_28;
    }

    v23 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      if (listenerCopy)
      {
        v30 = listenerCopy[1];
      }

      else
      {
        v30 = 0;
      }

      eventType2 = [v30 eventType];
      *buf = 67109376;
      v52 = eventType2;
      v53 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_231B25000, v23, OS_LOG_TYPE_INFO, "### Using QOS_CLASS_UTILITY for eventType: %u indexType: %u", buf, 0xEu);
    }

    v28 = QOS_CLASS_UTILITY;
    goto LABEL_26;
  }

LABEL_12:
  v28 = 5;
LABEL_28:
  v32 = dispatch_queue_attr_make_with_overcommit();
  v33 = dispatch_queue_attr_make_with_autorelease_frequency(v32, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v34 = dispatch_queue_attr_make_with_qos_class(v33, v28, 0);

  v35 = dispatch_queue_create(__str, v34);
  queue = v15->_queue;
  v15->_queue = v35;

  v37 = +[CSEventListenerTasksManager sharedInstance];
  v38 = v37;
  if (listenerCopy)
  {
    v39 = listenerCopy[1];
  }

  else
  {
    v39 = 0;
  }

  v15->_throttled = [v37 alwaysAllowed:v39] ^ 1;

  v40 = objc_opt_new();
  journalMap = v15->_journalMap;
  v15->_journalMap = v40;

  v42 = objc_opt_new();
  journalQueue = v15->_journalQueue;
  v15->_journalQueue = v42;

  v15->_totalJournalSize = 0;
  pthread_rwlock_init(&v15->_journalMapLock, 0);
  pthread_rwlock_init(&v15->_journalQueueLock, 0);
  v15->_isAssertionsAllowed = (type - 1) < 2;
  v44 = [[CSThresholdedTrigger alloc] initWithCountThreshold:1000 timeInterval:900.0];
  thresholdTrigger = v15->_thresholdTrigger;
  v15->_thresholdTrigger = v44;

  v46 = objc_alloc_init(CSEventListenerManagerDefaultSignposter);
  signposter = v15->_signposter;
  v15->_signposter = v46;

LABEL_31:
  v48 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)runThrottledTaskAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSEventListenerManager_runThrottledTaskAsync__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __47__CSEventListenerManager_runThrottledTaskAsync__block_invoke(uint64_t a1)
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      __47__CSEventListenerManager_runThrottledTaskAsync__block_invoke_cold_1(a1, v2);
    }
  }

  return [*(a1 + 32) processJournals];
}

- (void)startUp
{
  setDirstatsTrackingOnEventsPath();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CSEventListenerManager_startUp__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__CSEventListenerManager_startUp__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) _loadJournals];
  if (!*v1 || *(*v1 + 8) != 1 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 turboMode], v2, v3))
  {
    __33__CSEventListenerManager_startUp__block_invoke_cold_1(v1);
  }
}

- (void)dealloc
{
  folderFd = self->_folderFd;
  if (folderFd != -1)
  {
    close(folderFd);
    self->_folderFd = -1;
  }

  v4.receiver = self;
  v4.super_class = CSEventListenerManager;
  [(CSEventListenerManager *)&v4 dealloc];
}

- (void)deleteFirstJournal:(id)journal
{
  v15 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  if ([journalCopy loaded])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(CSEventListenerManager *)self deleteFirstJournal:journalCopy, v5];
      }
    }

    pthread_rwlock_wrlock(&self->_journalMapLock);
    journalMap = self->_journalMap;
    v7 = [journalCopy key];
    [(NSMutableDictionary *)journalMap removeObjectForKey:v7];

    pthread_rwlock_unlock(&self->_journalMapLock);
  }

  [journalCopy cooldown];
  pthread_rwlock_wrlock(&self->_journalQueueLock);
  [(NSMutableArray *)self->_journalQueue removeObjectAtIndex:0];
  totalJournalSize = self->_totalJournalSize;
  if (journalCopy)
  {
    self->_totalJournalSize = (totalJournalSize - journalCopy[15]) & ~((totalJournalSize - journalCopy[15]) >> 63);
    journalCopy[15] = 0;
  }

  else
  {
    self->_totalJournalSize = totalJournalSize & ~(totalJournalSize >> 63);
  }

  [journalCopy deleteFiles];
  pthread_rwlock_unlock(&self->_journalQueueLock);
  +[SKGUpdaterStore flushAndCommitAll];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v9 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = journalCopy;
      _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_INFO, "### finished %@ - %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)purgeJournalsProactive
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  *&v2 = 134218754;
  v15 = v2;
  while (1)
  {
    pthread_rwlock_rdlock(&self->_journalQueueLock);
    firstObject = [(NSMutableArray *)self->_journalQueue firstObject];
    v6 = [(NSMutableArray *)self->_journalQueue count];
    totalJournalSize = self->_totalJournalSize;
    pthread_rwlock_unlock(&self->_journalQueueLock);
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    v9 = mEMORY[0x277D657A0];
    v10 = (v4 & 1) != 0 ? [mEMORY[0x277D657A0] journalSizeGetBelowLimit] : objc_msgSend(mEMORY[0x277D657A0], "maxJournalSizeInQueue");
    v11 = v10;

    if (!firstObject || v6 < 2 || totalJournalSize <= v11)
    {
      break;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        journal_name = [firstObject journal_name];
        *buf = v15;
        v17 = totalJournalSize;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v11;
        v22 = 2080;
        v23 = journal_name;
        _os_log_error_impl(&dword_231B25000, v12, OS_LOG_TYPE_ERROR, "###purgeJournalsProactive Total journal size %lld (qc: %lu) exceeds %lld, skipping journal %s", buf, 0x2Au);
      }
    }

    v4 = 1;
    [firstObject markComplete:-1 processingDone:{1, v15}];
    [(CSEventListenerManager *)self deleteFirstJournal:firstObject];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processJournalsWithProcessedJournalsCount:(unint64_t)count completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(CSEventListenerManager *)self purgeJournalsProactive];
  pthread_rwlock_rdlock(&self->_journalQueueLock);
  firstObject = [(NSMutableArray *)self->_journalQueue firstObject];
  v8 = [(NSMutableArray *)self->_journalQueue count];
  pthread_rwlock_unlock(&self->_journalQueueLock);
  v9 = @"empty-queue";
  if (!firstObject)
  {
LABEL_31:
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v29 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [(NSMutableArray *)self->_journalQueue count];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_INFO, "### no journals available - %@, queue size = %lu", buf, 0x16u);
      }
    }

    v31 = +[CSEventListenerTasksManager sharedInstance];
    eventListener = self->_eventListener;
    if (eventListener)
    {
      delegate = eventListener->_delegate;
    }

    else
    {
      delegate = 0;
    }

    v34 = eventListener;
    [v31 endJobForDelegate:delegate];

    handlerCopy[2](handlerCopy, count, v9);
    goto LABEL_38;
  }

  while (([firstObject isComplete] & 1) != 0)
  {
    if (v8 == 1 && ([firstObject processingDone] & 1) == 0)
    {

      v9 = @"last-journal";
      goto LABEL_31;
    }

LABEL_12:
    [(CSEventListenerManager *)self deleteFirstJournal:firstObject];
    pthread_rwlock_rdlock(&self->_journalQueueLock);
    firstObject2 = [(NSMutableArray *)self->_journalQueue firstObject];

    v8 = [(NSMutableArray *)self->_journalQueue count];
    pthread_rwlock_unlock(&self->_journalQueueLock);
    firstObject = firstObject2;
    if (!firstObject2)
    {
      goto LABEL_31;
    }
  }

  [firstObject warmup];
  if ([firstObject warmedup])
  {
    goto LABEL_18;
  }

  v10 = [firstObject warmupFailCtr] < 10;
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (!v10)
  {
    if (CurrentLoggingLevel >= 2)
    {
      v12 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        journal_name = [firstObject journal_name];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2080;
        *&buf[14] = journal_name;
        _os_log_error_impl(&dword_231B25000, v12, OS_LOG_TYPE_ERROR, "### Unable to warmup %@ - %s, deleting it.", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

  if (CurrentLoggingLevel >= 2)
  {
    v15 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CSEventListenerManager _processJournalsWithProcessedJournalsCount:firstObject completionHandler:?];
    }
  }

LABEL_18:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"processJournals %@", self];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v17 = v16;
  [v16 UTF8String];
  v48 = os_transaction_create();
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v18 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v41 = 138412546;
      selfCopy2 = self;
      v43 = 2112;
      v44 = firstObject;
      _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_INFO, "### batch start %@ - %@", v41, 0x16u);
    }
  }

  queue = self->_queue;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__CSEventListenerManager__processJournalsWithProcessedJournalsCount_completionHandler___block_invoke;
  v36[3] = &unk_27893CEE0;
  v36[4] = self;
  v20 = firstObject;
  v37 = v20;
  countCopy = count;
  v21 = handlerCopy;
  v38 = v21;
  v39 = buf;
  if (([v20 processNext:queue completion:v36] & 1) == 0)
  {
    journalStateSKJLogging(self, 39);
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v22 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [(NSMutableArray *)self->_journalQueue count];
        *v41 = 138412546;
        selfCopy2 = self;
        v43 = 2048;
        v44 = v23;
        _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_INFO, "### not processing journals anymore - %@ , queue size = %lu", v41, 0x16u);
      }
    }

    v24 = +[CSEventListenerTasksManager sharedInstance];
    v25 = self->_eventListener;
    v26 = v25;
    if (v25)
    {
      v27 = v25->_delegate;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    [v24 endJobForDelegate:v28];

    v21[2](v21, count, @"eof-or-error");
  }

  _Block_object_dispose(buf, 8);
LABEL_38:

  v35 = *MEMORY[0x277D85DE8];
}

void __87__CSEventListenerManager__processJournalsWithProcessedJournalsCount_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v10 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 67109634;
      v21 = a5;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### batch end (%d) %@ - %@", buf, 0x1Cu);
    }
  }

  journalStateSKJLogging(*(a1 + 32), 40);
  v13 = +[CSEventListenerTasksManager sharedInstance];
  v14 = [v13 taskAllowedForName:v9 eventType:a3 indexType:a4];

  if (v14)
  {
    __87__CSEventListenerManager__processJournalsWithProcessedJournalsCount_completionHandler___block_invoke_cold_1(&v19, a1 + 32, a1);
  }

  else
  {
    v15 = *(a1 + 64);
    (*(*(a1 + 48) + 16))();
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)takeAssertions:(id)assertions
{
  v32 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  if (self->_isAssertionsAllowed)
  {
    pthread_rwlock_rdlock(&self->_journalQueueLock);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_journalQueue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *v22;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v10, "journal_name")}];
        if (([assertionsCopy containsObject:v11] & 1) == 0)
        {
          retainJournalFd = [v10 retainJournalFd];
          if (retainJournalFd != -1)
          {
            v20 = xmmword_231C224F0;
            if (fcntl(retainJournalFd, 108, &v20) < 0)
            {
              if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v13 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v19 = *__error();
                  v15 = __error();
                  v16 = strerror(*v15);
                  *buf = 138412802;
                  v26 = v11;
                  v27 = 1024;
                  v28 = v19;
                  v29 = 2080;
                  v30 = v16;
                  _os_log_error_impl(&dword_231B25000, v13, OS_LOG_TYPE_ERROR, "### Unable to take assertion on %@: %d(%s)", buf, 0x1Cu);
                }

LABEL_20:
              }
            }

            else
            {
              [assertionsCopy addObject:v11];
              if (SKGLogGetCurrentLoggingLevel() >= 7)
              {
                v13 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v26 = v11;
                  _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "### Successfully taken assertion on %@", buf, 0xCu);
                }

                goto LABEL_20;
              }
            }

            [v10 releaseJournalFd];
            goto LABEL_22;
          }

          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v14 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v11;
              _os_log_error_impl(&dword_231B25000, v14, OS_LOG_TYPE_ERROR, "### Unable to take assertion on %@, fd = -1", buf, 0xCu);
            }
          }
        }

LABEL_22:
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (!v7)
      {
LABEL_24:

        pthread_rwlock_unlock(&self->_journalQueueLock);
        goto LABEL_29;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v17 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CSEventListenerManager takeAssertions:?];
    }
  }

LABEL_29:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dropAssertions:(id)assertions
{
  v32 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  if (self->_isAssertionsAllowed)
  {
    pthread_rwlock_rdlock(&self->_journalQueueLock);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy = self;
    v5 = self->_journalQueue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *v22;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v10, "journal_name")}];
        if (([assertionsCopy containsObject:v11] & 1) == 0)
        {
          retainJournalFd = [v10 retainJournalFd];
          if (retainJournalFd != -1)
          {
            if (fcntl(retainJournalFd, 109, 0) < 0)
            {
              if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v13 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v15 = *__error();
                  v16 = __error();
                  v17 = strerror(*v16);
                  *buf = 138412802;
                  v26 = v11;
                  v27 = 1024;
                  v28 = v15;
                  v29 = 2080;
                  v30 = v17;
                  _os_log_error_impl(&dword_231B25000, v13, OS_LOG_TYPE_ERROR, "### Unable to drop assertion on %@: %d(%s)", buf, 0x1Cu);
                }

LABEL_20:
              }
            }

            else
            {
              [assertionsCopy addObject:v11];
              if (SKGLogGetCurrentLoggingLevel() >= 7)
              {
                v13 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v26 = v11;
                  _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "### Successfully dropped assertion on %@", buf, 0xCu);
                }

                goto LABEL_20;
              }
            }

            [v10 releaseJournalFd];
            goto LABEL_22;
          }

          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v14 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v11;
              _os_log_error_impl(&dword_231B25000, v14, OS_LOG_TYPE_ERROR, "### Unable to take assertion on %@, fd = -1", buf, 0xCu);
            }
          }
        }

LABEL_22:
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (!v7)
      {
LABEL_24:

        pthread_rwlock_unlock(&selfCopy->_journalQueueLock);
        goto LABEL_29;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v18 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CSEventListenerManager dropAssertions:?];
    }
  }

LABEL_29:

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)journalMapLockPtr
{
  if (self)
  {
    return self + 280;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)journalQueueLockPtr
{
  if (self)
  {
    return self + 80;
  }

  else
  {
    return 0;
  }
}

- (double)journalQueueLock
{
  if (self)
  {
    v2 = *(self + 256);
    *(a2 + 160) = *(self + 240);
    *(a2 + 176) = v2;
    *(a2 + 192) = *(self + 272);
    v3 = *(self + 192);
    *(a2 + 96) = *(self + 176);
    *(a2 + 112) = v3;
    v4 = *(self + 224);
    *(a2 + 128) = *(self + 208);
    *(a2 + 144) = v4;
    v5 = *(self + 128);
    *(a2 + 32) = *(self + 112);
    *(a2 + 48) = v5;
    v6 = *(self + 160);
    *(a2 + 64) = *(self + 144);
    *(a2 + 80) = v6;
    v7 = *(self + 96);
    *a2 = *(self + 80);
    *(a2 + 16) = v7;
  }

  else
  {
    *(a2 + 192) = 0;
    *&v7 = 0;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v7;
}

- (double)journalMapLock
{
  if (self)
  {
    *(a2 + 192) = *(self + 472);
    v2 = *(self + 456);
    *(a2 + 160) = *(self + 440);
    *(a2 + 176) = v2;
    v3 = *(self + 392);
    *(a2 + 96) = *(self + 376);
    *(a2 + 112) = v3;
    v4 = *(self + 424);
    *(a2 + 128) = *(self + 408);
    *(a2 + 144) = v4;
    v5 = *(self + 328);
    *(a2 + 32) = *(self + 312);
    *(a2 + 48) = v5;
    v6 = *(self + 360);
    *(a2 + 64) = *(self + 344);
    *(a2 + 80) = v6;
    v7 = *(self + 296);
    *a2 = *(self + 280);
    *(a2 + 16) = v7;
  }

  else
  {
    *(a2 + 192) = 0;
    *&v7 = 0;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(self->_indexType);
  eventListener = self->_eventListener;
  if (eventListener)
  {
    delegate = eventListener->_delegate;
  }

  else
  {
    delegate = 0;
  }

  taskName = [(CSEventListenerDelegate *)delegate taskName];
  v9 = [v3 initWithFormat:@"<%@:%p; %s %@ fd:%d>", v4, self, CSIndexTypeShortNameCString, taskName, self->_folderFd];

  return v9;
}

- (uint64_t)folderFd
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)indexType
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

- (uint64_t)journalMap
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)journalQueue
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)sortJournals
{
  pthread_rwlock_wrlock(&self->_journalQueueLock);
  if (self)
  {
    journalQueue = self->_journalQueue;
  }

  else
  {
    journalQueue = 0;
  }

  if ([(NSMutableArray *)journalQueue count]>= 2)
  {
    if (self)
    {
      v4 = self->_journalQueue;
    }

    else
    {
      v4 = 0;
    }

    [(NSMutableArray *)v4 sortUsingComparator:&__block_literal_global_94];
  }

  pthread_rwlock_unlock(&self->_journalQueueLock);
}

uint64_t __38__CSEventListenerManager_sortJournals__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = v4[10];
    if (v5)
    {
LABEL_3:
      v7 = v5[10];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 >= v7)
  {
    if (v4)
    {
      v9 = v4[10];
      if (v5)
      {
LABEL_8:
        v10 = v5[10];
LABEL_9:
        v8 = v9 > v10;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v8 = -1;
LABEL_10:

  return v8;
}

- (void)_cleanupJournalsWithEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  pthread_rwlock_wrlock(&self->_journalQueueLock);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (self)
  {
    journalQueue = self->_journalQueue;
  }

  else
  {
    journalQueue = 0;
  }

  v6 = journalQueue;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11[14];
        }

        else
        {
          v12 = 0;
        }

        signposter = [(CSEventListenerManager *)eventCopy signposter];
        if (strcmp(v12, signposter))
        {
          [v11 markComplete:-1 processingDone:1];
          if (SKGLogGetCurrentLoggingLevel() < 5)
          {
            goto LABEL_24;
          }

          v14 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            if (v11)
            {
              v15 = v11[14];
              v16 = v11[10];
            }

            else
            {
              v15 = 0;
              v16 = 0;
            }

            *buf = 136315650;
            v26 = v15;
            v27 = 2048;
            v28 = v16;
            v29 = 2112;
            v30 = eventCopy;
            _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### cleanup journal [cookie:%s jno:%llu] due to cookie mismatch with the event message recieved [%@]", buf, 0x20u);
          }

          goto LABEL_23;
        }

        if (v11)
        {
          if (v11[19] >= v11[18])
          {
            v17 = v11[10];
            if (v17 < [(CSEmbeddingsUpdater *)eventCopy activityJournal])
            {
              v18 = v11[18];
              goto LABEL_20;
            }
          }
        }

        else if ([(CSEmbeddingsUpdater *)eventCopy activityJournal])
        {
          v18 = 0;
LABEL_20:
          [v11 markComplete:v18 processingDone:1];
          if (SKGLogGetCurrentLoggingLevel() < 7)
          {
            goto LABEL_24;
          }

          v14 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v26 = v11;
            v27 = 2112;
            v28 = eventCopy;
            _os_log_debug_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEBUG, "### cleanup journal after event message recieved %@ -  %@]", buf, 0x16u);
          }

LABEL_23:
        }

LABEL_24:
        ++v10;
      }

      while (v8 != v10);
      v19 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
      v8 = v19;
    }

    while (v19);
  }

  pthread_rwlock_unlock(&self->_journalQueueLock);
  v20 = *MEMORY[0x277D85DE8];
}

- (uint64_t)throttled
{
  if (self)
  {
    return OUTLINED_FUNCTION_11(*(self + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_11(0);
  }
}

- (void)processJournals
{
  selfCopy = self;
  if (self)
  {
    self = self->_signposter;
  }

  [(CSEventListenerManager *)self beginProcessJournalsInterval];
  OUTLINED_FUNCTION_10();
  v4[1] = 3221225472;
  v4[2] = __41__CSEventListenerManager_processJournals__block_invoke;
  v4[3] = &unk_27893CE90;
  v4[4] = selfCopy;
  v4[5] = v3;
  [(CSEventListenerManager *)selfCopy _processJournalsWithProcessedJournalsCount:0 completionHandler:v4];
}

- (uint64_t)signposter
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void __41__CSEventListenerManager_processJournals__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  pthread_rwlock_rdlock((v5 + 80));
  v7 = [*(*(a1 + 32) + 64) count];
  pthread_rwlock_unlock((*(a1 + 32) + 80));
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v10 + 12);
  v13 = *(v10 + 32);
  if (v13)
  {
    v13 = v13[1];
  }

  v14 = v13;
  v16 = v9;
  v15 = [v14 taskName];
  [v16 endProcessJournalsIntervalWithSignpostID:v11 stopReason:v6 indexType:v12 taskName:v15 processedJournalsCount:a2 journalQueueCount:v7];
}

- (void)handleMessage:(void *)message basePath:(void *)path withDispatchGroup:
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a2;
  messageCopy = message;
  pathCopy = path;
  if (!self)
  {
    goto LABEL_46;
  }

  v10 = *(self + 32);
  if (v10)
  {
    v11 = v10[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = v10;
  isAcceptingJournals = [v11 isAcceptingJournals];

  if (isAcceptingJournals)
  {
    bzero(__str, 0xFFuLL);
    homePathHash = [(CSEventListenerManager *)v7 homePathHash];
    defaults = [(CSEmbeddingsUpdater *)v7 defaults];
    snprintf(__str, 0xFFuLL, "/.vol/%u/%llu", homePathHash, defaults);
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
    folderFd = [(CSEventListenerManager *)v7 folderFd];
    pthread_rwlock_wrlock((self + 280));
    v18 = *(self + 56);
    v76 = v16;
    v19 = [(CSJournalProcessor *)v18 objectForKeyedSubscript:v16];

    pthread_rwlock_unlock((self + 280));
    v75 = v7;
    v77 = folderFd;
    if (v19)
    {
LABEL_36:
      if (folderFd == 1)
      {
        if (pathCopy)
        {
          dispatch_group_leave(pathCopy);
        }

        else if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v50 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_28(v50))
          {
            v68 = [v19 key];
            OUTLINED_FUNCTION_23(v68, 5.778e-34);
            OUTLINED_FUNCTION_19(&dword_231B25000, v69, v70, "### %@ no dispatch group for new journal %@", &buf);
          }
        }
      }

      v74 = pathCopy;
      selfCopy = self;
      pthread_rwlock_rdlock((selfCopy + 80));
      v52 = [*(selfCopy + 8) count];
      pthread_rwlock_unlock((selfCopy + 80));
      v53 = +[SKGActivityJournal sharedJournal];
      v89[0] = &unk_2846E76E0;
      v54 = *(self + 32);
      v55 = messageCopy;
      if (v54)
      {
        v56 = v54[1];
      }

      else
      {
        v56 = 0;
      }

      v57 = v56;
      v58 = v54;
      taskName = [v57 taskName];
      *&buf = taskName;
      v89[1] = &unk_2846E76F8;
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:getCSIndexTypeShortNameCString(*(selfCopy + 3))];
      *(&buf + 1) = v60;
      v89[2] = &unk_2846E7710;
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
      v91 = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v89 count:3];
      [v53 addEventWithType:38 params:v62];

      v63 = *(selfCopy + 3);
      OUTLINED_FUNCTION_9();
      v79 = 3221225472;
      v80 = __67__CSEventListenerManager_handleMessage_basePath_withDispatchGroup___block_invoke_139;
      v81 = &unk_27893CF08;
      v82 = selfCopy;
      v7 = v75;
      v83 = v75;
      v84 = v19;
      v85 = v77;
      v64 = v19;
      dispatch_async(v63, block);

      messageCopy = v55;
      pathCopy = v74;
      goto LABEL_46;
    }

    if (folderFd == 3)
    {
      pathComponents = [messageCopy pathComponents];
      v23 = pathComponents;
      if (!pathComponents)
      {
        goto LABEL_24;
      }

      v37 = [pathComponents indexOfObject:@"SpotlightKnowledgeEvents"];
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [v23 subarrayWithRange:{0, v37}];
      v18 = [v38 pathWithComponents:v39];

      v40 = [CSJournalProcessor alloc];
      v41 = *(self + 16);
      v42 = *(self + 32);
      v43 = v18;
      v44 = v42;
      v19 = [(CSJournalProcessor *)v40 initFromSpotlightDaemonWithParentFd:v41 eventListener:v44 key:v76 msg:v75 spotlightBasePath:[(CSJournalProcessor *)v18 UTF8String]];

      if (!v19)
      {
LABEL_24:
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v45 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_28(v45))
          {
            v71 = [0 key];
            OUTLINED_FUNCTION_23(v71, 5.778e-34);
            OUTLINED_FUNCTION_19(&dword_231B25000, v72, v73, "### %@ cannot link journal from spotlight daemon for journal %@", &buf);
          }
        }

        v19 = 0;
      }
    }

    else
    {
      if (folderFd != 1)
      {
        goto LABEL_31;
      }

      v18 = [CSJournalProcessor alloc];
      v20 = *(self + 16);
      v21 = *(self + 32);
      v22 = messageCopy;
      v23 = v21;
      v19 = -[CSJournalProcessor initWithParentFd:eventListener:key:msg:journalBasePath:](v18, "initWithParentFd:eventListener:key:msg:journalBasePath:", v20, v23, v76, v7, [messageCopy UTF8String]);
    }

    folderFd = v77;
    if (v19)
    {
      *(v19 + 13) = *(self + 10);
      *(v19 + 64) = *(self + 20);
      objc_setProperty_nonatomic_copy(v19, v46, &__block_literal_global_138, 184);
      pthread_rwlock_wrlock((self + 280));
      v47 = *(self + 56);
      v48 = [v19 key];
      [v47 setObject:v19 forKeyedSubscript:v48];

      pthread_rwlock_unlock((self + 280));
      pthread_rwlock_wrlock((self + 80));
      v18 = *(self + 64);
      [(CSJournalProcessor *)v18 setObject:v19 atIndexedSubscript:[(CSJournalProcessor *)v18 count]];

      *(self + 48) += *(v19 + 120);
      pthread_rwlock_unlock((self + 80));
      goto LABEL_36;
    }

LABEL_31:
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v49 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_28(v49))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v76;
        _os_log_error_impl(&dword_231B25000, &v18->super, OS_LOG_TYPE_ERROR, "### failed to create journal processor %@", &buf, 0xCu);
      }
    }

    v19 = 0;
    goto LABEL_36;
  }

  v24 = +[SKGActivityJournal sharedJournal];
  v87 = &unk_2846E76C8;
  v25 = MEMORY[0x277CCABB0];
  v26 = *(self + 32);
  if (v26)
  {
    v27 = v26[1];
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v29 = v26;
  v30 = [v25 numberWithUnsignedInt:{objc_msgSend(v28, "eventType")}];
  v88 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  [v24 addEventWithType:34 params:v31];

  if (pathCopy)
  {
    dispatch_group_leave(pathCopy);
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v32 = SKGLogUpdaterInit();
    if (OUTLINED_FUNCTION_28(v32))
    {
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_19(&dword_231B25000, v66, v67, "### %@ no dispatch group message %@", __str);
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v33 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_27(&dword_231B25000, v34, v35, "### %@ Not accepting journals at the moment for message %@", __str);
    }
  }

LABEL_46:

  v65 = *MEMORY[0x277D85DE8];
}

void __67__CSEventListenerManager_handleMessage_basePath_withDispatchGroup___block_invoke_139(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 eventType];
  v5 = *(*(a1 + 32) + 40);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", -[CSEventListenerManager signposter](*(a1 + 40)), v4];
  LODWORD(v5) = [v5 incrementAndCheckPerformActionForKey:v6];

  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager signposter](*(a1 + 40))];
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 12);
    }

    else
    {
      v9 = 0;
    }

    [SKGUpdaterStore purgeAllWithUUID:v7 listenerType:v4 indexType:v9];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v10 setLoaded:0];
    [*(a1 + 32) _cleanupJournalsWithEvent:*(a1 + 40)];
    if (*(a1 + 56) == 2)
    {
      [*(a1 + 48) markComplete:-[CSEventListenerManager journalMap](*(a1 + 40)) processingDone:1];
      pthread_rwlock_wrlock((*(a1 + 32) + 280));
      v11 = *(*(a1 + 32) + 56);
      v12 = [*(a1 + 48) key];
      [v11 removeObjectForKey:v12];

      pthread_rwlock_unlock((*(a1 + 32) + 280));
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 32);
          v34 = [*(a1 + 48) key];
          v36 = 138412546;
          v37 = v33;
          v38 = 2112;
          v39 = v34;
          OUTLINED_FUNCTION_26(&dword_231B25000, v13, v35, "### %@ removing journal %@", &v36);
        }
      }
    }

    [*(a1 + 32) purgeJournalsProactive];
    v14 = *(a1 + 32);
    if (!v14 || *(v14 + 8) != 1 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 turboMode], v15, v16))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v17 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 32);
          if (v18)
          {
            v19 = v18[4];
            v20 = v19;
            if (v19)
            {
              v18 = v19[1];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          v21 = v18;
          v22 = [v21 taskName];
          v23 = [v22 UTF8String];
          v24 = *(a1 + 32);
          if (v24)
          {
            v25 = *(v24 + 12);
          }

          else
          {
            v25 = 0;
          }

          CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v25);
          v36 = 136315394;
          v37 = v23;
          v38 = 2080;
          v39 = CSIndexTypeShortNameCString;
          OUTLINED_FUNCTION_27(&dword_231B25000, v27, v28, "### processing journal event for (%s) for (%s)", &v36);
        }
      }

      pthread_rwlock_rdlock((*(a1 + 32) + 80));
      v29 = *(a1 + 32);
      if (v29)
      {
        v30 = *(v29 + 64);
      }

      else
      {
        v30 = 0;
      }

      v31 = [v30 firstObject];
      pthread_rwlock_unlock((*(a1 + 32) + 80));
      if (*(a1 + 48) == v31 || ([v31 isComplete] & 1) != 0 || (objc_msgSend(v31, "active") & 1) == 0)
      {
        [*(a1 + 32) processJournals];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)lostConnection
{
  if (self)
  {
    v1 = *(self + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CSEventListenerManager_lostConnection__block_invoke;
    block[3] = &unk_27893CE68;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

uint64_t __40__CSEventListenerManager_lostConnection__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock((*(a1 + 32) + 80));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) markComplete:0 processingDone:{0, v10}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  result = pthread_rwlock_unlock((*(a1 + 32) + 80));
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)isAssertionsAllowed
{
  if (self)
  {
    return OUTLINED_FUNCTION_11(*(self + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_11(0);
  }
}

- (uint64_t)isManagedEventListener
{
  if (self)
  {
    return OUTLINED_FUNCTION_11(*(self + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_11(0);
  }
}

- (uint64_t)homePathHash
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

- (uint64_t)totalJournalSize
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)setTotalJournalSize:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (void)setSignposter:(uint64_t)signposter
{
  if (signposter)
  {
    objc_storeStrong((signposter + 72), a2);
  }
}

- (uint64_t)initWithIndexType:(int)a1 indexPath:(char *)a2 eventListener:isManagedEventListener:homePathHash:.cold.1(int a1, char *a2)
{
  v4 = [0 taskName];
  v5 = [v4 UTF8String];

  CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(a1);
  return snprintf(a2, 0x100uLL, "com.apple.spotlight.indexevents.%s.%s.queue", CSIndexTypeShortNameCString, v5);
}

- (void)initWithIndexType:indexPath:eventListener:isManagedEventListener:homePathHash:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__CSEventListenerManager_runThrottledTaskAsync__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4[4];
    v6 = v5;
    if (v5)
    {
      v4 = v5[1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  v8 = [v7 taskName];
  v9 = [v8 UTF8String];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 12);
  }

  else
  {
    v11 = 0;
  }

  getCSIndexTypeShortNameCString(v11);
  v13 = 136315394;
  v14 = v9;
  OUTLINED_FUNCTION_12();
  _os_log_impl(&dword_231B25000, a2, OS_LOG_TYPE_INFO, "### Recieved signal to run (%s) for (%s)", &v13, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __33__CSEventListenerManager_startUp__block_invoke_cold_1(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = v3[4];
        v5 = v4;
        if (v4)
        {
          v3 = v4[1];
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = v3;
      v7 = [v6 taskName];
      v8 = [v7 UTF8String];
      if (*a1)
      {
        v9 = *(*a1 + 3);
      }

      else
      {
        v9 = 0;
      }

      getCSIndexTypeShortNameCString(v9);
      LODWORD(v14) = 136315394;
      *(&v14 + 4) = v8;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_27(&dword_231B25000, v10, v11, "### processing journal during startup for (%s) for (%s)", &v14);
    }
  }

  result = [*a1 processJournals];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteFirstJournal:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a2 journal_name];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26(&dword_231B25000, a3, v5, "### Journal is loaded, deleting from the map %@ - %s", &v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processJournalsWithProcessedJournalsCount:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 journal_name];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__CSEventListenerManager__processJournalsWithProcessedJournalsCount_completionHandler___block_invoke_cold_1(id *a1, uint64_t a2, uint64_t a3)
{
  *a1 = MEMORY[0x277D85DD0];
  a1[1] = 3221225472;
  a1[2] = __87__CSEventListenerManager__processJournalsWithProcessedJournalsCount_completionHandler___block_invoke_119;
  a1[3] = &unk_27893CEB8;
  a1[4] = *a2;
  a1[6] = *(a3 + 64);
  a1[5] = *(a3 + 48);
  v5 = _Block_copy(a1);
  v6 = +[CSEventListenerTasksManager sharedInstance];
  v7 = [v6 turboMode];

  if (v7)
  {
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v5);

    v5 = v8;
  }

  if (*a2)
  {
    v9 = *(*a2 + 24);
  }

  else
  {
    v9 = 0;
  }

  dispatch_async(v9, v5);
}

- (void)takeAssertions:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_231B25000, v2, OS_LOG_TYPE_ERROR, "### Unable to take assertion on PC %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)dropAssertions:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_231B25000, v2, OS_LOG_TYPE_ERROR, "### Unable to drop assertion on PC %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end