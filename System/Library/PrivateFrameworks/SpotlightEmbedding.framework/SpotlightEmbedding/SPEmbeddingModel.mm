@interface SPEmbeddingModel
+ (id)log;
+ (id)sharedInstance;
+ (unint64_t)version;
- (BOOL)deviceCanGenerateEmbeddings;
- (SPEmbeddingModel)init;
- (id)_processAttributedString:(id)string;
- (id)_processText:(id)text;
- (id)_processTextInputs:(id)inputs error:(id *)error;
- (id)_processTokenIDs:(id)ds;
- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length bundleID:(id)d queryID:(int64_t)iD clientBundleID:(id)bundleID timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety computeThreshold:(BOOL)self0 workCost:(int64_t *)self1 error:(id *)self2;
- (void)_initModel;
- (void)cancelQueryID:(int64_t)d;
- (void)cancelRequestID:(int)d;
- (void)clear;
- (void)clearQueryID:(int64_t)d requestID:(int)iD;
- (void)preheatWithCompletionHandler:(id)handler;
@end

@implementation SPEmbeddingModel

- (BOOL)deviceCanGenerateEmbeddings
{
  mEMORY[0x277CC3410] = [MEMORY[0x277CC3410] sharedInstance];
  isSemanticSearchAvailable = [mEMORY[0x277CC3410] isSemanticSearchAvailable];

  return isSemanticSearchAvailable;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SPEmbeddingModel sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

+ (unint64_t)version
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getVCPMediaAnalyzerClass_softClass;
  v9 = getVCPMediaAnalyzerClass_softClass;
  if (!getVCPMediaAnalyzerClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getVCPMediaAnalyzerClass_block_invoke;
    v5[3] = &unk_279D01BB8;
    v5[4] = &v6;
    __getVCPMediaAnalyzerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 getUnifiedEmbeddingVersion];
}

uint64_t __34__SPEmbeddingModel_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(SPEmbeddingModel);

  return MEMORY[0x2821F96F8]();
}

- (SPEmbeddingModel)init
{
  v12.receiver = self;
  v12.super_class = SPEmbeddingModel;
  v2 = [(SPEmbeddingModel *)&v12 init];
  v3 = v2;
  if (v2)
  {
    service = v2->_service;
    v2->_service = 0;

    requestIDs = v3->_requestIDs;
    v3->_requestIDs = 0;

    queryIDs = v3->_queryIDs;
    v3->_queryIDs = 0;

    v3->_warmedUp = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.SpotlightEmbedding.queue", v8);
    queue = v3->_queue;
    v3->_queue = v9;
  }

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SPEmbeddingModel_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __23__SPEmbeddingModel_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log_0;
  log_log_0 = v2;
}

- (void)_initModel
{
  if (!self->_service)
  {
    service = [MEMORY[0x277D26888] service];
    service = self->_service;
    self->_service = service;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestIDs = self->_requestIDs;
    self->_requestIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryIDs = self->_queryIDs;
    self->_queryIDs = v7;

    self->_warmedUp = 0;
  }
}

- (void)clear
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SPEmbeddingModel_clear__block_invoke;
  block[3] = &unk_279D01A20;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__25__SPEmbeddingModel_clear__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    [result cancelAllRequests];
    [*(*(a1 + 32) + 16) removeAllObjects];
    v3 = *(*(a1 + 32) + 24);

    return [v3 removeAllObjects];
  }

  return result;
}

