@interface SKUIBootstrapScriptFallback
+ (id)cacheFilenameForStoreFrontIdentifier:(id)identifier;
+ (id)defaultCacheFolder;
- (BOOL)_setCacheAge:(id)age error:(id *)error;
- (BOOL)canFallbackForError:(id)error;
- (BOOL)isBagAvailable;
- (NSURL)cachedFileLocation;
- (SKUIBootstrapScriptFallback)init;
- (SKUIBootstrapScriptFallback)initWithCacheFolder:(id)folder filename:(id)filename;
- (SKUIBootstrapScriptFallback)initWithFilename:(id)filename;
- (id)retrieveScript:(id *)script;
- (int64_t)_unsynchronizedState;
- (int64_t)state;
- (void)_createCacheDirectoriesIfNeeded;
- (void)_logError:(id)error forOperation:(id)operation;
- (void)_runWhenBackgroundWorkFinished:(id)finished;
- (void)invalidate;
- (void)scriptEvaluated:(id)evaluated;
@end

@implementation SKUIBootstrapScriptFallback

+ (id)defaultCacheFolder
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIBootstrapScriptFallback *)v2 defaultCacheFolder:v3];
      }
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v11 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v20];
  v12 = v20;

  if (!v11)
  {
    NSLog(&cfstr_CouldNotFindCa.isa, v12);
    v13 = MEMORY[0x277CBEBC0];
    v14 = NSTemporaryDirectory();
    v11 = [v13 fileURLWithPath:v14];
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier length])
  {
    v17 = [v11 URLByAppendingPathComponent:bundleIdentifier];

    v11 = v17;
  }

  v18 = [v11 URLByAppendingPathComponent:@"SKUIBootstrapScriptFallback"];

  return v18;
}

+ (id)cacheFilenameForStoreFrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIBootstrapScriptFallback *)v4 cacheFilenameForStoreFrontIdentifier:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [identifierCopy stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.%@", v12, @"v1", @"js"];

  return v13;
}

- (SKUIBootstrapScriptFallback)initWithCacheFolder:(id)folder filename:(id)filename
{
  folderCopy = folder;
  filenameCopy = filename;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIBootstrapScriptFallback *)v9 initWithCacheFolder:v10 filename:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIBootstrapScriptFallback;
  v17 = [(SKUIBootstrapScriptFallback *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cacheFolder, folder);
    v19 = [filenameCopy copy];
    cacheFilename = v18->_cacheFilename;
    v18->_cacheFilename = v19;

    v18->_maximumAge = 604800.0;
    v21 = dispatch_queue_create("SKUIBootstrapScriptFallback", 0);
    queue = v18->_queue;
    v18->_queue = v21;

    [(SKUIBootstrapScriptFallback *)v18 _createCacheDirectoriesIfNeeded];
  }

  return v18;
}

- (SKUIBootstrapScriptFallback)initWithFilename:(id)filename
{
  filenameCopy = filename;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBootstrapScriptFallback *)v5 initWithFilename:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  defaultCacheFolder = [objc_opt_class() defaultCacheFolder];
  v14 = [(SKUIBootstrapScriptFallback *)self initWithCacheFolder:defaultCacheFolder filename:filenameCopy];

  return v14;
}

