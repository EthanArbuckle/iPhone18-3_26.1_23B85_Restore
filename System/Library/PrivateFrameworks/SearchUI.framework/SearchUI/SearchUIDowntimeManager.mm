@interface SearchUIDowntimeManager
+ (BOOL)screenTimeIsEnabledForContact:(id)contact;
+ (id)familyMemberForContact:(id)contact isMe:(BOOL)me;
+ (id)screenTimeUserIDForContact:(id)contact;
+ (id)sharedManager;
- (SearchUIDowntimeManager)init;
- (id)addObserverForDowntimeStatuses:(id)statuses;
- (int)statusForSTUserID:(id)d forceRecheck:(BOOL)recheck;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setupSink;
- (void)updateWithChildState:(id)state;
@end

@implementation SearchUIDowntimeManager

+ (id)screenTimeUserIDForContact:(id)contact
{
  contactCopy = contact;
  v5 = contactCopy;
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

  if (!contactCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = screenTimeUserIDForContact__screenTimeUserIDForContactCache;
  identifier = [v5 identifier];
  v8 = [v6 objectForKey:identifier];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [self familyMemberForContact:v5 isMe:0];
    if (v10 && [self isChildOrTeenFamilyMember:v10])
    {
      v11 = objc_alloc(MEMORY[0x1E69C9DE0]);
      dsid = [v10 dsid];
      v13 = [v11 initWithDSID:dsid];

      v14 = screenTimeUserIDForContact__screenTimeUserIDForContactCache;
      identifier2 = [v5 identifier];
      [v14 setObject:v13 forKey:identifier2];
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

+ (id)familyMemberForContact:(id)contact isMe:(BOOL)me
{
  meCopy = me;
  v29 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = objc_opt_new();
  v27 = 0;
  v6 = [v5 fetchFamilyCircleWithError:&v27];
  v7 = v27;
  if (v7)
  {
    members = SearchUIGeneralLog();
    if (os_log_type_enabled(members, OS_LOG_TYPE_ERROR))
    {
      [SearchUIDowntimeManager familyMemberForContact:v7 isMe:members];
    }

    v9 = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    members = [v6 members];
    v9 = [members countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v19 = v6;
      v20 = 0;
      v21 = v5;
      v10 = *v24;
      if (contactCopy)
      {
        v11 = 0;
      }

      else
      {
        v11 = meCopy;
      }

      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(members);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          contact = [v13 contact];
          identifier = [contact identifier];
          identifier2 = [contactCopy identifier];
          if ([identifier isEqualToString:identifier2])
          {

LABEL_21:
            v9 = v13;
            goto LABEL_22;
          }

          if (v11)
          {
            isMe = [v13 isMe];

            if (isMe)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v9 = [members countByEnumeratingWithState:&v23 objects:v28 count:16];
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

+ (BOOL)screenTimeIsEnabledForContact:(id)contact
{
  v3 = [self screenTimeUserIDForContact:contact];
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
  family = [v6 Family];
  screenTime = [family ScreenTime];
  childState = [screenTime ChildState];
  dSLPublisher = [childState DSLPublisher];
  v11 = [dSLPublisher subscribeOn:v5];

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

- (int)statusForSTUserID:(id)d forceRecheck:(BOOL)recheck
{
  dCopy = d;
  dsid = [dCopy dsid];
  stringValue = [dsid stringValue];

  if (stringValue)
  {
    downtimeStatuses = [(SearchUIDowntimeManager *)self downtimeStatuses];
    v10 = [downtimeStatuses objectForKey:stringValue];

    if (recheck || !v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __58__SearchUIDowntimeManager_statusForSTUserID_forceRecheck___block_invoke;
      v13[3] = &unk_1E85B26A8;
      v14 = dCopy;
      selfCopy = self;
      v16 = stringValue;
      [SearchUIUtilities dispatchAsyncIfNecessary:v13];
    }

    intValue = [v10 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
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

- (id)addObserverForDowntimeStatuses:(id)statuses
{
  statusesCopy = statuses;
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SearchUIDowntimeManager_addObserverForDowntimeStatuses___block_invoke;
  v9[3] = &unk_1E85B2A78;
  v10 = statusesCopy;
  v6 = statusesCopy;
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

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSNotificationCenter *)self->_notificationCenter removeObserver:?];
  }
}

- (void)updateWithChildState:(id)state
{
  v14[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  downtimeStatuses = [(SearchUIDowntimeManager *)self downtimeStatuses];
  starting = [stateCopy starting];
  if (starting)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(stateCopy, "state")}];
  }

  else
  {
    v7 = &unk_1F55DD430;
  }

  userDSID = [stateCopy userDSID];
  [downtimeStatuses setObject:v7 forKey:userDSID];

  if (starting)
  {
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = @"userDSIDKey";
  userDSID2 = [stateCopy userDSID];
  v13[1] = @"statusKey";
  v14[0] = userDSID2;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(stateCopy, "state")}];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(NSNotificationCenter *)notificationCenter postNotificationName:@"downtimeStatusDidChangeNotification" object:0 userInfo:v12];
}

- (void)dealloc
{
  biomeSink = [(SearchUIDowntimeManager *)self biomeSink];
  [biomeSink cancel];

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