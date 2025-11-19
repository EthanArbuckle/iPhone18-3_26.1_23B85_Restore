@interface BYPreferencesController
+ (id)buddyPreferences;
+ (id)buddyPreferencesEphemeral;
+ (id)buddyPreferencesExcludedFromBackup;
+ (id)buddyPreferencesInternal;
+ (id)genericPreferencesEphemeral;
+ (id)randomPreferences;
+ (void)flushEverything;
+ (void)persistEverything;
- (BOOL)BOOLForKey:(id)a3;
- (BYPreferencesController)init;
- (BYPreferencesController)initWithDomain:(id)a3;
- (id)objectForKey:(id)a3 includeCache:(BOOL)a4;
- (void)flush;
- (void)persist;
- (void)persistKeys:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3 onlyFromMemory:(BOOL)a4;
- (void)reset;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 persistImmediately:(BOOL)a5;
@end

@implementation BYPreferencesController

+ (id)buddyPreferencesInternal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__BYPreferencesController_buddyPreferencesInternal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (buddyPreferencesInternal_onceToken != -1)
  {
    dispatch_once(&buddyPreferencesInternal_onceToken, block);
  }

  v2 = buddyPreferencesInternal_preferences;

  return v2;
}

uint64_t __51__BYPreferencesController_buddyPreferencesInternal__block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v3 = *(a1 + 32);
    buddyPreferencesInternal_preferences = [objc_opt_class() buddyPreferences];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)buddyPreferences
{
  if (buddyPreferences_onceToken != -1)
  {
    +[BYPreferencesController buddyPreferences];
  }

  v3 = buddyPreferences_preferences;

  return v3;
}

uint64_t __43__BYPreferencesController_buddyPreferences__block_invoke()
{
  buddyPreferences_preferences = [[BYPreferencesController alloc] initWithDomain:@"com.apple.purplebuddy"];

  return MEMORY[0x1EEE66BB8]();
}

- (BYPreferencesController)init
{
  v6.receiver = self;
  v6.super_class = BYPreferencesController;
  v2 = [(BYPreferencesController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(BYPreferencesController *)v2 setPreferences:v3];

    v4 = dispatch_queue_create("Preferences Queue", 0);
    [(BYPreferencesController *)v2 setQueue:v4];
  }

  return v2;
}

+ (id)buddyPreferencesExcludedFromBackup
{
  if (buddyPreferencesExcludedFromBackup_onceToken != -1)
  {
    +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  }

  v3 = buddyPreferencesExcludedFromBackup_preferences;

  return v3;
}

uint64_t __61__BYPreferencesController_buddyPreferencesExcludedFromBackup__block_invoke()
{
  buddyPreferencesExcludedFromBackup_preferences = [[BYPreferencesController alloc] initWithDomain:@"com.apple.purplebuddy.notbackedup"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)buddyPreferencesEphemeral
{
  if (buddyPreferencesEphemeral_onceToken != -1)
  {
    +[BYPreferencesController buddyPreferencesEphemeral];
  }

  v3 = buddyPreferencesEphemeral_preferences;

  return v3;
}

uint64_t __52__BYPreferencesController_buddyPreferencesEphemeral__block_invoke()
{
  buddyPreferencesEphemeral_preferences = objc_alloc_init(BYPreferencesController);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)genericPreferencesEphemeral
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)randomPreferences
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithDomain:v4];

  return v5;
}

- (BYPreferencesController)initWithDomain:(id)a3
{
  v4 = a3;
  v5 = [(BYPreferencesController *)self init];
  v6 = v5;
  if (v5)
  {
    [(BYPreferencesController *)v5 setDomain:v4];
  }

  return v6;
}

- (id)objectForKey:(id)a3 includeCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  if (!v4)
  {
    goto LABEL_4;
  }

  v7 = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BYPreferencesController_objectForKey_includeCache___block_invoke;
  block[3] = &unk_1E7D032E0;
  v15 = &v16;
  block[4] = self;
  v14 = v6;
  dispatch_sync(v7, block);

  v8 = v17[5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
LABEL_4:
    v10 = [(BYPreferencesController *)self domain];

    if (v10)
    {
      v11 = [(BYPreferencesController *)self domain];
      v9 = CFPreferencesCopyValue(v6, v11, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }

    else
    {
      v9 = 0;
    }
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __53__BYPreferencesController_objectForKey_includeCache___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) preferences];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(BYPreferencesController *)self objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BYPreferencesController_setObject_forKey___block_invoke;
  block[3] = &unk_1E7D03308;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __44__BYPreferencesController_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)setObject:(id)a3 forKey:(id)a4 persistImmediately:(BOOL)a5
{
  v5 = a5;
  value = a3;
  v8 = a4;
  [(BYPreferencesController *)self setObject:value forKey:v8];
  if (v5)
  {
    v9 = [(BYPreferencesController *)self domain];
    CFPreferencesSetValue(v8, value, v9, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  }
}

- (void)persistKeys:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(BYPreferencesController *)self objectForKey:v9];
        if (v10)
        {
          [(BYPreferencesController *)self setObject:v10 forKey:v9 persistImmediately:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(BYPreferencesController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__BYPreferencesController_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __46__BYPreferencesController_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)removeObjectForKey:(id)a3 onlyFromMemory:(BOOL)a4
{
  key = a3;
  [(BYPreferencesController *)self removeObjectForKey:?];
  if (!a4)
  {
    v6 = [(BYPreferencesController *)self domain];

    if (v6)
    {
      v7 = [(BYPreferencesController *)self domain];
      CFPreferencesSetValue(key, 0, v7, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }
}

- (void)reset
{
  v3 = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__BYPreferencesController_reset__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __32__BYPreferencesController_reset__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) preferences];
  [v1 removeAllObjects];
}

- (void)persist
{
  v3 = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BYPreferencesController_persist__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __34__BYPreferencesController_persist__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) preferences];
  v3 = [v2 allKeys];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E8B0];
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [*(a1 + 32) preferences];
        v13 = [v12 objectForKey:v11];

        v14 = [*(a1 + 32) domain];
        CFPreferencesSetValue(v11, v13, v14, v8, v9);

        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)persistEverything
{
  v2 = [objc_opt_class() buddyPreferences];
  [v2 persist];

  v3 = [objc_opt_class() buddyPreferencesExcludedFromBackup];
  [v3 persist];

  v4 = [objc_opt_class() buddyPreferencesInternal];
  [v4 persist];
}

- (void)flush
{
  v3 = [(BYPreferencesController *)self domain];
  v2 = *MEMORY[0x1E695E8B8];
  _CFPreferencesFlushCachesForIdentifier();
}

+ (void)flushEverything
{
  v2 = [objc_opt_class() buddyPreferences];
  [v2 flush];

  v3 = [objc_opt_class() buddyPreferencesExcludedFromBackup];
  [v3 flush];

  v4 = [objc_opt_class() buddyPreferencesInternal];
  [v4 flush];
}

@end