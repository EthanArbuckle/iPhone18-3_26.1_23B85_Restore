@interface TSDIOKServiceMatcher
- (BOOL)startNotificationsWithMatchingDictionary:(id)a3;
- (TSDIOKServiceMatcher)init;
- (void)dealloc;
- (void)handleServiceMatched:(id)a3;
- (void)handleServiceTerminated:(id)a3;
@end

@implementation TSDIOKServiceMatcher

- (TSDIOKServiceMatcher)init
{
  v6.receiver = self;
  v6.super_class = TSDIOKServiceMatcher;
  v2 = [(TSDIOKServiceMatcher *)&v6 init];
  if (v2)
  {
    if (qword_100058828 != -1)
    {
      sub_1000295C4();
    }

    if (qword_100058818)
    {
      if (qword_100058820)
      {
        v3 = +[NSMutableSet set];
        matchedEntryIDs = v2->_matchedEntryIDs;
        v2->_matchedEntryIDs = v3;

        if (v2->_matchedEntryIDs)
        {
          return v2;
        }

        sub_1000295EC();
      }

      else
      {
        sub_10002969C();
      }
    }

    else
    {
      sub_10002974C();
    }

    return 0;
  }

  return v2;
}

- (BOOL)startNotificationsWithMatchingDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = [v4 objectForKeyedSubscript:@"IOProviderClass"];
  identifier = self->_identifier;
  self->_identifier = v6;

  objc_initWeak(&location, self);
  v8 = qword_100058820;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007C00;
  v22[3] = &unk_10004C7B8;
  objc_copyWeak(&v23, &location);
  v9 = [IOKService addNotificationOfType:IOKFirstMatchNotification forMatching:v5 usingNotificationPort:v8 error:0 withHandler:v22];
  matchNotification = self->_matchNotification;
  self->_matchNotification = v9;

  if (!self->_matchNotification)
  {
    sub_1000298AC(&v23, &location);
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v11 = qword_100058820;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007CD0;
  v20[3] = &unk_10004C7B8;
  objc_copyWeak(&v21, &location);
  v12 = [IOKService addNotificationOfType:IOKTerminatedNotification forMatching:v5 usingNotificationPort:v11 error:0 withHandler:v20];
  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = v12;

  v14 = self->_terminateNotification;
  v15 = v14 != 0;
  if (v14)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100007DA0;
    v19[3] = &unk_10004C6A8;
    v19[4] = self;
    dispatch_async(qword_100058818, v19);
  }

  else
  {
    sub_1000297FC();
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_8:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSString *)self->_identifier UTF8String];
    v17 = "failed";
    if (v15)
    {
      v17 = "success";
    }

    *buf = 136315394;
    v26 = v16;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDIOKServiceMatcher startNotificationsWithMatchingDictionary %s %s", buf, 0x16u);
  }

  return v15;
}

- (void)dealloc
{
  matchedEntryIDs = self->_matchedEntryIDs;
  self->_matchedEntryIDs = 0;

  matchNotification = self->_matchNotification;
  self->_matchNotification = 0;

  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = 0;

  v6.receiver = self;
  v6.super_class = TSDIOKServiceMatcher;
  [(TSDIOKServiceMatcher *)&v6 dealloc];
}

- (void)handleServiceMatched:(id)a3
{
  v5 = a3;
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 entryID]);
  if (([(NSMutableSet *)self->_matchedEntryIDs containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_matchedEntryIDs addObject:v4];
    [(TSDIOKServiceMatcher *)self serviceMatched:v5];
  }
}

- (void)handleServiceTerminated:(id)a3
{
  v5 = a3;
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 entryID]);
  if ([(NSMutableSet *)self->_matchedEntryIDs containsObject:v4])
  {
    [(NSMutableSet *)self->_matchedEntryIDs removeObject:v4];
    [(TSDIOKServiceMatcher *)self serviceTerminated:v5];
  }
}

@end