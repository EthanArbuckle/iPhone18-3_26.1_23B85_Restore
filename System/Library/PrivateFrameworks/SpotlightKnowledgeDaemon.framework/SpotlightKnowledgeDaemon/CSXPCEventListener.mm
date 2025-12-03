@interface CSXPCEventListener
+ (void)disable;
+ (void)initialize;
- (BOOL)handleMessage:(id)message connection:(id)connection;
- (CSXPCEventListener)init;
- (id)description;
- (int)docUnderstandingJobCount;
- (int)embeddingsJobCount;
- (int)jobCountWithTaskName:(id)name;
- (int)keyphrasesJobCount;
- (int)priorityJobCount;
- (int)suggestedEventsJobCount;
- (void)launchQueryUpdatesTasks;
- (void)lostConnection:(id)connection error:(id)error;
- (void)runJobWithTaskName:(id)name;
- (void)startWithEventListeners:(id)listeners;
- (void)updatePathSet:(id)set withFilesAtPath:(id)path shouldRemove:(BOOL)remove;
@end

@implementation CSXPCEventListener

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@:%p; started:%d >", objc_opt_class(), self, self->_started];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    +[CSEventListenerTasksManager sharedInstance];

    v2 = objc_opt_new();
    v3 = gCSXPCEventListener;
    gCSXPCEventListener = v2;
  }
}

+ (void)disable
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### unable to remove root path %@ (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)launchQueryUpdatesTasks
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  [v2 launchQueryUpdatesTasks];
}

