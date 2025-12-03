@interface UserNotificationManager
+ (UserNotificationManager)sharedManager;
- (UserNotificationManager)init;
- (id)_bag;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation UserNotificationManager

- (UserNotificationManager)init
{
  v12.receiver = self;
  v12.super_class = UserNotificationManager;
  v2 = [(UserNotificationManager *)&v12 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.MobileStore"];
    center = v2->_center;
    v2->_center = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.UserNotifications", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v5;

    v7 = [UNNotificationCategory categoryWithIdentifier:@"mst-notification-category" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
    v8 = v2->_center;
    v13 = v7;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    v10 = [NSSet setWithArray:v9];
    [(UNUserNotificationCenter *)v8 setNotificationCategories:v10];

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setWantsNotificationResponsesDelivered];
  }

  return v2;
}

+ (UserNotificationManager)sharedManager
{
  if (qword_1003841B0 != -1)
  {
    sub_1002726A8();
  }

  v3 = qword_1003841A8;

  return v3;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  delegateQueue = [(UserNotificationManager *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023ADC4;
  block[3] = &unk_100328C38;
  v13 = responseCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseCopy;
  dispatch_async(delegateQueue, block);
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  delegateQueue = [(UserNotificationManager *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023B0EC;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = centerCopy;
  v13 = settingsCopy;
  v9 = settingsCopy;
  v10 = centerCopy;
  dispatch_async(delegateQueue, block);
}

- (id)_bag
{
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  [v2 start];
  success = [v2 success];
  error = [v2 error];
  v5 = error;
  if (success)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v18 = 138543618;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2114;
      *&v18[14] = v5;
      v11 = *&v18[4];
      LODWORD(v17) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, v18, v17, *v18, *&v18[16]];
      free(v12);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
  v13 = [ISAMSBagShim alloc];
  uRLBag = [v2 URLBag];
  v15 = [v13 initWithURLBag:uRLBag];

  return v15;
}

@end