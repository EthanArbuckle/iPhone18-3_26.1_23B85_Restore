@interface SPEmbeddingTokenizer
+ (id)log;
+ (id)sharedInstance;
- (SPEmbeddingTokenizer)init;
- (id)getTokenIDsForText:(id)text;
- (id)getTokensForText:(id)text;
- (unint64_t)maxTokenLength;
- (void)clear;
- (void)initTokenizer;
@end

@implementation SPEmbeddingTokenizer

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SPEmbeddingTokenizer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __27__SPEmbeddingTokenizer_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log_1;
  log_log_1 = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SPEmbeddingTokenizer sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_0;

  return v3;
}

uint64_t __38__SPEmbeddingTokenizer_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance_0 = objc_alloc_init(SPEmbeddingTokenizer);

  return MEMORY[0x2821F96F8]();
}

- (SPEmbeddingTokenizer)init
{
  v7.receiver = self;
  v7.super_class = SPEmbeddingTokenizer;
  v2 = [(SPEmbeddingTokenizer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
    v4 = dispatch_queue_create("com.apple.SpotlightEmbedding.SPEmbeddingTokenizer.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)initTokenizer
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_tokenizer)
  {
    v8 = 0;
    v3 = [MEMORY[0x277D014C8] TokenizerForRevision:objc_msgSend(MEMORY[0x277D268A0] error:{"csuTokenizerRevision"), &v8}];
    v4 = v8;
    tokenizer = self->_tokenizer;
    self->_tokenizer = v3;

    if (v4 || !self->_tokenizer)
    {
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_ERROR, "CSU tokenizer initialization failed with error %@", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getTokenIDsForText:(id)text
{
  textCopy = text;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SPEmbeddingTokenizer_getTokenIDsForText___block_invoke;
  block[3] = &unk_279D01C18;
  v11 = textCopy;
  v12 = &v13;
  block[4] = self;
  v6 = textCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_sync(queue, v7);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void *__43__SPEmbeddingTokenizer_getTokenIDsForText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) initTokenizer];
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = [result getTokenIDsForText:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)getTokensForText:(id)text
{
  textCopy = text;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SPEmbeddingTokenizer_getTokensForText___block_invoke;
  block[3] = &unk_279D01C18;
  v11 = textCopy;
  v12 = &v13;
  block[4] = self;
  v6 = textCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_sync(queue, v7);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void *__41__SPEmbeddingTokenizer_getTokensForText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) initTokenizer];
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = [result getTokensForText:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (unint64_t)maxTokenLength
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SPEmbeddingTokenizer_maxTokenLength__block_invoke;
  v6[3] = &unk_279D01C40;
  v6[4] = self;
  v6[5] = &v7;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v6);
  dispatch_sync(queue, v3);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__38__SPEmbeddingTokenizer_maxTokenLength__block_invoke(uint64_t a1)
{
  [*(a1 + 32) initTokenizer];
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = [result maxTokenLength];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)clear
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPEmbeddingTokenizer_clear__block_invoke;
  block[3] = &unk_279D01A20;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__SPEmbeddingTokenizer_clear__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

@end