@interface SRUIFCachedPreferences
+ (id)sharedInstance;
- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled;
- (BOOL)assetsDownloading;
- (BOOL)assetsNeedSpace;
- (BOOL)isHoldToTalkForTextInputEnabled;
- (BOOL)isSiriSafeForLockScreen;
- (BOOL)isStreamingDictationEnabled;
- (BOOL)understandingOnDeviceAssetsAvailable;
- (NSDictionary)assistantUODStatus;
- (SRUIFCachedPreferences)init;
- (UAFAssetStatus)assetStatus;
- (void)_notifyObserversOfSettingsChangeWithBlock:(id)block;
- (void)_setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleAssetStatusUpdated;
- (void)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserver:(id)observer;
- (void)siriUODAvailabilityDidChange:(BOOL)change;
- (void)siriUODStatusDidChange;
- (void)updatePreferences;
@end

@implementation SRUIFCachedPreferences

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SRUIFCachedPreferences_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (BOOL)understandingOnDeviceAssetsAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SRUIFCachedPreferences_understandingOnDeviceAssetsAvailable__block_invoke;
  v5[3] = &unk_279C627B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSiriSafeForLockScreen
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SRUIFCachedPreferences_isSiriSafeForLockScreen__block_invoke;
  block[3] = &unk_279C62790;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

void __49__SRUIFCachedPreferences_isSiriSafeForLockScreen__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[18];
  }
}

- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SRUIFCachedPreferences_announceNotificationsInCarPlayTemporarilyDisabled__block_invoke;
  block[3] = &unk_279C62790;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

void __75__SRUIFCachedPreferences_announceNotificationsInCarPlayTemporarilyDisabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[19];
  }
}

- (void)updatePreferences
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SRUIFCachedPreferences updatePreferences]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s Syncing cached SiriUIPreferences.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SRUIFCachedPreferences_updatePreferences__block_invoke;
  block[3] = &unk_279C61870;
  objc_copyWeak(&v7, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__SRUIFCachedPreferences_updatePreferences__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[17] = AFPreferencesStreamingDictationEnabled();
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    WeakRetained[18] = [v3 disableAssistantWhilePasscodeLocked] ^ 1;

    v4 = [MEMORY[0x277CEF368] sharedPreferences];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__SRUIFCachedPreferences_updatePreferences__block_invoke_2;
    v5[3] = &unk_279C62768;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:v5];

    objc_destroyWeak(&v6);
  }
}

void __43__SRUIFCachedPreferences_updatePreferences__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _setAnnounceNotificationsInCarPlayTemporarilyDisabled:a2];
    WeakRetained = v4;
  }
}

- (void)handleAssetStatusUpdated
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SRUIFCachedPreferences_handleAssetStatusUpdated__block_invoke;
  v4[3] = &unk_279C61870;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__SRUIFCachedPreferences_handleAssetStatusUpdated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 5) currentAssetStatus];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2[8];
      v7 = 136315650;
      v8 = "[SRUIFCachedPreferences handleAssetStatusUpdated]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s Updating assets status from %@ to %@", &v7, 0x20u);
    }

    [v2 setAssetStatus:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)siriUODStatusDidChange
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SRUIFCachedPreferences_siriUODStatusDidChange__block_invoke;
  v4[3] = &unk_279C61870;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__SRUIFCachedPreferences_siriUODStatusDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 5) assistantUODStatus];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2[7];
      v7 = 136315650;
      v8 = "[SRUIFCachedPreferences siriUODStatusDidChange]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s Updating assistant UOD status from %@ to %@", &v7, 0x20u);
    }

    [v2 setAssistantUODStatus:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __40__SRUIFCachedPreferences_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SRUIFCachedPreferences)init
{
  v16.receiver = self;
  v16.super_class = SRUIFCachedPreferences;
  v2 = [(SRUIFCachedPreferences *)&v16 init];
  if (v2)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFCachedPreferences *)v4 init];
    }

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = dispatch_queue_create("SRUIFCachedPreferences", 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.textinput"];
    textInputDefaults = v2->_textInputDefaults;
    v2->_textInputDefaults = v9;

    [(NSUserDefaults *)v2->_textInputDefaults addObserver:v2 forKeyPath:@"SiriUITextInputEnabled" options:5 context:&SRUIFCachedPreferencesContext];
    [(NSUserDefaults *)v2->_textInputDefaults addObserver:v2 forKeyPath:@"SiriUITextInputHTTEnabled" options:5 context:&SRUIFCachedPreferencesContext];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updatePreferences name:*MEMORY[0x277CEF060] object:0];

    [(SRUIFCachedPreferences *)v2 updatePreferences];
    v2->_understandingOnDeviceAssetsAvailable = 1;
    v12 = objc_alloc_init(MEMORY[0x277D77A10]);
    assetUtilities = v2->_assetUtilities;
    v2->_assetUtilities = v12;

    [(UAFAssetUtilities *)v2->_assetUtilities setDelegate:v2];
    [(UAFAssetUtilities *)v2->_assetUtilities startObserversWithOptions:17];
    v14 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFCachedPreferences *)v14 init];
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(NSUserDefaults *)self->_textInputDefaults removeObserver:self forKeyPath:@"SiriUITextInputEnabled" context:&SRUIFCachedPreferencesContext];
  [(NSUserDefaults *)self->_textInputDefaults removeObserver:self forKeyPath:@"SiriUITextInputHTTEnabled" context:&SRUIFCachedPreferencesContext];
  [(NSHashTable *)self->_observers removeAllObjects];
  v4.receiver = self;
  v4.super_class = SRUIFCachedPreferences;
  [(SRUIFCachedPreferences *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SRUIFCachedPreferences_addObserver___block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__SRUIFCachedPreferences_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[4] addObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SRUIFCachedPreferences_removeObserver___block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__SRUIFCachedPreferences_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[4] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)isHoldToTalkForTextInputEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SRUIFCachedPreferences_isHoldToTalkForTextInputEnabled__block_invoke;
  block[3] = &unk_279C62790;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

void __57__SRUIFCachedPreferences_isHoldToTalkForTextInputEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[16];
  }
}

