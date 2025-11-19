@interface RMSTVRemoteCoreDeviceController
+ (id)sharedController;
- (id)_deviceForIdentifier:(id)a3;
- (void)_finishDiscoveryWithDevice:(id)a3 forIdentifier:(id)a4;
- (void)deviceQueryDidUpdateDevices:(id)a3;
- (void)discoverDeviceWithIdentifier:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation RMSTVRemoteCoreDeviceController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RMSTVRemoteCoreDeviceController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_instance;

  return v2;
}

uint64_t __51__RMSTVRemoteCoreDeviceController_sharedController__block_invoke(uint64_t a1)
{
  sharedController_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)discoverDeviceWithIdentifier:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RMSTVRemoteCoreDeviceController *)self _deviceForIdentifier:v8];
  if (v10)
  {
    if (v9)
    {
      v9[2](v9, v10);
    }
  }

  else
  {
    discoveryCompletionHandlers = self->_discoveryCompletionHandlers;
    if (!discoveryCompletionHandlers)
    {
      v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v13 = self->_discoveryCompletionHandlers;
      self->_discoveryCompletionHandlers = v12;

      discoveryCompletionHandlers = self->_discoveryCompletionHandlers;
    }

    v14 = MEMORY[0x266721590](v9);
    [(NSMapTable *)discoveryCompletionHandlers setObject:v14 forKey:v8];

    if (!self->_deviceQuery)
    {
      v15 = objc_alloc_init(MEMORY[0x277D6C4E0]);
      deviceQuery = self->_deviceQuery;
      self->_deviceQuery = v15;

      [(TVRCDeviceQuery *)self->_deviceQuery setDelegate:self];
      [(TVRCDeviceQuery *)self->_deviceQuery start];
    }

    v17 = dispatch_time(0, (a4 * 1000000000.0));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__RMSTVRemoteCoreDeviceController_discoverDeviceWithIdentifier_timeout_completionHandler___block_invoke;
    v18[3] = &unk_279B09020;
    v18[4] = self;
    v19 = v8;
    dispatch_after(v17, MEMORY[0x277D85CD0], v18);
  }
}

- (void)deviceQueryDidUpdateDevices:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMapTable *)self->_discoveryCompletionHandlers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(RMSTVRemoteCoreDeviceController *)self _deviceForIdentifier:v9];
        if (v10)
        {
          [(RMSTVRemoteCoreDeviceController *)self _finishDiscoveryWithDevice:v10 forIdentifier:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_deviceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRCDeviceQuery *)self->_deviceQuery devices];
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RMSTVRemoteCoreDeviceController__deviceForIdentifier___block_invoke;
  v12[3] = &unk_279B09048;
  v13 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v12];
  v9 = [v5 filteredSetUsingPredicate:v8];
  v10 = [v9 anyObject];

  return v10;
}

uint64_t __56__RMSTVRemoteCoreDeviceController__deviceForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 info];
    v5 = [v6 containsID:*(a1 + 32)];
  }

  return v5;
}

- (void)_finishDiscoveryWithDevice:(id)a3 forIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_discoveryCompletionHandlers objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v10);
  }

  [(NSMapTable *)self->_discoveryCompletionHandlers removeObjectForKey:v6];
  if (![(NSMapTable *)self->_discoveryCompletionHandlers count])
  {
    [(TVRCDeviceQuery *)self->_deviceQuery stop];
    deviceQuery = self->_deviceQuery;
    self->_deviceQuery = 0;
  }
}

@end