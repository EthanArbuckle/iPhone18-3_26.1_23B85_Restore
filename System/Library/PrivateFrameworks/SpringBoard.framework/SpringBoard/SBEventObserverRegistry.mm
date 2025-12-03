@interface SBEventObserverRegistry
+ (id)sharedInstance;
- (void)addObserverWithToken:(unint64_t)token forEvent:(id)event;
- (void)handleEvent:(id)event token:(unint64_t)token action:(int64_t)action;
- (void)postEventToInterestedObservers:(__CFString *)observers;
- (void)removeObserverWithToken:(unint64_t)token forEvent:(id)event;
- (void)setValue:(BOOL)value forState:(__CFString *)state;
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

- (void)handleEvent:(id)event token:(unint64_t)token action:(int64_t)action
{
  v9 = [MEMORY[0x277CCACA8] stringWithCString:xpc_dictionary_get_string(event encoding:{*MEMORY[0x277D86430]), 4}];
  v10 = v9;
  if (event)
  {
    v11 = v9;
    if (action == 1)
    {
      [(SBEventObserverRegistry *)self addObserverWithToken:token forEvent:v9];
    }

    else
    {
      [(SBEventObserverRegistry *)self removeObserverWithToken:token forEvent:v9];
    }

    v10 = v11;
  }
}

- (void)addObserverWithToken:(unint64_t)token forEvent:(id)event
{
  eventCopy = event;
  v6 = [(NSMutableDictionary *)self->_observers objectForKey:?];
  v7 = v6;
  if (v6)
  {
    [v6 addIndex:token];
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

    v11 = [MEMORY[0x277CCAB58] indexSetWithIndex:token];
    [(NSMutableDictionary *)observers setObject:v11 forKey:eventCopy];
  }
}

- (void)removeObserverWithToken:(unint64_t)token forEvent:(id)event
{
  v5 = [(NSMutableDictionary *)self->_observers objectForKey:event];
  [v5 removeIndex:token];
}

- (void)postEventToInterestedObservers:(__CFString *)observers
{
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBEventObserverRegistry_postEventToInterestedObservers___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = observers;
  dispatch_async(v4, block);
}

void __58__SBEventObserverRegistry_postEventToInterestedObservers___block_invoke()
{
  DarwinNotificationFromEvent = __SBSEventObserverGetDarwinNotificationFromEvent();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, DarwinNotificationFromEvent, 0, 0, 1u);
}

- (void)setValue:(BOOL)value forState:(__CFString *)state
{
  if (setValue_forState__onceToken != -1)
  {
    [SBEventObserverRegistry setValue:forState:];
  }

  uTF8String = [__SBSEventObserverGetDarwinNotificationFromEvent() UTF8String];
  out_token = -1;
  v7 = [setValue_forState__tokenMap valueForKey:state];
  v8 = v7;
  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
    out_token = unsignedIntValue;
  }

  else
  {
    if (!notify_register_check(uTF8String, &out_token))
    {
      v10 = setValue_forState__tokenMap;
      v11 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
      [v10 setValue:v11 forKey:state];
    }

    unsignedIntValue = out_token;
  }

  if (unsignedIntValue != -1)
  {
    v12 = dispatch_get_global_queue(25, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__SBEventObserverRegistry_setValue_forState___block_invoke_2;
    v13[3] = &__block_descriptor_37_e5_v8__0l;
    v14 = unsignedIntValue;
    valueCopy = value;
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