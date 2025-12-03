@interface TIKeyboardInputManagerLoader
+ (id)sharedLoader;
- (BOOL)isActiveInputManager:(id)manager;
- (TIKeyboardInputManagerLoader)init;
- (id)activeInputModeIdentifiers;
- (id)currentLoadedInputModes;
- (id)inputManagerForInputMode:(id)mode withKeyboardState:(id)state class:(Class)class;
- (void)cacheInputManager:(id)manager switchingToInputMode:(id)mode;
- (void)dealloc;
- (void)prepareForKeyboardInactivity;
- (void)reduceInputManagerCacheToSize:(int)size switchingToInputMode:(id)mode;
- (void)registerMaintenanceActivity;
- (void)releaseAllInputManagers;
- (void)removeInputModeFromAllContainers:(id)containers;
- (void)startSyncHelper;
@end

@implementation TIKeyboardInputManagerLoader

+ (id)sharedLoader
{
  if (sharedLoader_onceToken != -1)
  {
    dispatch_once(&sharedLoader_onceToken, &__block_literal_global_16711);
  }

  v3 = sharedLoader_loader;

  return v3;
}

- (void)startSyncHelper
{
  if (!self->_helper)
  {
    location[5] = v2;
    location[6] = v3;
    if (TIGetEnableUserWordSyncingValue_onceToken != -1)
    {
      dispatch_once(&TIGetEnableUserWordSyncingValue_onceToken, &__block_literal_global_69);
    }

    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    v6 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"EnableUserWordSyncing"];

    LODWORD(mEMORY[0x277D6F470]) = [v6 BOOLValue];
    if (mEMORY[0x277D6F470])
    {
      objc_initWeak(location, self);
      v7 = objc_opt_new();
      helper = self->_helper;
      self->_helper = v7;

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__TIKeyboardInputManagerLoader_startSyncHelper__block_invoke;
      v9[3] = &unk_2787323E0;
      objc_copyWeak(&v10, location);
      [(TIKeyboardInputManagerLoaderSyncHelper *)self->_helper setLanguageUpdated:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }
  }
}

- (void)registerMaintenanceActivity
{
  v10 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v3 = TIOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Preparing for %s activity", "-[TIKeyboardInputManagerLoader registerMaintenanceActivity]", "com.apple.textinput.keyboardmaintenance"];
    *buf = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__TIKeyboardInputManagerLoader_registerMaintenanceActivity__block_invoke;
  handler[3] = &unk_2787324C8;
  handler[4] = self;
  xpc_activity_register("com.apple.textinput.keyboardmaintenance", v4, handler);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__TIKeyboardInputManagerLoader_registerMaintenanceActivity__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v7 = TIOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Running %s activity", "-[TIKeyboardInputManagerLoader registerMaintenanceActivity]_block_invoke", "com.apple.textinput.keyboardmaintenance"];
      *buf = 138412290;
      v13 = v10;
      _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    TIDispatchSync();
  }

  else if (!state)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Checking in activity %s", "-[TIKeyboardInputManagerLoader registerMaintenanceActivity]_block_invoke", "com.apple.textinput.keyboardmaintenance"];
      *buf = 138412290;
      v13 = v9;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86250], *MEMORY[0x277D86290]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D863A0], 1);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86380], 1);
    xpc_activity_set_criteria(v3, v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)activeInputModeIdentifiers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_activeInputManagers, "count")}];
  activeInputManagers = self->_activeInputManagers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TIKeyboardInputManagerLoader_activeInputModeIdentifiers__block_invoke;
  v7[3] = &unk_2787324A0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)activeInputManagers enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

uint64_t __58__TIKeyboardInputManagerLoader_activeInputModeIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 currentInputModeIdentifier];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 32) addObject:v4];
    v5 = v7;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)isActiveInputManager:(id)manager
{
  activeInputManagers = self->_activeInputManagers;
  managerCopy = manager;
  allValues = [(NSMutableDictionary *)activeInputManagers allValues];
  v6 = [allValues containsObject:managerCopy];

  return v6;
}

