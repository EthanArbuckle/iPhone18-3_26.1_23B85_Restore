@interface STConcreteAskForTimeEventRelay
- (STConcreteAskForTimeEventRelay)init;
- (void)addObserver:(id)a3;
- (void)relayRequestEvent:(id)a3;
- (void)relayResponseEvent:(id)a3;
@end

@implementation STConcreteAskForTimeEventRelay

- (STConcreteAskForTimeEventRelay)init
{
  v8.receiver = self;
  v8.super_class = STConcreteAskForTimeEventRelay;
  v2 = [(STConcreteAskForTimeEventRelay *)&v8 init];
  v3 = objc_opt_new();
  observersLock = v2->_observersLock;
  v2->_observersLock = v3;

  v5 = +[NSHashTable weakObjectsHashTable];
  observers = v2->_observers;
  v2->_observers = v5;

  return v2;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observersLock;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)relayRequestEvent:(id)a3
{
  v4 = a3;
  v5 = self->_observersLock;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_observers allObjects];
  objc_sync_exit(v5);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) eventRelay:self didRelayRequestEvent:{v4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)relayResponseEvent:(id)a3
{
  v4 = a3;
  v5 = self->_observersLock;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_observers allObjects];
  objc_sync_exit(v5);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) eventRelay:self didRelayResponseEvent:{v4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end