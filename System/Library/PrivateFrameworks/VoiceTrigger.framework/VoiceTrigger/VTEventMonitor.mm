@interface VTEventMonitor
- (VTEventMonitor)init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)enumerateObservers:(id)observers;
- (void)enumerateObserversInQueue:(id)queue;
- (void)notifyObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation VTEventMonitor

- (void)notifyObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy VTEventMonitorDidReceiveEvent:self];
  }
}

- (void)enumerateObservers:(id)observers
{
  v15 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    if (observersCopy)
    {
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        if (*v11 != v8)
        {
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            --v7;
          }

          while (v7);
        }

        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)enumerateObserversInQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__VTEventMonitor_enumerateObserversInQueue___block_invoke;
  v7[3] = &unk_2784ECD30;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__VTEventMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2784ED118;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __33__VTEventMonitor_removeObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 8) removeObject:?];
    result = [*(*(v1 + 40) + 8) count];
    if (!result)
    {
      v2 = *(v1 + 40);

      return [v2 _stopMonitoring];
    }
  }

  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__VTEventMonitor_addObserver___block_invoke;
  v7[3] = &unk_2784ED118;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __30__VTEventMonitor_addObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 8) addObject:?];
    result = [*(*(v1 + 40) + 8) count];
    if (result == 1)
    {
      v2 = *(v1 + 40);
      v3 = v2[2];

      return [v2 _startMonitoringWithQueue:v3];
    }
  }

  return result;
}

- (void)dealloc
{
  [(VTEventMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = VTEventMonitor;
  [(VTEventMonitor *)&v3 dealloc];
}

- (VTEventMonitor)init
{
  v8.receiver = self;
  v8.super_class = VTEventMonitor;
  v2 = [(VTEventMonitor *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = dispatch_queue_create("Serial VTEventMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end