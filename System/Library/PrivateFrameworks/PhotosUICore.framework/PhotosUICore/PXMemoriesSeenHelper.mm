@interface PXMemoriesSeenHelper
+ (id)defaultHelper;
- (PXMemoriesSeenHelper)init;
- (void)_clearPendingNotificationForMemory:(id)memory;
- (void)clearAnyPendingNotificationsFromMemories:(id)memories;
- (void)clearAnyPendingStateFromMemories:(id)memories;
@end

@implementation PXMemoriesSeenHelper

- (void)_clearPendingNotificationForMemory:(id)memory
{
  v23[2] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  photoLibrary = [memoryCopy photoLibrary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__PXMemoriesSeenHelper__clearPendingNotificationForMemory___block_invoke;
  v18[3] = &unk_1E774C648;
  v5 = memoryCopy;
  v19 = v5;
  v17 = 0;
  v6 = [photoLibrary performChangesAndWait:v18 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = MEMORY[0x1E6991F28];
    v9 = *MEMORY[0x1E6991E08];
    v23[0] = v5;
    v10 = *MEMORY[0x1E6991E20];
    v22[0] = v9;
    v22[1] = v10;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v23[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v8 sendEvent:@"com.apple.photos.CPAnalytics.memoryNotificationSeen" withPayload:v13];
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Error while updating memory notification state: %@", buf, 0xCu);
    }
  }

  assetsdClient = [photoLibrary assetsdClient];
  notificationClient = [assetsdClient notificationClient];
  uuid = [v5 uuid];
  [notificationClient asyncNotifyInterestingMemoryNotificationViewedForColletionID:uuid];
}

void __59__PXMemoriesSeenHelper__clearPendingNotificationForMemory___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  [v1 setNotificationState:2];
}

- (void)clearAnyPendingStateFromMemories:(id)memories
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memoriesCopy = memories;
  v4 = [memoriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  photoLibrary = memoriesCopy;
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(memoriesCopy);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 pendingState] == 1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [memoriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        photoLibrary = memoriesCopy;
        goto LABEL_12;
      }
    }

    photoLibrary = [v9 photoLibrary];

    if (!photoLibrary)
    {
      goto LABEL_13;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PXMemoriesSeenHelper_clearAnyPendingStateFromMemories___block_invoke;
    v10[3] = &unk_1E774C648;
    v11 = memoriesCopy;
    [photoLibrary performChanges:v10 completionHandler:&__block_literal_global_192_140075];
  }

LABEL_12:

LABEL_13:
}

void __57__PXMemoriesSeenHelper_clearAnyPendingStateFromMemories___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 pendingState] == 1)
        {
          v7 = [MEMORY[0x1E6978900] changeRequestForMemory:v6];
          [v7 setPendingState:0];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void __57__PXMemoriesSeenHelper_clearAnyPendingStateFromMemories___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Error while marking memories as pending: %@", &v6, 0xCu);
    }
  }
}

- (void)clearAnyPendingNotificationsFromMemories:(id)memories
{
  v17 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [memoriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(memoriesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        workQueue = self->_workQueue;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __65__PXMemoriesSeenHelper_clearAnyPendingNotificationsFromMemories___block_invoke;
        v11[3] = &unk_1E774C620;
        v11[4] = v9;
        v11[5] = self;
        dispatch_async(workQueue, v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [memoriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

uint64_t __65__PXMemoriesSeenHelper_clearAnyPendingNotificationsFromMemories___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) notificationState];
  if (result == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _clearPendingNotificationForMemory:v4];
  }

  return result;
}

- (PXMemoriesSeenHelper)init
{
  v8.receiver = self;
  v8.super_class = PXMemoriesSeenHelper;
  v2 = [(PXMemoriesSeenHelper *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.photos.MemoriesSeenHelper", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

+ (id)defaultHelper
{
  if (defaultHelper_onceToken != -1)
  {
    dispatch_once(&defaultHelper_onceToken, &__block_literal_global_140084);
  }

  v3 = defaultHelper_defaultHelper;

  return v3;
}

void __37__PXMemoriesSeenHelper_defaultHelper__block_invoke()
{
  v0 = objc_alloc_init(PXMemoriesSeenHelper);
  v1 = defaultHelper_defaultHelper;
  defaultHelper_defaultHelper = v0;
}

@end