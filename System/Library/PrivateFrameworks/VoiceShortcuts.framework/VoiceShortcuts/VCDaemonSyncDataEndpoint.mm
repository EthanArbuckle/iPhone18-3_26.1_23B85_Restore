@interface VCDaemonSyncDataEndpoint
- (NSSet)syncDataHandlers;
- (VCDaemonSyncDataEndpoint)initWithEventHandler:(id)handler;
@end

@implementation VCDaemonSyncDataEndpoint

- (NSSet)syncDataHandlers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3474;
  v11 = __Block_byref_object_dispose__3475;
  v12 = 0;
  queue = [(VCDaemonSyncDataEndpoint *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__VCDaemonSyncDataEndpoint_syncDataHandlers__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__VCDaemonSyncDataEndpoint_syncDataHandlers__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) mutableSyncDataHandlers];
  v2 = [v9 valueForKey:@"class"];
  if (([v2 containsObject:objc_opt_class()] & 1) == 0)
  {
    v3 = [VCIntentDefinitionSyncDataHandler alloc];
    v4 = [*(a1 + 32) eventHandler];
    v5 = [(VCIntentDefinitionSyncDataHandler *)v3 initWithEventHandler:v4];
    [v9 addObject:v5];
  }

  v6 = [v9 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (VCDaemonSyncDataEndpoint)initWithEventHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCDaemonSyncDataEndpoint.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];
  }

  v17.receiver = self;
  v17.super_class = VCDaemonSyncDataEndpoint;
  v7 = [(VCDaemonSyncDataEndpoint *)&v17 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

    v10 = dispatch_queue_create("com.apple.shortcuts.VCDaemonSyncDataEndpoint", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    objc_storeStrong(&v7->_eventHandler, handler);
    v12 = objc_opt_new();
    mutableSyncDataHandlers = v7->_mutableSyncDataHandlers;
    v7->_mutableSyncDataHandlers = v12;

    v14 = v7;
  }

  return v7;
}

@end