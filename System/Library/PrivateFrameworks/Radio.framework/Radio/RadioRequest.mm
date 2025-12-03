@interface RadioRequest
+ (id)defaultURLCache;
+ (void)loadServiceConfigurationWithCompletionHandler:(id)handler;
- (BOOL)isCachedResponse;
- (NSDictionary)unparsedResponseDictionary;
- (RadioRequest)init;
- (RadioRequestContext)requestContext;
- (double)retryInterval;
- (int64_t)errorCode;
- (int64_t)status;
- (void)_loadRadioStoreBagAndAllowRetry:(BOOL)retry withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)setCachedResponse:(BOOL)response;
- (void)setErrorCode:(int64_t)code;
- (void)setRequestContext:(id)context;
- (void)setRetryInterval:(double)interval;
- (void)setStatus:(int64_t)status;
- (void)setUnparsedResponseDictionary:(id)dictionary;
@end

@implementation RadioRequest

- (RadioRequest)init
{
  v6.receiver = self;
  v6.super_class = RadioRequest;
  v2 = [(RadioRequest *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Radio.RadioRequest", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(RadioRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = RadioRequest;
  [(RadioRequest *)&v3 dealloc];
}

+ (id)defaultURLCache
{
  if (defaultURLCache_sOnceToken != -1)
  {
    dispatch_once(&defaultURLCache_sOnceToken, &__block_literal_global_920);
  }

  v3 = defaultURLCache_sDefaultURLCache;

  return v3;
}

void __31__RadioRequest_defaultURLCache__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D69D38]);
  [v2 setSessionIdentifier:@"com.apple.Radio.RadioRequestURLCache"];
  [v2 setSupportsProcessSharing:1];
  v0 = [objc_alloc(MEMORY[0x277D69D30]) initWithConfiguration:v2];
  v1 = defaultURLCache_sDefaultURLCache;
  defaultURLCache_sDefaultURLCache = v0;
}

- (void)_loadRadioStoreBagAndAllowRetry:(BOOL)retry withCompletionHandler:(id)handler
{
  retryCopy = retry;
  handlerCopy = handler;
  v7 = objc_alloc_init(RadioLoadStoreBagRequest);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__RadioRequest__loadRadioStoreBagAndAllowRetry_withCompletionHandler___block_invoke;
  v10[3] = &unk_279AEACC8;
  v12 = retryCopy;
  if (retryCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(RadioLoadStoreBagRequest *)v7 loadStoreBagWithOptions:v8 completionHandler:v10];
}

void __70__RadioRequest__loadRadioStoreBagAndAllowRetry_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 baseURL];
  v8 = [v5 radioConfigurationDictionary];
  if (v8 && v7 || *(a1 + 48) != 1)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_261792000, v9, OS_LOG_TYPE_INFO, "[RadioRequest] No valid tilt dictionary, invalidating URL bag and retrying...", v11, 2u);
    }

    [*(a1 + 32) _loadRadioStoreBagAndAllowRetry:0 withCompletionHandler:*(a1 + 40)];
  }
}

- (NSDictionary)unparsedResponseDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__910;
  v10 = __Block_byref_object_dispose__911;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__RadioRequest_unparsedResponseDictionary__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUnparsedResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RadioRequest_setUnparsedResponseDictionary___block_invoke;
  v7[3] = &unk_279AEACA0;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_async(queue, v7);
}

uint64_t __46__RadioRequest_setUnparsedResponseDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8]();
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__RadioRequest_status__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setStatus:(int64_t)status
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__RadioRequest_setStatus___block_invoke;
  v4[3] = &unk_279AEAC78;
  v4[4] = self;
  v4[5] = status;
  dispatch_async(queue, v4);
}

- (void)setRetryInterval:(double)interval
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__RadioRequest_setRetryInterval___block_invoke;
  v4[3] = &unk_279AEAC78;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_async(queue, v4);
}

double __33__RadioRequest_setRetryInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RadioRequest_setRequestContext___block_invoke;
  v7[3] = &unk_279AEACA0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

void *__34__RadioRequest_setRequestContext___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 32) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setErrorCode:(int64_t)code
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__RadioRequest_setErrorCode___block_invoke;
  v4[3] = &unk_279AEAC78;
  v4[4] = self;
  v4[5] = code;
  dispatch_async(queue, v4);
}

- (void)setCachedResponse:(BOOL)response
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__RadioRequest_setCachedResponse___block_invoke;
  v4[3] = &unk_279AEAC50;
  v4[4] = self;
  responseCopy = response;
  dispatch_async(queue, v4);
}

- (double)retryInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__RadioRequest_retryInterval__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __29__RadioRequest_retryInterval__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (RadioRequestContext)requestContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__910;
  v10 = __Block_byref_object_dispose__911;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__RadioRequest_requestContext__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__RadioRequest_requestContext__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isCachedResponse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__RadioRequest_isCachedResponse__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)errorCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__RadioRequest_errorCode__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)loadServiceConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(RadioLoadStoreBagRequest);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RadioRequest_loadServiceConfigurationWithCompletionHandler___block_invoke;
  v6[3] = &unk_279AEAC28;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(RadioLoadStoreBagRequest *)v4 loadStoreBagWithOptions:1 completionHandler:v6];
}

void __62__RadioRequest_loadServiceConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RadioRequest_loadServiceConfigurationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279AEAC00;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __62__RadioRequest_loadServiceConfigurationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = [*(a1 + 32) radioConfigurationDictionary];
    (*(v1 + 16))(v1, v3, *(a1 + 40));
  }
}

@end