@interface AXPhoenixEventMonitor
- (AXPhoenixEventMonitor)init;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enumerateObservers:(id)a3;
- (void)enumerateObserversInQueue:(id)a3;
- (void)notifyObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation AXPhoenixEventMonitor

- (AXPhoenixEventMonitor)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AXPhoenixEventMonitor;
  v10 = [(AXPhoenixEventMonitor *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = v10;
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(AXPhoenixEventMonitor *)v4 setObservers:?];
    MEMORY[0x277D82BD8](v5);
    v6 = v10;
    v7 = dispatch_queue_create("AXPhoenixEventMonitor queue", 0);
    [(AXPhoenixEventMonitor *)v6 setQueue:?];
    MEMORY[0x277D82BD8](v7);
  }

  v3 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v3;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AXPhoenixEventMonitor *)self _stopMonitoring];
  v2.receiver = v4;
  v2.super_class = AXPhoenixEventMonitor;
  [(AXPhoenixEventMonitor *)&v2 dealloc];
}

- (void)addObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = [(AXPhoenixEventMonitor *)v12 queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __37__AXPhoenixEventMonitor_addObserver___block_invoke;
  v8 = &unk_279A205C8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = MEMORY[0x277D82BE0](v12);
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __37__AXPhoenixEventMonitor_addObserver___block_invoke(uint64_t result)
{
  v6 = result;
  if (*(result + 32))
  {
    v3 = [*(result + 40) observers];
    [v3 addObject:*(v6 + 32)];
    MEMORY[0x277D82BD8](v3);
    v4 = [*(v6 + 40) observers];
    v5 = [v4 count];
    MEMORY[0x277D82BD8](v4);
    result = v5;
    if (v5 == 1)
    {
      v1 = *(v6 + 40);
      v2 = [v1 queue];
      [v1 _startMonitoringWithQueue:?];
      return MEMORY[0x277D82BD8](v2);
    }
  }

  return result;
}

- (void)removeObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = [(AXPhoenixEventMonitor *)v12 queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __40__AXPhoenixEventMonitor_removeObserver___block_invoke;
  v8 = &unk_279A205C8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = MEMORY[0x277D82BE0](v12);
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __40__AXPhoenixEventMonitor_removeObserver___block_invoke(uint64_t result)
{
  v4 = result;
  if (*(result + 32))
  {
    v1 = [*(result + 40) observers];
    [v1 removeObject:*(v4 + 32)];
    MEMORY[0x277D82BD8](v1);
    v2 = [*(v4 + 40) observers];
    v3 = [v2 count];
    MEMORY[0x277D82BD8](v2);
    result = v3;
    if (!v3)
    {
      return [*(v4 + 40) _stopMonitoring];
    }
  }

  return result;
}

- (void)notifyObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (objc_opt_respondsToSelector())
  {
    [location[0] phoenixEventMonitorDidReceiveEvent:v4];
  }

  objc_storeStrong(location, 0);
}

- (void)enumerateObserversInQueue:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = [(AXPhoenixEventMonitor *)v12 queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __51__AXPhoenixEventMonitor_enumerateObserversInQueue___block_invoke;
  v8 = &unk_279A205F0;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)enumerateObservers:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(AXPhoenixEventMonitor *)v13 queue];
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  memset(__b, 0, sizeof(__b));
  obj = [(AXPhoenixEventMonitor *)v13 observers];
  v9 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v9;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      if (location[0])
      {
        (*(location[0] + 2))(location[0], v11);
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end