- (void)updatePathSet:(id)set withFilesAtPath:(id)path shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  v34 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  pathCopy = path;
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:? isDirectory:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = *MEMORY[0x277CBE8A8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE8A8], 0}];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__CSXPCEventListener_updatePathSet_withFilesAtPath_shouldRemove___block_invoke;
  v28[3] = &unk_27893D8D8;
  v28[4] = &v29;
  v21 = [defaultManager enumeratorAtURL:v22 includingPropertiesForKeys:v10 options:4 errorHandler:v28];

  if (*(v30 + 24) == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v21;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v23 = 0;
          [v15 getResourceValue:&v23 forKey:v9 error:0];
          v16 = v23;
          if ([v16 BOOLValue])
          {
            uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
            path = [uRLByDeletingLastPathComponent path];
            if (removeCopy)
            {
              [setCopy removeObject:path];
            }

            else
            {
              [setCopy addObject:path];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v29, 8);

  v19 = *MEMORY[0x277D85DE8];
}

BOOL __65__CSXPCEventListener_updatePathSet_withFilesAtPath_shouldRemove___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

- (void)startWithEventListeners:(id)listeners
{
  listenersCopy = listeners;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CSXPCEventListener_startWithEventListeners___block_invoke;
  v7[3] = &unk_27893D900;
  v8 = listenersCopy;
  selfCopy = self;
  v5 = startWithEventListeners__onceToken;
  v6 = listenersCopy;
  if (v5 != -1)
  {
    dispatch_once(&startWithEventListeners__onceToken, v7);
  }
}

void __46__CSXPCEventListener_startWithEventListeners___block_invoke(uint64_t a1)
{
  v133 = *MEMORY[0x277D85DE8];
  v2 = +[CSEventListenerTasksManager sharedInstance];
  v93 = a1;
  [v2 registerEventListenerDelegates:*(a1 + 32)];

  v3 = cascadePath();
  v4 = [MEMORY[0x277D657A0] sharedContext];
  LODWORD(a1) = [v4 enableAppEntities];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v3];

  v92 = v3;
  if (a1)
  {
    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v123 = 0;
      [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v123];
      v8 = v123;

      if (v8 && SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v9 = SKGLogInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_2();
        }

LABEL_12:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v122 = 0;
  [v10 removeItemAtPath:v3 error:&v122];
  v8 = v122;

  if (v8 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_1();
    }

    goto LABEL_12;
  }

LABEL_14:
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v11 = legacyPaths();
  v12 = [v11 countByEnumeratingWithState:&v118 objects:v132 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v119;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v119 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v118 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v17 fileExistsAtPath:v16];

        if (v18)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v19 = SKGLogInit();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v129 = v16;
              _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "### removing legacy path %@", buf, 0xCu);
            }
          }

          v20 = [MEMORY[0x277CCAA00] defaultManager];
          v117 = v8;
          v21 = v8;
          v22 = [v20 removeItemAtPath:v16 error:&v117];
          v23 = v117;

          if ((v22 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v24 = SKGLogInit();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v129 = v16;
              v130 = 2112;
              v131 = v23;
              _os_log_error_impl(&dword_231B25000, v24, OS_LOG_TYPE_ERROR, "### unable to remove legacy path %@ (%@)", buf, 0x16u);
            }
          }

          v8 = v23;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v118 objects:v132 count:16];
    }

    while (v13);
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = *(v93 + 40);
  v27 = indexPath();
  [v26 updatePathSet:v25 withFilesAtPath:v27 shouldRemove:0];

  v28 = *(v93 + 40);
  v29 = activityJournalRootPath();
  [v28 updatePathSet:v25 withFilesAtPath:v29 shouldRemove:1];

  v30 = *(v93 + 40);
  v31 = journalsPath();
  [v30 updatePathSet:v25 withFilesAtPath:v31 shouldRemove:1];

  v32 = *(v93 + 40);
  v33 = sdbPath();
  [v32 updatePathSet:v25 withFilesAtPath:v33 shouldRemove:1];

  v34 = *(v93 + 40);
  v35 = embeddingCachePath();
  [v34 updatePathSet:v25 withFilesAtPath:v35 shouldRemove:1];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v36 = SKGLogInit();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v129 = v25;
      _os_log_impl(&dword_231B25000, v36, OS_LOG_TYPE_DEFAULT, "### pathSet %@", buf, 0xCu);
    }
  }

  v99 = v8;
  v37 = indexPath();
  v38 = [v37 stringByAppendingPathComponent:@".turbo"];

  v91 = v38;
  [v25 removeObject:v38];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v39 = *(v93 + 32);
  v40 = [v39 countByEnumeratingWithState:&v113 objects:v127 count:16];
  if (v40)
  {
    v41 = v40;
    v97 = 0;
    v42 = *v114;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v114 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v113 + 1) + 8 * j);
        v45 = [v44 config];
        if (v45)
        {
          v46 = v45;
          v47 = [v44 config];
          v48 = [v47 supportsDeletedItems];

          if (v48)
          {
            v49 = v97;
            if (!v97)
            {
              v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
            }

            v50 = [v44 taskName];
            v97 = v49;
            [v49 addObject:v50];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v41);
  }

  else
  {
    v97 = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v51 = SKGLogInit();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v129 = v97;
      _os_log_impl(&dword_231B25000, v51, OS_LOG_TYPE_DEFAULT, "### %@ ignorePaths", buf, 0xCu);
    }
  }

  v52 = [MEMORY[0x277D657A0] sharedContext];
  v53 = [v52 maxJournalSizeForPurge];

  v54 = [MEMORY[0x277D657A8] sharedClientListener];
  v55 = [v54 hasDiskCapacity];

  if ((v55 & 1) == 0)
  {
    v56 = [MEMORY[0x277D657A0] sharedContext];
    v53 = [v56 maxJournalSizeWhenLowDiskSpace];
  }

  v57 = eventsPath();
  v58 = [v57 UTF8String];
  v59 = [v97 allObjects];
  purgeOldJournalFilesAtRootPath(v58, v53, v59);

  v60 = [*(v93 + 32) count];
  if (v60)
  {
    v95 = [MEMORY[0x277CBEB18] arrayWithCapacity:v60];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = *(v93 + 32);
    v98 = [obj countByEnumeratingWithState:&v109 objects:v126 count:16];
    if (v98)
    {
      v96 = *v110;
      do
      {
        for (k = 0; k != v98; ++k)
        {
          if (*v110 != v96)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v109 + 1) + 8 * k);
          if ([v62 conformsToProtocol:&unk_2846E9BE8])
          {
            v63 = 0;
            do
            {
              if ([v62 supportsCSIndexType:v63])
              {
                v64 = eventsPath();
                v65 = [v62 taskName];
                v66 = [v64 stringByAppendingFormat:@"/%@/%s", v65, getCSIndexTypeShortNameCString(v63)];

                if (v66)
                {
                  v67 = [v25 copy];
                  v105 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v108 = 0u;
                  v68 = v67;
                  v69 = [v68 countByEnumeratingWithState:&v105 objects:v125 count:16];
                  if (v69)
                  {
                    v70 = v69;
                    v71 = *v106;
                    do
                    {
                      for (m = 0; m != v70; ++m)
                      {
                        if (*v106 != v71)
                        {
                          objc_enumerationMutation(v68);
                        }

                        v73 = *(*(&v105 + 1) + 8 * m);
                        if ([v73 containsString:v66])
                        {
                          [v25 removeObject:v73];
                        }
                      }

                      v70 = [v68 countByEnumeratingWithState:&v105 objects:v125 count:16];
                    }

                    while (v70);
                  }
                }
              }

              v63 = (v63 + 1);
            }

            while (v63 != 8);
          }

          else if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v74 = SKGLogInit();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v129 = v62;
              _os_log_error_impl(&dword_231B25000, v74, OS_LOG_TYPE_ERROR, "### %@ does not conform to CSEventListenerDelegate protocol", buf, 0xCu);
            }
          }

          v75 = [[CSEventListener alloc] initWithEventListenerDelegate:v62];
          if (v75)
          {
            [v95 addObject:v75];
          }
        }

        v98 = [obj countByEnumeratingWithState:&v109 objects:v126 count:16];
      }

      while (v98);
    }

    if ([v95 count])
    {
      v76 = [v95 copy];
      v77 = gCSEventListeners;
      gCSEventListeners = v76;
    }
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v78 = v25;
  v79 = [v78 countByEnumeratingWithState:&v101 objects:v124 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v102;
    do
    {
      for (n = 0; n != v80; ++n)
      {
        if (*v102 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v101 + 1) + 8 * n);

        v84 = [MEMORY[0x277CCAA00] defaultManager];
        v85 = [v84 fileExistsAtPath:v83];

        if (v85)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v86 = SKGLogInit();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v129 = v83;
              _os_log_impl(&dword_231B25000, v86, OS_LOG_TYPE_DEFAULT, "### removing path %@", buf, 0xCu);
            }
          }

          v87 = [MEMORY[0x277CCAA00] defaultManager];
          v100 = 0;
          v88 = [v87 removeItemAtPath:v83 error:&v100];
          v99 = v100;

          if ((v88 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v89 = SKGLogInit();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v129 = v83;
              v130 = 2112;
              v131 = v99;
              _os_log_error_impl(&dword_231B25000, v89, OS_LOG_TYPE_ERROR, "### unable to remove path %@ (%@)", buf, 0x16u);
            }
          }
        }

        else
        {
          v99 = 0;
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v101 objects:v124 count:16];
    }

    while (v80);
  }

  *(*(v93 + 40) + 8) = 1;
  dispatch_activate(*(*(v93 + 40) + 16));
  dispatch_async(*(*(v93 + 40) + 16), &__block_literal_global_10);

  v90 = *MEMORY[0x277D85DE8];
}