- (id)currentLoadedInputModes
{
  v3 = [MEMORY[0x277CBEB58] set];
  availableInputManagers = self->_availableInputManagers;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__TIKeyboardInputManagerLoader_currentLoadedInputModes__block_invoke;
  v15[3] = &unk_2787324A0;
  v5 = v3;
  v16 = v5;
  [(NSMutableDictionary *)availableInputManagers enumerateKeysAndObjectsUsingBlock:v15];
  activeInputManagers = self->_activeInputManagers;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __55__TIKeyboardInputManagerLoader_currentLoadedInputModes__block_invoke_2;
  v13 = &unk_2787324A0;
  v14 = v5;
  v7 = v5;
  [(NSMutableDictionary *)activeInputManagers enumerateKeysAndObjectsUsingBlock:&v10];
  allObjects = [v7 allObjects];

  return allObjects;
}

void __55__TIKeyboardInputManagerLoader_currentLoadedInputModes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 resourceInputModes];
  [v3 addObjectsFromArray:v4];
}

void __55__TIKeyboardInputManagerLoader_currentLoadedInputModes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 resourceInputModes];
  [v3 addObjectsFromArray:v4];
}

- (void)prepareForKeyboardInactivity
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  availableInputManagers = self->_availableInputManagers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__TIKeyboardInputManagerLoader_prepareForKeyboardInactivity__block_invoke;
  v9[3] = &unk_278732450;
  v5 = v3;
  v10 = v5;
  v11 = v12;
  [(NSMutableDictionary *)availableInputManagers enumerateKeysAndObjectsUsingBlock:v9];
  v6 = self->_availableInputManagers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__TIKeyboardInputManagerLoader_prepareForKeyboardInactivity__block_invoke_2;
  v8[3] = &unk_278732478;
  v8[4] = v12;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v8];
  if (getExcessMemoryInBytes())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[TIKeyboardInputManagerLoader prepareForKeyboardInactivity]";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  kbd is already over inactive limit, hard-resetting all language models (including advanced ones)", buf, 0xCu);
    }

    [(TIKeyboardInputManagerLoader *)self releaseAllLanguageModelBuffers];
  }

  _Block_object_dispose(v12, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__TIKeyboardInputManagerLoader_prepareForKeyboardInactivity__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 isHighMemoryManager];
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v7 setObject:v8 forKey:v4];

  *(*(*(a1 + 40) + 8) + 24) += v6;
}

