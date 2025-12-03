@interface TSDKextNotifier
- (TSDKextNotifier)init;
- (void)dealloc;
- (void)notifyWhenServiceIsAvailable:(id)available;
- (void)notifyWhenServiceIsUnavailable:(id)unavailable;
- (void)serviceMatched:(id)matched;
- (void)serviceTerminated:(id)terminated;
@end

@implementation TSDKextNotifier

- (TSDKextNotifier)init
{
  v8.receiver = self;
  v8.super_class = TSDKextNotifier;
  v2 = [(TSDIOKServiceMatcher *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    matchNotificationsArray = v2->_matchNotificationsArray;
    v2->_matchNotificationsArray = v3;

    if (v2->_matchNotificationsArray)
    {
      v5 = objc_alloc_init(NSMutableArray);
      terminateNotificationsArray = v2->_terminateNotificationsArray;
      v2->_terminateNotificationsArray = v5;

      if (v2->_terminateNotificationsArray)
      {
        return v2;
      }

      sub_100029980();
    }

    else
    {
      sub_100029A30();
    }

    return 0;
  }

  return v2;
}

- (void)serviceMatched:(id)matched
{
  matchedCopy = matched;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->super._identifier UTF8String];
    v7 = [(NSMutableArray *)self->_matchNotificationsArray count];
    *buf = 136315394;
    v19 = uTF8String;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier serviceMatched %s matchedCount dispatching notifications to %d registered", buf, 0x12u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_matchNotificationsArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_matchNotificationsArray removeAllObjects];
  objc_autoreleasePoolPop(v5);
}

- (void)serviceTerminated:(id)terminated
{
  terminatedCopy = terminated;
  if ([(TSDIOKServiceMatcher *)self getMatchedCount]<= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(NSString *)self->super._identifier UTF8String];
      v6 = [(NSMutableArray *)self->_terminateNotificationsArray count];
      *buf = 136315394;
      v19 = uTF8String;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier serviceTerminated %s, dispatching notifications to %d registered", buf, 0x12u);
    }

    v7 = objc_autoreleasePoolPush();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_terminateNotificationsArray;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_terminateNotificationsArray removeAllObjects];
    objc_autoreleasePoolPop(v7);
  }
}

- (void)notifyWhenServiceIsAvailable:(id)available
{
  availableCopy = available;
  v5 = availableCopy;
  v6 = qword_100058818;
  if (qword_100058818)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000084BC;
    v7[3] = &unk_10004C7E0;
    v7[4] = self;
    v8 = availableCopy;
    dispatch_async(v6, v7);
  }

  else
  {
    sub_100029AE0();
  }
}

- (void)notifyWhenServiceIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v5 = unavailableCopy;
  v6 = qword_100058818;
  if (qword_100058818)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000086F4;
    v7[3] = &unk_10004C7E0;
    v7[4] = self;
    v8 = unavailableCopy;
    dispatch_async(v6, v7);
  }

  else
  {
    sub_100029B90();
  }
}

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->_matchNotificationsArray copy];
  v4 = [(NSMutableArray *)self->_terminateNotificationsArray copy];
  v5 = qword_100058818;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008968;
  block[3] = &unk_10004C808;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);

  v8.receiver = self;
  v8.super_class = TSDKextNotifier;
  [(TSDIOKServiceMatcher *)&v8 dealloc];
}

@end