- (void)preheatWithCompletionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(SPEmbeddingModel *)self deviceCanGenerateEmbeddings])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke;
    block[3] = &unk_279D01A78;
    block[4] = self;
    v12 = handlerCopy;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v6);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Device does not support embeddings";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8003 userInfo:v8];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = qos_class_self();
    _os_log_impl(&dword_26B793000, v3, OS_LOG_TYPE_INFO, "preheat request as QOS (%d)", buf, 8u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D26890]);
  [v4 setExtendedContextLength:1];
  [*(a1 + 32) _initModel];
  v5 = *(*(a1 + 32) + 8);
  v11 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke_207;
  v9[3] = &unk_279D01A50;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  [v5 prewarmTextRequests:v6 completionHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 description];
    v8 = [v6 stringWithFormat:@"Text embedding model preheat failed, error: %@", v7];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v5 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8003 userInfo:v9];

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }
  }

  else
  {
    *(*(a1 + 32) + 40) = 1;
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearQueryID:(int64_t)d requestID:(int)iD
{
  if ([(SPEmbeddingModel *)self deviceCanGenerateEmbeddings]&& iD != -1 && (d & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFFFLL)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SPEmbeddingModel_clearQueryID_requestID___block_invoke;
    block[3] = &unk_279D01AA0;
    iDCopy = iD;
    block[4] = self;
    block[5] = d;
    dispatch_async(queue, block);
  }
}

void __43__SPEmbeddingModel_clearQueryID_requestID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 16);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    [v3 removeObjectForKey:v4];

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [v6 removeObjectForKey:v7];
  }
}