void __60__TIKeyboardInputManagerLoader_prepareForKeyboardInactivity__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && [v6 isHighMemoryManager])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[TIKeyboardInputManagerLoader prepareForKeyboardInactivity]_block_invoke_2";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Input manager %@ is loading advanced model, and there is only one Input Manager loading advanced models", &v11, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = off_2787328D8[v8];
    v11 = 136315650;
    v12 = "[TIKeyboardInputManagerLoader prepareForKeyboardInactivity]_block_invoke";
    v13 = 2080;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Issuing %s to %@ to prepare for Keyboard Inactivity", &v11, 0x20u);
  }

  [v7 prepareForKeyboardInactivity:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reduceInputManagerCacheToSize:(int)size switchingToInputMode:(id)mode
{
  v59 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  allKeys = [(NSMutableDictionary *)self->_availableInputManagers allKeys];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __83__TIKeyboardInputManagerLoader_reduceInputManagerCacheToSize_switchingToInputMode___block_invoke;
  v50[3] = &unk_278732428;
  v50[4] = self;
  v7 = [allKeys sortedArrayUsingComparator:v50];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v58 count:16];
  v41 = modeCopy;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_availableInputManagers objectForKeyedSubscript:v14];
        if ([v15 isHighMemoryManager])
        {
          if (v11)
          {
            if (v14 != modeCopy)
            {
              v16 = TIInputManagerOSLogFacility();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                normalizedIdentifier = [v14 normalizedIdentifier];
                isSiriMode = [v14 isSiriMode];
                *buf = 136315650;
                v53 = "[TIKeyboardInputManagerLoader reduceInputManagerCacheToSize:switchingToInputMode:]";
                v54 = 2114;
                v55 = normalizedIdentifier;
                v56 = 1024;
                v57 = isSiriMode;
                _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  Removing inputManager from cache for inputMode %{public}@ isSiriMode: %d", buf, 0x1Cu);

                modeCopy = v41;
              }

              [(TIKeyboardInputManagerLoader *)self removeInputModeFromAllContainers:v14];
            }
          }

          else
          {
            v11 = v15;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if ([(NSMutableDictionary *)self->_availableInputManagers count]> size)
  {
    v19 = [v8 count];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v8 reverseObjectEnumerator];
    v20 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = v19 - size;
      v24 = *v43;
      v26 = size == 1 && v41 != 0;
      v40 = v26;
      v37 = v19 - size;
      while (2)
      {
        v27 = 0;
        v38 = v21;
        do
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v42 + 1) + 8 * v27);
          v29 = [(NSMutableDictionary *)self->_availableInputManagers objectForKeyedSubscript:v28];
          v30 = v29;
          if (v28 != v41 && (v40 || ([v29 isHighMemoryManager] & 1) == 0))
          {
            v31 = v24;
            v32 = TIInputManagerOSLogFacility();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              normalizedIdentifier2 = [v28 normalizedIdentifier];
              *buf = 136315394;
              v53 = "[TIKeyboardInputManagerLoader reduceInputManagerCacheToSize:switchingToInputMode:]";
              v54 = 2114;
              v55 = normalizedIdentifier2;
              _os_log_impl(&dword_22CA55000, v32, OS_LOG_TYPE_DEFAULT, "%s  Removing inputManager from cache for inputMode %{public}@", buf, 0x16u);

              v23 = v37;
            }

            [(TIKeyboardInputManagerLoader *)self removeInputModeFromAllContainers:v28];
            ++v22;
            v24 = v31;
            v21 = v38;
            if (v22 >= v23)
            {

              goto LABEL_39;
            }
          }

          ++v27;
        }

        while (v21 != v27);
        v21 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    modeCopy = v41;
    if (!size)
    {
      v34 = TIInputManagerOSLogFacility();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = "[TIKeyboardInputManagerLoader reduceInputManagerCacheToSize:switchingToInputMode:]";
        _os_log_impl(&dword_22CA55000, v34, OS_LOG_TYPE_DEFAULT, "%s  Received cache size is 0, unwiring all language models", buf, 0xCu);
      }

      +[TILanguageModelLoaderManager unwireAllLanguageModelMemory];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __83__TIKeyboardInputManagerLoader_reduceInputManagerCacheToSize_switchingToInputMode___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a2;
  v7 = [v5 objectForKey:a3];
  v8 = [*(*(a1 + 32) + 24) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)releaseAllInputManagers
{
  v21 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_availableInputManagers allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = TIInputManagerOSLogFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          normalizedIdentifier = [v8 normalizedIdentifier];
          *buf = 136315394;
          v17 = "[TIKeyboardInputManagerLoader releaseAllInputManagers]";
          v18 = 2114;
          v19 = normalizedIdentifier;
          _os_log_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEFAULT, "%s  removing inputManager from cache for inputMode %{public}@", buf, 0x16u);
        }

        [(TIKeyboardInputManagerLoader *)self removeInputModeFromAllContainers:v8];
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cacheInputManager:(id)manager switchingToInputMode:(id)mode
{
  managerCopy = manager;
  modeCopy = mode;
  if (managerCopy)
  {
    [managerCopy suspend];
    inputMode = [managerCopy inputMode];

    if (inputMode)
    {
      v8 = [(TIKeyboardInputManagerLoaderSyncHelper *)self->_helper shouldCacheObject:managerCopy];
      activeInputManagers = self->_activeInputManagers;
      inputMode2 = [managerCopy inputMode];
      v11 = [(NSMutableDictionary *)activeInputManagers objectForKey:inputMode2];

      if (v11 == managerCopy)
      {
        v12 = self->_activeInputManagers;
        inputMode3 = [managerCopy inputMode];
        [(NSMutableDictionary *)v12 removeObjectForKey:inputMode3];
      }

      else
      {
        v8 = 0;
      }

      if (self->_helper && !v8)
      {
        goto LABEL_14;
      }

      availableInputManagers = self->_availableInputManagers;
      inputMode4 = [managerCopy inputMode];
      [(NSMutableDictionary *)availableInputManagers setObject:managerCopy forKey:inputMode4];

      if ([managerCopy hasHandledInput])
      {
        date = [MEMORY[0x277CBEAA8] date];
        if (!date)
        {
          goto LABEL_12;
        }
      }

      else
      {
        lastUsedDate = self->_lastUsedDate;
        inputMode5 = [managerCopy inputMode];
        date = [(NSMutableDictionary *)lastUsedDate objectForKey:inputMode5];

        if (!date)
        {
LABEL_12:
          date = [MEMORY[0x277CBEAA8] distantPast];
        }
      }

      v19 = self->_lastUsedDate;
      inputMode6 = [managerCopy inputMode];
      [(NSMutableDictionary *)v19 setObject:date forKey:inputMode6];

      [(TIKeyboardInputManagerLoader *)self reduceInputManagerCacheToSize:4 switchingToInputMode:modeCopy];
LABEL_14:
    }
  }
}

