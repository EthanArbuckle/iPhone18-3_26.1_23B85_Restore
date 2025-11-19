@interface SearchUIDowntimeManager
+ (BOOL)screenTimeIsEnabledForContact:(id)a3;
+ (id)familyMemberForContact:(id)a3 isMe:(BOOL)a4;
+ (id)screenTimeUserIDForContact:(id)a3;
+ (id)sharedManager;
- (SearchUIDowntimeManager)init;
- (id)addObserverForDowntimeStatuses:(id)a3;
- (int)statusForSTUserID:(id)a3 forceRecheck:(BOOL)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setupSink;
- (void)updateWithChildState:(id)a3;
@end

@implementation SearchUIDowntimeManager

+ (id)screenTimeUserIDForContact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (screenTimeUserIDForContact__onceToken != -1)
  {
    +[SearchUIDowntimeManager screenTimeUserIDForContact:];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = screenTimeUserIDForContact__screenTimeUserIDForContactCache;
  v7 = [v5 identifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [a1 familyMemberForContact:v5 isMe:0];
    if (v10 && [a1 isChildOrTeenFamilyMember:v10])
    {
      v11 = objc_alloc(MEMORY[0x1E69C9DE0]);
      v12 = [v10 dsid];
      v13 = [v11 initWithDSID:v12];

      v14 = screenTimeUserIDForContact__screenTimeUserIDForContactCache;
      v15 = [v5 identifier];
      [v14 setObject:v13 forKey:v15];
    }

    else
    {
      v13 = 0;
    }

    v9 = v13;
  }

LABEL_13:

  return v9;
}

uint64_t __54__SearchUIDowntimeManager_screenTimeUserIDForContact___block_invoke()
{
  screenTimeUserIDForContact__screenTimeUserIDForContactCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)familyMemberForContact:(id)a3 isMe:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = objc_opt_new();
  v27 = 0;
  v6 = [v5 fetchFamilyCircleWithError:&v27];
  v7 = v27;
  if (v7)
  {
    v8 = SearchUIGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SearchUIDowntimeManager familyMemberForContact:v7 isMe:v8];
    }

    v9 = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v6 members];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v19 = v6;
      v20 = 0;
      v21 = v5;
      v10 = *v24;
      if (v22)
      {
        v11 = 0;
      }

      else
      {
        v11 = v4;
      }

      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 contact];
          v15 = [v14 identifier];
          v16 = [v22 identifier];
          if ([v15 isEqualToString:v16])
          {

LABEL_21:
            v9 = v13;
            goto LABEL_22;
          }

          if (v11)
          {
            v17 = [v13 isMe];

            if (v17)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

LABEL_22:
      v7 = v20;
      v5 = v21;
      v6 = v19;
    }
  }

  return v9;
}

+ (BOOL)screenTimeIsEnabledForContact:(id)a3
{
  v3 = [a1 screenTimeUserIDForContact:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    v10 = 0;
    v5 = [v4 currentConfigurationForUser:v3 error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = SearchUIGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIDowntimeManager *)v6 screenTimeIsEnabledForContact:v7];
      }
    }

    v8 = [v5 screenTimeState] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SearchUIDowntimeManager sharedManager];
  }

  v3 = sharedManager_sharedObserver;

  return v3;
}

