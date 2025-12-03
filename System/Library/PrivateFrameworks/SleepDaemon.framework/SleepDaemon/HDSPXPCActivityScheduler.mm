@interface HDSPXPCActivityScheduler
- (HDSPXPCActivityScheduler)initWithCallbackScheduler:(id)scheduler;
- (void)_withLock:(id)lock;
- (void)scheduleActivity:(id)activity activityHandler:(id)handler;
- (void)unscheduleActivities;
@end

@implementation HDSPXPCActivityScheduler

- (HDSPXPCActivityScheduler)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = HDSPXPCActivityScheduler;
  v6 = [(HDSPXPCActivityScheduler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackScheduler, scheduler);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    eventNames = v7->_eventNames;
    v7->_eventNames = v8;

    v7->_eventNamesLock._os_unfair_lock_opaque = 0;
    v10 = v7;
  }

  return v7;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_eventNamesLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_eventNamesLock);
}

- (void)scheduleActivity:(id)activity activityHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = activityCopy;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke;
    v23[3] = &unk_279C7B2D0;
    v23[4] = self;
    v9 = v8;
    v24 = v9;
    [(HDSPXPCActivityScheduler *)self _withLock:v23];
    name = [v9 name];
    uTF8String = [name UTF8String];
    criteria = [v9 criteria];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke_2;
    handler[3] = &unk_279C7CE58;
    v13 = v9;
    v20 = v13;
    selfCopy = self;
    v14 = handlerCopy;
    v22 = v14;
    xpc_activity_register(uTF8String, criteria, handler);

    if ([v13 options])
    {
      callbackScheduler = self->_callbackScheduler;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke_4;
      v16[3] = &unk_279C7BC98;
      v18 = v14;
      v17 = v13;
      [(NAScheduler *)callbackScheduler performBlock:v16];
    }
  }
}

void __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) name];
  [v1 addObject:v2];
}

void __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDSPXPCActivity alloc];
  v5 = [*(a1 + 32) name];
  v6 = [*(a1 + 32) options];
  v7 = [*(a1 + 32) criteria];
  v8 = [(HDSPXPCActivity *)v4 initWithEventName:v5 options:v6 criteria:v7 activity:v3];

  if (![(HDSPXPCActivity *)v8 deferIfNecessary])
  {
    v9 = *(*(a1 + 40) + 16);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__HDSPXPCActivityScheduler_scheduleActivity_activityHandler___block_invoke_3;
    v10[3] = &unk_279C7BC98;
    v12 = *(a1 + 48);
    v11 = v8;
    [v9 performBlock:v10];
  }
}

- (void)unscheduleActivities
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__20;
  v7 = __Block_byref_object_dispose__20;
  v8 = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__HDSPXPCActivityScheduler_unscheduleActivities__block_invoke;
  v2[3] = &unk_279C7B678;
  v2[4] = self;
  v2[5] = &v3;
  [(HDSPXPCActivityScheduler *)self _withLock:v2];
  [v4[5] na_each:&__block_literal_global_26];
  _Block_object_dispose(&v3, 8);
}

uint64_t __48__HDSPXPCActivityScheduler_unscheduleActivities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __48__HDSPXPCActivityScheduler_unscheduleActivities__block_invoke_2(int a1, id a2)
{
  v2 = [a2 UTF8String];

  xpc_activity_unregister(v2);
}

@end