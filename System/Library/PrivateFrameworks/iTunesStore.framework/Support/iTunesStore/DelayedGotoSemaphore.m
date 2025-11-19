@interface DelayedGotoSemaphore
+ (void)_accessSemaphorePoolUsingBlock:(id)a3;
+ (void)signalSemaphoreForPushToken:(id)a3;
- (DelayedGotoSemaphore)initWithDelayedGoto:(id)a3;
- (void)wait;
@end

@implementation DelayedGotoSemaphore

- (DelayedGotoSemaphore)initWithDelayedGoto:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = DelayedGotoSemaphore;
  v5 = [(DelayedGotoSemaphore *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      bodyDictionary = v5->_bodyDictionary;
      v5->_bodyDictionary = v7;
    }

    v9 = [v4 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[NSURL alloc] initWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    v12 = [v4 objectForKey:@"delay"];

    v13 = objc_opt_respondsToSelector();
    v14 = 30.0;
    if (v13)
    {
      [v12 doubleValue];
    }

    v5->_delay = v14;
    v15 = [v4 objectForKey:@"apnsToken"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_1001F70C8;
      v33 = sub_1001F70D8;
      v34 = 0;
      v16 = objc_opt_class();
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_1001F70E0;
      v26 = &unk_10032C1E0;
      v28 = &v29;
      v17 = v15;
      v27 = v17;
      [v16 _accessSemaphorePoolUsingBlock:&v23];
      objc_storeStrong(&v5->_semaphore, v30[5]);
      v18 = [v17 copy];
      pushToken = v5->_pushToken;
      v5->_pushToken = v18;

      _Block_object_dispose(&v29, 8);
      semaphore = v34;
    }

    else
    {
      v21 = dispatch_semaphore_create(0);
      semaphore = v5->_semaphore;
      v5->_semaphore = v21;
    }
  }

  return v5;
}

+ (void)signalSemaphoreForPushToken:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1001F70C8;
  v13 = sub_1001F70D8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F7294;
  v6[3] = &unk_10032C1E0;
  v8 = &v9;
  v4 = a3;
  v7 = v4;
  [a1 _accessSemaphorePoolUsingBlock:v6];
  v5 = v10[5];
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)wait
{
  if (self->_semaphore)
  {
    pushToken = self->_pushToken;
    v4 = +[SSLogConfig sharedDaemonConfig];
    v5 = v4;
    if (pushToken)
    {
      if (!v4)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v7 &= 2u;
      }

      if (!v7)
      {
        goto LABEL_23;
      }

      v9 = objc_opt_class();
      delay = self->_delay;
      v11 = self->_pushToken;
      v22 = 138412802;
      v23 = v9;
      v24 = 2048;
      v25 = delay;
      v26 = 2112;
      v27 = v11;
      v12 = v9;
      LODWORD(v20) = 32;
    }

    else
    {
      if (!v4)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v13 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v14 &= 2u;
      }

      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = objc_opt_class();
      v16 = self->_delay;
      v22 = 138412546;
      v23 = v15;
      v24 = 2048;
      v25 = v16;
      v12 = v15;
      LODWORD(v20) = 22;
    }

    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_24;
    }

    v8 = [NSString stringWithCString:v17 encoding:4, &v22, v20];
    free(v17);
    SSFileLog();
LABEL_23:

LABEL_24:
    semaphore = self->_semaphore;
    v19 = dispatch_time(0, (self->_delay * 1000000000.0));
    dispatch_semaphore_wait(semaphore, v19);
    if (self->_pushToken)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001F7630;
      v21[3] = &unk_10032C208;
      v21[4] = self;
      [objc_opt_class() _accessSemaphorePoolUsingBlock:v21];
    }
  }
}

+ (void)_accessSemaphorePoolUsingBlock:(id)a3
{
  v3 = a3;
  if (qword_100384110 != -1)
  {
    sub_1002725F0();
  }

  v4 = qword_100384118;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F7750;
  block[3] = &unk_100327198;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

@end