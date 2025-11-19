@interface STPromise
+ (OS_dispatch_group)dispatchGroup;
+ (id)all:(id)a3;
+ (id)createQueue;
+ (id)do:(id)a3;
+ (id)doOn;
+ (id)doWork;
+ (id)onQueue:(id)a3 all:(id)a4;
+ (id)onQueue:(id)a3 do:(id)a4;
+ (id)pendingPromise;
+ (id)resolved;
+ (id)resolvedWith:(id)a3;
- (BOOL)isCanceled;
- (BOOL)isPending;
- (BOOL)isResolved;
- (STPromise)initWithResolution:(id)a3 onQueue:(id)a4;
- (id)catch;
- (id)catch:(id)a3;
- (id)catchOn;
- (id)chainOnQueue:(id)a3 chainedResolve:(id)a4 chainedError:(id)a5;
- (id)description;
- (id)given;
- (id)given:(id)a3;
- (id)givenOn;
- (id)initPendingOnQueue:(id)a3;
- (id)onQueue:(id)a3 catch:(id)a4;
- (id)onQueue:(id)a3 given:(id)a4;
- (id)onQueue:(id)a3 then:(id)a4;
- (id)then;
- (id)then:(id)a3;
- (id)thenOn;
- (void)cancel;
- (void)dealloc;
- (void)observeOnQueue:(id)a3 resolve:(id)a4 cancel:(id)a5;
- (void)resolve:(id)a3;
@end

@implementation STPromise

- (void)dealloc
{
  if (!self->_state)
  {
    v3 = +[STPromise dispatchGroup];
    dispatch_group_leave(v3);
  }

  v4.receiver = self;
  v4.super_class = STPromise;
  [(STPromise *)&v4 dealloc];
}

- (id)initPendingOnQueue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STPromise;
  v5 = [(STPromise *)&v12 init];
  queue = v5->_queue;
  v5->_queue = v4;
  v7 = v4;

  v5->_state = 0;
  v8 = objc_opt_new();
  stateLock = v5->_stateLock;
  v5->_stateLock = v8;

  v10 = +[STPromise dispatchGroup];

  dispatch_group_enter(v10);
  return v5;
}

- (STPromise)initWithResolution:(id)a3 onQueue:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = STPromise;
  v7 = a3;
  v8 = [(STPromise *)&v16 init];
  queue = v8->_queue;
  v8->_queue = v6;
  v10 = v6;

  v11 = [v7 copy];
  v12 = v8->_result;
  v8->_result = v11;

  v8->_state = 1;
  v13 = objc_opt_new();
  stateLock = v8->_stateLock;
  v8->_stateLock = v13;

  return v8;
}

+ (id)pendingPromise
{
  v3 = [a1 alloc];
  v4 = [a1 createQueue];
  v5 = [v3 initPendingOnQueue:v4];

  return v5;
}

+ (id)resolvedWith:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [a1 createQueue];
  v7 = [v5 initWithResolution:v4 onQueue:v6];

  return v7;
}

+ (id)createQueue
{
  v2 = objc_opt_new();
  v3 = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.ScreenTimeAgent.promise.%@", v3];

  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);

  return v7;
}

- (id)description
{
  v4 = self->_stateLock;
  objc_sync_enter(v4);
  state = self->_state;
  if (state == 2)
  {
    v10 = objc_opt_class();
    v7 = NSStringFromClass(v10);
    v8 = [NSString stringWithFormat:@"<%@:%p { Canceled }>", v7, self];
  }

  else if (state == 1)
  {
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);
    v8 = [NSString stringWithFormat:@"<%@:%p { Resolved: %@ }>", v7, self, self->_result];
  }

  else
  {
    if (state)
    {
      goto LABEL_8;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [NSString stringWithFormat:@"<%@:%p { Pending }>", v7, self];
  }

  v2 = v8;

LABEL_8:
  objc_sync_exit(v4);

  return v2;
}

