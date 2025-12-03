@interface ACCUserNotificationManager
+ (id)sharedManager;
- (ACCUserNotificationManager)init;
- (id)userNotificationWithUUID:(id)d;
- (void)dismissAllNotifications;
- (void)dismissNotification:(id)notification;
- (void)dismissNotificationWithIdentifier:(id)identifier;
- (void)dismissNotificationsWithGroupIdentifier:(id)identifier;
- (void)presentNotification:(id)notification completionHandler:(id)handler;
- (void)removeUserNotification:(id)notification;
- (void)updateNotification:(id)notification;
@end

@implementation ACCUserNotificationManager

- (ACCUserNotificationManager)init
{
  v14.receiver = self;
  v14.super_class = ACCUserNotificationManager;
  v2 = [(ACCUserNotificationManager *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[NSMutableSet set];
    userNotifications = v2->_userNotifications;
    v2->_userNotifications = v7;

    v9 = +[NSMutableDictionary dictionary];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v9;

    v11 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v11;
  }

  return v2;
}

- (void)presentNotification:(id)notification completionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (notificationCopy)
  {
    identifier = [notificationCopy identifier];

    if (identifier)
    {
      identifier2 = [notificationCopy identifier];
      [(ACCUserNotificationManager *)self dismissNotificationWithIdentifier:identifier2];
    }

    lock = [(ACCUserNotificationManager *)self lock];
    [lock lock];

    userNotifications = [(ACCUserNotificationManager *)self userNotifications];
    [userNotifications addObject:notificationCopy];

    if (handlerCopy)
    {
      completionHandlers = [(ACCUserNotificationManager *)self completionHandlers];
      v13 = objc_retainBlock(handlerCopy);
      uuid = [notificationCopy uuid];
      [completionHandlers setObject:v13 forKey:uuid];
    }

    lock2 = [(ACCUserNotificationManager *)self lock];
    [lock2 unlock];

    [notificationCopy createBackingUserNotification];
    userNotificationCFDict = [notificationCopy userNotificationCFDict];

    if (userNotificationCFDict)
    {
      v17 = [notificationCopy type] - 1;
      if (v17 > 2)
      {
        v18 = 3;
      }

      else
      {
        v18 = qword_517A8[v17];
      }

      error = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      userNotificationCFDict2 = [notificationCopy userNotificationCFDict];
      v20 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v18, &error, userNotificationCFDict2);

      v38 = v20;
      if (error || !v36[3])
      {
        lock3 = [(ACCUserNotificationManager *)self lock];
        [lock3 lock];

        [notificationCopy setUserNotificationCF:0];
        lock4 = [(ACCUserNotificationManager *)self lock];
        [lock4 unlock];

        v23 = v36[3];
        if (v23)
        {
          CFRelease(v23);
          v36[3] = 0;
        }
      }

      else
      {
        lock5 = [(ACCUserNotificationManager *)self lock];
        [lock5 lock];

        [notificationCopy setUserNotificationCF:v36[3]];
        lock6 = [(ACCUserNotificationManager *)self lock];
        [lock6 unlock];

        [notificationCopy timeout];
        if (v26 > 0.0)
        {
          [notificationCopy timeout];
          v28 = dispatch_time(0, (v27 * 1000000000.0));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke;
          block[3] = &unk_59758;
          block[4] = self;
          v34 = notificationCopy;
          dispatch_after(v28, &_dispatch_main_q, block);
        }

        queue = [(ACCUserNotificationManager *)self queue];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke_2;
        v30[3] = &unk_594D8;
        v32 = &v35;
        v30[4] = self;
        v31 = notificationCopy;
        dispatch_async(queue, v30);
      }

      _Block_object_dispose(&v35, 8);
    }
  }
}

