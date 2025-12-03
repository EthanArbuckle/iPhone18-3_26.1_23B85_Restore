@interface SiriLongPressButtonConfigurationUpdateManager
- (SiriLongPressButtonConfigurationUpdateManager)init;
- (id)userDefaults;
- (void)_addDelegate:(id)delegate forSource:(id)source;
- (void)_setupKVOMonitoring;
- (void)_stopKVOMonitoring;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startManagingConfigurationFromSource:(id)source withDelegate:(id)delegate;
- (void)stopManagingAllConfigurations;
- (void)stopManagingConfigurationFromSource:(id)source;
@end

@implementation SiriLongPressButtonConfigurationUpdateManager

- (SiriLongPressButtonConfigurationUpdateManager)init
{
  v6.receiver = self;
  v6.super_class = SiriLongPressButtonConfigurationUpdateManager;
  v2 = [(SiriLongPressButtonConfigurationUpdateManager *)&v6 init];
  if (v2)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    delegatesBySource = v2->_delegatesBySource;
    v2->_delegatesBySource = weakToWeakObjectsMapTable;

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

- (void)startManagingConfigurationFromSource:(id)source withDelegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  if (!self->_monitoringForUpdates)
  {
    [(SiriLongPressButtonConfigurationUpdateManager *)self _setupKVOMonitoring];
  }

  [(SiriLongPressButtonConfigurationUpdateManager *)self _addDelegate:delegateCopy forSource:sourceCopy];
  configuration = [sourceCopy configuration];
  NSLog(&cfstr_Configurationu.isa, self->_currentLongPressBehavior, [configuration longPressBehavior]);
  if (configuration)
  {
    currentLongPressBehavior = self->_currentLongPressBehavior;
    if (currentLongPressBehavior != [configuration longPressBehavior])
    {
      [configuration setLongPressBehavior:self->_currentLongPressBehavior];
      [sourceCopy setConfiguration:configuration];
      [delegateCopy configurationUpdateManager:self configurationDidUpdateForLongPressSource:sourceCopy];
    }
  }
}

- (void)stopManagingConfigurationFromSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    [(NSMapTable *)self->_delegatesBySource removeObjectForKey:sourceCopy];
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

- (void)_addDelegate:(id)delegate forSource:(id)source
{
  if (source)
  {
    [(NSMapTable *)self->_delegatesBySource setObject:delegate forKey:?];
  }
}

- (void)_setupKVOMonitoring
{
  self->_monitoringForUpdates = 1;
  userDefaults = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  [userDefaults addObserver:self forKeyPath:@"SiriHardwareButtonLongPressBehavior" options:1 context:0];

  userDefaults2 = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  v4 = [userDefaults2 objectForKey:@"SiriHardwareButtonLongPressBehavior"];
  self->_currentLongPressBehavior = [v4 integerValue];
}

- (void)_stopKVOMonitoring
{
  self->_monitoringForUpdates = 0;
  userDefaults = [(SiriLongPressButtonConfigurationUpdateManager *)self userDefaults];
  [userDefaults removeObserver:self forKeyPath:@"SiriHardwareButtonLongPressBehavior"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"SiriHardwareButtonLongPressBehavior"])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__SiriLongPressButtonConfigurationUpdateManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E82F3C90;
    objc_copyWeak(&v17, &location);
    v15 = changeCopy;
    v16 = pathCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SiriLongPressButtonConfigurationUpdateManager;
    [(SiriLongPressButtonConfigurationUpdateManager *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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