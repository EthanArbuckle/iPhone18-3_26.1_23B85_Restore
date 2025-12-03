@interface STPromise
+ (OS_dispatch_group)dispatchGroup;
+ (id)all:(id)all;
+ (id)createQueue;
+ (id)do:(id)do;
+ (id)doOn;
+ (id)doWork;
+ (id)onQueue:(id)queue all:(id)all;
+ (id)onQueue:(id)queue do:(id)do;
+ (id)pendingPromise;
+ (id)resolved;
+ (id)resolvedWith:(id)with;
- (BOOL)isCanceled;
- (BOOL)isPending;
- (BOOL)isResolved;
- (STPromise)initWithResolution:(id)resolution onQueue:(id)queue;
- (id)catch;
- (id)catch:(id)catch;
- (id)catchOn;
- (id)chainOnQueue:(id)queue chainedResolve:(id)resolve chainedError:(id)error;
- (id)description;
- (id)given;
- (id)given:(id)given;
- (id)givenOn;
- (id)initPendingOnQueue:(id)queue;
- (id)onQueue:(id)queue catch:(id)catch;
- (id)onQueue:(id)queue given:(id)given;
- (id)onQueue:(id)queue then:(id)then;
- (id)then;
- (id)then:(id)then;
- (id)thenOn;
- (void)cancel;
- (void)dealloc;
- (void)observeOnQueue:(id)queue resolve:(id)resolve cancel:(id)cancel;
- (void)resolve:(id)resolve;
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

- (id)initPendingOnQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = STPromise;
  v5 = [(STPromise *)&v12 init];
  queue = v5->_queue;
  v5->_queue = queueCopy;
  v7 = queueCopy;

  v5->_state = 0;
  v8 = objc_opt_new();
  stateLock = v5->_stateLock;
  v5->_stateLock = v8;

  v10 = +[STPromise dispatchGroup];

  dispatch_group_enter(v10);
  return v5;
}

- (STPromise)initWithResolution:(id)resolution onQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = STPromise;
  resolutionCopy = resolution;
  v8 = [(STPromise *)&v16 init];
  queue = v8->_queue;
  v8->_queue = queueCopy;
  v10 = queueCopy;

  v11 = [resolutionCopy copy];
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
  v3 = [self alloc];
  createQueue = [self createQueue];
  v5 = [v3 initPendingOnQueue:createQueue];

  return v5;
}

+ (id)resolvedWith:(id)with
{
  withCopy = with;
  v5 = [self alloc];
  createQueue = [self createQueue];
  v7 = [v5 initWithResolution:withCopy onQueue:createQueue];

  return v7;
}

+ (id)createQueue
{
  v2 = objc_opt_new();
  uUIDString = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.ScreenTimeAgent.promise.%@", uUIDString];

  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(uTF8String, v6);

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
  selfCopy = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_state == 0;
  objc_sync_exit(v3);

  return selfCopy;
}

- (BOOL)isResolved
{
  selfCopy = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_state == 1;
  objc_sync_exit(v3);

  return selfCopy;
}

