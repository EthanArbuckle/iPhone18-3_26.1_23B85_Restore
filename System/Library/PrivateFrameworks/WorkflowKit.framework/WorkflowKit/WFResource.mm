@interface WFResource
+ (id)sharedInstance;
- (BOOL)isAvailable;
- (BOOL)shouldNotifyResourcesAfterAvailabilityUpdateWithForcedNotification:(BOOL)a3;
- (NSDictionary)eventDictionary;
- (NSError)availabilityError;
- (WFResource)initWithDefinition:(id)a3;
- (void)dealloc;
- (void)invalidateAvailability;
- (void)notifyResourcesAboutAvailabilityChange;
- (void)refreshAvailabilityIfNeeded;
- (void)updateAvailability:(BOOL)a3 withError:(id)a4 completionHandler:(id)a5;
@end

@implementation WFResource

- (void)dealloc
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  [v3 removeApplicationStateObserver:self forEvent:3];

  v4.receiver = self;
  v4.super_class = WFResource;
  [(WFResource *)&v4 dealloc];
}

- (void)invalidateAvailability
{
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WFResource_invalidateAvailability__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(stateAccessQueue, block);
}

- (void)updateAvailability:(BOOL)a3 withError:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  stateAccessQueue = self->_stateAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__WFResource_updateAvailability_withError_completionHandler___block_invoke;
  v13[3] = &unk_1E837B300;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(stateAccessQueue, v13);
}

uint64_t __61__WFResource_updateAvailability_withError_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 56);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  *(*(a1 + 32) + 9) = 0;
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)notifyResourcesAboutAvailabilityChange
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFResource_notifyResourcesAboutAvailabilityChange__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __52__WFResource_notifyResourcesAboutAvailabilityChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WFResourceAvailabilityChangedNotification" object:*(a1 + 32)];
}

- (BOOL)shouldNotifyResourcesAfterAvailabilityUpdateWithForcedNotification:(BOOL)a3
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12631;
  v25 = __Block_byref_object_dispose__12632;
  v26 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__WFResource_shouldNotifyResourcesAfterAvailabilityUpdateWithForcedNotification___block_invoke;
  block[3] = &unk_1E837C620;
  block[4] = self;
  block[5] = &v27;
  block[6] = &v21;
  dispatch_sync(stateAccessQueue, block);
  [(WFResource *)self refreshAvailability];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12631;
  v14 = __Block_byref_object_dispose__12632;
  v15 = 0;
  v6 = self->_stateAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__WFResource_shouldNotifyResourcesAfterAvailabilityUpdateWithForcedNotification___block_invoke_2;
  v9[3] = &unk_1E837C620;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  dispatch_sync(v6, v9);
  v7 = a3 || *(v17 + 24) != *(v28 + 24) || ([v11[5] isEqual:v22[5]] & 1) == 0 && v11[5] != v22[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v7;
}

- (void)refreshAvailabilityIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__WFResource_refreshAvailabilityIfNeeded__block_invoke;
  v4[3] = &unk_1E837F898;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(stateAccessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [(WFResource *)self refreshAvailability];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __41__WFResource_refreshAvailabilityIfNeeded__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 9);
  *(*(result + 32) + 9) = 0;
  return result;
}

- (NSError)availabilityError
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__WFResource_availabilityError__block_invoke;
  block[3] = &unk_1E837F898;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(stateAccessQueue, block);
  if (*(v16 + 24) == 1)
  {
    [(WFResource *)self refreshAvailability];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__12631;
  v12 = __Block_byref_object_dispose__12632;
  v13 = 0;
  v4 = self->_stateAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__WFResource_availabilityError__block_invoke_71;
  v7[3] = &unk_1E837F898;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

uint64_t __31__WFResource_availabilityError__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 9);
  *(*(result + 32) + 9) = 0;
  return result;
}

- (BOOL)isAvailable
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WFResource_isAvailable__block_invoke;
  block[3] = &unk_1E837F898;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(stateAccessQueue, block);
  if (*(v14 + 24) == 1)
  {
    [(WFResource *)self refreshAvailability];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = self->_stateAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__WFResource_isAvailable__block_invoke_2;
  v7[3] = &unk_1E837F898;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __25__WFResource_isAvailable__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 9);
  *(*(result + 32) + 9) = 0;
  return result;
}

- (NSDictionary)eventDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"resource_name";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFResource)initWithDefinition:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFResource;
  v5 = [(WFResource *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 9) = 1;
    v8 = dispatch_queue_create("com.apple.shortcuts.WFResource.stateAccessQueue", 0);
    v9 = *(v5 + 4);
    *(v5 + 4) = v8;

    dispatch_queue_set_specific(*(v5 + 4), &WFStateAccessQueueSpecificKey, *(v5 + 4), 0);
    if ([objc_opt_class() refreshesAvailabilityOnApplicationResume])
    {
      v10 = [MEMORY[0x1E6996CA8] sharedContext];
      [v10 addApplicationStateObserver:v5 forEvent:3];
    }

    v11 = v5;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12649 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12649, &__block_literal_global_12650);
  }

  [sharedInstance_lock lock];
  v2 = [sharedInstance_sharedInstances objectForKey:objc_opt_class()];
  if (!v2)
  {
    v2 = objc_opt_new();
    [sharedInstance_sharedInstances setObject:v2 forKey:objc_opt_class()];
  }

  [sharedInstance_lock unlock];

  return v2;
}

void __28__WFResource_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstances;
  sharedInstance_sharedInstances = v0;

  v2 = objc_alloc_init(MEMORY[0x1E696AE68]);
  v3 = sharedInstance_lock;
  sharedInstance_lock = v2;
}

@end