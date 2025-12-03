@interface VTPolicy
+ (id)defaultVoiceTriggerEnablePolicy;
- (BOOL)_checkAllConditionsEnabled;
- (BOOL)isEnabled;
- (VTPolicy)init;
- (void)VTEventMonitorDidReceiveEvent:(id)event;
- (void)addConditions:(id)conditions;
- (void)dealloc;
- (void)notifyCallback:(BOOL)callback;
- (void)setCallback:(id)callback;
- (void)subscribeEventMonitor:(id)monitor;
@end

@implementation VTPolicy

- (BOOL)_checkAllConditionsEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_conditions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (!(*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i)))
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)VTEventMonitorDidReceiveEvent:(id)event
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VTPolicy_VTEventMonitorDidReceiveEvent___block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__42__VTPolicy_VTEventMonitorDidReceiveEvent___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = result[3];
  if (v2)
  {
    v3 = [result _checkAllConditionsEnabled];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)notifyCallback:(BOOL)callback
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__VTPolicy_notifyCallback___block_invoke;
  v4[3] = &unk_2784ED0F0;
  v4[4] = self;
  callbackCopy = callback;
  dispatch_async(queue, v4);
}

uint64_t __27__VTPolicy_notifyCallback___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (BOOL)isEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__VTPolicy_isEnabled__block_invoke;
  v5[3] = &unk_2784ED078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __21__VTPolicy_isEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkAllConditionsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)subscribeEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__VTPolicy_subscribeEventMonitor___block_invoke;
  v7[3] = &unk_2784ED118;
  v8 = monitorCopy;
  selfCopy = self;
  v6 = monitorCopy;
  dispatch_sync(queue, v7);
}

uint64_t __34__VTPolicy_subscribeEventMonitor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 addObject:v2];
}

- (void)addConditions:(id)conditions
{
  conditionsCopy = conditions;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__VTPolicy_addConditions___block_invoke;
  v7[3] = &unk_2784ECD30;
  v7[4] = self;
  v8 = conditionsCopy;
  v6 = conditionsCopy;
  dispatch_sync(queue, v7);
}

void __26__VTPolicy_addConditions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = MEMORY[0x223DF24E0](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__VTPolicy_dealloc__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = VTPolicy;
  [(VTPolicy *)&v4 dealloc];
}

void __19__VTPolicy_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeObserver:{*(a1 + 32), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCallback:(id)callback
{
  self->_callback = MEMORY[0x223DF24E0](callback, a2);

  MEMORY[0x2821F96F8]();
}

- (VTPolicy)init
{
  v10.receiver = self;
  v10.super_class = VTPolicy;
  v2 = [(VTPolicy *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    monitors = v2->_monitors;
    v2->_monitors = array;

    array2 = [MEMORY[0x277CBEB18] array];
    conditions = v2->_conditions;
    v2->_conditions = array2;

    v7 = dispatch_queue_create("Serial VTPolicy queue", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

+ (id)defaultVoiceTriggerEnablePolicy
{
  if (+[VTUtilities isNano])
  {
    v2 = off_2784EBFB0;
  }

  else if (+[VTUtilities VTIsHorseman])
  {
    v2 = off_2784EBFA0;
  }

  else
  {
    v3 = +[VTUtilities isAlwaysOn];
    v2 = off_2784EBFA8;
    if (v3)
    {
      v2 = off_2784EBF98;
    }
  }

  v4 = objc_alloc_init(*v2);

  return v4;
}

@end