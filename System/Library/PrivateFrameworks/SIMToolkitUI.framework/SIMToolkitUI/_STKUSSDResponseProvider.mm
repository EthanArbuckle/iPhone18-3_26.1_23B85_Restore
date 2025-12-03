@interface _STKUSSDResponseProvider
- (_STKUSSDResponseProvider)initWithQueue:(id)queue telephonyClient:(id)client options:(id)options logger:(id)logger;
- (void)dealloc;
- (void)sendResponse:(int64_t)response;
- (void)sendResponse:(int64_t)response withStringResult:(id)result;
@end

@implementation _STKUSSDResponseProvider

- (_STKUSSDResponseProvider)initWithQueue:(id)queue telephonyClient:(id)client options:(id)options logger:(id)logger
{
  queueCopy = queue;
  clientCopy = client;
  optionsCopy = options;
  loggerCopy = logger;
  if (queueCopy)
  {
    if (clientCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_STKUSSDResponseProvider initWithQueue:a2 telephonyClient:self options:? logger:?];
    if (optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_STKUSSDResponseProvider initWithQueue:a2 telephonyClient:self options:? logger:?];
  if (!clientCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (optionsCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_STKUSSDResponseProvider initWithQueue:a2 telephonyClient:self options:? logger:?];
LABEL_4:
  v21.receiver = self;
  v21.super_class = _STKUSSDResponseProvider;
  v16 = [(_STKUSSDResponseProvider *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_telephonyClient, client);
    objc_storeStrong(&v17->_queue, queue);
    v18 = [optionsCopy copy];
    options = v17->_options;
    v17->_options = v18;

    objc_storeStrong(&v17->_logger, logger);
  }

  return v17;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _STKUSSDResponseProvider;
  [(_STKUSSDResponseProvider *)&v2 dealloc];
}

- (void)sendResponse:(int64_t)response
{
  self->_hasSentResponse = 1;
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41___STKUSSDResponseProvider_sendResponse___block_invoke;
  v4[3] = &unk_279B4C390;
  v4[4] = self;
  v4[5] = response;
  dispatch_async(queue, v4);
}

- (void)sendResponse:(int64_t)response withStringResult:(id)result
{
  resultCopy = result;
  self->_hasSentResponse = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___STKUSSDResponseProvider_sendResponse_withStringResult___block_invoke;
  block[3] = &unk_279B4C3B8;
  v10 = resultCopy;
  responseCopy = response;
  block[4] = self;
  v8 = resultCopy;
  dispatch_async(queue, block);
}

- (void)initWithQueue:(uint64_t)a1 telephonyClient:(uint64_t)a2 options:logger:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_STKUSSDResponseProvider.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

- (void)initWithQueue:(uint64_t)a1 telephonyClient:(uint64_t)a2 options:logger:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_STKUSSDResponseProvider.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"telephonyClient"}];
}

- (void)initWithQueue:(uint64_t)a1 telephonyClient:(uint64_t)a2 options:logger:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_STKUSSDResponseProvider.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"options"}];
}

@end