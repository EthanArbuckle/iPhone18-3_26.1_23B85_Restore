@interface RedirectHandler
+ (BOOL)noteSymptom:(id)a3;
+ (id)_sharedInstance;
+ (id)configureClass:(id)a3;
+ (id)evaluate:(id)a3 forThreshold:(int64_t)a4;
+ (id)generateAdditionalInfo:(id)a3;
- (BOOL)noteSymptom:(id)a3;
- (RedirectHandler)init;
- (id)evaluate:(id)a3 forThreshold:(int64_t)a4;
- (id)generateAdditionalInfo:(id)a3;
- (int)configureInstance:(id)a3;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)_addRedirectFrom:(id)a3 To:(id)a4 by:(unint64_t)a5 atTime:(unsigned int)a6;
- (void)_prune;
- (void)_pruneDir:(id)a3;
- (void)_reset:(id)a3;
- (void)performNegativeFeedback:(id)a3;
@end

@implementation RedirectHandler

- (RedirectHandler)init
{
  v20.receiver = self;
  v20.super_class = RedirectHandler;
  v2 = [(RedirectHandler *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
    originalURLKey = v2->_originalURLKey;
    v2->_originalURLKey = v3;

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 2];
    redirectURLKey = v2->_redirectURLKey;
    v2->_redirectURLKey = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ignoredDestinations = v2->_ignoredDestinations;
    v2->_ignoredDestinations = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    redirectedOrigins = v2->_redirectedOrigins;
    v2->_redirectedOrigins = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestingPids = v2->_requestingPids;
    v2->_requestingPids = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __23__RedirectHandler_init__block_invoke;
    v18[3] = &unk_27898A690;
    v14 = v2;
    v19 = v14;
    v15 = [v13 addObserverForName:@"kNotificationNewPrimaryInterface" object:0 queue:0 usingBlock:v18];
    resetObserver = v14->_resetObserver;
    v14->_resetObserver = v15;
  }

  return v2;
}

void __23__RedirectHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__RedirectHandler_init__block_invoke_2;
  v5[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RedirectHandler__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_sharedInstance_pred_0 != -1)
  {
    dispatch_once(&_sharedInstance_pred_0, block);
  }

  v2 = _sharedInstance_sharedInstance_0;

  return v2;
}

void __34__RedirectHandler__sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance_sharedInstance_0;
  _sharedInstance_sharedInstance_0 = v1;

  v3 = _sharedInstance_sharedInstance_0;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[RedirectHandler _sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

+ (id)evaluate:(id)a3 forThreshold:(int64_t)a4
{
  v5 = a3;
  v6 = +[RedirectHandler _sharedInstance];
  v7 = [v6 evaluate:v5 forThreshold:a4];

  return v7;
}

+ (id)generateAdditionalInfo:(id)a3
{
  v3 = a3;
  v4 = +[RedirectHandler _sharedInstance];
  v5 = [v4 generateAdditionalInfo:v3];

  return v5;
}

+ (BOOL)noteSymptom:(id)a3
{
  v3 = a3;
  v4 = +[RedirectHandler _sharedInstance];
  v5 = [v4 noteSymptom:v3];

  return v5;
}

- (void)_reset:(id)a3
{
  v4 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Reset", v6, 2u);
  }

  currentRedirectURL = self->_currentRedirectURL;
  self->_currentRedirectURL = 0;

  self->_numIgnored = 0;
  [(NSMutableDictionary *)self->_redirectedOrigins removeAllObjects];
  [(NSMutableDictionary *)self->_requestingPids removeAllObjects];
}

- (id)evaluate:(id)a3 forThreshold:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  [(RedirectHandler *)self _prune];
  v6 = [(NSMutableDictionary *)self->_redirectedOrigins count];
  v7 = [(NSMutableDictionary *)self->_requestingPids count];
  LODWORD(v8) = self->_numIgnored;
  if (a4 + v8 * self->_numIgnoredScaleFactor <= (v7 + v6))
  {
    v9 = objc_alloc_init(Evaluation);
    v10 = [MEMORY[0x277CCACA8] stringWithString:self->_currentRedirectURL];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __41__RedirectHandler_evaluate_forThreshold___block_invoke;
    v21 = &unk_27898A7F8;
    v22 = self;
    v11 = v10;
    v23 = v11;
    [(Evaluation *)v9 setCallback:&v18];
    v12 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = v12;
      v14 = [(Evaluation *)v9 description:v18];
      v15 = [v14 UTF8String];
      *buf = 136315138;
      v25 = v15;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "redirect signature fires, %s", buf, 0xCu);
    }

    internal_symptom_create();
    internal_symptom_send();
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __41__RedirectHandler_evaluate_forThreshold___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) performNegativeFeedback:*(result + 40)];
  }

  return result;
}

