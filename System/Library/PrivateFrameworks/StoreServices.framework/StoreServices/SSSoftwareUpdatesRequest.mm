@interface SSSoftwareUpdatesRequest
- (BOOL)start;
- (SSSoftwareUpdatesContext)updateQueueContext;
- (SSSoftwareUpdatesRequest)initWithUpdateQueueContext:(id)context;
- (SSSoftwareUpdatesRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithUpdatesResponseBlock:(id)block;
@end

@implementation SSSoftwareUpdatesRequest

- (SSSoftwareUpdatesRequest)initWithUpdateQueueContext:(id)context
{
  v6.receiver = self;
  v6.super_class = SSSoftwareUpdatesRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_context = [context copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSoftwareUpdatesRequest;
  [(SSRequest *)&v3 dealloc];
}

- (void)startWithUpdatesResponseBlock:(id)block
{
  if (block)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SSSoftwareUpdatesRequest_startWithUpdatesResponseBlock___block_invoke;
    block[3] = &unk_1E84AC710;
    block[4] = block;
    dispatch_async(global_queue, block);
  }
}

uint64_t __58__SSSoftwareUpdatesRequest_startWithUpdatesResponseBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError(@"SSErrorDomain", 106, 0, 0);
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

- (SSSoftwareUpdatesContext)updateQueueContext
{
  v2 = self->_context;

  return v2;
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SSSoftwareUpdatesRequest_start__block_invoke;
  v3[3] = &unk_1E84AED08;
  v3[4] = self;
  [(SSSoftwareUpdatesRequest *)self startWithUpdatesResponseBlock:v3];
  return 1;
}

void __33__SSSoftwareUpdatesRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSSoftwareUpdatesRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __33__SSSoftwareUpdatesRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 updateQueueRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(a1 + 32);

      return [v2 requestDidFinish:v4];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v2 request:v5 didFailWithError:v6];
    }
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__SSSoftwareUpdatesRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84AED30;
  v3[4] = block;
  [(SSSoftwareUpdatesRequest *)self startWithUpdatesResponseBlock:v3];
}

uint64_t __53__SSSoftwareUpdatesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", self->_context);
  return v3;
}

- (SSSoftwareUpdatesRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSSoftwareUpdatesRequest;
    v7 = [(SSRequest *)&v8 init];
    v5 = v7;
    if (v7)
    {

      v5->_context = [[SSSoftwareUpdatesContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "50")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end