@interface BCLockout
- (void)_sendNotfications:(id)a3 isLock:(BOOL)a4;
- (void)dealloc;
- (void)setPath:(id)a3;
- (void)unlock;
@end

@implementation BCLockout

- (void)dealloc
{
  [(BCLockout *)self unlock];

  v3.receiver = self;
  v3.super_class = BCLockout;
  [(BCLockout *)&v3 dealloc];
}

- (void)setPath:(id)a3
{
  if (self->_lockFile)
  {
    [(BCLockout *)self unlock];

    self->_lockFile = 0;
  }

  if (a3)
  {
    self->_lockFile = [[IMLockFile alloc] initWithPath:a3];
  }
}

- (void)unlock
{
  if ([(IMLockFile *)self->_lockFile locked])
  {
    [(IMLockFile *)self->_lockFile unlock];
    if (self->_isExclusive)
    {
      if ([(BCLockout *)self endNotifications])
      {
        v3 = [(BCLockout *)self endNotifications];

        [(BCLockout *)self _sendNotfications:v3 isLock:0];
      }
    }
  }
}

- (void)_sendNotfications:(id)a3 isLock:(BOOL)a4
{
  v4 = a4;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v7 = DarwinNotifyCenter;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          CFNotificationCenterPostNotification(v7, v12, 0, 0, 1u);
          v13 = BCDefaultLog();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            if (!v14)
            {
              continue;
            }

            *buf = 138412290;
            v22 = v12;
            v15 = v13;
            v16 = "Lockout raise %@";
          }

          else
          {
            if (!v14)
            {
              continue;
            }

            *buf = 138412290;
            v22 = v12;
            v15 = v13;
            v16 = "Lockout lower %@";
          }

          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
        }

        v9 = [a3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }
  }
}

@end