- (void)cancelQueryID:(int64_t)d
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCanGenerateEmbeddings = [(SPEmbeddingModel *)self deviceCanGenerateEmbeddings];
  if ((~d & 0x7FFFFFFFFFFFFFFFLL) != 0 && deviceCanGenerateEmbeddings)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "[qid=%ld] cancelQueryID", buf, 0xCu);
    }

    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__SPEmbeddingModel_cancelQueryID___block_invoke;
    v9[3] = &unk_279D01AC8;
    v9[4] = self;
    v9[5] = d;
    dispatch_async(queue, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __34__SPEmbeddingModel_cancelQueryID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 24);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [objc_opt_class() log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v13 = 134218240;
        v14 = v8;
        v15 = 1024;
        v16 = [v5 intValue];
        _os_log_impl(&dword_26B793000, v7, OS_LOG_TYPE_INFO, "[qid=%ld] cancelQueryID, requestID: %d", &v13, 0x12u);
      }

      [*(*(a1 + 32) + 8) cancelRequestID:{objc_msgSend(v5, "intValue")}];
      [*(*(a1 + 32) + 16) removeObjectForKey:v5];
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 24);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [v10 removeObjectForKey:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelRequestID:(int)d
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCanGenerateEmbeddings = [(SPEmbeddingModel *)self deviceCanGenerateEmbeddings];
  if (d != -1 && deviceCanGenerateEmbeddings)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      dCopy = d;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "cancelRequestID, requestID: %d", buf, 8u);
    }

    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__SPEmbeddingModel_cancelRequestID___block_invoke;
    v9[3] = &unk_279D01AF0;
    v9[4] = self;
    dCopy2 = d;
    dispatch_async(queue, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __36__SPEmbeddingModel_cancelRequestID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 cancelRequestID:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 16);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v5 = [v3 objectForKey:v4];

    v6 = *(a1 + 32);
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 longValue];
      v9 = *(a1 + 40);
      v13 = 134218240;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_26B793000, v7, OS_LOG_TYPE_INFO, "[qid=%ld] cancelRequestID, requestID: %d", &v13, 0x12u);
    }

    if (v5)
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:v5];
    }

    v10 = *(*(a1 + 32) + 16);
    v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [v10 removeObjectForKey:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_processTextInputs:(id)inputs error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(inputsCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = inputsCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        type = [v13 type];
        switch(type)
        {
          case 3:
            attributedString = [v13 attributedString];
            v16 = [(SPEmbeddingModel *)self _processAttributedString:attributedString];
            break;
          case 2:
            attributedString = [v13 tokenIDs];
            v16 = [(SPEmbeddingModel *)self _processTokenIDs:attributedString];
            break;
          case 1:
            attributedString = [v13 text];
            v16 = [(SPEmbeddingModel *)self _processText:attributedString];
            break;
          default:
            if (error)
            {
              v23 = MEMORY[0x277CCA9B8];
              v32 = *MEMORY[0x277CCA450];
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid input format (%lu)", objc_msgSend(v13, "type")];
              v33 = v24;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
              *error = [v23 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8004 userInfo:v25];
            }

            v20 = 0;
            goto LABEL_19;
        }

        v17 = v16;

        if (!v17)
        {
          if (error)
          {
            v18 = MEMORY[0x277CCA9B8];
            v30 = *MEMORY[0x277CCA450];
            v31 = @"Processing text input failed";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            *error = [v18 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8004 userInfo:v19];
          }

          goto LABEL_18;
        }

        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_processText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277D268A0]);
    [v7 addText:v6];
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_26B793000, v8, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as text is empty", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_processTokenIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277D268A0]);
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:dsCopy];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 isEqualToNumber:&unk_287C3C940];

      if (v7)
      {
        [v5 removeObjectAtIndex:0];
      }
    }

    if ([v5 count])
    {
      lastObject = [v5 lastObject];
      v9 = [lastObject isEqualToNumber:&unk_287C3C940];

      if (v9)
      {
        [v5 removeLastObject];
      }
    }

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    [v4 addTokenIDs:v10];
  }

  else
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_26B793000, v11, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as token IDs are empty", v13, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_processAttributedString:(id)string
{
  v54 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    *v46 = 0;
    v47 = v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3010000000;
    v44 = 0;
    v45 = 0;
    v43 = &unk_26B79B05E;
    v5 = [stringCopy length];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__SPEmbeddingModel__processAttributedString___block_invoke;
    v39[3] = &unk_279D01B40;
    v39[4] = v46;
    v39[5] = &v40;
    [v4 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v39}];
    v6 = objc_alloc_init(MEMORY[0x277D268A0]);
    if (!*(v47 + 5))
    {
      string = [v4 string];
      [v6 addText:string];
    }

    v8 = v41[5];
    if (v8 == [v4 length])
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26B793000, v9, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as query only contains person", buf, 2u);
      }

      v10 = 0;
      goto LABEL_30;
    }

    v12 = v41[4];
    if (!v12)
    {
LABEL_19:
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [v22 initWithUUIDString:*(v47 + 5)];
      [v6 addEntityUUID:v23];

      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26B793000, v24, OS_LOG_TYPE_INFO, "Found person uuid from the query", buf, 2u);
      }

      v25 = [v4 length];
      v26 = v41[5] + v41[4];
      v27 = v25 - v26;
      if (v25 - v26 < 1)
      {
        goto LABEL_29;
      }

      string2 = [v4 string];
      v29 = [string2 substringWithRange:{v26, v27}];

      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v31 = [v29 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v31 length])
      {
        [v6 addText:v31];
        v32 = [objc_opt_class() log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v29 length];
          *buf = 134217984;
          v53 = v33;
          v34 = "Found postString with %lu characters";
          v35 = v32;
          v36 = 12;
LABEL_27:
          _os_log_impl(&dword_26B793000, v35, OS_LOG_TYPE_INFO, v34, buf, v36);
        }
      }

      else
      {
        v32 = [objc_opt_class() log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v34 = "**Warning** postString is empty";
          v35 = v32;
          v36 = 2;
          goto LABEL_27;
        }
      }

LABEL_29:
      v10 = v6;
