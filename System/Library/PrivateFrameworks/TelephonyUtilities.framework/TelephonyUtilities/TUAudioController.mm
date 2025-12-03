@interface TUAudioController
- (TUAudioController)init;
- (void)_requestUpdatedValueWithBlock:(id)block object:(id *)object isRequestingPointer:(BOOL *)pointer forceNewRequest:(BOOL)request scheduleTimePointer:(unint64_t *)timePointer notificationString:(id)string notificationUserInfo:(id)info queue:(id)self0;
@end

@implementation TUAudioController

- (TUAudioController)init
{
  v3.receiver = self;
  v3.super_class = TUAudioController;
  result = [(TUAudioController *)&v3 init];
  if (result)
  {
    result->_modifyingStateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_requestUpdatedValueWithBlock:(id)block object:(id *)object isRequestingPointer:(BOOL *)pointer forceNewRequest:(BOOL)request scheduleTimePointer:(unint64_t *)timePointer notificationString:(id)string notificationUserInfo:(id)info queue:(id)self0
{
  requestCopy = request;
  blockCopy = block;
  stringCopy = string;
  infoCopy = info;
  if (!*pointer || requestCopy)
  {
    queueCopy = queue;
    v21 = mach_absolute_time();
    *timePointer = v21;
    *pointer = 1;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke;
    v22[3] = &unk_1E7424D78;
    v22[4] = self;
    timePointerCopy = timePointer;
    v27 = v21;
    v25 = blockCopy;
    objectCopy = object;
    v23 = stringCopy;
    v24 = infoCopy;
    pointerCopy = pointer;
    dispatch_async(queueCopy, v22);
  }
}

void __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _acquireLock];
  if (**(a1 + 64) <= *(a1 + 72))
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_cold_1();
    }

    [*(a1 + 32) _releaseLock];
    v2 = (*(*(a1 + 56) + 16))();
    [*(a1 + 32) _acquireLock];
    if (**(a1 + 64) <= *(a1 + 72))
    {
      v5 = TUDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_cold_2();
      }

      v6 = TUObjectsAreEqualOrNil(v2, **(a1 + 80));
      v7 = TUDefaultLog();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_cold_3();
        }

        [*(a1 + 32) _releaseLock];
        [*(a1 + 32) _acquireLock];
        **(a1 + 88) = 0;
        [*(a1 + 32) _releaseLock];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = **(a1 + 80);
          *buf = 138412546;
          v21 = v9;
          v22 = 2112;
          v23 = v2;
          _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Requested value is different from cached value (cached = %@, current = %@)", buf, 0x16u);
        }

        objc_storeStrong(*(a1 + 80), v2);
        [*(a1 + 32) _releaseLock];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_9;
        v15[3] = &unk_1E7424D50;
        v10 = *(a1 + 40);
        v11 = *(a1 + 32);
        v16 = v10;
        v17 = v11;
        v12 = *(a1 + 48);
        v13 = *(a1 + 88);
        v18 = v12;
        v19 = v13;
        dispatch_async(MEMORY[0x1E69E96A0], v15);
      }
    }

    else
    {
      [*(a1 + 32) _releaseLock];
      v4 = TUDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_cold_4();
      }
    }
  }

  else
  {
    [*(a1 + 32) _releaseLock];
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_cold_5();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __170__TUAudioController_Internal___requestUpdatedValueWithBlock_object_isRequestingPointer_forceNewRequest_scheduleTimePointer_notificationString_notificationUserInfo_queue___block_invoke_9(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Posting changed notification: %@", &v7, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*(a1 + 32) object:*(a1 + 40) userInfo:*(a1 + 48)];

  [*(a1 + 40) _acquireLock];
  **(a1 + 56) = 0;
  result = [*(a1 + 40) _releaseLock];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end