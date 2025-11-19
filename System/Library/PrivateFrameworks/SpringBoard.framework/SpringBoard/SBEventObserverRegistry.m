@interface SBEventObserverRegistry
+ (id)sharedInstance;
- (void)addObserverWithToken:(unint64_t)a3 forEvent:(id)a4;
- (void)handleEvent:(id)a3 token:(unint64_t)a4 action:(int64_t)a5;
- (void)postEventToInterestedObservers:(__CFString *)a3;
- (void)removeObserverWithToken:(unint64_t)a3 forEvent:(id)a4;
- (void)setValue:(BOOL)a3 forState:(__CFString *)a4;
@end

@implementation SBEventObserverRegistry

+ (id)sharedInstance
{
  v2 = sharedInstance_instance;
  if (!sharedInstance_instance)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBEventObserverRegistry);
    v4 = sharedInstance_instance;
    sharedInstance_instance = v3;

    kdebug_trace();
    v2 = sharedInstance_instance;
  }

  return v2;
}

- (void)handleEvent:(id)a3 token:(unint64_t)a4 action:(int64_t)a5
{
  v9 = [MEMORY[0x277CCACA8] stringWithCString:xpc_dictionary_get_string(a3 encoding:{*MEMORY[0x277D86430]), 4}];
  v10 = v9;
  if (a3)
  {
    v11 = v9;
    if (a5 == 1)
    {
      [(SBEventObserverRegistry *)self addObserverWithToken:a4 forEvent:v9];
    }

    else
    {
      [(SBEventObserverRegistry *)self removeObserverWithToken:a4 forEvent:v9];
    }

    v10 = v11;
  }
}

- (void)addObserverWithToken:(unint64_t)a3 forEvent:(id)a4
{
  v12 = a4;
  v6 = [(NSMutableDictionary *)self->_observers objectForKey:?];
  v7 = v6;
  if (v6)
  {
    [v6 addIndex:a3];
  }

  else
  {
    observers = self->_observers;
    if (!observers)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_observers;
      self->_observers = v9;

      observers = self->_observers;
    }

    v11 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
    [(NSMutableDictionary *)observers setObject:v11 forKey:v12];
  }
}

- (void)removeObserverWithToken:(unint64_t)a3 forEvent:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_observers objectForKey:a4];
  [v5 removeIndex:a3];
}

- (void)postEventToInterestedObservers:(__CFString *)a3
{
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBEventObserverRegistry_postEventToInterestedObservers___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(v4, block);
}

void __58__SBEventObserverRegistry_postEventToInterestedObservers___block_invoke()
{
  DarwinNotificationFromEvent = __SBSEventObserverGetDarwinNotificationFromEvent();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, DarwinNotificationFromEvent, 0, 0, 1u);
}

- (void)setValue:(BOOL)a3 forState:(__CFString *)a4
{
  if (setValue_forState__onceToken != -1)
  {
    [SBEventObserverRegistry setValue:forState:];
  }

  v6 = [__SBSEventObserverGetDarwinNotificationFromEvent() UTF8String];
  out_token = -1;
  v7 = [setValue_forState__tokenMap valueForKey:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntValue];
    out_token = v9;
  }

  else
  {
    if (!notify_register_check(v6, &out_token))
    {
      v10 = setValue_forState__tokenMap;
      v11 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
      [v10 setValue:v11 forKey:a4];
    }

    v9 = out_token;
  }

  if (v9 != -1)
  {
    v12 = dispatch_get_global_queue(25, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__SBEventObserverRegistry_setValue_forState___block_invoke_2;
    v13[3] = &__block_descriptor_37_e5_v8__0l;
    v14 = v9;
    v15 = a3;
    dispatch_async(v12, v13);
  }
}

void __45__SBEventObserverRegistry_setValue_forState___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v1 = setValue_forState__tokenMap;
  setValue_forState__tokenMap = v0;
}

@end