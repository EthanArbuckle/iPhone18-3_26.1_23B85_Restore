@interface UserNotificationCenter
+ (id)defaultCenter;
- (UserNotificationCenter)init;
- (id)prepareUserNotificationWithDialog:(id)a3;
- (id)showDialog:(id)a3 withCompletionBlock:(id)a4;
- (id)showUserNotification:(__CFDictionary *)a3 withOptions:(unint64_t)a4 completionBlock:(id)a5;
- (id)showUserNotification:(id)a3 withCompletionBlock:(id)a4;
- (void)_finishUserNotification:(__CFUserNotification *)a3 withResponseFlags:(unint64_t)a4;
- (void)_showPreparedNotification:(id)a3;
- (void)cancelUserNotification:(id)a3;
- (void)cancelUserNotifications:(id)a3;
- (void)dealloc;
- (void)showPreparedNotification:(id)a3 withCompletionBlock:(id)a4;
- (void)updateUserNotification:(id)a3 withDialog:(id)a4;
- (void)updateUserNotification:(id)a3 withDictionary:(__CFDictionary *)a4 options:(unint64_t)a5;
- (void)updateUserNotification:(id)a3 withUserNotification:(id)a4;
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
  block[4] = a1;
  if (qword_100383F90 != -1)
  {
    dispatch_once(&qword_100383F90, block);
  }

  return qword_100383F88;
}

- (void)cancelUserNotification:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(UserNotificationCenter *)self cancelUserNotifications:v4];
}

- (void)cancelUserNotifications:(id)a3
{
  if ([a3 count])
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001882F8;
    v6[3] = &unk_100327350;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(dispatchQueue, v6);
  }
}

- (id)prepareUserNotificationWithDialog:(id)a3
{
  v3 = [a3 copyUserNotification];
  v4 = -[UserNotification initWithDictionary:options:completionBlock:]([UserNotification alloc], "initWithDictionary:options:completionBlock:", [v3 dictionary], objc_msgSend(v3, "optionFlags"), 0);

  return v4;
}

- (id)showDialog:(id)a3 withCompletionBlock:(id)a4
{
  v6 = [a3 copyUserNotification];
  v7 = [(UserNotificationCenter *)self showUserNotification:v6 withCompletionBlock:a4];

  return v7;
}

- (void)showPreparedNotification:(id)a3 withCompletionBlock:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018875C;
  block[3] = &unk_10032A7D8;
  block[5] = self;
  block[6] = a4;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (id)showUserNotification:(id)a3 withCompletionBlock:(id)a4
{
  v7 = [a3 dictionary];
  v8 = [a3 optionFlags];

  return [(UserNotificationCenter *)self showUserNotification:v7 withOptions:v8 completionBlock:a4];
}

- (id)showUserNotification:(__CFDictionary *)a3 withOptions:(unint64_t)a4 completionBlock:(id)a5
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
  block[7] = a3;
  block[8] = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(dispatchQueue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)updateUserNotification:(id)a3 withDialog:(id)a4
{
  v6 = [a4 copyUserNotification];
  [(UserNotificationCenter *)self updateUserNotification:a3 withUserNotification:v6];
}

- (void)updateUserNotification:(id)a3 withDictionary:(__CFDictionary *)a4 options:(unint64_t)a5
{
  CFRetain(a4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188A70;
  block[3] = &unk_10032A828;
  block[4] = a3;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateUserNotification:(id)a3 withUserNotification:(id)a4
{
  v7 = [a4 dictionary];
  v8 = [a4 optionFlags];

  [(UserNotificationCenter *)self updateUserNotification:a3 withDictionary:v7 options:v8];
}

- (void)_finishUserNotification:(__CFUserNotification *)a3 withResponseFlags:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188B8C;
  block[3] = &unk_10032A828;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

- (void)_showPreparedNotification:(id)a3
{
  if ([a3 isCanceled])
  {
    v5 = [a3 completionBlock];
    if (!v5)
    {
      return;
    }

    v6 = v5;
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
    [(NSMutableArray *)self->_userNotifications addObject:a3];
    if ([(NSMutableArray *)self->_userNotifications count]== 1)
    {
      [v9 takeKeepAliveAssertion:@"com.apple.itunesstored.UserNotificationCenter"];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100188E98;
    block[3] = &unk_100327350;
    block[4] = v9;
    block[5] = a3;
    global_queue = &_dispatch_main_q;
    v8 = block;
  }

  dispatch_async(global_queue, v8);
}

@end