- (SKUIBootstrapScriptFallback)init
{
  [(SKUIBootstrapScriptFallback *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (int64_t)state
{
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue2 = [(SKUIBootstrapScriptFallback *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SKUIBootstrapScriptFallback_state__block_invoke;
  v7[3] = &unk_2781F8608;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __36__SKUIBootstrapScriptFallback_state__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _unsynchronizedState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSURL)cachedFileLocation
{
  cacheFolder = [(SKUIBootstrapScriptFallback *)self cacheFolder];
  cacheFilename = [(SKUIBootstrapScriptFallback *)self cacheFilename];
  v5 = [cacheFolder URLByAppendingPathComponent:cacheFilename];

  return v5;
}

- (BOOL)isBagAvailable
{
  v2 = [MEMORY[0x277D69C90] contextWithBagType:0];
  mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
  v4 = [mEMORY[0x277D7FD50] URLBagForContext:v2];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)canFallbackForError:(id)error
{
  errorCopy = error;
  state = [(SKUIBootstrapScriptFallback *)self state];
  if (state)
  {
    if (state == -1)
    {
      [(SKUIBootstrapScriptFallback *)self invalidate];
    }

    goto LABEL_21;
  }

  v6 = errorCopy;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIBootstrapScriptFallback *)v7 canFallbackForError:v8, v9, v10, v11, v12, v13, v14];
      }
    }
  }

  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    code = [v6 code];

    if (code == -1001)
    {
LABEL_19:
      isBagAvailable = [(SKUIBootstrapScriptFallback *)self isBagAvailable];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = v6;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v18)
      {
        [(SKUIBootstrapScriptFallback *)v18 canFallbackForError:v19, v20, v21, v22, v23, v24, v25];
      }
    }
  }

  userInfo = [v17 userInfo];
  v27 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D6A118]];
  integerValue = [v27 integerValue];

  domain2 = [v17 domain];
  if (([domain2 isEqualToString:*MEMORY[0x277D6A110]] & 1) == 0)
  {

LABEL_21:
    isBagAvailable = 0;
    goto LABEL_22;
  }

  code2 = [v17 code];

  isBagAvailable = 0;
  if (code2 == 109 && (integerValue - 500) <= 0x63)
  {
    goto LABEL_19;
  }

LABEL_22:

  return isBagAvailable;
}

- (id)retrieveScript:(id *)script
{
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__101;
  v14 = __Block_byref_object_dispose__101;
  v15 = 0;
  queue2 = [(SKUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SKUIBootstrapScriptFallback_retrieveScript___block_invoke;
  block[3] = &unk_278200C38;
  block[5] = &v10;
  block[6] = script;
  block[4] = self;
  dispatch_sync(queue2, block);

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_63);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __46__SKUIBootstrapScriptFallback_retrieveScript___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _unsynchronizedState];
  if (v2)
  {
    if (!*(a1 + 48))
    {
      return;
    }

    if (v2 == -2)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"No cached script to retrieve.";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v5 = v15;
      v6 = 560145512;
    }

    else
    {
      if (v2 != -1)
      {
        return;
      }

      v3 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Cached script too old to retrieve.";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v5 = v3;
      v6 = 1869374497;
    }

    **(a1 + 48) = [v5 errorWithDomain:@"SKUIBootstrapScriptFallbackErrorDomain" code:v6 userInfo:v4];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [*(a1 + 32) cachedFileLocation];
    v16 = 0;
    v9 = [v7 initWithContentsOfURL:v8 encoding:4 error:&v16];
    v4 = v16;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      if (*(a1 + 48))
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA450];
        v17[0] = *MEMORY[0x277CCA7E8];
        v17[1] = v13;
        v18[0] = v4;
        v18[1] = @"Could not retrieve script.";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
        **(a1 + 48) = [v12 errorWithDomain:@"SKUIBootstrapScriptFallbackErrorDomain" code:561149042 userInfo:v14];
      }
    }
  }
}

- (void)scriptEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SKUIBootstrapScriptFallback_scriptEvaluated___block_invoke;
  v7[3] = &unk_2781F80C8;
  v8 = evaluatedCopy;
  selfCopy = self;
  v6 = evaluatedCopy;
  dispatch_async(queue, v7);
}

void __47__SKUIBootstrapScriptFallback_scriptEvaluated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cachedFileLocation];
  v6 = 0;
  v4 = [v2 writeToURL:v3 atomically:1 encoding:4 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) _logError:v5 forOperation:@"writing new JS file to cache"];
  }
}

