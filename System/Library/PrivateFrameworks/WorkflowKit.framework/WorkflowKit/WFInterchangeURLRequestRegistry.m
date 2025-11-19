@interface WFInterchangeURLRequestRegistry
+ (id)sharedRegistry;
- (NSMutableArray)activeRequests;
- (NSMutableDictionary)requestHandlers;
- (id)handlerForIncomingRequestWithAction:(id)a3 scheme:(id)a4;
- (id)popActiveRequest;
- (id)popRequest:(id)a3;
- (id)popRequestWithUUID:(id)a3;
- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 scheme:(id)a5;
- (void)registerOutgoingRequest:(id)a3;
- (void)removeHandlerForIncomingRequestsWithAction:(id)a3 scheme:(id)a4;
@end

@implementation WFInterchangeURLRequestRegistry

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WFInterchangeURLRequestRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRegistry_onceToken != -1)
  {
    dispatch_once(&sharedRegistry_onceToken, block);
  }

  v2 = sharedRegistry_sharedRegistry;

  return v2;
}

- (NSMutableDictionary)requestHandlers
{
  requestHandlers = self->_requestHandlers;
  if (!requestHandlers)
  {
    v4 = objc_opt_new();
    v5 = self->_requestHandlers;
    self->_requestHandlers = v4;

    requestHandlers = self->_requestHandlers;
  }

  return requestHandlers;
}

void __49__WFInterchangeURLRequestRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedRegistry_sharedRegistry;
  sharedRegistry_sharedRegistry = v1;
}

- (id)popActiveRequest
{
  v3 = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  v4 = [v3 lastObject];
  v5 = [(WFInterchangeURLRequestRegistry *)self popRequest:v4];

  return v5;
}

- (NSMutableArray)activeRequests
{
  activeRequests = self->_activeRequests;
  if (!activeRequests)
  {
    v4 = objc_opt_new();
    v5 = self->_activeRequests;
    self->_activeRequests = v4;

    activeRequests = self->_activeRequests;
  }

  return activeRequests;
}

- (id)popRequestWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  v6 = [v5 objectMatchingKey:@"uniqueID" value:v4];

  v7 = [(WFInterchangeURLRequestRegistry *)self popRequest:v6];

  return v7;
}

- (id)popRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WFInterchangeURLRequestRegistry *)self activeRequests];
    [v5 removeObject:v4];
  }

  return v4;
}

- (void)registerOutgoingRequest:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  [v5 addObject:v4];
}

- (id)handlerForIncomingRequestWithAction:(id)a3 scheme:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 objectForKey:v6];
  if (v10)
  {
    v11 = v10;
    v12 = _Block_copy(v10);
    goto LABEL_8;
  }

  v13 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v14 = [v13 objectForKey:@"*"];

  v15 = [v14 objectForKey:v6];
  if (v15)
  {
    v11 = v15;
  }

  else
  {
    v11 = [v9 objectForKey:@"*"];
    if (!v11)
    {
      v16 = [v14 objectForKey:@"*"];
      goto LABEL_7;
    }
  }

  v16 = _Block_copy(v11);
LABEL_7:
  v12 = v16;

LABEL_8:

  return v12;
}

- (void)removeHandlerForIncomingRequestsWithAction:(id)a3 scheme:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"*";
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"*";
  }

  v12 = v9;
  v10 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v11 = [v10 objectForKey:v8];
  [v11 removeObjectForKey:v12];
}

- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 scheme:(id)a5
{
  aBlock = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"*";
  }

  v11 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v12 = [v11 objectForKey:v10];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  if (!v8)
  {
    v8 = @"*";
  }

  v13 = _Block_copy(aBlock);
  [v12 setObject:v13 forKey:v8];

  v14 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  [v14 setObject:v12 forKey:v10];
}

@end