@interface _STKUSSDResponseProvider
- (_STKUSSDResponseProvider)initWithQueue:(id)a3 telephonyClient:(id)a4 options:(id)a5 logger:(id)a6;
- (void)dealloc;
- (void)sendResponse:(int64_t)a3;
- (void)sendResponse:(int64_t)a3 withStringResult:(id)a4;
@end

@implementation _STKUSSDResponseProvider

- (_STKUSSDResponseProvider)initWithQueue:(id)a3 telephonyClient:(id)a4 options:(id)a5 logger:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_STKUSSDResponseProvider initWithQueue:a2 telephonyClient:self options:? logger:?];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_STKUSSDResponseProvider initWithQueue:a2 telephonyClient:self options:? logger:?];
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
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
    objc_storeStrong(&v16->_telephonyClient, a4);
    objc_storeStrong(&v17->_queue, a3);
    v18 = [v14 copy];
    options = v17->_options;
    v17->_options = v18;

    objc_storeStrong(&v17->_logger, a6);
  }

  return v17;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _STKUSSDResponseProvider;
  [(_STKUSSDResponseProvider *)&v2 dealloc];
}

- (void)sendResponse:(int64_t)a3
{
  self->_hasSentResponse = 1;
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41___STKUSSDResponseProvider_sendResponse___block_invoke;
  v4[3] = &unk_279B4C390;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)sendResponse:(int64_t)a3 withStringResult:(id)a4
{
  v6 = a4;
  self->_hasSentResponse = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___STKUSSDResponseProvider_sendResponse_withStringResult___block_invoke;
  block[3] = &unk_279B4C3B8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
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