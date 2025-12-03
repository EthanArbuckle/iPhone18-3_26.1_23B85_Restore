@interface UserNotificationCenter
+ (id)defaultCenter;
- (UserNotificationCenter)init;
- (id)prepareUserNotificationWithDialog:(id)dialog;
- (id)showDialog:(id)dialog withCompletionBlock:(id)block;
- (id)showUserNotification:(__CFDictionary *)notification withOptions:(unint64_t)options completionBlock:(id)block;
- (id)showUserNotification:(id)notification withCompletionBlock:(id)block;
- (void)_finishUserNotification:(__CFUserNotification *)notification withResponseFlags:(unint64_t)flags;
- (void)_showPreparedNotification:(id)notification;
- (void)cancelUserNotification:(id)notification;
- (void)cancelUserNotifications:(id)notifications;
- (void)dealloc;
- (void)showPreparedNotification:(id)notification withCompletionBlock:(id)block;
- (void)updateUserNotification:(id)notification withDialog:(id)dialog;
- (void)updateUserNotification:(id)notification withDictionary:(__CFDictionary *)dictionary options:(unint64_t)options;
- (void)updateUserNotification:(id)notification withUserNotification:(id)userNotification;
@end

@implementation UserNotificationCenter

- (UserNotificationCenter)init
{
  v4.receiver = self;
  v4.super_class = UserNotificationCenter;
  v2 = [(UserNotificationCenter *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.UserNotificationCenter", 0);
    v2->_userNotifications = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = UserNotificationCenter;
  [(UserNotificationCenter *)&v3 dealloc];
}

+ (id)defaultCenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001881DC;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100383F90 != -1)
  {
    dispatch_once(&qword_100383F90, block);
  }

  return qword_100383F88;
}

- (void)cancelUserNotification:(id)notification
{
  v4 = [[NSArray alloc] initWithObjects:{notification, 0}];
  [(UserNotificationCenter *)self cancelUserNotifications:v4];
}

- (void)cancelUserNotifications:(id)notifications
{
  if ([notifications count])
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001882F8;
    v6[3] = &unk_100327350;
    v6[4] = self;
    v6[5] = notifications;
    dispatch_async(dispatchQueue, v6);
  }
}

- (id)prepareUserNotificationWithDialog:(id)dialog
{
  copyUserNotification = [dialog copyUserNotification];
  v4 = -[UserNotification initWithDictionary:options:completionBlock:]([UserNotification alloc], "initWithDictionary:options:completionBlock:", [copyUserNotification dictionary], objc_msgSend(copyUserNotification, "optionFlags"), 0);

  return v4;
}

- (id)showDialog:(id)dialog withCompletionBlock:(id)block
{
  copyUserNotification = [dialog copyUserNotification];
  v7 = [(UserNotificationCenter *)self showUserNotification:copyUserNotification withCompletionBlock:block];

  return v7;
}

- (void)showPreparedNotification:(id)notification withCompletionBlock:(id)block
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018875C;
  block[3] = &unk_10032A7D8;
  block[5] = self;
  block[6] = block;
  block[4] = notification;
  dispatch_async(dispatchQueue, block);
}

- (id)showUserNotification:(id)notification withCompletionBlock:(id)block
{
  dictionary = [notification dictionary];
  optionFlags = [notification optionFlags];

  return [(UserNotificationCenter *)self showUserNotification:dictionary withOptions:optionFlags completionBlock:block];
}

- (id)showUserNotification:(__CFDictionary *)notification withOptions:(unint64_t)options completionBlock:(id)block
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_1001888F8;
  v13 = sub_100188908;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188914;
  block[3] = &unk_10032A800;
  block[6] = &v9;
  block[7] = notification;
  block[8] = options;
  block[4] = self;
  block[5] = block;
  dispatch_sync(dispatchQueue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)updateUserNotification:(id)notification withDialog:(id)dialog
{
  copyUserNotification = [dialog copyUserNotification];
  [(UserNotificationCenter *)self updateUserNotification:notification withUserNotification:copyUserNotification];
}

- (void)updateUserNotification:(id)notification withDictionary:(__CFDictionary *)dictionary options:(unint64_t)options
{
  CFRetain(dictionary);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188A70;
  block[3] = &unk_10032A828;
  block[4] = notification;
  block[5] = dictionary;
  block[6] = options;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateUserNotification:(id)notification withUserNotification:(id)userNotification
{
  dictionary = [userNotification dictionary];
  optionFlags = [userNotification optionFlags];

  [(UserNotificationCenter *)self updateUserNotification:notification withDictionary:dictionary options:optionFlags];
}

- (void)_finishUserNotification:(__CFUserNotification *)notification withResponseFlags:(unint64_t)flags
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188B8C;
  block[3] = &unk_10032A828;
  block[4] = self;
  block[5] = notification;
  block[6] = flags;
  dispatch_async(dispatchQueue, block);
}

- (void)_showPreparedNotification:(id)notification
{
  if ([notification isCanceled])
  {
    completionBlock = [notification completionBlock];
    if (!completionBlock)
    {
      return;
    }

    v6 = completionBlock;
    global_queue = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100188E80;
    v11[3] = &unk_100327FD8;
    v11[4] = v6;
    v8 = v11;
  }

  else
  {
    v9 = +[Daemon daemon];
    [(NSMutableArray *)self->_userNotifications addObject:notification];
    if ([(NSMutableArray *)self->_userNotifications count]== 1)
    {
      [v9 takeKeepAliveAssertion:@"com.apple.itunesstored.UserNotificationCenter"];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100188E98;
    block[3] = &unk_100327350;
    block[4] = v9;
    block[5] = notification;
    global_queue = &_dispatch_main_q;
    v8 = block;
  }

  dispatch_async(global_queue, v8);
}

@end