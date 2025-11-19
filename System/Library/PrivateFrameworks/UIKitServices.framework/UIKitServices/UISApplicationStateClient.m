@interface UISApplicationStateClient
- (BOOL)usesBackgroundNetwork;
- (NSString)badgeValue;
- (UISApplicationStateClient)initWithBundleIdentifier:(id)a3;
- (double)nextWakeIntervalSinceReferenceDate;
- (id)_remoteTarget;
- (void)dealloc;
- (void)invalidate;
- (void)setBadgeValue:(id)a3;
- (void)setMinimumBackgroundFetchInterval:(double)a3;
- (void)setNextWakeIntervalSinceReferenceDate:(double)a3;
- (void)setUsesBackgroundNetwork:(BOOL)a3;
@end

@implementation UISApplicationStateClient

void __42__UISApplicationStateClient__remoteTarget__block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (v2 || ([MEMORY[0x1E698F470] interfaceWithIdentifier:0x1F0A7AD98], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E698E710], "protocolForProtocol:", &unk_1F0A87568), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "setServer:", v4), v4, v5 = MEMORY[0x1E698F498], objc_msgSend(MEMORY[0x1E698F498], "defaultShellMachName"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "endpointForMachName:service:instance:", v6, 0x1F0A7AD98, 0), v7 = objc_claimAutoreleasedReturnValue(), v6, v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __42__UISApplicationStateClient__remoteTarget__block_invoke_2, v24[3] = &unk_1E7458E28, v24[4] = a1[4], objc_msgSend(MEMORY[0x1E698F490], "connectionWithEndpoint:clientContextBuilder:", v7, v24), v8 = objc_claimAutoreleasedReturnValue(), v9 = a1[4], v10 = *(v9 + 32), *(v9 + 32) = v8, v10, v11 = a1[4], v12 = *(v11 + 32), v21[0] = MEMORY[0x1E69E9820], v21[1] = 3221225472, v21[2] = __42__UISApplicationStateClient__remoteTarget__block_invoke_3, v21[3] = &unk_1E7458E98, v22 = v3, v23 = v11, v13 = v3, objc_msgSend(v12, "configureConnection:", v21), objc_msgSend(*(a1[4] + 32), "activate"), v22, v13, v7, (v2 = *(a1[4] + 32)) != 0))
  {
    v14 = [v2 remoteTarget];
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (!*(*(a1[5] + 8) + 40))
    {
      [*(a1[4] + 32) activate];
      v17 = [*(a1[4] + 32) remoteTarget];
      v18 = *(a1[5] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (!*(*(a1[5] + 8) + 40))
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a1[6] object:a1[4] file:@"UISApplicationStateClient.m" lineNumber:165 description:{@"unable to create a remote target for %@", 0x1F0A7AD98}];
      }
    }
  }
}

- (NSString)badgeValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(UISApplicationStateClient *)self _remoteTarget];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__UISApplicationStateClient_badgeValue__block_invoke;
  v5[3] = &unk_1E7458DD8;
  v5[4] = &v6;
  [v2 badgeValueWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__UISApplicationStateClient__remoteTarget__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698F500];
  v4 = a2;
  v5 = [v3 utility];
  [v4 setServiceQuality:v5];

  [v4 setInterface:*(a1 + 32)];
  [v4 setInterfaceTarget:*(a1 + 40)];
  [v4 setTargetQueue:*(*(a1 + 40) + 16)];
  [v4 setInterruptionHandler:&__block_literal_global];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__UISApplicationStateClient__remoteTarget__block_invoke_5;
  v6[3] = &unk_1E7458E70;
  v6[4] = *(a1 + 40);
  [v4 setInvalidationHandler:v6];
}

- (id)_remoteTarget
{
  BSDispatchQueueAssertNot();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__UISApplicationStateClient__remoteTarget__block_invoke;
  block[3] = &unk_1E7458EC0;
  block[4] = self;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(queue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__UISApplicationStateClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    [*(*(a1 + 32) + 32) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

- (void)dealloc
{
  if (!self->_queue_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"UISApplicationStateClient.m" lineNumber:37 description:@"UISApplicationStateClient must be invalidated before deallocation."];
  }

  v5.receiver = self;
  v5.super_class = UISApplicationStateClient;
  [(UISApplicationStateClient *)&v5 dealloc];
}

void __39__UISApplicationStateClient_badgeValue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    a2 = a3;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UISApplicationStateClient_invalidate__block_invoke;
  block[3] = &unk_1E7458DB0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (UISApplicationStateClient)initWithBundleIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UISApplicationStateClient.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = UISApplicationStateClient;
  v7 = [(UISApplicationStateClient *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bundleIdentifier, a3);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.uikit.applicationStateClient", v9);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v8;
}

- (void)setBadgeValue:(id)a3
{
  v13 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v7 = v13;
  if (!v13 || (isKindOfClass & 1) != 0 || (v6 & 1) != 0)
  {
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UISApplicationStateClient.m" lineNumber:65 description:{@"Badge must be nil, a NSNumber (integer), or a NSString *."}];

    v7 = v13;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = v7;
  if ([v8 integerValue] < 0)
  {

    v8 = &unk_1F0A84370;
  }

  v9 = [(UISApplicationStateClient *)self _remoteTarget];
  [v9 setBadgeNumber:v8];

  v7 = v13;
LABEL_8:
  if (((v7 != 0) & (v6 ^ 1)) == 0)
  {
    v10 = v7;
    if (![v10 length])
    {

      v10 = 0;
    }

    v11 = [(UISApplicationStateClient *)self _remoteTarget];
    [v11 setBadgeString:v10];

    v7 = v13;
  }
}

- (BOOL)usesBackgroundNetwork
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(UISApplicationStateClient *)self _remoteTarget];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__UISApplicationStateClient_usesBackgroundNetwork__block_invoke;
  v4[3] = &unk_1E7458E00;
  v4[4] = &v5;
  [v2 usesBackgroundNetworkWithCompletion:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __50__UISApplicationStateClient_usesBackgroundNetwork__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setUsesBackgroundNetwork:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISApplicationStateClient *)self _remoteTarget];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setUsesBackgroundNetwork:v4];
}

- (void)setMinimumBackgroundFetchInterval:(double)a3
{
  v5 = [(UISApplicationStateClient *)self _remoteTarget];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setMinimumBackgroundFetchInterval:v4];
}

- (double)nextWakeIntervalSinceReferenceDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(UISApplicationStateClient *)self _remoteTarget];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UISApplicationStateClient_nextWakeIntervalSinceReferenceDate__block_invoke;
  v5[3] = &unk_1E7458E00;
  v5[4] = &v6;
  [v2 nextWakeIntervalSinceReferenceDateWithCompletion:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__UISApplicationStateClient_nextWakeIntervalSinceReferenceDate__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (void)setNextWakeIntervalSinceReferenceDate:(double)a3
{
  v5 = [(UISApplicationStateClient *)self _remoteTarget];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setNextWakeIntervalSinceReferenceDate:v4];
}

void __42__UISApplicationStateClient__remoteTarget__block_invoke_5(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

@end