LABEL_30:

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(v46, 8);

      goto LABEL_31;
    }

    string3 = [v4 string];
    v14 = [string3 substringWithRange:{0, v12}];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

    if ([v16 length])
    {
      [v6 addText:v16];
      v17 = [objc_opt_class() log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 length];
        *buf = 134217984;
        v53 = v18;
        v19 = "Found preString with %lu characters";
        v20 = v17;
        v21 = 12;
LABEL_17:
        _os_log_impl(&dword_26B793000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }

    else
    {
      v17 = [objc_opt_class() log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v19 = "**Warning** preString is empty";
        v20 = v17;
        v21 = 2;
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v46 = 0;
    _os_log_impl(&dword_26B793000, v11, OS_LOG_TYPE_INFO, "**Warning** Skipping personalized embedding generation as attributed query is empty", v46, 2u);
  }

  v10 = 0;
LABEL_31:

  v37 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __45__SPEmbeddingModel__processAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPEmbeddingModel__processAttributedString___block_invoke_2;
  v5[3] = &unk_279D01B18;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a4;
  return [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __45__SPEmbeddingModel__processAttributedString___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 isEqualToString:@"kMDItemPhotosPeoplePersonIdentifiers"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *(*(*(a1 + 40) + 8) + 32) = *(a1 + 48);
      *a4 = 1;
    }
  }
}

- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length bundleID:(id)d queryID:(int64_t)iD clientBundleID:(id)bundleID timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety computeThreshold:(BOOL)self0 workCost:(int64_t *)self1 error:(id *)self2
{
  v87[1] = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  dCopy = d;
  bundleIDCopy = bundleID;
  v41 = inputsCopy;
  if (!-[SPEmbeddingModel deviceCanGenerateEmbeddings](self, "deviceCanGenerateEmbeddings") || (v19 = [inputsCopy count]) == 0)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v20 = v19;
  v39 = [(SPEmbeddingModel *)self _processTextInputs:inputsCopy error:error];
  if ([v39 count] == v20)
  {
    if (![bundleIDCopy length])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      bundleIDCopy = bundleIdentifier;
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy_;
    v84 = __Block_byref_object_dispose_;
    v85 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = -1;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy_;
    v74 = __Block_byref_object_dispose_;
    v75 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy_;
    v68 = __Block_byref_object_dispose_;
    v69 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke;
    block[3] = &unk_279D01B90;
    block[4] = self;
    iDCopy = iD;
    bundleIDCopy = bundleIDCopy;
    v44 = bundleIDCopy;
    thresholdCopy = threshold;
    safetyCopy = safety;
    lengthCopy = length;
    v24 = v23;
    v45 = v24;
    v46 = v39;
    v48 = &v60;
    v49 = &v70;
    v50 = &v64;
    v54 = v20;
    costCopy = cost;
    v51 = &v80;
    timeoutCopy = timeout;
    v47 = dCopy;
    v52 = &v76;
    v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v25);

    if (timeout)
    {
      v26 = dispatch_time(0, 1000000 * timeout);
      errorCopy2 = error;
      if (dispatch_group_wait(v24, v26))
      {
        v28 = atomic_load(v77 + 6);
        [(SPEmbeddingModel *)self cancelRequestID:v28];
        *(v61 + 24) = 1;
        if (error)
        {
          v29 = MEMORY[0x277CCA9B8];
          v86 = *MEMORY[0x277CCA450];
          timeout = [MEMORY[0x277CCACA8] stringWithFormat:@"Text embedding generation timeout (timeout=%lums)", timeout];
          v87[0] = timeout;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];
          *error = [v29 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8007 userInfo:v31];
        }

        if ((~iD & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = 2;
        }

        else
        {
          v32 = 1;
        }

        sendSpotlightEmbeddingAnalyticsEvent(1, v32, bundleIDCopy);
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      errorCopy2 = error;
    }

    v34 = atomic_load(v77 + 6);
    [(SPEmbeddingModel *)self clearQueryID:iD requestID:v34];
    v35 = v71[5];
    if (v35)
    {
      if (!errorCopy2)
      {
LABEL_23:
        v33 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      self->_warmedUp = 1;
      v35 = v65[5];
      if (!v35)
      {
        v33 = v81[5];
        goto LABEL_24;
      }

      if (!errorCopy2)
      {
        goto LABEL_23;
      }
    }

    v33 = 0;
    *error = v35;
LABEL_24:

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v80, 8);

    goto LABEL_25;
  }

  v33 = 0;
LABEL_25:

LABEL_26:
  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

void __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 112);
    v5 = qos_class_self();
    v6 = *(a1 + 40);
    *buf = 134218498;
    v60 = v4;
    v61 = 1024;
    v62 = v5;
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&dword_26B793000, v3, OS_LOG_TYPE_INFO, "[qid=%ld] MADRequest as QOS (%d) client:%@", buf, 0x1Cu);
  }

  v7 = objc_alloc_init(MEMORY[0x277D26890]);
  [v7 setVersion:{+[SPEmbeddingModel version](SPEmbeddingModel, "version")}];
  [v7 setComputeThreshold:*(a1 + 144)];
  [v7 setComputeSafety:*(a1 + 145)];
  [v7 setExtendedContextLength:*(a1 + 146)];
  if (*(a1 + 146) == 1 && (*(a1 + 112) | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 112);
      *buf = 134217984;
      v60 = v10;
      _os_log_impl(&dword_26B793000, v9, OS_LOG_TYPE_INFO, "[qid=%ld] Extended context length enabled", buf, 0xCu);
    }
  }

  v58 = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v12 = dispatch_time(0, 0);
  dispatch_group_enter(*(a1 + 48));
  [*(a1 + 32) _initModel];
  v13 = *(*(a1 + 32) + 8);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke_235;
  v43 = &unk_279D01B68;
  v49 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 120);
  v44 = v15;
  v52 = v16;
  v17 = v7;
  v18 = *(a1 + 80);
  v45 = v17;
  v50 = v18;
  v57 = *(a1 + 145);
  v19 = *(a1 + 40);
  v20 = *(a1 + 112);
  v21 = *(a1 + 32);
  v46 = v19;
  v47 = v21;
  v51 = *(a1 + 88);
  v53 = v20;
  v54 = v12;
  v22 = *(a1 + 136);
  v55 = *(a1 + 128);
  v56 = v22;
  v48 = *(a1 + 64);
  v23 = [v13 performRequests:v11 textInputs:v14 completionHandler:&v40];
  atomic_store(v23, (*(*(a1 + 104) + 8) + 24));
  v24 = *(a1 + 112);
  if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 != -1 && v23 != -1)
  {
    v25 = *(a1 + 32);
    v26 = [objc_opt_class() log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 112);
      v28 = atomic_load((*(*(a1 + 104) + 8) + 24));
      *buf = 134218240;
      v60 = v27;
      v61 = 1024;
      v62 = v28;
      _os_log_impl(&dword_26B793000, v26, OS_LOG_TYPE_INFO, "[qid=%ld] generateEmbeddingForTextInputs, requestID: %d", buf, 0x12u);
    }

    v29 = *(*(a1 + 32) + 24);
    v30 = MEMORY[0x277CCABB0];
    v31 = atomic_load((*(*(a1 + 104) + 8) + 24));
    v32 = [v30 numberWithInt:v31];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 112)];
    [v29 setObject:v32 forKey:v33];

    v34 = *(*(a1 + 32) + 16);
    v35 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 112)];
    v36 = MEMORY[0x277CCABB0];
    v37 = atomic_load((*(*(a1 + 104) + 8) + 24));
    v38 = [v36 numberWithInt:v37];
    [v34 setObject:v35 forKey:v38];
  }

  dispatch_group_leave(*(a1 + 48));

  v39 = *MEMORY[0x277D85DE8];
}

