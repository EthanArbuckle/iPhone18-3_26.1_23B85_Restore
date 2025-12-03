@interface _PASDeviceState
+ (BOOL)isClassCLocked;
+ (BOOL)isDeviceUnlocked;
+ (BOOL)isUnlocked;
+ (id)registerForLockStateChangeForDeviceNotifications:(id)notifications;
+ (id)registerForLockStateChangeNotifications:(id)notifications;
+ (void)registerForAKSEventsNotifications:(id)notifications;
+ (void)runBlockWhenDeviceIsClassCUnlockedWithQoS:(unsigned int)s block:(id)block;
+ (void)unregisterForAKSEventsNotifications:(void *)notifications;
+ (void)unregisterForLockStateChangeNotifications:(id)notifications;
+ (void)unregisterForLockStateChangeforDeviceNotifications:(id)notifications;
@end

@implementation _PASDeviceState

+ (BOOL)isClassCLocked
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&cb);
  v3 = (*v2)(self, a2);
  if (v3)
  {
    v32 = v3;
    pthread_mutex_lock(&cUnlockMutex);
    v4 = cUnlockBlocks;
    v5 = cUnlockBlocks;
    cUnlockBlocks = 0;

    pthread_mutex_unlock(&cUnlockMutex);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_get_global_queue(33, 0);
    v37 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.user_interactive", v6, v7);

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_get_global_queue(25, 0);
    v36 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.user_initiated", v8, v9);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_get_global_queue(21, 0);
    v12 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.default", v10, v11);

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_get_global_queue(17, 0);
    v35 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.utility", v13, v14);

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_get_global_queue(9, 0);
    v34 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.background", v15, v16);

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_get_global_queue(0, 0);
    v33 = dispatch_queue_create_with_target_V2("com.apple.proactive.unlockblocks.unspecified", v17, v18);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = v20;
    v22 = *v41;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * i);
        v25 = v12;
        v26 = *(v24 + 16);
        if (v26 > 20)
        {
          switch(v26)
          {
            case 21:
              goto LABEL_22;
            case 25:
              v27 = v36;
              goto LABEL_21;
            case 33:
              v27 = v37;
              goto LABEL_21;
          }
        }

        else if (v26)
        {
          if (v26 == 9)
          {
            v27 = v34;
            goto LABEL_21;
          }

          if (v26 == 17)
          {
            v27 = v35;
LABEL_21:
            v29 = v27;

            v25 = v29;
            goto LABEL_22;
          }
        }

        else
        {
          v28 = v33;

          v25 = v28;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Using default QOS for unlock block", buf, 2u);
        }

LABEL_22:
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __runUnlockBlocks_block_invoke;
        block[3] = &unk_1E77F2DA0;
        block[4] = v24;
        dispatch_async(v25, block);
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (!v21)
      {
LABEL_24:

        LOBYTE(v3) = v32;
        break;
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v3 ^ 1;
}

+ (BOOL)isDeviceUnlocked
{
  v2 = atomic_load(&cb);
  v3 = (*(v2 + 32))(self, a2);
  return !v3 || v3 == 3;
}

+ (void)unregisterForAKSEventsNotifications:(void *)notifications
{
  if (notifications)
  {
    v3 = atomic_load(&cb);
    (*(v3 + 88))(notifications);
  }
}

+ (void)registerForAKSEventsNotifications:(id)notifications
{
  v3 = atomic_load(&cb);
  v4 = *(v3 + 80);
  v5 = getAKSEventsNotificationsQueue_onceToken;
  notificationsCopy = notifications;
  if (v5 != -1)
  {
    dispatch_once(&getAKSEventsNotificationsQueue_onceToken, &__block_literal_global_60);
  }

  v7 = v4(getAKSEventsNotificationsQueue_queue, notificationsCopy);

  return v7;
}

+ (void)unregisterForLockStateChangeforDeviceNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = atomic_load(&cb);
    (*(v3 + 72))(notifications);
  }
}

+ (id)registerForLockStateChangeForDeviceNotifications:(id)notifications
{
  v3 = atomic_load(&cb);
  v4 = *(v3 + 64);
  notificationsCopy = notifications;
  v6 = getLockStateChangedQueue();
  v7 = v4(v6, notificationsCopy);

  return v7;
}

+ (void)unregisterForLockStateChangeNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = atomic_load(&cb);
    (*(v3 + 56))(notifications);
  }
}

+ (id)registerForLockStateChangeNotifications:(id)notifications
{
  v3 = atomic_load(&cb);
  v4 = *(v3 + 48);
  notificationsCopy = notifications;
  v6 = getLockStateChangedQueue();
  v7 = v4(v6, notificationsCopy);

  return v7;
}

+ (BOOL)isUnlocked
{
  v2 = atomic_load(&cb);
  v3 = (*(v2 + 24))(self, a2);
  return !v3 || v3 == 3;
}

+ (void)runBlockWhenDeviceIsClassCUnlockedWithQoS:(unsigned int)s block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v16 = blockCopy;
    v6 = atomic_load(&cb);
    v7 = (*(v6 + 8))();
    if (v7)
    {
      v7 = +[_PASDeviceState isClassCLocked];
    }

    v8 = atomic_load(&cb);
    if ((*(v8 + 8))(v7) && !+[_PASDeviceState isClassCLocked])
    {
      v15 = objc_autoreleasePoolPush();
      v16[2]();
      objc_autoreleasePoolPop(v15);
    }

    else
    {
      pthread_mutex_lock(&cUnlockMutex);
      v9 = atomic_load(&cb);
      (*(v9 + 96))(&__block_literal_global_3079);
      if (!cUnlockBlocks)
      {
        v10 = objc_opt_new();
        v11 = cUnlockBlocks;
        cUnlockBlocks = v10;
      }

      v12 = objc_opt_new();
      v13 = MEMORY[0x1AC566DD0](v16);
      v14 = *(v12 + 8);
      *(v12 + 8) = v13;

      *(v12 + 16) = s;
      [cUnlockBlocks addObject:v12];
      pthread_mutex_unlock(&cUnlockMutex);
      +[_PASDeviceState isClassCLocked];
    }

    blockCopy = v16;
  }
}

@end