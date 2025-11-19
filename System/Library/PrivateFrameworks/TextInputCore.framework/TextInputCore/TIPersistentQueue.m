@interface TIPersistentQueue
- (TIPersistentQueue)initWithURL:(id)a3;
- (void)dequeueObjects:(id)a3;
- (void)enqueueObjects:(id)a3;
- (void)readObjects:(id)a3;
@end

@implementation TIPersistentQueue

- (void)dequeueObjects:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    presentedItemURL = self->_presentedItemURL;
    v13 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__TIPersistentQueue_dequeueObjects___block_invoke;
    v11[3] = &unk_278733118;
    v12 = v4;
    [v5 coordinateWritingItemAtURL:presentedItemURL options:0 error:&v13 byAccessor:v11];
    v7 = v13;
    if (v7)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to coordinate write of %@: %@", "-[TIPersistentQueue dequeueObjects:]", self->_presentedItemURL, v7];
        *buf = 138412290;
        v15 = v10;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__TIPersistentQueue_dequeueObjects___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] arrayWithContentsOfURL:v3];
  v5 = (*(*(a1 + 32) + 16))();
  if (v5 > [v4 count])
  {
    v5 = [v4 count];
  }

  v6 = [v4 subarrayWithRange:{v5, objc_msgSend(v4, "count") - v5}];

  if (v5)
  {
    if (![v6 count])
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      [v9 removeItemAtURL:v3 error:&v12];
      v7 = v12;

      if (!v7)
      {
LABEL_16:

        goto LABEL_17;
      }

      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to delete %@: %@", "-[TIPersistentQueue dequeueObjects:]_block_invoke", v3, v7];
        *buf = 138412290;
        v14 = v11;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_15:

      goto LABEL_16;
    }

    if (([v6 writeToURL:v3 atomically:1] & 1) == 0)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v7 = TIOSLogFacility();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to write to %@ for updated persistent queue: %@", "-[TIPersistentQueue dequeueObjects:]_block_invoke", v3, v6];
      *buf = 138412290;
      v14 = v8;
      _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_15;
    }
  }

LABEL_17:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enqueueObjects:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    presentedItemURL = self->_presentedItemURL;
    v13 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__TIPersistentQueue_enqueueObjects___block_invoke;
    v11[3] = &unk_278733118;
    v12 = v4;
    [v5 coordinateWritingItemAtURL:presentedItemURL options:0 error:&v13 byAccessor:v11];
    v7 = v13;
    if (v7)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to coordinate write of %@: %@", "-[TIPersistentQueue enqueueObjects:]", self->_presentedItemURL, v7];
        *buf = 138412290;
        v15 = v10;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__TIPersistentQueue_enqueueObjects___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:?];
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  if ([v8 count])
  {
    [v8 writeToURL:v9 atomically:1];
  }
}

- (void)readObjects:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    presentedItemURL = self->_presentedItemURL;
    v13 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__TIPersistentQueue_readObjects___block_invoke;
    v11[3] = &unk_278733118;
    v12 = v4;
    [v5 coordinateReadingItemAtURL:presentedItemURL options:0 error:&v13 byAccessor:v11];
    v7 = v13;
    if (v7)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to coordinate read of %@: %@", "-[TIPersistentQueue readObjects:]", self->_presentedItemURL, v7];
        *buf = 138412290;
        v15 = v10;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __33__TIPersistentQueue_readObjects___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:a2];
  (*(*(a1 + 32) + 16))();
}

- (TIPersistentQueue)initWithURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TIPersistentQueue;
  v6 = [(TIPersistentQueue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentedItemURL, a3);
    v8 = v7;
  }

  return v7;
}

@end