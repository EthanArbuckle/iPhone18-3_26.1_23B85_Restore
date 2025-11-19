@interface QUModelFactory
+ (id)log;
+ (id)sharedInstance;
- (NSError)loadError;
- (QUModelFactory)init;
- (id)getModelForLocale:(id)a3 withTimeoutMS:(unsigned int)a4;
- (void)releaseModel;
@end

@implementation QUModelFactory

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__QUModelFactory_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __21__QUModelFactory_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.queryunderstanding", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[QUModelFactory sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __32__QUModelFactory_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(QUModelFactory);

  return MEMORY[0x2821F96F8]();
}

- (QUModelFactory)init
{
  v10.receiver = self;
  v10.super_class = QUModelFactory;
  v2 = [(QUModelFactory *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA928]);
    condition = v2->_condition;
    v2->_condition = v3;

    transaction = v2->_transaction;
    v2->_transaction = 0;

    releaseBlock = v2->_releaseBlock;
    v2->_releaseBlock = 0;

    v7 = [MEMORY[0x277CBEB98] setWithObjects:0];
    unsupportedLocaleIdentifiers = v2->_unsupportedLocaleIdentifiers;
    v2->_unsupportedLocaleIdentifiers = v7;
  }

  return v2;
}

- (id)getModelForLocale:(id)a3 withTimeoutMS:(unsigned int)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  unsupportedLocaleIdentifiers = self->_unsupportedLocaleIdentifiers;
  v8 = [v6 localeIdentifier];
  LODWORD(unsupportedLocaleIdentifiers) = [(NSSet *)unsupportedLocaleIdentifiers containsObject:v8];

  [(NSCondition *)self->_condition lock];
  if (unsupportedLocaleIdentifiers)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QueryParser.QUModelError" code:-9002 userInfo:0];
    loadError = self->_loadError;
    self->_loadError = v9;

    [(NSCondition *)self->_condition unlock];
    v11 = 0;
  }

  else
  {
    releaseBlock = self->_releaseBlock;
    if (releaseBlock)
    {
      dispatch_block_cancel(releaseBlock);
      v13 = self->_releaseBlock;
      self->_releaseBlock = 0;
    }

    v14 = [(QUUnderstandingModel *)self->_quModel locale];
    v15 = [v14 localeIdentifier];
    v16 = [v6 localeIdentifier];
    v17 = [v15 isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v6 localeIdentifier];
        *buf = 138412290;
        v34 = *&v19;
        _os_log_impl(&dword_2615A2000, v18, OS_LOG_TYPE_INFO, "[QPNLU] QU creating new model for %@", buf, 0xCu);
      }

      v20 = [[U2OwlModel alloc] initWithLocale:v6];
      quModel = self->_quModel;
      self->_quModel = v20;

      v22 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v22;

      v24 = self->_loadError;
      self->_loadError = 0;

      self->_state = 1;
      v25 = self->_quModel;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __50__QUModelFactory_getModelForLocale_withTimeoutMS___block_invoke;
      v32[3] = &unk_279ADA820;
      v32[4] = self;
      [(QUUnderstandingModel *)v25 loadWithCompletionHandler:v32];
    }

    state = self->_state;
    if (a4 && state != 3)
    {
      v27 = [objc_opt_class() log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v34 = a4 / 1000.0;
        _os_log_impl(&dword_2615A2000, v27, OS_LOG_TYPE_DEFAULT, "[QPNLU] Waiting for model load with timeout (%f)", buf, 0xCu);
      }

      self->_state = 2;
      v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a4 / 1000.0];
      [(NSCondition *)self->_condition waitUntilDate:v28];
      v29 = [objc_opt_class() log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2615A2000, v29, OS_LOG_TYPE_DEFAULT, "[QPNLU] Done waiting", buf, 2u);
      }

      if (self->_state == 2)
      {
        self->_state = 1;
      }

      state = self->_state;
    }

    if (state == 3)
    {
      v11 = self->_quModel;
    }

    else
    {
      v11 = 0;
    }

    [(NSCondition *)self->_condition unlock];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v11;
}

void __50__QUModelFactory_getModelForLocale_withTimeoutMS___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = a2;
  [v7 lock];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);

  if (v10 != v8)
  {
    v11 = [objc_opt_class() log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_5:

      goto LABEL_14;
    }

    LODWORD(v26) = 138412290;
    *(&v26 + 4) = v6;
    v12 = "[QPNLU] QU model changed before load complete error: %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
LABEL_4:
    _os_log_impl(&dword_2615A2000, v13, v14, v12, &v26, v15);
    goto LABEL_5;
  }

  if (*(v9 + 16) == 2)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_2615A2000, v16, OS_LOG_TYPE_DEFAULT, "[QPNLU] Waking threads blocked on load", &v26, 2u);
    }

    [*(*(a1 + 32) + 8) broadcast];
  }

  v17 = *(a1 + 32);
  if (!v6)
  {
    *(v17 + 16) = 3;
    v25 = *(a1 + 32);
    v11 = [objc_opt_class() log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    LOWORD(v26) = 0;
    v12 = "[QPNLU] QU model loaded";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 2;
    goto LABEL_4;
  }

  objc_storeStrong((v17 + 56), a3);
  v18 = *(a1 + 32);
  v19 = [objc_opt_class() log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v26) = 138412290;
    *(&v26 + 4) = v6;
    _os_log_impl(&dword_2615A2000, v19, OS_LOG_TYPE_ERROR, "[QPNLU] QU model load failed error: %@", &v26, 0xCu);
  }

  v20 = *(a1 + 32);
  v21 = *(v20 + 24);
  *(v20 + 24) = 0;

  v22 = *(a1 + 32);
  v23 = *(v22 + 40);
  *(v22 + 40) = 0;

  *(*(a1 + 32) + 16) = 0;
LABEL_14:
  [*(*(a1 + 32) + 8) unlock];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)releaseModel
{
  [(NSCondition *)self->_condition lock];
  loadError = self->_loadError;
  self->_loadError = 0;

  releaseBlock = self->_releaseBlock;
  if (releaseBlock)
  {
    dispatch_block_cancel(releaseBlock);
    v5 = self->_releaseBlock;
    self->_releaseBlock = 0;
  }

  if (self->_quModel)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_2615A2000, v6, OS_LOG_TYPE_INFO, "[QPNLU] QU model released", v9, 2u);
    }

    quModel = self->_quModel;
    self->_quModel = 0;

    transaction = self->_transaction;
    self->_transaction = 0;
  }

  if (self->_state == 2)
  {
    [(NSCondition *)self->_condition broadcast];
  }

  self->_state = 0;
  [(NSCondition *)self->_condition unlock];
}

- (NSError)loadError
{
  [(NSCondition *)self->_condition lock];
  v3 = self->_loadError;
  [(NSCondition *)self->_condition unlock];

  return v3;
}

@end