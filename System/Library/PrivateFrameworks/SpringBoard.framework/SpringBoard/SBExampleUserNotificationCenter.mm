@interface SBExampleUserNotificationCenter
+ (id)sharedInstance;
- (id)_existingNotificationRequestForIdentifier:(id)identifier;
- (id)_newNotificationRequest:(id)request threadIdentifier:(id)identifier;
- (id)_userNotificationCenter;
- (void)_postNotificationWithID:(id)d threadIdentifier:(id)identifier;
- (void)publish:(unint64_t)publish numberOfUniqueThreads:(unint64_t)threads completion:(id)completion;
- (void)publishWithNumberOfUniqueThreads:(unint64_t)threads;
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

- (void)publishWithNumberOfUniqueThreads:(unint64_t)threads
{
  ++__notificationRequestCount;
  if (threads)
  {
    v4 = __notificationThreadCount++;
    threads = [MEMORY[0x277CCACA8] stringWithFormat:@"thread-%ld", v4 % threads];
  }

  else
  {
    threads = 0;
  }

  __notificationRequestCount = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", __notificationRequestCount];
  [(SBExampleUserNotificationCenter *)self _postNotificationWithID:__notificationRequestCount threadIdentifier:threads];
}

- (void)publish:(unint64_t)publish numberOfUniqueThreads:(unint64_t)threads completion:(id)completion
{
  completionCopy = completion;
  if (publish)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    _userNotificationCenter = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke;
    v23[3] = &unk_2783AF3E0;
    v23[4] = v24;
    [_userNotificationCenter getDeliveredNotificationsWithCompletionHandler:v23];

    publishCopy = publish;
    do
    {
      [(SBExampleUserNotificationCenter *)self publishWithNumberOfUniqueThreads:threads];
      --publishCopy;
    }

    while (publishCopy);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    do
    {
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      _userNotificationCenter2 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__SBExampleUserNotificationCenter_publish_numberOfUniqueThreads_completion___block_invoke_2;
      v14[3] = &unk_2783AF408;
      v17 = v24;
      publishCopy2 = publish;
      v16 = &v19;
      v13 = v11;
      v15 = v13;
      [_userNotificationCenter2 getDeliveredNotificationsWithCompletionHandler:v14];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    }

    while ((v20[3] & 1) == 0);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v24, 8);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  __notificationRequestCount = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", __notificationRequestCount];
  [(SBExampleUserNotificationCenter *)self _postNotificationWithID:__notificationRequestCount threadIdentifier:0];
}

- (void)removeAllNotifications
{
  _userNotificationCenter = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
  [_userNotificationCenter removeAllPendingNotificationRequests];

  _userNotificationCenter2 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
  [_userNotificationCenter2 removeAllDeliveredNotifications];
}

- (void)_postNotificationWithID:(id)d threadIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v7 = [(SBExampleUserNotificationCenter *)self _existingNotificationRequestForIdentifier:dCopy];
  v8 = v7;
  if (v7)
  {
    content = [v7 content];
    _userNotificationCenter2 = [content mutableCopy];
    date = [MEMORY[0x277CBEAA8] date];
    [_userNotificationCenter2 setDate:date];

    body = [content body];
    v13 = [body rangeOfString:@" [UPDATE]\n\n\n[UPDATE]"];
    if ([body hasSuffix:@" [UPDATE]\n\n\n[UPDATE]"])
    {
      v14 = [body substringToIndex:v13];
    }

    else
    {
      if ([body hasSuffix:@" [UPDATE]"])
      {
        v15 = @" [UPDATE]\n\n\n[UPDATE]";
      }

      else
      {
        v15 = @" [UPDATE]";
      }

      v14 = [body stringByAppendingString:v15];
    }

    v16 = v14;

    [_userNotificationCenter2 setBody:v16];
    _userNotificationCenter = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    [_userNotificationCenter replaceContentForRequestWithIdentifier:dCopy replacementContent:_userNotificationCenter2 completionHandler:0];
  }

  else
  {
    content = [(SBExampleUserNotificationCenter *)self _newNotificationRequest:dCopy threadIdentifier:identifierCopy];
    _userNotificationCenter2 = [(SBExampleUserNotificationCenter *)self _userNotificationCenter];
    [_userNotificationCenter2 addNotificationRequest:content withCompletionHandler:0];
  }
}

- (id)_existingNotificationRequestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    v12 = identifierCopy;
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
    sectionIdentifier = [(SBExampleUserNotificationCenter *)self sectionIdentifier];
    v6 = [v4 initWithBundleIdentifier:sectionIdentifier];
    v7 = self->_userNotificationCenter;
    self->_userNotificationCenter = v6;

    [(UNUserNotificationCenter *)self->_userNotificationCenter requestAuthorizationWithOptions:7 completionHandler:&__block_literal_global_11];
    userNotificationCenter = self->_userNotificationCenter;
  }

  return userNotificationCenter;
}

- (id)_newNotificationRequest:(id)request threadIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  requestCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification %@", requestCopy];
  [v7 setTitle:requestCopy];

  [v7 setBody:@"Message"];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com"];
  [v7 setDefaultActionURL:v9];

  if (identifierCopy)
  {
    [v7 setThreadIdentifier:identifierCopy];
  }

  v10 = [MEMORY[0x277CE1FC0] requestWithIdentifier:requestCopy content:v7 trigger:0];

  return v10;
}

@end