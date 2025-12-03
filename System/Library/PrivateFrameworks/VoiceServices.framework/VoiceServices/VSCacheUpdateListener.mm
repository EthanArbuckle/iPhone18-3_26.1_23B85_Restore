@interface VSCacheUpdateListener
+ (id)sharedListener;
- (id)_initShared;
- (void)_enqueueRequest:(id)request;
- (void)_flush;
- (void)dealloc;
- (void)performUpdateForModelIdentifier:(id)identifier classIdentifier:(id)classIdentifier;
- (void)startListening;
- (void)stopListening;
@end

@implementation VSCacheUpdateListener

- (void)_flush
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  updateRequestQueue = self->_updateRequestQueue;
  v4 = [(NSMutableArray *)updateRequestQueue countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(updateRequestQueue);
        }

        VSRecognitionConfigurationCacheUpdate([*(*(&v9 + 1) + 8 * i) modelIdentifier], objc_msgSend(*(*(&v9 + 1) + 8 * i), "classIdentifier"));
      }

      v5 = [(NSMutableArray *)updateRequestQueue countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_updateRequestQueue removeAllObjects];
  [(NSTimer *)self->_flushTimer invalidate];

  self->_flushTimer = 0;
  [(NSLock *)self->_lock unlock];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  if (self->_isListening)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      requestCopy = request;
      _os_log_debug_impl(&dword_272850000, v5, OS_LOG_TYPE_DEBUG, "Enqueuing request: %@", &v21, 0xCu);
    }

    v6 = [(NSMutableArray *)self->_updateRequestQueue count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v11 = [(NSMutableArray *)self->_updateRequestQueue objectAtIndex:v9];
        v12 = [v11 coalescedRequest:request];
        if (v12 == v11)
        {
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_updateRequestQueue removeObjectAtIndex:v10];
          }

          goto LABEL_18;
        }

        v13 = v12;
        if (v12)
        {
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_updateRequestQueue replaceObjectAtIndex:v9 withObject:v12];
            v8 = 1;
            v10 = v9;
            request = v13;
          }

          else
          {
            updateRequestQueue = self->_updateRequestQueue;
            if (v13 != request)
            {
              [(NSMutableArray *)updateRequestQueue replaceObjectAtIndex:v10 withObject:v13];
              updateRequestQueue = self->_updateRequestQueue;
              request = v13;
            }

            [(NSMutableArray *)updateRequestQueue removeObjectAtIndex:v9--];
            --v7;
            v8 = 1;
          }
        }

        ++v9;
      }

      while (v9 < v7);
      if ((v10 != 0x7FFFFFFFFFFFFFFFLL) | v8 & 1)
      {
        goto LABEL_18;
      }
    }

    [(NSMutableArray *)self->_updateRequestQueue addObject:request];
LABEL_18:
    flushTimer = self->_flushTimer;
    if (flushTimer)
    {
      -[NSTimer setFireDate:](flushTimer, "setFireDate:", [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3.0]);
    }

    else
    {
      self->_flushTimer = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__flush selector:0 userInfo:0 repeats:3.0];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [mainRunLoop addTimer:self->_flushTimer forMode:*MEMORY[0x277CBE738]];
      v17 = self->_flushTimer;
    }

    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_updateRequestQueue;
      v21 = 138412290;
      requestCopy = v20;
      _os_log_debug_impl(&dword_272850000, v18, OS_LOG_TYPE_DEBUG, "Queue is now:\n%@", &v21, 0xCu);
    }
  }

  [(NSLock *)self->_lock unlock];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)performUpdateForModelIdentifier:(id)identifier classIdentifier:(id)classIdentifier
{
  v5 = [[VSCacheUpdateRequest alloc] initWithModelIdentifier:identifier classIdentifier:classIdentifier];
  [(VSCacheUpdateListener *)self _enqueueRequest:v5];
}

- (void)stopListening
{
  [(NSLock *)self->_lock lock];
  if (self->_isListening)
  {
    self->_isListening = 0;
    dataProviders = self->_dataProviders;
    self->_dataProviders = 0;
    [(NSLock *)self->_lock unlock];
    [(NSArray *)[(NSDictionary *)dataProviders allValues] makeObjectsPerformSelector:sel_stopReportingChanges];

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

    [(VSCacheUpdateListener *)self _flush];
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)startListening
{
  [(NSLock *)self->_lock lock];
  if (self->_isListening)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }

  else
  {
    self->_isListening = 1;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(NSLock *)self->_lock unlock];
    if (!self->_dataProviders)
    {
      global_queue = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__VSCacheUpdateListener_startListening__block_invoke;
      block[3] = &unk_279E4F7E0;
      block[4] = self;
      dispatch_async(global_queue, block);
    }
  }
}

void __39__VSCacheUpdateListener_startListening__block_invoke(uint64_t a1)
{
  v2 = VSCopyUpdatableRecognitionModelDataProviderInfos();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__VSCacheUpdateListener_startListening__block_invoke_2;
  v3[3] = &unk_279E4F188;
  v3[4] = *(a1 + 32);
  v3[5] = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

BOOL __39__VSCacheUpdateListener_startListening__block_invoke_2(uint64_t a1)
{
  context = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _AddDataProviderToArrayFromInfo, &context);
    CFRelease(*(a1 + 40));
    [objc_msgSend(context "allValues")];
    [*(*(a1 + 32) + 8) lock];
    v3 = *(a1 + 32);
    if (*(v3 + 40) != 1)
    {
      [*(v3 + 8) unlock];
      [objc_msgSend(context "allValues")];

      return VSRecognitionConfigurationCacheUpdate(0, 0);
    }

    *(*(a1 + 32) + 24) = context;
  }

  else
  {
    [*(*(a1 + 32) + 8) lock];

    *(*(a1 + 32) + 24) = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  [*(*(a1 + 32) + 8) unlock];
  return VSRecognitionConfigurationCacheUpdate(0, 0);
}

- (void)dealloc
{
  [(VSCacheUpdateListener *)self stopListening];

  v3.receiver = self;
  v3.super_class = VSCacheUpdateListener;
  [(VSCacheUpdateListener *)&v3 dealloc];
}

- (id)_initShared
{
  v4.receiver = self;
  v4.super_class = VSCacheUpdateListener;
  v2 = [(VSCacheUpdateListener *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v2->_updateRequestQueue = objc_alloc_init(MEMORY[0x277CBEB18]);
    VSPreferencesInitialize();
  }

  return v2;
}

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    dispatch_once(&sharedListener_onceToken, &__block_literal_global_1949);
  }

  return __SharedListener;
}

id __39__VSCacheUpdateListener_sharedListener__block_invoke()
{
  result = [[VSCacheUpdateListener alloc] _initShared];
  __SharedListener = result;
  return result;
}

@end