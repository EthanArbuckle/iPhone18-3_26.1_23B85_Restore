@interface UNSExampleUserNotificationCenter
- (UNSExampleUserNotificationCenter)init;
- (id)_basicPostUpdateRecipe;
- (id)_existingNotificationRequestForIdentifier:(id)a3;
- (id)_newNotificationRequest:(id)a3 threadIdentifier:(id)a4;
- (id)_userNotificationCenter;
- (void)_postNotificationWithID:(id)a3 threadIdentifier:(id)a4;
- (void)publish:(unint64_t)a3 numberOfUniqueThreads:(unint64_t)a4 completion:(id)a5;
- (void)publishWithNumberOfUniqueThreads:(unint64_t)a3;
- (void)removeAllNotifications;
- (void)update;
@end

@implementation UNSExampleUserNotificationCenter

- (UNSExampleUserNotificationCenter)init
{
  v7.receiver = self;
  v7.super_class = UNSExampleUserNotificationCenter;
  v2 = [(UNSExampleUserNotificationCenter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(UNSExampleUserNotificationCenter *)v2 _basicPostUpdateRecipe];
    basicTestRecipe = v3->_basicTestRecipe;
    v3->_basicTestRecipe = v4;

    [(PTDomain *)UNSUserNotificationServerDomain registerTestRecipe:v3->_basicTestRecipe];
  }

  return v3;
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
  [(UNSExampleUserNotificationCenter *)self _postNotificationWithID:v5 threadIdentifier:v6];
}

- (void)publish:(unint64_t)a3 numberOfUniqueThreads:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = a3;
    do
    {
      [(UNSExampleUserNotificationCenter *)self publishWithNumberOfUniqueThreads:a4];
      --v9;
    }

    while (v9);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    do
    {
      v10 = dispatch_group_create();
      dispatch_group_enter(v10);
      v11 = [(UNSExampleUserNotificationCenter *)self _userNotificationCenter];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __77__UNSExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke;
      v13[3] = &unk_279E10918;
      v15 = &v17;
      v16 = a3;
      v12 = v10;
      v14 = v12;
      [v11 getDeliveredNotificationsWithCompletionHandler:v13];

      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    while ((v18[3] & 1) == 0);
    _Block_object_dispose(&v17, 8);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

void __77__UNSExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = [a2 count] == a1[6];
  v3 = a1[4];

  dispatch_group_leave(v3);
}

- (void)update
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", __notificationRequestCount];
  [(UNSExampleUserNotificationCenter *)self _postNotificationWithID:v3 threadIdentifier:0];
}

- (void)removeAllNotifications
{
  v3 = [(UNSExampleUserNotificationCenter *)self _userNotificationCenter];
  [v3 removeAllPendingNotificationRequests];

  v4 = [(UNSExampleUserNotificationCenter *)self _userNotificationCenter];
  [v4 removeAllDeliveredNotifications];
}

- (void)_postNotificationWithID:(id)a3 threadIdentifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(UNSExampleUserNotificationCenter *)self _existingNotificationRequestForIdentifier:v18];
  if (v7)
  {
    v8 = v7;
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
    v17 = [(UNSExampleUserNotificationCenter *)self _userNotificationCenter];
    [v17 replaceContentForRequestWithIdentifier:v18 replacementContent:v10 completionHandler:0];
  }

  else
  {
    v8 = [(UNSExampleUserNotificationCenter *)self _newNotificationRequest:v18 threadIdentifier:v6];
    v9 = [(UNSExampleUserNotificationCenter *)self _userNotificationCenter];
    [v9 addNotificationRequest:v8 withCompletionHandler:0];
  }
}

- (id)_existingNotificationRequestForIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  userNotificationCenter = self->_userNotificationCenter;
  if (userNotificationCenter)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = self->_userNotificationCenter;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__UNSExampleUserNotificationCenter__existingNotificationRequestForIdentifier___block_invoke;
    v11[3] = &unk_279E10940;
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

void __78__UNSExampleUserNotificationCenter__existingNotificationRequestForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) request];
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

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_group_leave(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_userNotificationCenter
{
  userNotificationCenter = self->_userNotificationCenter;
  if (!userNotificationCenter)
  {
    v4 = objc_alloc(MEMORY[0x277CE2028]);
    v5 = [(UNSExampleUserNotificationCenter *)self sectionIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5];
    v7 = self->_userNotificationCenter;
    self->_userNotificationCenter = v6;

    [(UNUserNotificationCenter *)self->_userNotificationCenter requestAuthorizationWithOptions:7 completionHandler:&__block_literal_global_12];
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

  [v7 setCategoryIdentifier:@"default"];
  if (v6)
  {
    [v7 setThreadIdentifier:v6];
  }

  v10 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v5 content:v7 trigger:0];

  return v10;
}

- (id)_basicPostUpdateRecipe
{
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__UNSExampleUserNotificationCenter__basicPostUpdateRecipe__block_invoke;
  v5[3] = &unk_279E10988;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__UNSExampleUserNotificationCenter__basicPostUpdateRecipe__block_invoke_2;
  v4[3] = &unk_279E10988;
  v2 = [MEMORY[0x277D431D0] recipeWithTitle:@"Post [UP] / Update [DN] Notification" increaseAction:v5 decreaseAction:v4];

  return v2;
}

@end