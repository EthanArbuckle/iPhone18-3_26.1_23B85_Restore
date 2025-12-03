@interface TPSSecureArchivingUtilities
+ (id)syncQueue;
+ (id)unarchivedObjectOfClass:(Class)class forKey:(id)key userDefaults:(id)defaults;
+ (id)unarchivedObjectOfClasses:(id)classes forKey:(id)key;
+ (id)unarchivedObjectOfClasses:(id)classes forKey:(id)key userDefaults:(id)defaults;
+ (void)archivedDataWithRootObject:(id)object forKey:(id)key;
+ (void)archivedDataWithRootObject:(id)object forKey:(id)key userDefaults:(id)defaults;
@end

@implementation TPSSecureArchivingUtilities

+ (id)syncQueue
{
  if (syncQueue_onceToken != -1)
  {
    +[TPSSecureArchivingUtilities syncQueue];
  }

  v3 = syncQueue_syncQueue;

  return v3;
}

void __40__TPSSecureArchivingUtilities_syncQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create(0, v2);
  v1 = syncQueue_syncQueue;
  syncQueue_syncQueue = v0;
}

+ (id)unarchivedObjectOfClass:(Class)class forKey:(id)key userDefaults:(id)defaults
{
  v8 = MEMORY[0x1E695DFD8];
  defaultsCopy = defaults;
  keyCopy = key;
  v11 = [v8 setWithObject:class];
  v12 = [self unarchivedObjectOfClasses:v11 forKey:keyCopy userDefaults:defaultsCopy];

  return v12;
}

+ (id)unarchivedObjectOfClasses:(id)classes forKey:(id)key
{
  keyCopy = key;
  classesCopy = classes;
  v7 = [objc_opt_class() unarchivedObjectOfClasses:classesCopy forKey:keyCopy userDefaults:0];

  return v7;
}

+ (id)unarchivedObjectOfClasses:(id)classes forKey:(id)key userDefaults:(id)defaults
{
  classesCopy = classes;
  keyCopy = key;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__4;
  v21[4] = __Block_byref_object_dispose__4;
  defaultsCopy = defaults;
  v22 = defaultsCopy;
  syncQueue = [self syncQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__TPSSecureArchivingUtilities_unarchivedObjectOfClasses_forKey_userDefaults___block_invoke;
  v16[3] = &unk_1E81027B0;
  v19 = v21;
  v20 = &v23;
  v17 = keyCopy;
  v18 = classesCopy;
  v12 = classesCopy;
  v13 = keyCopy;
  dispatch_sync(syncQueue, v16);

  v14 = v24[5];
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __77__TPSSecureArchivingUtilities_unarchivedObjectOfClasses_forKey_userDefaults___block_invoke(uint64_t *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1[6] + 8) + 40);
  }

  v6 = [v2 objectForKey:a1[4]];
  if (v6)
  {
    v7 = a1[5];
    v15 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v6 error:&v15];
    v9 = v15;
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    if (v9)
    {
      v12 = +[TPSLogger data];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __77__TPSSecureArchivingUtilities_unarchivedObjectOfClasses_forKey_userDefaults___block_invoke_cold_2(a1 + 4);
      }

      v13 = *(a1[7] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }
  }

  else
  {
    v9 = 0;
  }
}

+ (void)archivedDataWithRootObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  [objc_opt_class() archivedDataWithRootObject:objectCopy forKey:keyCopy userDefaults:0];
}

+ (void)archivedDataWithRootObject:(id)object forKey:(id)key userDefaults:(id)defaults
{
  objectCopy = object;
  keyCopy = key;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__4;
  v18[4] = __Block_byref_object_dispose__4;
  defaultsCopy = defaults;
  v19 = defaultsCopy;
  syncQueue = [self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__TPSSecureArchivingUtilities_archivedDataWithRootObject_forKey_userDefaults___block_invoke;
  block[3] = &unk_1E8101EE0;
  v16 = keyCopy;
  v17 = v18;
  v15 = objectCopy;
  v12 = keyCopy;
  v13 = objectCopy;
  dispatch_sync(syncQueue, block);

  _Block_object_dispose(v18, 8);
}

uint64_t __78__TPSSecureArchivingUtilities_archivedDataWithRootObject_forKey_userDefaults___block_invoke(void *a1)
{
  if (!*(*(a1[6] + 8) + 40))
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = a1[4];
  if (v5)
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
    v7 = v11;
    v8 = v7;
    if (v6)
    {
      [*(*(a1[6] + 8) + 40) setObject:v6 forKey:a1[5]];
    }

    else if (v7)
    {
      v9 = +[TPSLogger data];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __78__TPSSecureArchivingUtilities_archivedDataWithRootObject_forKey_userDefaults___block_invoke_cold_1(a1);
      }
    }
  }

  else
  {
    [*(*(a1[6] + 8) + 40) removeObjectForKey:a1[5]];
  }

  return [*(*(a1[6] + 8) + 40) synchronize];
}

void __77__TPSSecureArchivingUtilities_unarchivedObjectOfClasses_forKey_userDefaults___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1C00A7000, v2, v3, "Error secureUnarchiving key %@, exception: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __77__TPSSecureArchivingUtilities_unarchivedObjectOfClasses_forKey_userDefaults___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1C00A7000, v2, v3, "Error secureUnarchiving key %@, error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __78__TPSSecureArchivingUtilities_archivedDataWithRootObject_forKey_userDefaults___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1C00A7000, v2, v3, "Error secureArchiving key %@, error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end