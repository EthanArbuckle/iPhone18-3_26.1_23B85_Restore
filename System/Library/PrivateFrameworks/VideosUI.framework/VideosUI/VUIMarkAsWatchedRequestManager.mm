@interface VUIMarkAsWatchedRequestManager
+ (id)sharedInstance;
- (VUIMarkAsWatchedRequestManager)init;
- (id)_init;
- (void)sendRequestForItemID:(id)a3 itemType:(id)a4 channelID:(id)a5 adamID:(id)a6;
@end

@implementation VUIMarkAsWatchedRequestManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_4 != -1)
  {
    +[VUIMarkAsWatchedRequestManager sharedInstance];
  }

  v3 = sharedInstance___instance_2;

  return v3;
}

void __48__VUIMarkAsWatchedRequestManager_sharedInstance__block_invoke()
{
  v0 = [[VUIMarkAsWatchedRequestManager alloc] _init];
  v1 = sharedInstance___instance_2;
  sharedInstance___instance_2 = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VUIMarkAsWatchedRequestManager;
  v2 = [(VUIMarkAsWatchedRequestManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    ongoingItemIDOperationDictionary = v2->_ongoingItemIDOperationDictionary;
    v2->_ongoingItemIDOperationDictionary = v3;
  }

  return v2;
}

- (VUIMarkAsWatchedRequestManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented" reason:@"-[VUIMarkAsWatchedRequestManager init] not supported userInfo:{use +sharedInstance instead", 0}];
  objc_exception_throw(v2);
}

- (void)sendRequestForItemID:(id)a3 itemType:(id)a4 channelID:(id)a5 adamID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_ongoingItemIDOperationDictionary objectForKey:v10];
  v15 = v14;
  if (!v14 || [v14 isCancelled])
  {
    v16 = [objc_alloc(MEMORY[0x1E69E1548]) initWithItemID:v10];
    if (v16)
    {
      objc_initWeak(&location, v16);
      objc_initWeak(&from, self);
      v17 = +[VUIStreamingBookmarkCache sharedInstance];
      [v17 removeBookmarkForCanonicalID:v10];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke;
      block[3] = &unk_1E872D768;
      v18 = v13;
      v31 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v19 = [MEMORY[0x1E69705D0] vui_mediaItemForStoreIdentifierString:v18];
      v20 = v19;
      if (v19)
      {
        [v19 setValue:&unk_1F5E5CF00 forProperty:*MEMORY[0x1E696F950] withCompletionBlock:0];
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_28;
      v26 = &unk_1E8730290;
      objc_copyWeak(&v28, &location);
      objc_copyWeak(&v29, &from);
      v21 = v10;
      v27 = v21;
      [v16 setCompletionBlock:&v23];
      [(NSMutableDictionary *)self->_ongoingItemIDOperationDictionary setValue:v16 forKey:v21, v23, v24, v25, v26];
      v22 = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
      [v22 addOperation:v16];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[VUIMediaLibraryManager defaultManager];
    v3 = [v2 sidebandMediaLibrary];
    v7 = [v3 videoForAdamID:*(a1 + 32) useMainThreadContext:1];

    if (v7)
    {
      v4 = [MEMORY[0x1E695DF00] date];
      [v7 setBookmarkTime:&unk_1F5E5CF00];
      [v7 setBookmarkTimeStamp:v4];
      [v7 setMainContentRelativeBookmarkTime:&unk_1F5E5CF00];
      [v7 setMainContentRelativeBookmarkTimeStamp:v4];
      v5 = +[VUIMediaLibraryManager defaultManager];
      v6 = [v5 sidebandMediaLibrary];
      [v6 saveChangesToManagedObjects];
    }
  }
}

void __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_28(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_2;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained ongoingItemIDOperationDictionary];
  [v3 removeObjectForKey:a1[4]];

  v4 = [a1[5] error];

  if (!v4)
  {
    v5 = +[VUIFeaturesConfiguration sharedInstance];
    v6 = [v5 upNextConfig];
    v7 = [v6 upNextCallDelayAfterMarkAsWatched];

    if (v7 < 1)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"VUIPlayHistoryUpdatedNotification" object:a1[4]];

      v10 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v10 vui_postNotificationName:@"com.apple.VideosUI.PlayHistoryUpdatedNotification" object:a1[4] userInfo:0];
    }

    else
    {
      v8 = dispatch_time(0, 1000000 * v7);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_3;
      block[3] = &unk_1E872D768;
      v12 = a1[4];
      dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __81__VUIMarkAsWatchedRequestManager_sendRequestForItemID_itemType_channelID_adamID___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIPlayHistoryUpdatedNotification" object:*(a1 + 32)];

  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 vui_postNotificationName:@"com.apple.VideosUI.PlayHistoryUpdatedNotification" object:*(a1 + 32) userInfo:0];
}

@end