id __46__CSXPCEventListener_startWithEventListeners___block_invoke_42()
{
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v0 = SKGLogInit();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      __46__CSXPCEventListener_startWithEventListeners___block_invoke_42_cold_1(v0);
    }
  }

  for (i = 0; i != 8; ++i)
  {
    result = [CSIndexEventListener indexEventListenerForType:i allowCreate:1];
  }

  return result;
}

- (CSXPCEventListener)init
{
  v10.receiver = self;
  v10.super_class = CSXPCEventListener;
  v2 = [(CSXPCEventListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_queue_attr_make_with_overcommit();
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.spotlight.eventlistener.queue", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (BOOL)handleMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  v6 = [[CSEventMessage alloc] initWithMessage:messageCopy];
  v7 = v6;
  if (v6 && (v6->_event - 1) < 4)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__CSXPCEventListener_handleMessage_connection___block_invoke;
    v11[3] = &unk_27893D928;
    v11[4] = self;
    v12 = v6;
    v13 = messageCopy;
    dispatch_async(queue, v11);

    v9 = 1;
  }

  else
  {
    [(CSXPCEventListener *)self handleMessage:v6 connection:&v14];
    v9 = v14;
  }

  return v9;
}

- (void)lostConnection:(id)connection error:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### lost connection - %@", &v7, 0xCu);
    }
  }

  dispatch_async(self->_queue, &__block_literal_global_50);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__CSXPCEventListener_lostConnection_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  [v2 lostConnection];
}