void __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke_2(uint64_t a1)
{
  responseFlags = 3;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 48) + 8) + 24), 0.0, &responseFlags);
  v2 = responseFlags;
  v3 = [*(a1 + 32) lock];
  [v3 lock];

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [*(a1 + 40) uuid];
  v6 = [v4 objectForKey:v5];

  [*(a1 + 40) setUserNotificationCF:0];
  v7 = [*(a1 + 32) lock];
  [v7 unlock];

  if (v6)
  {
    if (v2 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6[2](v6, v9);
  }

  CFRelease(*(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = 0;
  [*(a1 + 32) removeUserNotification:*(a1 + 40)];
}

- (void)dismissNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v10 = notificationCopy;
    lock = [(ACCUserNotificationManager *)self lock];
    [lock lock];

    userNotificationCF = [v10 userNotificationCF];
    if (userNotificationCF)
    {
      v7 = userNotificationCF;
      CFRetain(userNotificationCF);
      lock2 = [(ACCUserNotificationManager *)self lock];
      [lock2 unlock];

      CFUserNotificationCancel(v7);
      CFRelease(v7);
    }

    else
    {
      lock3 = [(ACCUserNotificationManager *)self lock];
      [lock3 unlock];
    }

    notificationCopy = v10;
  }
}

- (void)dismissNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    lock = [(ACCUserNotificationManager *)self lock];
    [lock lock];

    v6 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    userNotifications = [(ACCUserNotificationManager *)self userNotifications];
    v8 = [userNotifications countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(userNotifications);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:identifierCopy];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [userNotifications countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ACCUserNotificationManager *)self dismissNotification:*(*(&v21 + 1) + 8 * j), v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    lock2 = [(ACCUserNotificationManager *)self lock];
    [lock2 unlock];
  }
}

- (void)dismissNotificationsWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    lock = [(ACCUserNotificationManager *)self lock];
    [lock lock];

    v6 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    userNotifications = [(ACCUserNotificationManager *)self userNotifications];
    v8 = [userNotifications countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(userNotifications);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          groupIdentifier = [v12 groupIdentifier];
          v14 = [groupIdentifier isEqualToString:identifierCopy];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [userNotifications countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ACCUserNotificationManager *)self dismissNotification:*(*(&v21 + 1) + 8 * j), v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    lock2 = [(ACCUserNotificationManager *)self lock];
    [lock2 unlock];
  }
}

- (void)dismissAllNotifications
{
  lock = [(ACCUserNotificationManager *)self lock];
  [lock lock];

  userNotifications = [(ACCUserNotificationManager *)self userNotifications];
  v5 = [userNotifications copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ACCUserNotificationManager *)self dismissNotification:*(*(&v12 + 1) + 8 * v10), v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  lock2 = [(ACCUserNotificationManager *)self lock];
  [lock2 unlock];
}

- (id)userNotificationWithUUID:(id)d
{
  dCopy = d;
  lock = [(ACCUserNotificationManager *)self lock];
  [lock lock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  userNotifications = [(ACCUserNotificationManager *)self userNotifications];
  v7 = [userNotifications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(userNotifications);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [userNotifications countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  lock2 = [(ACCUserNotificationManager *)self lock];
  [lock2 unlock];

  return v7;
}

- (void)removeUserNotification:(id)notification
{
  if (notification)
  {
    notificationCopy = notification;
    lock = [(ACCUserNotificationManager *)self lock];
    [lock lock];

    userNotifications = [(ACCUserNotificationManager *)self userNotifications];
    [userNotifications removeObject:notificationCopy];

    completionHandlers = [(ACCUserNotificationManager *)self completionHandlers];
    uuid = [notificationCopy uuid];
    [completionHandlers removeObjectForKey:uuid];

    [notificationCopy setUserNotificationCF:0];
    lock2 = [(ACCUserNotificationManager *)self lock];
    [lock2 unlock];
  }
}

- (void)updateNotification:(id)notification
{
  notificationCopy = notification;
  lock = [(ACCUserNotificationManager *)self lock];
  [lock lock];

  [notificationCopy updateBackingUserNotification];
  v5 = [notificationCopy type] - 1;
  if (v5 > 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = qword_517A8[v5];
  }

  userNotificationCF = [notificationCopy userNotificationCF];
  userNotificationCFDict = [notificationCopy userNotificationCFDict];
  CFUserNotificationUpdate(userNotificationCF, 0.0, v6, userNotificationCFDict);

  lock2 = [(ACCUserNotificationManager *)self lock];
  [lock2 unlock];
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__ACCUserNotificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __43__ACCUserNotificationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

@end