void __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke_235(uint64_t a1, int a2, void *a3)
{
  v116[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v94 = a2;
    if (a2 != -1 && !v5)
    {
      v7 = *(a1 + 104);
      v8 = [*(a1 + 40) embeddingResults];
      v9 = [v8 count];

      v10 = v7 == v9;
      v6 = 0;
      if (v10)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        obj = [*(a1 + 40) embeddingResults];
        v96 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
        if (!v96)
        {
          goto LABEL_49;
        }

        v95 = *v99;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v99 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v98 + 1) + 8 * v11);
          if (!v12)
          {
            break;
          }

          v13 = [*(*(&v98 + 1) + 8 * v11) embedding];
          v14 = [v13 data];

          if (!v14)
          {
            break;
          }

          if (*(a1 + 144) == 1)
          {
            v15 = [v12 safetyScore];
            [v15 floatValue];
            v17 = v16;

            v18 = [MEMORY[0x277CBEAF8] currentLocale];
            v19 = [v18 languageCode];
            v20 = [v19 lowercaseString];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = &stru_287C3C118;
            }

            v23 = v22;

            v24 = [v18 countryCode];
            v25 = [v24 lowercaseString];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = &stru_287C3C118;
            }

            v28 = v27;

            v29 = v23;
            v30 = v29;
            if ([(__CFString *)v29 isEqualToString:@"zh"])
            {
              v31 = @"zh_tw";
              if (([(__CFString *)v28 isEqualToString:@"tw"]& 1) != 0 || (v31 = @"zh_hk", v30 = v29, [(__CFString *)v28 isEqualToString:@"hk"]))
              {

                v30 = v31;
              }
            }

            if ([*(a1 + 48) isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(*(a1 + 48), "hasPrefix:", @"com.apple.email"))
            {
              v32 = @"text";
              v33 = &unk_287C3CDA8;
            }

            else
            {
              v34 = [*(a1 + 48) isEqualToString:@"com.apple.MobileSMS"];
              if (v34)
              {
                v32 = @"text";
              }

              else
              {
                v32 = @"photo";
              }

              if (v34)
              {
                v33 = &unk_287C3CDA8;
              }

              else
              {
                v33 = &unk_287C3CDB8;
              }
            }

            v35 = [(X *)&unk_287C3CD80 objectForKey:v30];
            v36 = [v35 objectForKey:v32];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v33;
            }

            v39 = v38;

            v40 = [v12 isSafe];
            if ([v40 BOOLValue])
            {
            }

            else
            {
              [v39 floatValue];
              v42 = v41;

              if (v17 >= v42)
              {
                v85 = MEMORY[0x277CCA9B8];
                v110 = *MEMORY[0x277CCA450];
                v86 = MEMORY[0x277CCACA8];
                v87 = *(a1 + 112);
                [v39 floatValue];
                v89 = [v86 stringWithFormat:@"[qid=%ld] Result marked as unsafe by CLIP Safety Models with confidence score : %f (threshold:%f language:%@)", v87, v17, v88, v30];
                v111 = v89;
                v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
                v91 = [v85 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8008 userInfo:v90];
                v92 = *(*(a1 + 88) + 8);
                v93 = *(v92 + 40);
                *(v92 + 40) = v91;

                goto LABEL_58;
              }
            }

            v43 = *(a1 + 56);
            v44 = [objc_opt_class() log];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = *(a1 + 112);
              [v39 floatValue];
              *buf = 134218754;
              v103 = v45;
              v104 = 2048;
              v105 = v17;
              v106 = 2048;
              v107 = v46;
              v108 = 2112;
              v109 = v30;
              _os_log_impl(&dword_26B793000, v44, OS_LOG_TYPE_INFO, "[qid=%ld] Result marked as safe by CLIP Safety Model with confidence score : %f (threshold:%f language:%@)", buf, 0x2Au);
            }
          }

          v47 = [SPEmbeddingResult alloc];
          v48 = +[SPEmbeddingModel version];
          v49 = [v12 embedding];
          v50 = [v49 data];
          v51 = [v12 embedding];
          v52 = [v51 type];
          v53 = [v12 scale];
          [v53 floatValue];
          v55 = v54;
          v56 = [v12 bias];
          [v56 floatValue];
          LODWORD(v58) = v57;
          LODWORD(v59) = v55;
          v60 = [(SPEmbeddingResult *)v47 initWithVersion:v48 data:v50 type:v52 scale:v59 bias:v58];

          v61 = *(*(*(a1 + 96) + 8) + 40);
          if (!v61)
          {
            v62 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 104)];
            v63 = *(*(a1 + 96) + 8);
            v64 = *(v63 + 40);
            *(v63 + 40) = v62;

            v61 = *(*(*(a1 + 96) + 8) + 40);
          }

          [v61 addObject:v60];

          if (v96 == ++v11)
          {
            v96 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
            if (v96)
            {
              goto LABEL_8;
            }

            v6 = 0;
            goto LABEL_49;
          }
        }

        v77 = MEMORY[0x277CCA9B8];
        v112 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Text embedding generation result is empty"];
        v113 = v18;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v78 = [v77 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8006 userInfo:v29];
        v79 = *(*(a1 + 80) + 8);
        v28 = *(v79 + 40);
        *(v79 + 40) = v78;
