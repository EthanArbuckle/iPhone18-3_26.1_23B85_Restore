@interface BYPreferencesController
+ (id)buddyPreferences;
+ (id)buddyPreferencesEphemeral;
+ (id)buddyPreferencesExcludedFromBackup;
+ (id)buddyPreferencesInternal;
+ (id)genericPreferencesEphemeral;
+ (id)randomPreferences;
+ (void)flushEverything;
+ (void)persistEverything;
- (BOOL)BOOLForKey:(id)key;
- (BYPreferencesController)init;
- (BYPreferencesController)initWithDomain:(id)domain;
- (id)objectForKey:(id)key includeCache:(BOOL)cache;
- (void)flush;
- (void)persist;
- (void)persistKeys:(id)keys;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectForKey:(id)key onlyFromMemory:(BOOL)memory;
- (void)reset;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key persistImmediately:(BOOL)immediately;
@end

@implementation BYPreferencesController

+ (id)buddyPreferencesInternal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__BYPreferencesController_buddyPreferencesInternal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)randomPreferences
{
  v2 = [self alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithDomain:uUIDString];

  return v5;
}

- (BYPreferencesController)initWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(BYPreferencesController *)self init];
  v6 = v5;
  if (v5)
  {
    [(BYPreferencesController *)v5 setDomain:domainCopy];
  }

  return v6;
}

- (id)objectForKey:(id)key includeCache:(BOOL)cache
{
  cacheCopy = cache;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  if (!cacheCopy)
  {
    goto LABEL_4;
  }

  queue = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BYPreferencesController_objectForKey_includeCache___block_invoke;
  block[3] = &unk_1E7D032E0;
  v15 = &v16;
  block[4] = self;
  v14 = keyCopy;
  dispatch_sync(queue, block);

  v8 = v17[5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
LABEL_4:
    domain = [(BYPreferencesController *)self domain];

    if (domain)
    {
      domain2 = [(BYPreferencesController *)self domain];
      v9 = CFPreferencesCopyValue(keyCopy, domain2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
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

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(BYPreferencesController *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BYPreferencesController_setObject_forKey___block_invoke;
  block[3] = &unk_1E7D03308;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_sync(queue, block);
}

void __44__BYPreferencesController_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)setObject:(id)object forKey:(id)key persistImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  value = object;
  keyCopy = key;
  [(BYPreferencesController *)self setObject:value forKey:keyCopy];
  if (immediatelyCopy)
  {
    domain = [(BYPreferencesController *)self domain];
    CFPreferencesSetValue(keyCopy, value, domain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  }
}

- (void)persistKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(BYPreferencesController *)self objectForKey:v9];
        if (v10)
        {
          [(BYPreferencesController *)self setObject:v10 forKey:v9 persistImmediately:1];
        }
      }

      v6 = [keysCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  queue = [(BYPreferencesController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__BYPreferencesController_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(queue, v7);
}

void __46__BYPreferencesController_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)removeObjectForKey:(id)key onlyFromMemory:(BOOL)memory
{
  key = key;
  [(BYPreferencesController *)self removeObjectForKey:?];
  if (!memory)
  {
    domain = [(BYPreferencesController *)self domain];

    if (domain)
    {
      domain2 = [(BYPreferencesController *)self domain];
      CFPreferencesSetValue(key, 0, domain2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }
}

- (void)reset
{
  queue = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__BYPreferencesController_reset__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __32__BYPreferencesController_reset__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) preferences];
  [v1 removeAllObjects];
}

- (void)persist
{
  queue = [(BYPreferencesController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BYPreferencesController_persist__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(queue, block);
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
  buddyPreferences = [objc_opt_class() buddyPreferences];
  [buddyPreferences persist];

  buddyPreferencesExcludedFromBackup = [objc_opt_class() buddyPreferencesExcludedFromBackup];
  [buddyPreferencesExcludedFromBackup persist];

  buddyPreferencesInternal = [objc_opt_class() buddyPreferencesInternal];
  [buddyPreferencesInternal persist];
}

- (void)flush
{
  domain = [(BYPreferencesController *)self domain];
  v2 = *MEMORY[0x1E695E8B8];
  _CFPreferencesFlushCachesForIdentifier();
}

+ (void)flushEverything
{
  buddyPreferences = [objc_opt_class() buddyPreferences];
  [buddyPreferences flush];

  buddyPreferencesExcludedFromBackup = [objc_opt_class() buddyPreferencesExcludedFromBackup];
  [buddyPreferencesExcludedFromBackup flush];

  buddyPreferencesInternal = [objc_opt_class() buddyPreferencesInternal];
  [buddyPreferencesInternal flush];
}

@end