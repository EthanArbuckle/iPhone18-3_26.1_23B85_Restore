@interface TIUserDictionaryServer
+ (double)decrementClientDelay;
+ (id)sharedInstance;
+ (id)singletonInstance;
+ (void)setSharedInstance:(id)instance;
- (TIUserDictionaryServer)init;
- (id)addObserver:(id)observer;
- (void)dealloc;
- (void)decrementRecentClientCountAfterDelay;
- (void)getPhraseShortcutPairs:(id)pairs;
- (void)handleIdleTimeout;
- (void)keyboardActivityDidTransition:(id)transition;
- (void)loadPhraseShortcutPairs:(id)pairs;
- (void)removeObserver:(id)observer;
- (void)resetCache;
- (void)updateCache;
@end

@implementation TIUserDictionaryServer

+ (id)sharedInstance
{
  if (__testingServer)
  {
    v2 = __testingServer;
  }

  else
  {
    v2 = +[TIUserDictionaryServer singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_15046 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_15046, &__block_literal_global_15047);
  }

  v3 = singletonInstance_singletonInstance_15048;

  return v3;
}

- (void)decrementRecentClientCountAfterDelay
{
  +[TIUserDictionaryServer decrementClientDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TIUserDictionaryServer_decrementRecentClientCountAfterDelay__block_invoke;
  block[3] = &unk_278733308;
  block[4] = self;
  dispatch_after(v4, dispatchQueue, block);
}

+ (double)decrementClientDelay
{
  if (decrementClientDelay_onceToken != -1)
  {
    dispatch_once(&decrementClientDelay_onceToken, &__block_literal_global_17_15034);
  }

  return *&decrementClientDelay_result;
}

- (void)updateCache
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_updating)
  {
    ++self->_pendingUpdates;
  }

  else
  {
    self->_pendingUpdates = 0;
    [(TIUserDictionaryServer *)self incrementRecentClientCount];
    self->_updating = 1;
    cache = self->_cache;
    self->_cache = 0;

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__TIUserDictionaryServer_updateCache__block_invoke;
    v4[3] = &unk_2787320D0;
    v4[4] = self;
    [(TIUserDictionaryServer *)self loadPhraseShortcutPairs:v4];
  }
}

- (void)handleIdleTimeout
{
  v9 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Closing user dictionary due to lack of activity", "-[TIUserDictionaryServer handleIdleTimeout]"];
      *buf = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  textReplacementServer = [(TIUserDictionaryServer *)self textReplacementServer];
  [textReplacementServer cleanup];

  [(TIUserDictionaryServer *)self resetCache];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)keyboardActivityDidTransition:(id)transition
{
  transitionCopy = transition;
  dispatchQueue = self->_dispatchQueue;
  v7 = transitionCopy;
  v6 = transitionCopy;
  TIDispatchAsync();
}

void *__56__TIUserDictionaryServer_keyboardActivityDidTransition___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(a1 + 40) toState];
  result = [*(a1 + 40) toState];
  if (result == 3)
  {
    result = *(a1 + 32);
    if (!result[6])
    {

      return [result handleIdleTimeout];
    }
  }

  return result;
}

void *__62__TIUserDictionaryServer_decrementRecentClientCountAfterDelay__block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 48);
  result = *(a1 + 32);
  if (result[5] == 3 && !result[6])
  {
    return [result handleIdleTimeout];
  }

  return result;
}