- (BOOL)isPending
{
  v2 = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_state == 0;
  objc_sync_exit(v3);

  return v2;
}

- (BOOL)isResolved
{
  v2 = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_state == 1;
  objc_sync_exit(v3);

  return v2;
}

- (BOOL)isCanceled
{
  v2 = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_state == 2;
  objc_sync_exit(v3);

  return v2;
}

+ (OS_dispatch_group)dispatchGroup
{
  if (qword_1001E3948 != -1)
  {
    sub_10011A8D8();
  }

  v3 = qword_1001E3940;

  return v3;
}

- (void)resolve:(id)a3
{
  v5 = a3;
  v6 = self->_stateLock;
  objc_sync_enter(v6);
  state = self->_state;
  switch(state)
  {
    case 2:
      v14 = +[STLog promise];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10011A8EC();
      }

      goto LABEL_16;
    case 1:
      v14 = +[STLog promise];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10011A954();
      }

      goto LABEL_16;
    case 0:
      self->_state = 1;
      objc_storeStrong(&self->_result, a3);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_observers;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = self->_state;
            result = self->_result;
            (*(*(*(&v16 + 1) + 8 * v11) + 16))(*(*(&v16 + 1) + 8 * v11));
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      v14 = +[STPromise dispatchGroup];
      dispatch_group_leave(v14);
LABEL_16:

      break;
  }

  observers = self->_observers;
  self->_observers = 0;

  objc_sync_exit(v6);
}

- (void)cancel
{
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  state = self->_state;
  switch(state)
  {
    case 2:
      v12 = +[STLog promise];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10011A9BC();
      }

      goto LABEL_16;
    case 1:
      v12 = +[STLog promise];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10011AA24();
      }

      goto LABEL_16;
    case 0:
      self->_state = 2;
      result = self->_result;
      self->_result = 0;

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = self->_observers;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = *v15;
        do
        {
          v9 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = self->_state;
            v11 = self->_result;
            (*(*(*(&v14 + 1) + 8 * v9) + 16))(*(*(&v14 + 1) + 8 * v9));
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      v12 = +[STPromise dispatchGroup];
      dispatch_group_leave(v12);
LABEL_16:

      break;
  }

  observers = self->_observers;
  self->_observers = 0;

  objc_sync_exit(v3);
}

- (void)observeOnQueue:(id)a3 resolve:(id)a4 cancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_stateLock;
  objc_sync_enter(v11);
  state = self->_state;
  switch(state)
  {
    case 2:
      v19 = +[STPromise dispatchGroup];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10005C77C;
      v20[3] = &unk_1001A4330;
      v17 = &v21;
      v21 = v10;
      dispatch_group_async(v19, v8, v20);

      goto LABEL_9;
    case 1:
      v18 = +[STPromise dispatchGroup];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005C764;
      block[3] = &unk_1001A49C0;
      v17 = &v23;
      block[4] = self;
      v23 = v9;
      dispatch_group_async(v18, v8, block);

LABEL_9:
      break;
    case 0:
      observers = self->_observers;
      if (!observers)
      {
        v14 = objc_opt_new();
        v15 = self->_observers;
        self->_observers = v14;

        observers = self->_observers;
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10005C638;
      v24[3] = &unk_1001A4A30;
      v25 = v8;
      v26 = v9;
      v27 = v10;
      v16 = objc_retainBlock(v24);
      [(NSMutableArray *)observers addObject:v16];
      v17 = &v25;

      goto LABEL_9;
  }

  objc_sync_exit(v11);
}

