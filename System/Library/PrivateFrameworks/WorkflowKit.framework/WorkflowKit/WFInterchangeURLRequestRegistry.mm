@interface WFInterchangeURLRequestRegistry
+ (id)sharedRegistry;
- (NSMutableArray)activeRequests;
- (NSMutableDictionary)requestHandlers;
- (id)handlerForIncomingRequestWithAction:(id)action scheme:(id)scheme;
- (id)popActiveRequest;
- (id)popRequest:(id)request;
- (id)popRequestWithUUID:(id)d;
- (void)registerHandler:(id)handler forIncomingRequestsWithAction:(id)action scheme:(id)scheme;
- (void)registerOutgoingRequest:(id)request;
- (void)removeHandlerForIncomingRequestsWithAction:(id)action scheme:(id)scheme;
@end

@implementation WFInterchangeURLRequestRegistry

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WFInterchangeURLRequestRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  activeRequests = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  lastObject = [activeRequests lastObject];
  v5 = [(WFInterchangeURLRequestRegistry *)self popRequest:lastObject];

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

- (id)popRequestWithUUID:(id)d
{
  dCopy = d;
  activeRequests = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  v6 = [activeRequests objectMatchingKey:@"uniqueID" value:dCopy];

  v7 = [(WFInterchangeURLRequestRegistry *)self popRequest:v6];

  return v7;
}

- (id)popRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    activeRequests = [(WFInterchangeURLRequestRegistry *)self activeRequests];
    [activeRequests removeObject:requestCopy];
  }

  return requestCopy;
}

- (void)registerOutgoingRequest:(id)request
{
  requestCopy = request;
  activeRequests = [(WFInterchangeURLRequestRegistry *)self activeRequests];
  [activeRequests addObject:requestCopy];
}

- (id)handlerForIncomingRequestWithAction:(id)action scheme:(id)scheme
{
  actionCopy = action;
  schemeCopy = scheme;
  requestHandlers = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v9 = [requestHandlers objectForKey:schemeCopy];

  v10 = [v9 objectForKey:actionCopy];
  if (v10)
  {
    v11 = v10;
    v12 = _Block_copy(v10);
    goto LABEL_8;
  }

  requestHandlers2 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v14 = [requestHandlers2 objectForKey:@"*"];

  v15 = [v14 objectForKey:actionCopy];
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

- (void)removeHandlerForIncomingRequestsWithAction:(id)action scheme:(id)scheme
{
  actionCopy = action;
  schemeCopy = scheme;
  if (schemeCopy)
  {
    v8 = schemeCopy;
  }

  else
  {
    v8 = @"*";
  }

  if (actionCopy)
  {
    v9 = actionCopy;
  }

  else
  {
    v9 = @"*";
  }

  v12 = v9;
  requestHandlers = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v11 = [requestHandlers objectForKey:v8];
  [v11 removeObjectForKey:v12];
}

- (void)registerHandler:(id)handler forIncomingRequestsWithAction:(id)action scheme:(id)scheme
{
  aBlock = handler;
  actionCopy = action;
  schemeCopy = scheme;
  if (schemeCopy)
  {
    v10 = schemeCopy;
  }

  else
  {
    v10 = @"*";
  }

  requestHandlers = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  v12 = [requestHandlers objectForKey:v10];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  if (!actionCopy)
  {
    actionCopy = @"*";
  }

  v13 = _Block_copy(aBlock);
  [v12 setObject:v13 forKey:actionCopy];

  requestHandlers2 = [(WFInterchangeURLRequestRegistry *)self requestHandlers];
  [requestHandlers2 setObject:v12 forKey:v10];
}

@end