- (void)loadPhraseShortcutPairs:(id)pairs
{
  pairsCopy = pairs;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = getMCProfileConnectionClass_softClass_15002;
  v21 = getMCProfileConnectionClass_softClass_15002;
  if (!getMCProfileConnectionClass_softClass_15002)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getMCProfileConnectionClass_block_invoke_15003;
    v17[3] = &unk_278733760;
    v17[4] = &v18;
    __getMCProfileConnectionClass_block_invoke_15003(v17);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  sharedConnection = [v5 sharedConnection];
  isKeyboardShortcutsAllowed = [sharedConnection isKeyboardShortcutsAllowed];

  if (isKeyboardShortcutsAllowed)
  {
    textReplacementServer = [(TIUserDictionaryServer *)self textReplacementServer];

    if (!textReplacementServer)
    {
      pairsCopy[2](pairsCopy, MEMORY[0x277CBEBF8]);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textReplacementServer2 = [(TIUserDictionaryServer *)self textReplacementServer];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__TIUserDictionaryServer_loadPhraseShortcutPairs___block_invoke;
    v13[3] = &unk_2787320F8;
    v14 = v10;
    selfCopy = self;
    v16 = pairsCopy;
    v12 = v10;
    [textReplacementServer2 queryTextReplacementsWithCallback:v13];
  }

  else
  {
    pairsCopy[2](pairsCopy, MEMORY[0x277CBEBF8]);
  }
}

void __50__TIUserDictionaryServer_loadPhraseShortcutPairs___block_invoke(uint64_t a1, void *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 phrase];

        if (v11)
        {
          v12 = [v10 shortcut];

          if (!v12)
          {
            v13 = [v10 phrase];
            [v10 setShortcut:v13];
          }

          v14 = *(a1 + 32);
          v15 = [v10 phrase];
          [v14 addObject:v15];

          v16 = *(a1 + 32);
          v17 = [v10 shortcut];
          [v16 addObject:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  if (a3)
  {
    v18 = *(*(a1 + 40) + 8);
    v21 = *(a1 + 48);
    v20 = *(a1 + 32);
    TIDispatchAsync();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetCache
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  cache = self->_cache;
  self->_cache = 0;

  [(TIUserDictionaryServer *)self setUserDictionaryUUID:0];
}

void __37__TIUserDictionaryServer_updateCache__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [MEMORY[0x277CCAD78] UUID];
  [*(a1 + 32) setUserDictionaryUUID:v5];

  if ([*(*(a1 + 32) + 16) count])
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(*(a1 + 32) + 16);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(a1 + 32) + 24);
          (*(*(*(&v14 + 1) + 8 * v10) + 16))(*(*(&v14 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  *(*(a1 + 32) + 32) = 0;
  [*(a1 + 32) decrementRecentClientCountAfterDelay];
  v12 = *(a1 + 32);
  if (v12[9])
  {
    [v12 updateCache];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getPhraseShortcutPairs:(id)pairs
{
  pairsCopy = pairs;
  dispatchQueue = self->_dispatchQueue;
  v7 = pairsCopy;
  v6 = pairsCopy;
  TIDispatchAsync();
}

uint64_t __49__TIUserDictionaryServer_getPhraseShortcutPairs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[3])
  {
    return (*(v3 + 16))(*(a1 + 40));
  }

  else
  {
    return [v2 loadPhraseShortcutPairs:v3];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dispatchQueue = self->_dispatchQueue;
  v7 = observerCopy;
  v6 = observerCopy;
  TIDispatchAsync();
}

void __41__TIUserDictionaryServer_removeObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 40));
  [v2 removeObject:v3];

  if (![*(*(a1 + 32) + 16) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

- (id)addObserver:(id)observer
{
  v4 = [observer copy];
  dispatchQueue = self->_dispatchQueue;
  v9 = v4;
  v6 = v4;
  TIDispatchAsync();
  v7 = _Block_copy(v6);

  return v7;
}

uint64_t __38__TIUserDictionaryServer_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  [*(a1 + 32) incrementRecentClientCount];
  v4 = *(a1 + 32);
  if (*(v4 + 24))
  {
    (*(*(a1 + 40) + 16))();
  }

  else if ((*(v4 + 32) & 1) == 0)
  {
    [v4 updateCache];
  }

  v5 = *(a1 + 32);

  return [v5 decrementRecentClientCountAfterDelay];
}

void __37__TIUserDictionaryServer_startServer__block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v2 = get_KSTextReplacementServerClass_softClass;
  v25 = get_KSTextReplacementServerClass_softClass;
  if (!get_KSTextReplacementServerClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __get_KSTextReplacementServerClass_block_invoke;
    v20 = &unk_278733760;
    v21 = &v22;
    __get_KSTextReplacementServerClass_block_invoke(&v17);
    v2 = v23[3];
  }

  v3 = v2;
  _Block_object_dispose(&v22, 8);
  v4 = [v2 textReplacementServer];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *(a1 + 32);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v9 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
  v25 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
  if (!getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke;
    v20 = &unk_278733760;
    v21 = &v22;
    v10 = ManagedConfigurationLibrary_15006();
    v11 = dlsym(v10, "MCKeyboardSettingsChangedNotification");
    *(v21[1] + 24) = v11;
    getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(v21[1] + 24);
    v9 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v9)
  {
    [v7 addObserver:v8 selector:sel_managedKeyboardSettingsDidChange_ name:*v9 object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = *(a1 + 32);
    v14 = getKSTextReplacementDidChangeNotification();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, ShortcutsDidChange, v14, 0, 0);

    v15 = [*(a1 + 32) textReplacementServer];
    [v15 start];
  }

  else
  {
    dlerror();
    v16 = abort_report_np();
    __get_KSTextReplacementServerClass_block_invoke(v16);
  }
}

- (TIUserDictionaryServer)init
{
  v10.receiver = self;
  v10.super_class = TIUserDictionaryServer;
  v2 = [(TIUserDictionaryServer *)&v10 init];
  if (v2)
  {
    v3 = +[TIKeyboardActivityController sharedController];
    [v3 addActivityObserver:v2];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.TextInput.shortcuts", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = getKSTextReplacementDidChangeNotification();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);

  v6 = +[TIKeyboardActivityController sharedController];
  [v6 removeActivityObserver:self];

  v7.receiver = self;
  v7.super_class = TIUserDictionaryServer;
  [(TIUserDictionaryServer *)&v7 dealloc];
}

void __46__TIUserDictionaryServer_decrementClientDelay__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  decrementClientDelay_result = 0x4066800000000000;
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"idleTimeout", @"com.apple.keyboard", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v1 = AppIntegerValue;
      if ((AppIntegerValue & 0x8000000000000000) == 0)
      {
        *&decrementClientDelay_result = AppIntegerValue;
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v2 = TIOSLogFacility();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
          {
            v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Setting decrement client delay to %ld seconds", "+[TIUserDictionaryServer decrementClientDelay]_block_invoke", v1];
            *buf = 138412290;
            v7 = v4;
            _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TIUserDictionaryServer_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIUserDictionaryServer);
  v1 = singletonInstance_singletonInstance_15048;
  singletonInstance_singletonInstance_15048 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedInstance:(id)instance
{
  instanceCopy = instance;
  if (__testingServer != instanceCopy)
  {
    v5 = instanceCopy;
    objc_storeStrong(&__testingServer, instance);
    instanceCopy = v5;
  }
}

@end