void __41__CSXPCEventListener_handleDeviceLocking__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
    if (v3)
    {
      v4 = v3;
      [v3 handleDeviceLocking];
      v3 = v4;
    }
  }
}

void __42__CSXPCEventListener_handleDeviceUnlocked__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
    if (v3)
    {
      v4 = v3;
      [v3 handleDeviceUnlocked];
      v3 = v4;
    }
  }
}

- (int)jobCountWithTaskName:(id)name
{
  nameCopy = name;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [CSIndexEventListener indexEventListenerForType:v4 allowCreate:?];
    v6 = v5;
    if (v5 && [*(v5 + 24) count])
    {
      v7 = 0;
      do
      {
        v8 = v6[3];
        v9 = [v8 objectAtIndexedSubscript:v7];
        if (([(CSEventListenerManager *)v9 throttled]& 1) != 0)
        {
          v10 = [v6[3] objectAtIndexedSubscript:v7];
          activityJournal = [(CSEmbeddingsUpdater *)v10 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          taskName = [asyncIndexProcessors taskName];
          v14 = [taskName isEqualToString:nameCopy];

          v3 += v14 & 1;
        }

        else
        {
        }

        ++v7;
      }

      while (v7 < [v6[3] count]);
    }

    v4 = v16 + 1;
  }

  while (v16 != 7);

  return v3;
}

- (void)runJobWithTaskName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CSXPCEventListener_runJobWithTaskName___block_invoke;
  block[3] = &unk_27893D970;
  v6 = nameCopy;
  v4 = nameCopy;
  dispatch_apply(8uLL, 0, block);
}

void __41__CSXPCEventListener_runJobWithTaskName___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v3 = v2;
  if (v2 && [*(v2 + 24) count])
  {
    v5 = 0;
    *&v4 = 136315138;
    v22 = v4;
    while (1)
    {
      v6 = v3[3];
      v7 = [v6 objectAtIndexedSubscript:v5];
      if (([(CSEventListenerManager *)v7 throttled]& 1) == 0)
      {
        break;
      }

      v8 = v3[3];
      v9 = [v8 objectAtIndexedSubscript:v5];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 taskName];
      v13 = [v12 isEqualToString:*(a1 + 32)];

      if (v13)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v14 = SKGLogInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v3[3];
            v16 = [v15 objectAtIndexedSubscript:v5];
            v17 = [(CSEmbeddingsUpdater *)v16 activityJournal];
            v18 = [(CSEmbeddingsUpdater *)v17 asyncIndexProcessors];
            v19 = [v18 taskName];
            v20 = [v19 UTF8String];

            *buf = v22;
            v25 = v20;
            _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### requesting (%s) to run", buf, 0xCu);
          }
        }

        v6 = [v3[3] objectAtIndexedSubscript:{v5, v22}];
        [v6 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v5 >= [v3[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (int)embeddingsJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 2)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __52__CSXPCEventListener_handleEmbeddingsTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v22 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 2)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v23 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v23 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v22;
            v25 = v18;
            v26 = 2080;
            v27 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v22}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (int)keyphrasesJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 3)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __52__CSXPCEventListener_handleKeyphrasesTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v22 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 3)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v23 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v23 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v22;
            v25 = v18;
            v26 = 2080;
            v27 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v22}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (int)docUnderstandingJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = [v5[3] objectAtIndexedSubscript:v6];
        activityJournal = [(CSEmbeddingsUpdater *)v7 activityJournal];
        asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
        eventType = [asyncIndexProcessors eventType];

        v11 = [v5[3] objectAtIndexedSubscript:v6];
        throttled = [(CSEventListenerManager *)v11 throttled];
        if (eventType == 7)
        {
          v13 = throttled;
        }

        else
        {
          v13 = 0;
        }

        v2 += v13;
        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