- (id)inputManagerForInputMode:(id)mode withKeyboardState:(id)state class:(Class)class
{
  v28 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  stateCopy = state;
  v10 = [(NSMutableDictionary *)self->_availableInputManagers objectForKey:modeCopy];
  [(NSMutableDictionary *)self->_availableInputManagers removeObjectForKey:modeCopy];
  if (v10 && [v10 isMemberOfClass:class] && (objc_msgSend(v10, "inputMode"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", modeCopy), v11, (v12 & 1) != 0))
  {
    inputMode = TIInputManagerOSLogFacility();
    if (os_log_type_enabled(inputMode, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[TIKeyboardInputManagerLoader inputManagerForInputMode:withKeyboardState:class:]";
      v24 = 2114;
      v25 = modeCopy;
      _os_log_impl(&dword_22CA55000, inputMode, OS_LOG_TYPE_DEFAULT, "%s  Reusing existing input manager for input mode %{public}@", &v22, 0x16u);
    }
  }

  else
  {

    helper = self->_helper;
    languageWithRegion = [modeCopy languageWithRegion];
    [(TIKeyboardInputManagerLoaderSyncHelper *)helper willLoadLanguage:languageWithRegion];

    v16 = TIInputManagerOSLogFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromClass(class);
      v22 = 136315650;
      v23 = "[TIKeyboardInputManagerLoader inputManagerForInputMode:withKeyboardState:class:]";
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = modeCopy;
      _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  Initializing new input manager with class %{public}@ for input mode %{public}@", &v22, 0x20u);
    }

    v10 = [[class alloc] initWithInputMode:modeCopy keyboardState:stateCopy];
    v18 = self->_helper;
    inputMode = [v10 inputMode];
    languageWithRegion2 = [inputMode languageWithRegion];
    [(TIKeyboardInputManagerLoaderSyncHelper *)v18 noteObject:v10 forLanguage:languageWithRegion2];
  }

  [(NSMutableDictionary *)self->_activeInputManagers setObject:v10 forKey:modeCopy];
  [v10 resume];

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

void __47__TIKeyboardInputManagerLoader_startSyncHelper__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = WeakRetained[2];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 languageWithRegion];
          v13 = [v12 isEqualToString:v3];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [WeakRetained[2] removeObjectsForKeys:v5];
    [WeakRetained[3] removeObjectsForKeys:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeInputModeFromAllContainers:(id)containers
{
  availableInputManagers = self->_availableInputManagers;
  containersCopy = containers;
  [(NSMutableDictionary *)availableInputManagers removeObjectForKey:containersCopy];
  [(NSMutableDictionary *)self->_activeInputManagers removeObjectForKey:containersCopy];
  [(NSMutableDictionary *)self->_lastUsedDate removeObjectForKey:containersCopy];
}

- (void)dealloc
{
  self->_interactingConnection = 0;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerLoader;
  [(TIKeyboardInputManagerLoader *)&v2 dealloc];
}

- (TIKeyboardInputManagerLoader)init
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLoader;
  v2 = [(TIKeyboardInputManagerLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    availableInputManagers = v2->_availableInputManagers;
    v2->_availableInputManagers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastUsedDate = v2->_lastUsedDate;
    v2->_lastUsedDate = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeInputManagers = v2->_activeInputManagers;
    v2->_activeInputManagers = v7;

    v2->_interactingConnection = 0;
  }

  return v2;
}

uint64_t __44__TIKeyboardInputManagerLoader_sharedLoader__block_invoke()
{
  v0 = objc_alloc_init(TIKeyboardInputManagerLoader);
  v1 = sharedLoader_loader;
  sharedLoader_loader = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end