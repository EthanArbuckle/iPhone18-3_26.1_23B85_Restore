@interface SBSServiceFacilityClient
+ (id)checkOutClientWithClass:(Class)class;
+ (id)serviceFacilityIdentifier;
+ (void)checkInClient:(id)client;
- (BOOL)_decrementCheckout;
- (SBSServiceFacilityClient)initWithCalloutQueue:(id)queue;
- (SBSServiceFacilityClient)initWithIdentifier:(id)identifier calloutQueue:(id)queue;
- (void)_incrementCheckout;
@end

@implementation SBSServiceFacilityClient

- (void)_incrementCheckout
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_numberOfCheckOuts;
  objc_sync_exit(obj);
}

- (BOOL)_decrementCheckout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_numberOfCheckOuts-- == 1;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)checkOutClientWithClass:(Class)class
{
  if (!class)
  {
    [(SBSServiceFacilityClient *)a2 checkOutClientWithClass:self];
  }

  if (checkOutClientWithClass____once != -1)
  {
    +[SBSServiceFacilityClient checkOutClientWithClass:];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSServiceFacilityClient.m" lineNumber:34 description:{@"Class must have a serviceFacilityIdentifier: %@", class}];
  }

  serviceFacilityIdentifier = [(objc_class *)class serviceFacilityIdentifier];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [__sharedServiceClients objectForKeyedSubscript:serviceFacilityIdentifier];
  if (!v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.springboardservices.service.%@.callback", serviceFacilityIdentifier];
    Serial = BSDispatchQueueCreateSerial();

    v12 = [class alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__SBSServiceFacilityClient_checkOutClientWithClass___block_invoke_2;
    v17[3] = &unk_1E735F058;
    v18 = serviceFacilityIdentifier;
    v13 = Serial;
    v19 = v13;
    v9 = [v12 initWithConfigurator:v17];
    v14 = __sharedServiceClients;
    identifier = [v9 identifier];
    [v14 setObject:v9 forKey:identifier];
  }

  [v9 _incrementCheckout];
  objc_sync_exit(selfCopy);

  return v9;
}

uint64_t __52__SBSServiceFacilityClient_checkOutClientWithClass___block_invoke()
{
  __sharedServiceClients = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __52__SBSServiceFacilityClient_checkOutClientWithClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E699FC70];
  v6 = a2;
  v4 = [v3 defaultShellEndpoint];
  [v6 setEndpoint:v4];

  [v6 setIdentifier:*(a1 + 32)];
  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v6 setServiceQuality:v5];

  [v6 setCalloutQueue:*(a1 + 40)];
}

+ (void)checkInClient:(id)client
{
  clientCopy = client;
  if (!clientCopy)
  {
    [(SBSServiceFacilityClient *)a2 checkInClient:self];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([clientCopy _decrementCheckout])
  {
    v6 = __sharedServiceClients;
    identifier = [clientCopy identifier];
    [v6 removeObjectForKey:identifier];

    [clientCopy invalidate];
    clientCopy = 0;
  }

  objc_sync_exit(selfCopy);
}

- (SBSServiceFacilityClient)initWithCalloutQueue:(id)queue
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSServiceFacilityClient.m" lineNumber:70 description:@"Unavailable initializer."];

  return 0;
}

- (SBSServiceFacilityClient)initWithIdentifier:(id)identifier calloutQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = SBSServiceFacilityClient;
  return [(FBSServiceFacilityClient *)&v5 initWithIdentifier:identifier calloutQueue:queue];
}

+ (id)serviceFacilityIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSServiceFacilityClient.m" lineNumber:82 description:@"Cannot have a nil service facility identifier"];

  return 0;
}

+ (void)checkOutClientWithClass:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSServiceFacilityClient.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"clazz"}];
}

+ (void)checkInClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSServiceFacilityClient.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

@end