- (void)performNegativeFeedback:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = redirectLogHandle;
  if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v4;
    v7 = v5;
    v13 = 136315138;
    v14 = [v4 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Taking URL %s away as possible destination for redirects", &v13, 0xCu);
  }

  ignoreFor = self->_ignoreFor;
  if (ignoreFor)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:ignoreFor];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v9 = ;
  v10 = [(NSMutableDictionary *)self->_ignoredDestinations objectForKey:v4];
  if (v10)
  {
    v11 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Unexpected additional negative feedback on a URL", &v13, 2u);
    }
  }

  [(NSMutableDictionary *)self->_ignoredDestinations setObject:v9 forKey:v4];
  ++self->_numIgnored;
  ++self->_numNegatives;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_pruneDir:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEAA8] date];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__12;
  v32[4] = __Block_byref_object_dispose__12;
  v33 = [MEMORY[0x277CBEAA8] distantFuture];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __29__RedirectHandler__pruneDir___block_invoke;
  v21 = &unk_27898E600;
  v7 = v6;
  v22 = v7;
  v8 = v5;
  v23 = v8;
  v24 = v32;
  v25 = &v26;
  [v4 enumerateKeysAndObjectsUsingBlock:&v18];
  if ([v8 count])
  {
    v9 = redirectLogHandle;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 description];
      v11 = v10;
      v12 = [v10 UTF8String];
      *buf = 136315138;
      v35 = v12;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Prune timed out entries %s", buf, 0xCu);
    }

    [v4 removeObjectsForKeys:v8];
  }

  if ([v4 count] > self->_maxCount)
  {
    v13 = redirectLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v27[5] description];
      v15 = v14;
      v16 = [v14 UTF8String];
      *buf = 136315138;
      v35 = v16;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Prune oldest entry %s", buf, 0xCu);
    }

    [v4 removeObjectForKey:v27[5]];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __29__RedirectHandler__pruneDir___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v6 compare:*(a1 + 32)] == -1)
  {
    [*(a1 + 40) addObject:v7];
  }

  else if ([v6 compare:*(*(*(a1 + 48) + 8) + 40)] == -1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

- (void)_prune
{
  v3 = [MEMORY[0x277CBEAA8] date];
  if ([(NSDate *)self->_pruningTime compare:v3]== NSOrderedAscending)
  {
    v6 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Pruning due to possible timeout", v9, 2u);
    }

    [(RedirectHandler *)self _pruneDir:self->_redirectedOrigins];
    goto LABEL_12;
  }

  if ([(NSMutableDictionary *)self->_redirectedOrigins count]> self->_maxCount)
  {
    v4 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Pruning origins due to size", buf, 2u);
    }

    [(RedirectHandler *)self _pruneDir:self->_redirectedOrigins];
  }

  if ([(NSMutableDictionary *)self->_requestingPids count]> self->_maxCount)
  {
    v5 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Pruning pids due to size", v7, 2u);
    }

LABEL_12:
    [(RedirectHandler *)self _pruneDir:self->_requestingPids];
  }
}

- (int)configureInstance:(id)a3
{
  v4 = a3;
  self->_maxAge = 60.0;
  *&self->_ignoreFor = 0x1000000000;
  self->_numIgnoredScaleFactor = 1.0;
  v5 = [v4 objectForKey:@"TIME_LIMIT"];
  v6 = v5;
  if (v5)
  {
    self->_maxAge = [v5 integerValue];
  }

  else
  {
    v7 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Missing time limit in redirect config", buf, 2u);
    }
  }

  v8 = [v4 objectForKey:@"COUNT_LIMIT"];
  v9 = v8;
  if (v8)
  {
    self->_maxCount = [v8 integerValue];
  }

  else
  {
    v10 = redirectLogHandle;
    if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Missing count limit in redirect config", v17, 2u);
    }
  }

  v11 = [v4 objectForKey:@"IGNORE_FOR"];
  v12 = v11;
  if (v11)
  {
    self->_ignoreFor = [v11 integerValue];
  }

  v13 = [v4 objectForKey:@"FEEDBACK_SCALE_FACTOR"];
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    self->_numIgnoredScaleFactor = v15;
  }

  return 0;
}

- (void)_addRedirectFrom:(id)a3 To:(id)a4 by:(unint64_t)a5 atTime:(unsigned int)a6
{
  v16 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_ignoredDestinations objectForKey:v9];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 compare:v11];

    if (v12 != -1)
    {
      goto LABEL_8;
    }

    [(NSMutableDictionary *)self->_ignoredDestinations removeObjectForKey:v9];
    --self->_numIgnored;
  }

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_maxAge];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a5];
  currentRedirectURL = self->_currentRedirectURL;
  if (!currentRedirectURL || ![(NSString *)currentRedirectURL isEqualToString:v9])
  {
    objc_storeStrong(&self->_currentRedirectURL, a4);
    objc_storeStrong(&self->_pruningTime, v13);
    [(NSMutableDictionary *)self->_redirectedOrigins removeAllObjects];
    [(NSMutableDictionary *)self->_requestingPids removeAllObjects];
  }

  [(NSMutableDictionary *)self->_redirectedOrigins setObject:v13 forKey:v16];
  [(NSMutableDictionary *)self->_requestingPids setObject:v13 forKey:v14];

LABEL_8:
}

- (BOOL)noteSymptom:(id)a3
{
  v4 = a3;
  v5 = [v4 eventQualifiers];
  v6 = [v5 objectForKey:self->_originalURLKey];

  v7 = [v4 eventQualifiers];
  v8 = [v7 objectForKey:self->_redirectURLKey];

  if (v6 && v8 && [v6 length] == 20 && objc_msgSend(v8, "length") == 20)
  {
    v9 = *([v4 eventData] + 8);
    v10 = [v6 description];
    v11 = [v8 description];
    -[RedirectHandler _addRedirectFrom:To:by:atTime:](self, "_addRedirectFrom:To:by:atTime:", v10, v11, [v4 processId], v9);
  }

  return 1;
}

- (id)generateAdditionalInfo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[NSMutableDictionary count](self->_requestingPids, "count")}];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v5 originatorForLogging];

  v10 = [v8 stringWithUTF8String:v9];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyBundleDetails];
  [v6 setObject:v10 forKey:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyNumReportingProcesses];
  [v6 setObject:v7 forKey:v12];

  v13 = redirectLogHandle;
  if (os_log_type_enabled(redirectLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v15 = [v6 description];
    v18 = 136315138;
    v19 = [v15 UTF8String];
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "generateAdditionalInfo returns %s", &v18, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end