- (id)chainOnQueue:(id)a3 chainedResolve:(id)a4 chainedError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10005C988;
  v28[3] = &unk_1001A4A58;
  v29 = v8;
  v11 = [[STPromise alloc] initPendingOnQueue:v8];
  v30 = v11;
  v12 = v8;
  v13 = objc_retainBlock(v28);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005CB00;
  v23[3] = &unk_1001A4A80;
  v25 = v9;
  v26 = v10;
  v24 = v11;
  v27 = v13;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005CC04;
  v21[3] = &unk_1001A3180;
  v14 = v24;
  v22 = v14;
  v15 = v13;
  v16 = v10;
  v17 = v9;
  [(STPromise *)self observeOnQueue:v12 resolve:v23 cancel:v21];
  v18 = v22;
  v19 = v14;

  return v14;
}

+ (id)resolved
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005CD1C;
  v4[3] = &unk_1001A4AA0;
  v4[4] = a1;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)all:(id)a3
{
  v4 = a3;
  v5 = [a1 createQueue];
  v6 = [a1 onQueue:v5 all:v4];

  return v6;
}

+ (id)onQueue:(id)a3 all:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 count];
  v9 = [STPromise alloc];
  v10 = v9;
  if (v8)
  {
    v11 = [(STPromise *)v9 initPendingOnQueue:v6];
    v12 = +[STPromise dispatchGroup];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005CF18;
    v18[3] = &unk_1001A4AF0;
    v19 = v7;
    v22 = a1;
    v20 = v6;
    v13 = v11;
    v21 = v13;
    dispatch_group_async(v12, v20, v18);

    v14 = v21;
    v15 = v13;
  }

  else
  {
    v16 = [STResult success:&__NSArray0__struct];
    v15 = [(STPromise *)v10 initWithResolution:v16 onQueue:v6];
  }

  return v15;
}

- (id)catch:(id)a3
{
  v4 = a3;
  v5 = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:v5 catch:v4];

  return v6;
}

- (id)onQueue:(id)a3 catch:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005D820;
  v9[3] = &unk_1001A4B18;
  v10 = a4;
  v6 = v10;
  v7 = [(STPromise *)self chainOnQueue:a3 chainedResolve:0 chainedError:v9];

  return v7;
}

- (id)catch
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D910;
  v4[3] = &unk_1001A4B40;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)catchOn
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D998;
  v4[3] = &unk_1001A4B68;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)do:(id)a3
{
  v4 = a3;
  v5 = [a1 createQueue];
  v6 = [a1 onQueue:v5 do:v4];

  return v6;
}

+ (id)onQueue:(id)a3 do:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[STPromise alloc] initPendingOnQueue:v5];
  v8 = +[STPromise dispatchGroup];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DB30;
  block[3] = &unk_1001A4B90;
  v18 = v6;
  v16 = v5;
  v9 = v7;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_group_async(v8, v10, block);

  v12 = v17;
  v13 = v9;

  return v9;
}

+ (id)doWork
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DD4C;
  v4[3] = &unk_1001A4BB0;
  v4[4] = a1;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)doOn
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DDD4;
  v4[3] = &unk_1001A4BD0;
  v4[4] = a1;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)given:(id)a3
{
  v4 = a3;
  v5 = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:v5 given:v4];

  return v6;
}

- (id)onQueue:(id)a3 given:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005DF1C;
  v9[3] = &unk_1001A4BF8;
  v10 = a4;
  v6 = v10;
  v7 = [(STPromise *)self chainOnQueue:a3 chainedResolve:v9 chainedError:0];

  return v7;
}

- (id)given
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E020;
  v4[3] = &unk_1001A4C20;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)givenOn
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E0A8;
  v4[3] = &unk_1001A4C48;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:v5 then:v4];

  return v6;
}

- (id)onQueue:(id)a3 then:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005E6F8;
  v9[3] = &unk_1001A4BF8;
  v10 = a4;
  v6 = v10;
  v7 = [(STPromise *)self chainOnQueue:a3 chainedResolve:v9 chainedError:0];

  return v7;
}

- (id)then
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E7E0;
  v4[3] = &unk_1001A4C70;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)thenOn
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E868;
  v4[3] = &unk_1001A4C98;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

@end