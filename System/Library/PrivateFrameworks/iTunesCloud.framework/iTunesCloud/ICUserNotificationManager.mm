@interface ICUserNotificationManager
+ (ICUserNotificationManager)sharedManager;
- (ICUserNotificationManager)init;
- (void)_handleCallbackForUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags;
- (void)displayUserNotification:(__CFUserNotification *)notification withCompletionHandler:(id)handler;
@end

@implementation ICUserNotificationManager

- (void)_handleCallbackForUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__ICUserNotificationManager__handleCallbackForUserNotification_responseFlags___block_invoke;
  v5[3] = &unk_1E7BF72B0;
  v5[4] = self;
  v5[5] = notification;
  v5[6] = a2;
  v5[7] = flags;
  dispatch_async(accessQueue, v5);
}

void __78__ICUserNotificationManager__handleCallbackForUserNotification_responseFlags___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  if (!v2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"ICUserNotificationManager.m" lineNumber:85 description:{@"no dialog info for user notification %@", a1[5]}];
  }

  [*(a1[4] + 8) removeObjectForKey:a1[5]];
  [v2 clearRunLoop];
  v3 = *(a1[4] + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ICUserNotificationManager__handleCallbackForUserNotification_responseFlags___block_invoke_2;
  block[3] = &unk_1E7BF9890;
  v4 = a1[7];
  v8 = v2;
  v9 = v4;
  v5 = v2;
  dispatch_async(v3, block);
}

void __78__ICUserNotificationManager__handleCallbackForUserNotification_responseFlags___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)displayUserNotification:(__CFUserNotification *)notification withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ICUserNotificationManager_displayUserNotification_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7288;
  v10 = handlerCopy;
  notificationCopy = notification;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(accessQueue, block);
}

void __75__ICUserNotificationManager_displayUserNotification_withCompletionHandler___block_invoke(uint64_t a1)
{
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, *(a1 + 48), _UserNotificationCallback, 0);
  if (RunLoopSource)
  {
    v3 = RunLoopSource;
    v7 = objc_alloc_init(ICUserNotificationContext);
    [(ICUserNotificationContext *)v7 setRunLoopSourceRef:v3];
    [(ICUserNotificationContext *)v7 setCompletionHandler:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setObject:v7 forKey:*(a1 + 48)];
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v3, *MEMORY[0x1E695E8D0]);
  }

  else
  {
    v5 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__ICUserNotificationManager_displayUserNotification_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF7260;
    *v8 = *(a1 + 40);
    v6 = v8[0];
    v10 = *v8;
    dispatch_async(v5, block);
  }
}

void __75__ICUserNotificationManager_displayUserNotification_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 40), 3600.0, &responseFlags);
  v3 = *(a1 + 32);
  v4 = responseFlags;
  if (v2)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
    (*(v3 + 16))(v3, v4, v5);
  }

  else
  {
    (*(v3 + 16))(v3, responseFlags, 0);
  }
}

- (ICUserNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = ICUserNotificationManager;
  v2 = [(ICUserNotificationManager *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:2];
    contextForUserNotification = v2->_contextForUserNotification;
    v2->_contextForUserNotification = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICUserNotificationManager.access", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICUserNotificationManager.notification", MEMORY[0x1E69E96A8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;
  }

  return v2;
}

+ (ICUserNotificationManager)sharedManager
{
  if (sharedManager_sOnceToken_28302 != -1)
  {
    dispatch_once(&sharedManager_sOnceToken_28302, &__block_literal_global_28303);
  }

  v3 = sharedManager_sSharedManager_28304;

  return v3;
}

uint64_t __42__ICUserNotificationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ICUserNotificationManager);
  v1 = sharedManager_sSharedManager_28304;
  sharedManager_sSharedManager_28304 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end