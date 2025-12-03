@interface BKHIDEventClient
- (BKHIDEventClient)init;
- (BKHIDEventClient)initWithPid:(int)pid sendRight:(id)right queue:(id)queue processName:(id)name;
- (BKHIDEventClientDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_queue_invalidate;
- (void)_queue_performDelegateCallout:(id)callout;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
@end

@implementation BKHIDEventClient

- (BKHIDEventClientDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AFA0;
  v10 = sub_10000B08C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AB20;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ABA8;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_invalidate
{
  if (!self->_queue_invalidated)
  {
    self->_queue_invalidated = 1;
    queue_delegate = self->_queue_delegate;
    self->_queue_delegate = 0;

    [(BSProcessDeathWatcher *)self->_queue_pidWatcher invalidate];
    queue_pidWatcher = self->_queue_pidWatcher;
    self->_queue_pidWatcher = 0;

    [(BSPortDeathSentinel *)self->_queue_portSentinel invalidate];
    queue_portSentinel = self->_queue_portSentinel;
    self->_queue_portSentinel = 0;
  }
}

- (void)dealloc
{
  if (!self->_queue_invalidated)
  {
    v7 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue_invalidated"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      selfCopy = self;
      LOWORD(v19) = 2114;
      *(&v19 + 2) = @"BKHIDEventClient.m";
      WORD5(v19) = 1024;
      HIDWORD(v19) = 79;
      v20 = 2114;
      v21 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10000AF98);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = sub_10000AFA0;
  *&v19 = sub_10000B08C;
  v3 = self->_queue;
  *(&v19 + 1) = v3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10000AFA0;
  v15[4] = sub_10000B08C;
  v16 = self->_queue_sendRight;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10000AFA0;
  v13[4] = sub_10000B08C;
  v14 = self->_queue_procName;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B024;
  block[3] = &unk_1000F9E78;
  block[4] = buf;
  block[5] = v15;
  block[6] = v13;
  dispatch_async(v3, block);
  queue = self->_queue;
  self->_queue = 0;

  queue_delegate = self->_queue_delegate;
  self->_queue_delegate = 0;

  self->_queue_pid = -1;
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(buf, 8);

  v11.receiver = self;
  v11.super_class = BKHIDEventClient;
  [(BKHIDEventClient *)&v11 dealloc];
}

- (void)_queue_performDelegateCallout:(id)callout
{
  calloutCopy = callout;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014328;
  v7[3] = &unk_1000FC300;
  v7[4] = self;
  v8 = calloutCopy;
  v6 = calloutCopy;
  dispatch_async(v5, v7);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKHIDEventClient *)self succinctDescriptionBuilder];
  v5 = succinctDescriptionBuilder;
  queue_procName = self->_queue_procName;
  if (queue_procName)
  {
    v7 = [succinctDescriptionBuilder appendObject:queue_procName withName:@"name"];
  }

  else
  {
    v8 = [succinctDescriptionBuilder appendInt:self->_queue_pid withName:@"pid"];
  }

  queue_sendRight = self->_queue_sendRight;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014484;
  v12[3] = &unk_1000F9EA0;
  v10 = v5;
  v13 = v10;
  [(BSMachPortSendRight *)queue_sendRight accessPort:v12];

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKHIDEventClient *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKHIDEventClient *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014644;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (BKHIDEventClient)initWithPid:(int)pid sendRight:(id)right queue:(id)queue processName:(id)name
{
  rightCopy = right;
  queueCopy = queue;
  nameCopy = name;
  v38.receiver = self;
  v38.super_class = BKHIDEventClient;
  v14 = [(BKHIDEventClient *)&v38 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    if (!v15->_queue)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [NSString stringWithFormat:@"<%@: (pid: %d) %p>", v17, v15->_queue_pid, v15];
      Serial = BSDispatchQueueCreateSerial();
      queue = v15->_queue;
      v15->_queue = Serial;
    }

    v15->_queue_pid = pid;
    objc_storeStrong(&v15->_queue_sendRight, right);
    if (pid >= 1)
    {
      v21 = [nameCopy copy];
      queue_procName = v15->_queue_procName;
      v15->_queue_procName = v21;
    }

    if ([(BKHIDEventClient *)v15 _deathByPid])
    {
      v23 = [BSProcessDeathWatcher alloc];
      queue_pid = v15->_queue_pid;
      v25 = v15->_queue;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000148DC;
      v36[3] = &unk_1000FD150;
      v26 = &v37;
      v27 = v15;
      v37 = v27;
      v28 = [v23 initWithPID:queue_pid queue:v25 deathHandler:v36];
      queue_pidWatcher = v27->_queue_pidWatcher;
      v27->_queue_pidWatcher = v28;

LABEL_10:
      goto LABEL_11;
    }

    if ([(BKHIDEventClient *)v15 _deathBySendRight])
    {
      v30 = [[BSPortDeathSentinel alloc] initWithSendRight:v15->_queue_sendRight];
      queue_portSentinel = v15->_queue_portSentinel;
      v15->_queue_portSentinel = v30;

      [(BSPortDeathSentinel *)v15->_queue_portSentinel setQueue:v15->_queue];
      v32 = v15->_queue_portSentinel;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000149E8;
      v34[3] = &unk_1000FD150;
      v26 = &v35;
      v35 = v15;
      [(BSPortDeathSentinel *)v32 activateWithHandler:v34];
      goto LABEL_10;
    }
  }

LABEL_11:

  return v15;
}

- (BKHIDEventClient)init
{
  v4 = [NSString stringWithFormat:@"use initWithPid:..."];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKHIDEventClient.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end