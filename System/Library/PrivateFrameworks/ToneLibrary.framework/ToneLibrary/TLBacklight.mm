@interface TLBacklight
+ (TLBacklight)sharedBacklight;
- (TLBacklight)init;
- (int64_t)backlightStatus;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_notifyObservers:(id)observers ofUpdatedBacklightStatus:(int64_t)status;
- (void)_performBlockOnAccessQueue:(id)queue;
- (void)_setBacklightStatus:(int64_t)status;
- (void)_setObservingBacklight:(BOOL)backlight;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation TLBacklight

+ (TLBacklight)sharedBacklight
{
  if (sharedBacklight__TLBacklightSharedInstanceOnceToken != -1)
  {
    +[TLBacklight sharedBacklight];
  }

  v3 = sharedBacklight__TLBacklightSharedInstance;

  return v3;
}

uint64_t __30__TLBacklight_sharedBacklight__block_invoke()
{
  sharedBacklight__TLBacklightSharedInstance = objc_alloc_init(TLBacklight);

  return MEMORY[0x1EEE66BB8]();
}

- (TLBacklight)init
{
  v15.receiver = self;
  v15.super_class = TLBacklight;
  v2 = [(TLBacklight *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    v8 = [v4 stringWithFormat:@"%@.%@-%@", bundleIdentifier, v7, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v8;

    v10 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v10;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __19__TLBacklight_init__block_invoke;
    v13[3] = &unk_1E85789A0;
    v14 = v2;
    [(TLBacklight *)v14 _performBlockOnAccessQueue:v13];
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  dispatch_sync(v4, &__block_literal_global_8_1);
  v5.receiver = self;
  v5.super_class = TLBacklight;
  [(TLBacklight *)&v5 dealloc];
}

- (int64_t)backlightStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__TLBacklight_backlightStatus__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLBacklight *)self _performBlockOnAccessQueue:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setBacklightStatus:(int64_t)status
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__TLBacklight__setBacklightStatus___block_invoke;
  v6[3] = &unk_1E8579CA8;
  v6[5] = &v7;
  v6[6] = status;
  v6[4] = self;
  [(TLBacklight *)self _performBlockOnAccessQueue:v6];
  v5 = v8[5];
  if (v5)
  {
    [(TLBacklight *)self _notifyObservers:v5 ofUpdatedBacklightStatus:status];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __35__TLBacklight__setBacklightStatus___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(result + 48);
  if (*(v2 + 40) != v3)
  {
    v4 = result;
    *(v2 + 40) = v3;
    v5 = [*(*(result + 32) + 24) allObjects];
    v6 = *(*(v4 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)_setObservingBacklight:(BOOL)backlight
{
  backlightCopy = backlight;
  [(TLBacklight *)self _assertRunningOnAccessQueue];
  if (self->_isObservingBacklight != backlightCopy)
  {
    self->_isObservingBacklight = backlightCopy;
    if (!backlightCopy)
    {
      self->_backlightStatus = -1;
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__TLBacklight_addObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLBacklight *)self _performBlockOnAccessQueue:v6];
}

uint64_t __27__TLBacklight_addObserver___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && ([*(*(a1 + 40) + 24) containsObject:?] & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 24);
    if (!v2)
    {
      v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v4 = *(a1 + 40);
      v5 = *(v4 + 24);
      *(v4 + 24) = v3;

      v2 = *(*(a1 + 40) + 24);
    }

    [v2 addObject:*(a1 + 32)];
  }

  v6 = *(a1 + 40);

  return [v6 _setObservingBacklight:1];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__TLBacklight_removeObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLBacklight *)self _performBlockOnAccessQueue:v6];
}

uint64_t __30__TLBacklight_removeObserver___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && [*(*(a1 + 40) + 24) containsObject:?])
  {
    [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  }

  v2 = *(a1 + 40);
  v3 = [v2[3] count] != 0;

  return [v2 _setObservingBacklight:v3];
}

- (void)_notifyObservers:(id)observers ofUpdatedBacklightStatus:(int64_t)status
{
  v19 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  [(TLBacklight *)self _assertNotRunningOnAccessQueue];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = observersCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 backlightStatusDidChange:{status, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockOnAccessQueue:(id)queue
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, queue);
  }
}

- (void)_assertRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLBacklight.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLBacklight _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = lastPathComponent;
          v18 = 2049;
          v19 = 208;
          v20 = 2113;
          v21 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)_assertNotRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_not_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (!strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLBacklight.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLBacklight _assertNotRunningOnAccessQueue]";
          v16 = 2113;
          v17 = lastPathComponent;
          v18 = 2049;
          v19 = 216;
          v20 = 2113;
          v21 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

@end