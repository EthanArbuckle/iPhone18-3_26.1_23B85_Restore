@interface BKDisplayBrightnessUpdateTransaction
+ (id)_sharedQueue;
+ (void)beginImplicitTransaction;
- (BKDisplayBrightnessUpdateTransaction)initWithIdentifier:(id)a3 transactionManager:(id)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_queue_invalidate;
- (void)_queue_setTimerWithTimeIntervalSinceNow:(double)a3;
- (void)_queue_updateExpirationTimeWithIntervalSinceNow:(double)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKDisplayBrightnessUpdateTransaction

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKDisplayBrightnessUpdateTransaction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKDisplayBrightnessUpdateTransaction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_queue_updateExpirationTimeWithIntervalSinceNow:(double)a3
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  BSAbsoluteMachTimeNow();
  self->_expirationTime = v6 + a3;
  if (!self->_timer)
  {

    [(BKDisplayBrightnessUpdateTransaction *)self _queue_setTimerWithTimeIntervalSinceNow:a3];
  }
}

- (void)_queue_invalidate
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(BKDisplayBrightnessUpdateTransactionManager *)self->_transactionManager _endUpdateTransaction:self];
    v5 = qword_100126068;
    if (qword_100126068 == self)
    {
      qword_100126068 = 0;
    }
  }
}

- (void)_queue_setTimerWithTimeIntervalSinceNow:(double)a3
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  if (a3 <= 0.0)
  {

    [(BKDisplayBrightnessUpdateTransaction *)self _queue_invalidate];
  }

  else
  {
    v6 = [[BSAbsoluteMachTimer alloc] initWithIdentifier:@"BKDisplayBrightnessUpdateTransaction"];
    v7 = self->_timer;
    self->_timer = v6;

    v8 = self->_timer;
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100074E6C;
    v10[3] = &unk_1000FC4D0;
    v10[4] = self;
    [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:queue leewayInterval:v10 queue:a3 handler:0.0];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074F48;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated == YES"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"BKDisplayBrightnessUpdateTransactionManager.m";
      v17 = 1024;
      v18 = 56;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000750C4);
  }

  v8.receiver = self;
  v8.super_class = BKDisplayBrightnessUpdateTransaction;
  [(BKDisplayBrightnessUpdateTransaction *)&v8 dealloc];
}

- (BKDisplayBrightnessUpdateTransaction)initWithIdentifier:(id)a3 transactionManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BKDisplayBrightnessUpdateTransaction;
  v8 = [(BKDisplayBrightnessUpdateTransaction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = +[BKDisplayBrightnessUpdateTransaction _sharedQueue];
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeStrong(&v8->_transactionManager, a4);
    [v7 _beginUpdateTransaction:v8];
  }

  return v8;
}

+ (id)_sharedQueue
{
  if (qword_100126078 != -1)
  {
    dispatch_once(&qword_100126078, &stru_1000FC4A8);
  }

  v3 = qword_100126070;

  return v3;
}

+ (void)beginImplicitTransaction
{
  v2 = +[BKDisplayBrightnessUpdateTransaction _sharedQueue];
  dispatch_sync(v2, &stru_1000FC488);
}

@end