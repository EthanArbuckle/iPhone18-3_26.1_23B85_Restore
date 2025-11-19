@interface SBExampleUserNotificationCenter
+ (id)sharedInstance;
- (id)_existingNotificationRequestForIdentifier:(id)a3;
- (id)_newNotificationRequest:(id)a3 threadIdentifier:(id)a4;
- (id)_userNotificationCenter;
- (void)_postNotificationWithID:(id)a3 threadIdentifier:(id)a4;
- (void)publish:(unint64_t)a3 numberOfUniqueThreads:(unint64_t)a4 completion:(id)a5;
- (void)publishWithNumberOfUniqueThreads:(unint64_t)a3;
- (void)removeAllNotifications;
- (void)update;
@end

@implementation SBExampleUserNotificationCenter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SBExampleUserNotificationCenter sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

void __49__SBExampleUserNotificationCenter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBExampleUserNotificationCenter);
  v1 = sharedInstance___sharedInstance_1;
  sharedInstance___sharedInstance_1 = v0;
}

- (void)publishWithNumberOfUniqueThreads:(unint64_t)a3
{
  ++__notificationRequestCount;
  if (a3)
  {
    v4 = __notificationThreadCount++;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"thread-%ld", v4 % a3];
  }

  else
  {
    v6 = 0;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", __notificationRequestCount];
  [(SBExampleUserNotificationCenter *)self _postNotificationWithID:v5 threadIdentifier:v6];
}

- (void)publish:(unint64_t)a3 numberOfUniqueThreads:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v9 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke;
    v23[3] = &unk_2783AF3E0;
    v23[4] = v24;
    [v9 getDeliveredNotificationsWithCompletionHandler:v23];

    v10 = a3;
    do
    {
      [(SBExampleUserNotificationCenter *)self publishWithNumberOfUniqueThreads:a4];
      --v10;
    }

    while (v10);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    do
    {
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke_2;
      v14[3] = &unk_2783AF408;
      v17 = v24;
      v18 = a3;
      v16 = &v19;
      v13 = v11;
      v15 = v13;
      [v12 getDeliveredNotificationsWithCompletionHandler:v14];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    }

    while ((v20[3] & 1) == 0);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v24, 8);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

uint64_t __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke_2(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = [a2 count] == *(*(a1[6] + 8) + 24) + a1[7];
  v3 = a1[4];

  dispatch_group_leave(v3);
}

- (void)update
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", __notificationRequestCount];
  [(SBExampleUserNotificationCenter *)self _postNotificationWithID:v3 threadIdentifier:0];
}

- (void)removeAllNotifications
{
  v3 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
  [v3 removeAllPendingNotificationRequests];

  v4 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
  [v4 removeAllDeliveredNotifications];
}

- (void)_postNotificationWithID:(id)a3 threadIdentifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(SBExampleUserNotificationCenter *)self _existingNotificationRequestForIdentifier:v18];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 content];
    v10 = [v9 mutableCopy];
    v11 = [MEMORY[0x277CBEAA8] date];
    [v10 setDate:v11];

    v12 = [v9 body];
    v13 = [v12 rangeOfString:@" [UPDATE]\n\n\n[UPDATE]"];
    if ([v12 hasSuffix:@" [UPDATE]\n\n\n[UPDATE]"])
    {
      v14 = [v12 substringToIndex:v13];
    }

    else
    {
      if ([v12 hasSuffix:@" [UPDATE]"])
      {
        v15 = @" [UPDATE]\n\n\n[UPDATE]";
      }

      else
      {
        v15 = @" [UPDATE]";
      }

      v14 = [v12 stringByAppendingString:v15];
    }

    v16 = v14;

    [v10 setBody:v16];
    v17 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    [v17 replaceContentForRequestWithIdentifier:v18 replacementContent:v10 completionHandler:0];
  }

  else
  {
    v9 = [(SBExampleUserNotificationCenter *)self _newNotificationRequest:v18 threadIdentifier:v6];
    v10 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    [v10 addNotificationRequest:v9 withCompletionHandler:0];
  }
}

- (id)_existingNotificationRequestForIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20;
  v19 = __Block_byref_object_dispose__20;
  v20 = 0;
  userNotificationCenter = self->_userNotificationCenter;
  if (userNotificationCenter)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = self->_userNotificationCenter;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__SBExampleUserNotificationCenter__existingNotificationRequestForIdentifier___block_invoke;
    v11[3] = &unk_2783AF430;
    v12 = v4;
    v14 = &v15;
    v8 = v6;
    v13 = v8;
    [(UNUserNotificationCenter *)v7 getDeliveredNotificationsWithCompletionHandler:v11];
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

    userNotificationCenter = v16[5];
  }

  v9 = userNotificationCenter;
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __77__SBExampleUserNotificationCenter__existingNotificationRequestForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) request];
        v9 = [v8 identifier];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if (v10)
        {
          v11 = *(*(a1 + 48) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v8;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_group_leave(*(a1 + 40));
}

- (id)_userNotificationCenter
{
  userNotificationCenter = self->_userNotificationCenter;
  if (!userNotificationCenter)
  {
    v4 = objc_alloc(MEMORY[0x277CE2028]);
    v5 = [(SBExampleUserNotificationCenter *)self sectionIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5];
    v7 = self->_userNotificationCenter;
    self->_userNotificationCenter = v6;

    [(UNUserNotificationCenter *)self->_userNotificationCenter requestAuthorizationWithOptions:7 completionHandler:&__block_literal_global_11];
    userNotificationCenter = self->_userNotificationCenter;
  }

  return userNotificationCenter;
}

- (id)_newNotificationRequest:(id)a3 threadIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification %@", v5];
  [v7 setTitle:v8];

  [v7 setBody:@"Message"];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com"];
  [v7 setDefaultActionURL:v9];

  if (v6)
  {
    [v7 setThreadIdentifier:v6];
  }

  v10 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v5 content:v7 trigger:0];

  return v10;
}

@end