- (BOOL)isCanceled
{
  selfCopy = self;
  v3 = self->_stateLock;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_state == 2;
  objc_sync_exit(v3);

  return selfCopy;
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

- (void)resolve:(id)resolve
{
  resolveCopy = resolve;
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
      objc_storeStrong(&self->_result, resolve);
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

- (void)observeOnQueue:(id)queue resolve:(id)resolve cancel:(id)cancel
{
  queueCopy = queue;
  resolveCopy = resolve;
  cancelCopy = cancel;
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
      v21 = cancelCopy;
      dispatch_group_async(v19, queueCopy, v20);

      goto LABEL_9;
    case 1:
      v18 = +[STPromise dispatchGroup];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005C764;
      block[3] = &unk_1001A49C0;
      v17 = &v23;
      block[4] = self;
      v23 = resolveCopy;
      dispatch_group_async(v18, queueCopy, block);

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
      v25 = queueCopy;
      v26 = resolveCopy;
      v27 = cancelCopy;
      v16 = objc_retainBlock(v24);
      [(NSMutableArray *)observers addObject:v16];
      v17 = &v25;

      goto LABEL_9;
  }

  objc_sync_exit(v11);
}

- (id)chainOnQueue:(id)queue chainedResolve:(id)resolve chainedError:(id)error
{
  queueCopy = queue;
  resolveCopy = resolve;
  errorCopy = error;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10005C988;
  v28[3] = &unk_1001A4A58;
  v29 = queueCopy;
  v11 = [[STPromise alloc] initPendingOnQueue:queueCopy];
  v30 = v11;
  v12 = queueCopy;
  v13 = objc_retainBlock(v28);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005CB00;
  v23[3] = &unk_1001A4A80;
  v25 = resolveCopy;
  v26 = errorCopy;
  v24 = v11;
  v27 = v13;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005CC04;
  v21[3] = &unk_1001A3180;
  v14 = v24;
  v22 = v14;
  v15 = v13;
  v16 = errorCopy;
  v17 = resolveCopy;
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
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)all:(id)all
{
  allCopy = all;
  createQueue = [self createQueue];
  v6 = [self onQueue:createQueue all:allCopy];

  return v6;
}

+ (id)onQueue:(id)queue all:(id)all
{
  queueCopy = queue;
  allCopy = all;
  v8 = [allCopy count];
  v9 = [STPromise alloc];
  v10 = v9;
  if (v8)
  {
    v11 = [(STPromise *)v9 initPendingOnQueue:queueCopy];
    v12 = +[STPromise dispatchGroup];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005CF18;
    v18[3] = &unk_1001A4AF0;
    v19 = allCopy;
    selfCopy = self;
    v20 = queueCopy;
    v13 = v11;
    v21 = v13;
    dispatch_group_async(v12, v20, v18);

    v14 = v21;
    v15 = v13;
  }

  else
  {
    v16 = [STResult success:&__NSArray0__struct];
    v15 = [(STPromise *)v10 initWithResolution:v16 onQueue:queueCopy];
  }

  return v15;
}

- (id)catch:(id)catch
{
  catchCopy = catch;
  queue = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:queue catch:catchCopy];

  return v6;
}

- (id)onQueue:(id)queue catch:(id)catch
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005D820;
  v9[3] = &unk_1001A4B18;
  catchCopy = catch;
  v6 = catchCopy;
  v7 = [(STPromise *)self chainOnQueue:queue chainedResolve:0 chainedError:v9];

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

+ (id)do:(id)do
{
  doCopy = do;
  createQueue = [self createQueue];
  v6 = [self onQueue:createQueue do:doCopy];

  return v6;
}

+ (id)onQueue:(id)queue do:(id)do
{
  queueCopy = queue;
  doCopy = do;
  v7 = [[STPromise alloc] initPendingOnQueue:queueCopy];
  v8 = +[STPromise dispatchGroup];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DB30;
  block[3] = &unk_1001A4B90;
  v18 = doCopy;
  v16 = queueCopy;
  v9 = v7;
  v17 = v9;
  v10 = queueCopy;
  v11 = doCopy;
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
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)doOn
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DDD4;
  v4[3] = &unk_1001A4BD0;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)given:(id)given
{
  givenCopy = given;
  queue = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:queue given:givenCopy];

  return v6;
}

- (id)onQueue:(id)queue given:(id)given
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005DF1C;
  v9[3] = &unk_1001A4BF8;
  givenCopy = given;
  v6 = givenCopy;
  v7 = [(STPromise *)self chainOnQueue:queue chainedResolve:v9 chainedError:0];

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

- (id)then:(id)then
{
  thenCopy = then;
  queue = [(STPromise *)self queue];
  v6 = [(STPromise *)self onQueue:queue then:thenCopy];

  return v6;
}

- (id)onQueue:(id)queue then:(id)then
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005E6F8;
  v9[3] = &unk_1001A4BF8;
  thenCopy = then;
  v6 = thenCopy;
  v7 = [(STPromise *)self chainOnQueue:queue chainedResolve:v9 chainedError:0];

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