uint64_t __40__SearchUIDowntimeManager_sharedManager__block_invoke()
{
  sharedManager_sharedObserver = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIDowntimeManager)init
{
  v8.receiver = self;
  v8.super_class = SearchUIDowntimeManager;
  v2 = [(SearchUIDowntimeManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    downtimeStatuses = v2->_downtimeStatuses;
    v2->_downtimeStatuses = v3;

    v5 = objc_opt_new();
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v5;

    [(SearchUIDowntimeManager *)v2 setupSink];
  }

  return v2;
}

- (void)setupSink
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.SearchUI.SearchUIScreenTimeUtilities.queue", v3);

  v5 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:@"com.apple.SearchUI.SearchUIScreenTimeUtilities.scheduler" targetQueue:v4 waking:0];
  objc_initWeak(&location, self);
  v6 = BiomeLibrary();
  v7 = [v6 Family];
  v8 = [v7 ScreenTime];
  v9 = [v8 ChildState];
  v10 = [v9 DSLPublisher];
  v11 = [v10 subscribeOn:v5];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __36__SearchUIDowntimeManager_setupSink__block_invoke_2;
  v16 = &unk_1E85B2A50;
  objc_copyWeak(&v17, &location);
  v12 = [v11 sinkWithCompletion:&__block_literal_global_46 receiveInput:&v13];
  [(SearchUIDowntimeManager *)self setBiomeSink:v12, v13, v14, v15, v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __36__SearchUIDowntimeManager_setupSink__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 eventBody];

  [WeakRetained updateWithChildState:v4];
}

- (int)statusForSTUserID:(id)a3 forceRecheck:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 dsid];
  v8 = [v7 stringValue];

  if (v8)
  {
    v9 = [(SearchUIDowntimeManager *)self downtimeStatuses];
    v10 = [v9 objectForKey:v8];

    if (a4 || !v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __58__SearchUIDowntimeManager_statusForSTUserID_forceRecheck___block_invoke;
      v13[3] = &unk_1E85B26A8;
      v14 = v6;
      v15 = self;
      v16 = v8;
      [SearchUIUtilities dispatchAsyncIfNecessary:v13];
    }

    v11 = [v10 intValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __58__SearchUIDowntimeManager_statusForSTUserID_forceRecheck___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [v2 isDowntimeEnabledForUserID:*(a1 + 32)];

  v4 = [*(a1 + 40) downtimeStatuses];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [v4 setObject:v5 forKey:*(a1 + 48)];

  v6 = [*(a1 + 40) notificationCenter];
  v7 = *(a1 + 48);
  v10[0] = @"userDSIDKey";
  v10[1] = @"statusKey";
  v11[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v6 postNotificationName:@"downtimeStatusDidChangeNotification" object:0 userInfo:v9];
}

- (id)addObserverForDowntimeStatuses:(id)a3
{
  v4 = a3;
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SearchUIDowntimeManager_addObserverForDowntimeStatuses___block_invoke;
  v9[3] = &unk_1E85B2A78;
  v10 = v4;
  v6 = v4;
  v7 = [(NSNotificationCenter *)notificationCenter addObserverForName:@"downtimeStatusDidChangeNotification" object:0 queue:0 usingBlock:v9];

  return v7;
}

void __58__SearchUIDowntimeManager_addObserverForDowntimeStatuses___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 userInfo];
  v4 = [v7 objectForKeyedSubscript:@"userDSIDKey"];
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"statusKey"];
  (*(v2 + 16))(v2, v4, [v6 intValue]);
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSNotificationCenter *)self->_notificationCenter removeObserver:?];
  }
}

- (void)updateWithChildState:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUIDowntimeManager *)self downtimeStatuses];
  v6 = [v4 starting];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "state")}];
  }

  else
  {
    v7 = &unk_1F55DD430;
  }

  v8 = [v4 userDSID];
  [v5 setObject:v7 forKey:v8];

  if (v6)
  {
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = @"userDSIDKey";
  v10 = [v4 userDSID];
  v13[1] = @"statusKey";
  v14[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "state")}];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(NSNotificationCenter *)notificationCenter postNotificationName:@"downtimeStatusDidChangeNotification" object:0 userInfo:v12];
}

- (void)dealloc
{
  v3 = [(SearchUIDowntimeManager *)self biomeSink];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = SearchUIDowntimeManager;
  [(SearchUIDowntimeManager *)&v4 dealloc];
}

+ (void)familyMemberForContact:(uint64_t)a1 isMe:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPersonHeaderViewController: fetched family circle with error: %@", &v2, 0xCu);
}

+ (void)screenTimeIsEnabledForContact:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPersonHeaderViewController: grabbed config with error: %@", &v2, 0xCu);
}

@end