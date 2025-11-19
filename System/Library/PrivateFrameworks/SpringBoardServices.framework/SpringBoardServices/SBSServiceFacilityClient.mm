@interface SBSServiceFacilityClient
+ (id)checkOutClientWithClass:(Class)a3;
+ (id)serviceFacilityIdentifier;
+ (void)checkInClient:(id)a3;
- (BOOL)_decrementCheckout;
- (SBSServiceFacilityClient)initWithCalloutQueue:(id)a3;
- (SBSServiceFacilityClient)initWithIdentifier:(id)a3 calloutQueue:(id)a4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_numberOfCheckOuts-- == 1;
  objc_sync_exit(v2);

  return v3;
}

+ (id)checkOutClientWithClass:(Class)a3
{
  if (!a3)
  {
    [(SBSServiceFacilityClient *)a2 checkOutClientWithClass:a1];
  }

  if (checkOutClientWithClass____once != -1)
  {
    +[SBSServiceFacilityClient checkOutClientWithClass:];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"SBSServiceFacilityClient.m" lineNumber:34 description:{@"Class must have a serviceFacilityIdentifier: %@", a3}];
  }

  v7 = [(objc_class *)a3 serviceFacilityIdentifier];
  v8 = a1;
  objc_sync_enter(v8);
  v9 = [__sharedServiceClients objectForKeyedSubscript:v7];
  if (!v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.springboardservices.service.%@.callback", v7];
    Serial = BSDispatchQueueCreateSerial();

    v12 = [a3 alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__SBSServiceFacilityClient_checkOutClientWithClass___block_invoke_2;
    v17[3] = &unk_1E735F058;
    v18 = v7;
    v13 = Serial;
    v19 = v13;
    v9 = [v12 initWithConfigurator:v17];
    v14 = __sharedServiceClients;
    v15 = [v9 identifier];
    [v14 setObject:v9 forKey:v15];
  }

  [v9 _incrementCheckout];
  objc_sync_exit(v8);

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

+ (void)checkInClient:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(SBSServiceFacilityClient *)a2 checkInClient:a1];
  }

  v5 = a1;
  objc_sync_enter(v5);
  if ([v8 _decrementCheckout])
  {
    v6 = __sharedServiceClients;
    v7 = [v8 identifier];
    [v6 removeObjectForKey:v7];

    [v8 invalidate];
    v8 = 0;
  }

  objc_sync_exit(v5);
}

- (SBSServiceFacilityClient)initWithCalloutQueue:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBSServiceFacilityClient.m" lineNumber:70 description:@"Unavailable initializer."];

  return 0;
}

- (SBSServiceFacilityClient)initWithIdentifier:(id)a3 calloutQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBSServiceFacilityClient;
  return [(FBSServiceFacilityClient *)&v5 initWithIdentifier:a3 calloutQueue:a4];
}

+ (id)serviceFacilityIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSServiceFacilityClient.m" lineNumber:82 description:@"Cannot have a nil service facility identifier"];

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