- (int)suggestedEventsJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = [v5[3] objectAtIndexedSubscript:v6];
        activityJournal = [(CSEmbeddingsUpdater *)v7 activityJournal];
        asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
        eventType = [asyncIndexProcessors eventType];

        v11 = [v5[3] objectAtIndexedSubscript:v6];
        throttled = [(CSEventListenerManager *)v11 throttled];
        if (eventType == 6)
        {
          v13 = throttled;
        }

        else
        {
          v13 = 0;
        }

        v2 += v13;
        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __55__CSXPCEventListener_handlePreExtractionTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v3 = v2;
  if (v2 && [*(v2 + 24) count])
  {
    v5 = 0;
    *&v4 = 136315394;
    v20 = v4;
    while (1)
    {
      v6 = [v3[3] objectAtIndexedSubscript:{v5, v20}];
      v7 = [(CSEmbeddingsUpdater *)v6 activityJournal];
      v8 = [(CSEmbeddingsUpdater *)v7 asyncIndexProcessors];
      v9 = [v8 eventType];

      v10 = [v3[3] objectAtIndexedSubscript:v5];
      if (![(CSEventListenerManager *)v10 throttled])
      {
        goto LABEL_11;
      }

      if ((v9 & 0xFFFFFFFE) == 6)
      {
        break;
      }

LABEL_12:
      if (++v5 >= [v3[3] count])
      {
        goto LABEL_13;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v11 = SKGLogInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v3[3];
        v13 = [v12 objectAtIndexedSubscript:v5];
        v14 = [(CSEmbeddingsUpdater *)v13 activityJournal];
        v15 = [(CSEmbeddingsUpdater *)v14 asyncIndexProcessors];
        v16 = [v15 taskName];
        v17 = [v16 UTF8String];
        CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v21);

        *buf = v20;
        v23 = v17;
        v24 = 2080;
        v25 = CSIndexTypeShortNameCString;
        _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
      }
    }

    v10 = [v3[3] objectAtIndexedSubscript:v5];
    [v10 runThrottledTaskAsync];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (int)priorityJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 1)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __50__CSXPCEventListener_handlePriorityTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v22 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 1)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v23 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v23 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v22;
            v25 = v18;
            v26 = 2080;
            v27 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v22}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

void __47__CSXPCEventListener_handleMessage_connection___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v3 = SKGLogInit();
    if (OUTLINED_FUNCTION_4_2(v3))
    {
      *v16 = 138412546;
      *&v16[4] = *(a1 + 32);
      *&v16[12] = 2112;
      *&v16[14] = *(a1 + 40);
      OUTLINED_FUNCTION_1_8();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(v9 + 8))
    {
      v10 = 7;
    }

    else
    {
      v10 = *(v9 + 12);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [CSIndexEventListener indexEventListenerForType:v10 allowCreate:1, *v16, *&v16[16]];
  [v11 handleMessage:*(a1 + 40)];
  v12 = xpc_dictionary_get_remote_connection(*(a1 + 48));
  if (v12)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 48));
    v14 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", 0);
      xpc_connection_send_message(v12, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### unable to remove cascade path %@ (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

void __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### unable to create cascade path %@ (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(_BYTE *)a3 connection:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      OUTLINED_FUNCTION_1_8();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  *a3 = 0;
  v11 = *MEMORY[0x277D85DE8];
}

@end