LABEL_58:
        v6 = 0;
        goto LABEL_48;
      }
    }

    v65 = MEMORY[0x277CCA9B8];
    v115 = *MEMORY[0x277CCA450];
    v66 = MEMORY[0x277CCACA8];
    obj = [*(a1 + 40) embeddingResults];
    v18 = [v66 stringWithFormat:@"Text embedding generation failed (%lu results): %@", objc_msgSend(obj, "count"), v6];
    v116[0] = v18;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:&v115 count:1];
    v67 = [v65 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8005 userInfo:v29];
    v68 = *(*(a1 + 80) + 8);
    v28 = *(v68 + 40);
    *(v68 + 40) = v67;
LABEL_48:

LABEL_49:
    v69 = dispatch_time(0, 0);
    v70 = *(a1 + 128);
    *&v71 = v69 - *(a1 + 120);
    if (v70 && !*(a1 + 136))
    {
      *v70 += *&v71;
    }

    if (!*(*(*(a1 + 80) + 8) + 40) && [*(*(*(a1 + 96) + 8) + 40) count])
    {
      v72 = v6;
      if ((*(a1 + 112) | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v73 = *(a1 + 56);
        v74 = [objc_opt_class() log];
        v75 = 1;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v76 = [*(*(*(a1 + 96) + 8) + 40) count];
          *buf = 134218496;
          v103 = v76;
          v104 = 2048;
          v105 = v71;
          v106 = 1024;
          LODWORD(v107) = v94;
          _os_log_impl(&dword_26B793000, v74, OS_LOG_TYPE_INFO, "Successfully generated %lu text embeddings (time=%lldns), requestID: %d", buf, 0x1Cu);
        }
      }

      else
      {
        v80 = *(a1 + 56);
        v74 = [objc_opt_class() log];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v81 = *(a1 + 112);
          *buf = 134218496;
          v103 = v81;
          v104 = 2048;
          v105 = v71;
          v106 = 1024;
          LODWORD(v107) = v94;
          _os_log_impl(&dword_26B793000, v74, OS_LOG_TYPE_INFO, "[qid=%ld] Successfully generated a text embedding (time=%lldns), requestID: %d", buf, 0x1Cu);
        }

        v75 = 2;
      }

      sendSpotlightEmbeddingAnalyticsEvent(0, v75, *(a1 + 48));
      v6 = v72;
    }

    if (*(a1 + 112) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v82 = 6;
    }

    else
    {
      v82 = 10;
    }

    v83 = [MEMORY[0x277CC3468] sharedInstance];
    [v83 logWithBundleID:*(a1 + 64) indexOperation:v82 itemCount:1 code:0];
  }

  dispatch_group_leave(*(a1 + 32));

  v84 = *MEMORY[0x277D85DE8];
}

@end