- (BOOL)isStreamingDictationEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SRUIFCachedPreferences_isStreamingDictationEnabled__block_invoke;
  block[3] = &unk_279C62790;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

void __53__SRUIFCachedPreferences_isStreamingDictationEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[17];
  }
}

- (BOOL)assetsNeedSpace
{
  assetStatus = [(SRUIFCachedPreferences *)self assetStatus];
  v3 = [assetStatus state] == 6;

  return v3;
}

- (BOOL)assetsDownloading
{
  assetStatus = [(SRUIFCachedPreferences *)self assetStatus];
  v3 = [assetStatus state] == 3;

  return v3;
}

- (UAFAssetStatus)assetStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SRUIFCachedPreferences_assetStatus__block_invoke;
  v5[3] = &unk_279C627B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDictionary)assistantUODStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SRUIFCachedPreferences_assistantUODStatus__block_invoke;
  v5[3] = &unk_279C627B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)siriUODAvailabilityDidChange:(BOOL)change
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFCachedPreferences_siriUODAvailabilityDidChange___block_invoke;
  block[3] = &unk_279C627E0;
  objc_copyWeak(&v7, &location);
  changeCopy = change;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__SRUIFCachedPreferences_siriUODAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = WeakRetained[48];
      v5 = *(a1 + 40);
      v7 = 136315650;
      v8 = "[SRUIFCachedPreferences siriUODAvailabilityDidChange:]_block_invoke";
      v9 = 1024;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s Updating UOD assets available from %{BOOL}d to %{BOOL}d", &v7, 0x18u);
    }

    [WeakRetained setUnderstandingOnDeviceAssetsAvailable:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled
{
  if ([(SRUIFCachedPreferences *)self announceNotificationsInCarPlayTemporarilyDisabled]!= disabled)
  {
    self->_announceNotificationsInCarPlayTemporarilyDisabled = disabled;
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__SRUIFCachedPreferences__setAnnounceNotificationsInCarPlayTemporarilyDisabled___block_invoke;
    v5[3] = &unk_279C62808;
    objc_copyWeak(&v6, &location);
    disabledCopy = disabled;
    [(SRUIFCachedPreferences *)self _notifyObserversOfSettingsChangeWithBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __80__SRUIFCachedPreferences__setAnnounceNotificationsInCarPlayTemporarilyDisabled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [v4 cachedPreferences:WeakRetained announceNotificationsInCarPlayTemporarilyDisabledChanged:*(a1 + 40)];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &SRUIFCachedPreferencesContext)
  {
    if (self->_textInputDefaults == objectCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__SRUIFCachedPreferences_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_279C61E10;
      v16 = pathCopy;
      selfCopy = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SRUIFCachedPreferences;
    [(SRUIFCachedPreferences *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __73__SRUIFCachedPreferences_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"SiriUITextInputHTTEnabled"])
  {
    v2 = [*(*(a1 + 40) + 8) objectForKey:@"SiriUITextInputHTTEnabled"];
    *(*(a1 + 40) + 16) = [v2 BOOLValue];
  }
}

- (void)_notifyObserversOfSettingsChangeWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_observers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFCachedPreferences init]";
  _os_log_debug_impl(&dword_26951F000, log, OS_LOG_TYPE_DEBUG, "%s Initialization complete.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end