- (void)invalidate
{
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SKUIBootstrapScriptFallback_invalidate__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__SKUIBootstrapScriptFallback_invalidate__block_invoke(uint64_t a1)
{
  *(&v50[1] + 4) = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheFolder];
  v47 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v47];
  v5 = v47;

  if (!v4)
  {
    v27 = v5;
    if (os_variant_has_internal_content())
    {
      if (_os_feature_enabled_impl())
      {
        v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
        if (v28)
        {
          __41__SKUIBootstrapScriptFallback_invalidate__block_invoke_cold_2(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }
    }

    v36 = [v27 domain];
    if ([v36 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v27 code] == 4)
      {

        goto LABEL_33;
      }

      v37 = [v27 code];

      if (v37 == 260)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    [*(a1 + 32) _logError:v27 forOperation:@"getting listing of cached JS files for invalidation"];
    goto LABEL_33;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v38 = a1;
    v39 = v4;
    v40 = v5;
    v9 = 0;
    v10 = *v44;
    v11 = *MEMORY[0x277CCA050];
    v12 = "com.apple.StoreKitUI";
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v14 = v9;
        if (*v44 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v42 = v9;
        v16 = [v2 removeItemAtURL:v15 error:&v42];
        v9 = v42;

        if ((v16 & 1) == 0)
        {
          v17 = v9;
          if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            __41__SKUIBootstrapScriptFallback_invalidate__block_invoke_cold_1(buf, v50);
          }

          v18 = [v17 domain];
          if (([v18 isEqualToString:v11] & 1) == 0)
          {

LABEL_28:
            [*(v38 + 32) _logError:v17 forOperation:@"invalidating cached JS files"];
            goto LABEL_29;
          }

          if ([v17 code] == 4)
          {
          }

          else
          {
            v41 = v9;
            v19 = v8;
            v20 = v10;
            v21 = v2;
            v22 = v11;
            v23 = v6;
            v24 = v12;
            v25 = [v17 code];

            v26 = v25 == 260;
            v12 = v24;
            v6 = v23;
            v11 = v22;
            v2 = v21;
            v10 = v20;
            v8 = v19;
            v9 = v41;
            if (!v26)
            {
              goto LABEL_28;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_29:

    v4 = v39;
    v5 = v40;
  }

LABEL_33:
}

- (void)_createCacheDirectoriesIfNeeded
{
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SKUIBootstrapScriptFallback__createCacheDirectoriesIfNeeded__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__SKUIBootstrapScriptFallback__createCacheDirectoriesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheFolder];
  v6 = 0;
  v4 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _logError:v5 forOperation:@"creating cache directory structure"];
  }
}

- (int64_t)_unsynchronizedState
{
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_V2(queue);

  cachedFileLocation = [(SKUIBootstrapScriptFallback *)self cachedFileLocation];
  v16 = 0;
  v5 = *MEMORY[0x277CBE7B0];
  v15 = 0;
  v6 = [cachedFileLocation getResourceValue:&v16 forKey:v5 error:&v15];
  v7 = v16;
  v8 = v15;

  if (v6)
  {
    cachedFileLocation2 = [(SKUIBootstrapScriptFallback *)self cachedFileLocation];
    [cachedFileLocation2 removeCachedResourceValueForKey:v5];

    [v7 timeIntervalSinceNow];
    v11 = fabs(v10);
    [(SKUIBootstrapScriptFallback *)self maximumAge];
    if (v11 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = -2;
  }

  return v13;
}

- (void)_logError:(id)error forOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationCopy = operation;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = objc_opt_class();
  NSStringFromClass(v11);
  v15 = v14 = 138412802;
  v16 = 2112;
  v17 = operationCopy;
  v18 = 2112;
  v19 = errorCopy;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v14, v13}];
    free(v12);
    SSFileLog();
LABEL_9:
  }
}

- (void)_runWhenBackgroundWorkFinished:(id)finished
{
  finishedCopy = finished;
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_barrier_async(queue2, finishedCopy);
}

- (BOOL)_setCacheAge:(id)age error:(id *)error
{
  ageCopy = age;
  queue = [(SKUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue2 = [(SKUIBootstrapScriptFallback *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SKUIBootstrapScriptFallback__setCacheAge_error___block_invoke;
  v11[3] = &unk_278200C60;
  v11[4] = self;
  v12 = ageCopy;
  v13 = &v15;
  errorCopy = error;
  v9 = ageCopy;
  dispatch_sync(queue2, v11);

  LOBYTE(ageCopy) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return ageCopy;
}

void __50__SKUIBootstrapScriptFallback__setCacheAge_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedFileLocation];
  v3 = *(a1 + 40);
  v4 = *MEMORY[0x277CBE7B0];
  v8 = 0;
  v5 = [v2 setResourceValue:v3 forKey:v4 error:&v8];
  v6 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v5;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 56))
  {
    v7 = v6;
    **(a1 + 56) = v6;
  }
}

void __41__SKUIBootstrapScriptFallback_invalidate__block_invoke_cold_1(uint8_t *buf, void *a2)
{
  *buf = 136446210;
  *a2 = "NSErrorIsFileNotFound";
}

@end