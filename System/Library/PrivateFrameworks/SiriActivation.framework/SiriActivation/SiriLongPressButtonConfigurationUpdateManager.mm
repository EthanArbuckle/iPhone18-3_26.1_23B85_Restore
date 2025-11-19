@interface SiriLongPressButtonConfigurationUpdateManager
- (SiriLongPressButtonConfigurationUpdateManager)init;
- (id)userDefaults;
- (void)_addDelegate:(id)a3 forSource:(id)a4;
- (void)_setupKVOMonitoring;
- (void)_stopKVOMonitoring;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startManagingConfigurationFromSource:(id)a3 withDelegate:(id)a4;
- (void)stopManagingAllConfigurations;
- (void)stopManagingConfigurationFromSource:(id)a3;
@end

@implementation SiriLongPressButtonConfigurationUpdateManager

- (SiriLongPressButtonConfigurationUpdateManager)init
{
  v6.receiver = self;
  v6.super_class = SiriLongPressButtonConfigurationUpdateManager;
  v2 = [(SiriLongPressButtonConfigurationUpdateManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    delegatesBySource = v2->_delegatesBySource;
    v2->_delegatesBySource = v3;

    v2->_currentLongPressBehavior = 0;
  }

  return v2;
}

- (void)dealloc
{
  internalUserDefaults = self->_internalUserDefaults;
  if (internalUserDefaults)
  {
    [(NSUserDefaults *)internalUserDefaults removeObserver:self forKeyPath:@"SiriHardwareButtonLongPressBehavior"];
  }

  v4.receiver = self;
  v4.super_class = SiriLongPressButtonConfigurationUpdateManager;
  [(SiriLongPressButtonConfigurationUpdateManager *)&v4 dealloc];
}

- (void)startManagingConfigurationFromSource:(id)a3 withDelegate:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!self->_monitoringForUpdates)
  {
    [(SiriLongPressButtonConfigurationUpdateManager *)self _setupKVOMonitoring];
  }

  [(SiriLongPressButtonConfigurationUpdateManager *)self _addDelegate:v6 forSource:v9];
  v7 = [v9 configuration];
  NSLog(&cfstr_Configurationu.isa, self->_currentLongPressBehavior, [v7 longPressBehavior]);
  if (v7)
  {
    currentLongPressBehavior = self->_currentLongPressBehavior;
    if (currentLongPressBehavior != [v7 longPressBehavior])
    {
      [v7 setLongPressBehavior:self->_currentLongPressBehavior];
      [v9 setConfiguration:v7];
      [v6 configurationUpdateManager:self configurationDidUpdateForLongPressSource:v9];
    }
  }
}

- (void)stopManagingConfigurationFromSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMapTable *)self->_delegatesBySource removeObjectForKey:v4];
    if (![(NSMapTable *)self->_delegatesBySource count])
    {
      [(SiriLongPressButtonConfigurationUpdateManager *)self _stopKVOMonitoring];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)stopManagingAllConfigurations
{
  [(NSMapTable *)self->_delegatesBySource removeAllObjects];
  [(SiriLongPressButtonConfigurationUpdateManager *)self _stopKVOMonitoring];
  internalUserDefaults = self->_internalUserDefaults;
  self->_internalUserDefaults = 0;
}

- (id)userDefaults
{
  internalUserDefaults = self->_internalUserDefaults;
  if (!internalUserDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.SiriViewService"];
    v5 = self->_internalUserDefaults;
    self->_internalUserDefaults = v4;

    internalUserDefaults = self->_internalUserDefaults;
  }

  return internalUserDefaults;
}

- (void)_addDelegate:(id)a3 forSource:(id)a4
{
  if (a4)
  {
    [(NSMapTable *)self->_delegatesBySource setObject:a3 forKey:?];
  }
}

- (void)_setupKVOMonitoring
{
  self->_monitoringForUpdates = 1;
  v3 = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  [v3 addObserver:self forKeyPath:@"SiriHardwareButtonLongPressBehavior" options:1 context:0];

  v5 = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  v4 = [v5 objectForKey:@"SiriHardwareButtonLongPressBehavior"];
  self->_currentLongPressBehavior = [v4 integerValue];
}

- (void)_stopKVOMonitoring
{
  self->_monitoringForUpdates = 0;
  v3 = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  [v3 removeObserver:self forKeyPath:@"SiriHardwareButtonLongPressBehavior"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"SiriHardwareButtonLongPressBehavior"])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__SiriLongPressButtonConfigurationUpdateManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E82F3C90;
    objc_copyWeak(&v17, &location);
    v15 = v12;
    v16 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SiriLongPressButtonConfigurationUpdateManager;
    [(SiriLongPressButtonConfigurationUpdateManager *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

void __96__SiriLongPressButtonConfigurationUpdateManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    NSLog(&cfstr_Configurationu_0.isa, *(a1 + 40), v3);
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v17 = v3;
      v6 = [v3 integerValue];
      *(WeakRetained + 3) = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [*(WeakRetained + 4) keyEnumerator];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [*(WeakRetained + 4) objectForKey:v12];
            if (v12)
            {
              v14 = [v12 configuration];
              v15 = [v14 longPressBehavior];
              [v14 setLongPressBehavior:v6];
              [v12 setConfiguration:v14];
              if (v15 != v6)
              {
                [v13 configurationUpdateManager:WeakRetained configurationDidUpdateForLongPressSource:v12];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      v3 = v17;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end