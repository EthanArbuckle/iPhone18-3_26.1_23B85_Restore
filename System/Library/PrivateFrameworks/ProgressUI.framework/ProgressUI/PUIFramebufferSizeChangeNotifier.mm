@interface PUIFramebufferSizeChangeNotifier
+ (id)sharedInstance;
- (id)addListener:(id)listener;
- (void)_onMainQueue_notifyListeners;
- (void)removeListener:(id)listener;
@end

@implementation PUIFramebufferSizeChangeNotifier

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PUIFramebufferSizeChangeNotifier sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __50__PUIFramebufferSizeChangeNotifier_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PUIFramebufferSizeChangeNotifier);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  if (sharedInstance_sharedInstance)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(sharedInstance_sharedInstance + 8);
    *(sharedInstance_sharedInstance + 8) = v2;

    v4 = [objc_alloc(MEMORY[0x277D0AD38]) initWithInitializationCompletion:&__block_literal_global_5];
    v5 = *(sharedInstance_sharedInstance + 16);
    *(sharedInstance_sharedInstance + 16) = v4;

    v6 = MEMORY[0x277D85CD0];

    dispatch_async(v6, &__block_literal_global_7);
  }
}

- (id)addListener:(id)listener
{
  v12[1] = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  listeners = self->_listeners;
  v7 = MEMORY[0x2666F2750](listenerCopy);
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(NSMutableArray *)listeners addObject:v8];

  lastObject = [(NSMutableArray *)self->_listeners lastObject];
  NSLog(&cfstr_DidAddNewFrame.isa, lastObject);
  objc_sync_exit(v5);

  v10 = *MEMORY[0x277D85DE8];

  return lastObject;
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_listeners;
  objc_sync_enter(v4);
  NSLog(&cfstr_WillRemoveFram.isa, listenerCopy);
  [(NSMutableArray *)self->_listeners removeObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)_onMainQueue_notifyListeners
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = self->_listeners;
  objc_sync_enter(v3);
  mainConfiguration = [(FBSDisplayMonitor *)self->_displayMonitor mainConfiguration];
  currentMode = [mainConfiguration currentMode];
  [currentMode pixelSize];
  v7 = v6;
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  NSLog(&cfstr_WillBroadcastN.isa, v10, v11);

  v12 = [(NSMutableArray *)self->_listeners copy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_listeners containsObject:v17])
        {
          firstObject = [v17 firstObject];
          firstObject[2](v7, v9);
        }

        else
        {
          NSLog(&cfstr_SkippingRemove.isa, v17);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v3);
  v19 = *MEMORY[0x277D85DE8];
}

@end