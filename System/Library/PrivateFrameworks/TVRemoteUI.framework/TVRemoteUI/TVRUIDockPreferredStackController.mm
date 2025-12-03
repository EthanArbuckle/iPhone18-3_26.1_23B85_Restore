@interface TVRUIDockPreferredStackController
- (TVRUIDockPreferredStackController)init;
- (unint64_t)_initialStackKind;
- (void)_setupNotificationHandlers;
- (void)_teardownNotificationHandlers;
- (void)_updateInitialStackKind:(unint64_t)kind;
- (void)dealloc;
- (void)didChangeCurrentStackIndex:(unint64_t)index;
- (void)didEndPlayingContent;
@end

@implementation TVRUIDockPreferredStackController

- (TVRUIDockPreferredStackController)init
{
  v7.receiver = self;
  v7.super_class = TVRUIDockPreferredStackController;
  v2 = [(TVRUIDockPreferredStackController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TVRUIDockPreferredStackController *)v2 setCurrentStackIndex:[(TVRUIDockPreferredStackController *)v2 _initialStackKind]];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__TVRUIDockPreferredStackController_init__block_invoke;
    block[3] = &unk_279D87C20;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v3;
}

- (void)dealloc
{
  [(TVRUIDockPreferredStackController *)self _teardownNotificationHandlers];
  v3.receiver = self;
  v3.super_class = TVRUIDockPreferredStackController;
  [(TVRUIDockPreferredStackController *)&v3 dealloc];
}

- (void)didChangeCurrentStackIndex:(unint64_t)index
{
  v5 = [MEMORY[0x277CBEAA8] now];
  [(TVRUIDockPreferredStackController *)self setLastDidChangeDate:v5];

  [(TVRUIDockPreferredStackController *)self setCurrentStackIndex:index];
}

- (void)didEndPlayingContent
{
  _initialStackKind = [(TVRUIDockPreferredStackController *)self _initialStackKind];
  preferredStackDidChangeHandler = [(TVRUIDockPreferredStackController *)self preferredStackDidChangeHandler];

  if (preferredStackDidChangeHandler)
  {
    preferredStackDidChangeHandler2 = [(TVRUIDockPreferredStackController *)self preferredStackDidChangeHandler];
    preferredStackDidChangeHandler2[2](preferredStackDidChangeHandler2, _initialStackKind);
  }
}

- (void)_setupNotificationHandlers
{
  v22[4] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke;
  v19[3] = &unk_279D87E10;
  objc_copyWeak(&v20, &location);
  v4 = [defaultCenter addObserverForName:@"TVRUILaunchableAppsControllerAppInfosDidLaunchAppNotification" object:0 queue:0 usingBlock:v19];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_2;
  v17[3] = &unk_279D87E10;
  objc_copyWeak(&v18, &location);
  v6 = [defaultCenter2 addObserverForName:@"TVRUINowPlayingControllerMediaStartedNotification" object:0 queue:0 usingBlock:v17];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_3;
  v15[3] = &unk_279D87E10;
  objc_copyWeak(&v16, &location);
  v8 = [defaultCenter3 addObserverForName:@"TVRUINowPlayingControllerMediaStoppedNotification" object:0 queue:0 usingBlock:v15];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_4;
  v13[3] = &unk_279D87E10;
  objc_copyWeak(&v14, &location);
  v10 = [defaultCenter4 addObserverForName:@"TVRUIUpNextMediaPlayedNotification" object:0 queue:0 usingBlock:v13];

  v22[0] = v4;
  v22[1] = v6;
  v22[2] = v8;
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didLaunchApp];
}

void __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didBeginPlayingContent];
}

void __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didEndPlayingContent];
}

void __63__TVRUIDockPreferredStackController__setupNotificationHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didContinueWatching];
}

- (void)_teardownNotificationHandlers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  notificationObservers = [(TVRUIDockPreferredStackController *)self notificationObservers];
  v3 = [notificationObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(notificationObservers);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [notificationObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_updateInitialStackKind:(unint64_t)kind
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:kind];
  [standardUserDefaults setObject:v4 forKey:@"initialStackKind"];
}

- (unint64_t)_initialStackKind
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults registerDefaults:&unk_287E84D18];
  v3 = [standardUserDefaults objectForKey:@"initialStackKind"];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end