@interface WFVoiceShortcutCache
- (WFVoiceShortcutCache)init;
- (void)clear;
- (void)databaseDidChange;
- (void)dealloc;
- (void)getCachedVoiceShortcuts:(id)shortcuts;
- (void)registerForDatabaseNotifications;
- (void)setCachedVoiceShortcuts:(id)shortcuts;
- (void)setVoiceShortcuts:(id)shortcuts;
- (void)unregisterFromDatabaseNotifications;
@end

@implementation WFVoiceShortcutCache

- (WFVoiceShortcutCache)init
{
  v8.receiver = self;
  v8.super_class = WFVoiceShortcutCache;
  v2 = [(WFVoiceShortcutCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waitingFetchRequests = v2->_waitingFetchRequests;
    v2->_waitingFetchRequests = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[VCAccessSpecifier accessSpecifierForCurrentProcess];
    v2->_enabled = [v5 allowUnrestrictedAccess] ^ 1;
    v6 = v2;
  }

  return v2;
}

- (void)databaseDidChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFVoiceShortcutCache databaseDidChange]";
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEBUG, "%s Shortcuts database changed - clearing out voice shortcuts cache.", &v5, 0xCu);
  }

  [(WFVoiceShortcutCache *)self clear];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)unregisterFromDatabaseNotifications
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0];
}

- (void)registerForDatabaseNotifications
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_databaseDidChange name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0];
}

- (void)setVoiceShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  p_voiceShortcuts = &self->_voiceShortcuts;
  if (self->_voiceShortcuts != shortcutsCopy)
  {
    v7 = shortcutsCopy;
    objc_storeStrong(p_voiceShortcuts, shortcuts);
    p_voiceShortcuts = [(WFVoiceShortcutCache *)self registerForDatabaseNotifications];
    shortcutsCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_voiceShortcuts, shortcutsCopy);
}

- (void)clear
{
  os_unfair_lock_lock(&self->_lock);
  [(WFVoiceShortcutCache *)self setVoiceShortcuts:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCachedVoiceShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  if (!shortcutsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVoiceShortcutCache.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"setterBlock"}];
  }

  if ([(WFVoiceShortcutCache *)self isEnabled])
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(WFVoiceShortcutCache *)self state]== 1)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      self->_state = 1;
      os_unfair_lock_unlock(&self->_lock);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__WFVoiceShortcutCache_setCachedVoiceShortcuts___block_invoke_2;
      v7[3] = &unk_1E7B00F00;
      v7[4] = self;
      shortcutsCopy[2](shortcutsCopy, v7);
    }
  }

  else
  {
    shortcutsCopy[2](shortcutsCopy, __block_literal_global_7165);
  }
}

void __48__WFVoiceShortcutCache_setCachedVoiceShortcuts___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(a1 + 32) setVoiceShortcuts:v3];
  *(*(a1 + 32) + 32) = 0;
  v4 = [*(a1 + 32) waitingFetchRequests];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) waitingFetchRequests];
  [v6 removeAllObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getCachedVoiceShortcuts:(id)shortcuts
{
  aBlock = shortcuts;
  if (!aBlock)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVoiceShortcutCache.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];
  }

  if ([(WFVoiceShortcutCache *)self isEnabled])
  {
    os_unfair_lock_lock(&self->_lock);
    state = [(WFVoiceShortcutCache *)self state];
    if (state == 1)
    {
      waitingFetchRequests = [(WFVoiceShortcutCache *)self waitingFetchRequests];
      v10 = _Block_copy(aBlock);
      [waitingFetchRequests addObject:v10];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v6 = aBlock;
      if (state)
      {
        goto LABEL_10;
      }

      voiceShortcuts = [(WFVoiceShortcutCache *)self voiceShortcuts];
      v8 = [voiceShortcuts copy];

      os_unfair_lock_unlock(&self->_lock);
      (*(aBlock + 2))(aBlock, v8);
    }
  }

  else
  {
    state = (*(aBlock + 2))(aBlock, 0);
  }

  v6 = aBlock;
LABEL_10:

  MEMORY[0x1EEE66BB8](state, v6);
}

- (void)dealloc
{
  [(WFVoiceShortcutCache *)self unregisterFromDatabaseNotifications];
  v3.receiver = self;
  v3.super_class = WFVoiceShortcutCache;
  [(WFVoiceShortcutCache *)&v3 dealloc];
}

@end