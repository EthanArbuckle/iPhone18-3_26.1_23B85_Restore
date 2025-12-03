@interface SPEmbeddingTailspinDumper
+ (id)lockFilePath;
+ (id)log;
+ (id)sharedInstance;
+ (id)tailspinDirectory;
+ (id)tailspinPrefix;
- (BOOL)canDump;
- (BOOL)dumpTailspinSync:(int)sync;
- (SPEmbeddingTailspinDumper)init;
- (void)cleanupOldDumps;
- (void)dump;
@end

@implementation SPEmbeddingTailspinDumper

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SPEmbeddingTailspinDumper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __32__SPEmbeddingTailspinDumper_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SPEmbeddingTailspinDumper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__SPEmbeddingTailspinDumper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SPEmbeddingTailspinDumper);

  return MEMORY[0x2821F96F8]();
}

+ (id)tailspinDirectory
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search" stringByAppendingPathComponent:@"Tailspin"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:v2] & 1) == 0)
  {
    v8 = 0;
    [defaultManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = [objc_opt_class() log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_26B793000, v5, OS_LOG_TYPE_ERROR, "Failed to create tailsipin directory: %@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)lockFilePath
{
  tailspinDirectory = [self tailspinDirectory];
  v3 = [tailspinDirectory stringByAppendingPathComponent:@"tailspin.lock"];

  return v3;
}

+ (id)tailspinPrefix
{
  v2 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v5 = [v2 stringWithFormat:@"%@_", processName];

  return v5;
}

- (SPEmbeddingTailspinDumper)init
{
  v10.receiver = self;
  v10.super_class = SPEmbeddingTailspinDumper;
  v2 = [(SPEmbeddingTailspinDumper *)&v10 init];
  v3 = v2;
  if (v2)
  {
    latestDumpDate = v2->_latestDumpDate;
    v2->_latestDumpDate = 0;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.SpotlightEmbedding.tailspinDump", v6);
    dumpQueue = v3->_dumpQueue;
    v3->_dumpQueue = v7;
  }

  return v3;
}

- (BOOL)canDump
{
  selfCopy = self;
  v38 = *MEMORY[0x277D85DE8];
  if (self->_latestDumpDate)
  {
LABEL_2:
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:selfCopy->_latestDumpDate];
    v5 = v4;

    result = v5 >= 43200.0;
    goto LABEL_20;
  }

  tailspinDirectory = [objc_opt_class() tailspinDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v32 = tailspinDirectory;
  v8 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v34;
  v30 = *MEMORY[0x277CCA150];
  v13 = @".tailspin";
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v34 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      tailspinPrefix = [objc_opt_class() tailspinPrefix];
      if ([v15 hasPrefix:tailspinPrefix])
      {
        v17 = [v15 hasSuffix:v13];

        if (!v17)
        {
          continue;
        }

        tailspinPrefix = [v32 stringByAppendingPathComponent:v15];
        v18 = [defaultManager attributesOfItemAtPath:tailspinPrefix error:0];
        v19 = [v18 objectForKeyedSubscript:v30];
        v20 = v19;
        if (!v11 || [v19 compare:v11] == 1)
        {
          v21 = v20;
          v22 = v11;
          v23 = selfCopy;
          v24 = v8;
          v25 = v13;
          v26 = v21;

          v27 = v26;
          v13 = v25;
          v8 = v24;
          selfCopy = v23;
          v11 = v27;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v10);
  if (v11)
  {
    latestDumpDate = selfCopy->_latestDumpDate;
    selfCopy->_latestDumpDate = v11;

    goto LABEL_2;
  }

LABEL_19:

  result = 1;
LABEL_20:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cleanupOldDumps
{
  v64 = *MEMORY[0x277D85DE8];
  tailspinDirectory = [objc_opt_class() tailspinDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];
  date = [MEMORY[0x277CBEAA8] date];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  v42 = tailspinDirectory;
  if (v4)
  {
    v6 = v4;
    v7 = *v53;
    v8 = *MEMORY[0x277CCA150];
    *&v5 = 138412546;
    v39 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        if ([v10 hasSuffix:{@".tailspin", v39}])
        {
          v11 = [tailspinDirectory stringByAppendingPathComponent:v10];
          v12 = [defaultManager attributesOfItemAtPath:v11 error:0];
          v13 = [v12 objectForKeyedSubscript:v8];
          if (v13)
          {
            [date timeIntervalSinceDate:v13];
            if (v14 > 2592000.0)
            {
              v51 = 0;
              [defaultManager removeItemAtPath:v11 error:&v51];
              v15 = v51;
              if (v15)
              {
                v16 = [objc_opt_class() log];
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = v39;
                  v60 = v11;
                  v61 = 2112;
                  v62 = v15;
                  _os_log_impl(&dword_26B793000, v16, OS_LOG_TYPE_ERROR, "Failed to remove outdated dump file at %@: %@", buf, 0x16u);
                }

                tailspinDirectory = v42;
              }
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v6);
  }

  v17 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];

  obja = [MEMORY[0x277CBEB18] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v48;
    v22 = *MEMORY[0x277CCA150];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v47 + 1) + 8 * j);
        tailspinPrefix = [objc_opt_class() tailspinPrefix];
        if ([v24 hasPrefix:tailspinPrefix])
        {
          v26 = [v24 hasSuffix:@".tailspin"];

          if (!v26)
          {
            continue;
          }

          tailspinPrefix = [v42 stringByAppendingPathComponent:v24];
          v27 = [defaultManager attributesOfItemAtPath:tailspinPrefix error:0];
          v28 = [v27 objectForKeyedSubscript:v22];
          v29 = v28;
          if (v28)
          {
            v56[0] = @"path";
            v56[1] = @"date";
            v57[0] = tailspinPrefix;
            v57[1] = v28;
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
            [obja addObject:v30];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v20);
  }

  [obja sortUsingComparator:&__block_literal_global_30];
  v31 = v42;
  if ([obja count] >= 4 && objc_msgSend(obja, "count") >= 4)
  {
    v33 = 3;
    *&v32 = 138412546;
    v40 = v32;
    do
    {
      v34 = [obja objectAtIndexedSubscript:{v33, v40}];
      v35 = [v34 objectForKeyedSubscript:@"path"];

      v46 = 0;
      [defaultManager removeItemAtPath:v35 error:&v46];
      v36 = v46;
      if (v36)
      {
        v37 = [objc_opt_class() log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = v40;
          v60 = v35;
          v61 = 2112;
          v62 = v36;
          _os_log_impl(&dword_26B793000, v37, OS_LOG_TYPE_ERROR, "Failed to remove old tailspin file at %@: %@", buf, 0x16u);
        }

        v31 = v42;
      }

      ++v33;
    }

    while (v33 < [obja count]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __44__SPEmbeddingTailspinDumper_cleanupOldDumps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"date"];
  v6 = [v4 objectForKeyedSubscript:@"date"];

  v7 = [v6 compare:v5];
  return v7;
}

- (BOOL)dumpTailspinSync:(int)sync
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D82D28];
  v8[0] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = tailspin_dump_output_with_options_sync();

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dump
{
  if (CFPreferencesGetAppBooleanValue(@"SpotlightEmbeddingGenTimeoutTailspin", *MEMORY[0x277CBF008], 0))
  {
    dumpQueue = self->_dumpQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SPEmbeddingTailspinDumper_dump__block_invoke;
    block[3] = &unk_279D01A20;
    block[4] = self;
    dispatch_async(dumpQueue, block);
  }
}

void __33__SPEmbeddingTailspinDumper_dump__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() lockFilePath];
  v4 = open([v3 fileSystemRepresentation], 514, 384);
  if (v4 < 0)
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&dword_26B793000, v8, OS_LOG_TYPE_ERROR, "Unable to open tailspin lock file at %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = v4;
    if (flock(v4, 2))
    {
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v3;
        _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_ERROR, "Unable to acquire tailspin lock on file %@", buf, 0xCu);
      }

      close(v5);
    }

    else
    {
      if ([*(a1 + 32) canDump])
      {
        v9 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v9 setDateFormat:@"yyyyMMdd_HHmmss"];
        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [v9 stringFromDate:v10];
        v12 = MEMORY[0x277CCACA8];
        v13 = *(a1 + 32);
        v14 = [objc_opt_class() tailspinPrefix];
        v15 = [v12 stringWithFormat:@"%@%@%@", v14, v11, @".tailspin"];

        v16 = *(a1 + 32);
        v17 = [objc_opt_class() tailspinDirectory];
        v18 = [v17 stringByAppendingPathComponent:v15];

        v19 = open([v18 fileSystemRepresentation], 2562, 432);
        if ((v19 & 0x80000000) != 0)
        {
          v25 = [objc_opt_class() log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v18;
            _os_log_impl(&dword_26B793000, v25, OS_LOG_TYPE_ERROR, "Failed to open tailspin file at %@", buf, 0xCu);
          }
        }

        else
        {
          v20 = [*(a1 + 32) dumpTailspinSync:v19];
          v21 = *(a1 + 32);
          if (v20)
          {
            v22 = [objc_opt_class() log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v18;
              _os_log_impl(&dword_26B793000, v22, OS_LOG_TYPE_DEFAULT, "Tailspin captured at %@", buf, 0xCu);
            }

            close(v19);
            objc_storeStrong((*(a1 + 32) + 16), v10);
            [*(a1 + 32) cleanupOldDumps];
          }

          else
          {
            v26 = [objc_opt_class() log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v18;
              _os_log_impl(&dword_26B793000, v26, OS_LOG_TYPE_ERROR, "Failed to capture tailspin at %@", buf, 0xCu);
            }

            close(v19);
            v27 = v18;
            unlink([v18 fileSystemRepresentation]);
          }
        }
      }

      else
      {
        v23 = *(a1 + 32);
        v24 = [objc_opt_class() log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_26B793000, v24, OS_LOG_TYPE_DEBUG, "A recent tailspin exists. Skipping dump.", buf, 2u);
        }
      }

      flock(v5, 8);
      close(v5);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end