@interface BKTouchDeliveryPolicyServer
+ (id)sharedServer;
- (BKTouchDeliveryPolicyServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldCancelTouchesDeliveredToContextId:(unsigned int)id withInitialTouchTimestamp:(double)timestamp;
- (id)filterDestinations:(id)destinations;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
- (void)ipc_addPolicy:(id)policy;
@end

@implementation BKTouchDeliveryPolicyServer

+ (id)sharedServer
{
  if (qword_100126170 != -1)
  {
    dispatch_once(&qword_100126170, &stru_1000FD418);
  }

  v3 = qword_100126168;

  return v3;
}

- (BOOL)shouldCancelTouchesDeliveredToContextId:(unsigned int)id withInitialTouchTimestamp:(double)timestamp
{
  _policy = [(BKTouchDeliveryPolicyServer *)self _policy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A0974;
  v10[3] = &unk_1000FD648;
  idCopy = id;
  *&v10[4] = timestamp;
  v7 = [_policy reducePolicyToObjectWithBlock:v10];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (id)filterDestinations:(id)destinations
{
  destinationsCopy = destinations;
  _policy = [(BKTouchDeliveryPolicyServer *)self _policy];
  v5 = [[NSMutableArray alloc] initWithCapacity:8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = destinationsCopy;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    while (1)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v10);
        v13 = BKLogTouchDeliveryPolicy();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          if (v12)
          {
            v17 = v12[2];
            if (v11)
            {
              goto LABEL_16;
            }

LABEL_22:
            v18 = 0;
          }

          else
          {
            v17 = 0;
            if (!v11)
            {
              goto LABEL_22;
            }

LABEL_16:
            v18 = v11[2];
          }

          *buf = 67109376;
          v33 = v17;
          v34 = 1024;
          v35 = v18;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "host %X -> child %X", buf, 0xEu);
        }

        if (v11)
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000A0D90;
          v25[3] = &unk_1000FD5A8;
          v8 = v11;
          v26 = v8;
          v27 = v12;
          v14 = [_policy reducePolicyToObjectWithBlock:v25];
          bOOLValue = [v14 BOOLValue];
          v16 = BKLogTouchDeliveryPolicy();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            if (v12)
            {
              v19 = v12[2];
            }

            else
            {
              v19 = 0;
            }

            v20 = v8[2];
            *buf = 67109632;
            v33 = v19;
            v34 = 1024;
            v35 = v20;
            v36 = 1024;
            v37 = bOOLValue;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%X -> %X: %{BOOL}u", buf, 0x14u);
          }

          if (!bOOLValue)
          {

            goto LABEL_27;
          }

          [v5 addObject:v12];
        }

        else
        {
          [v5 addObject:v12];
        }

        v8 = v12;

        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      v7 = v21;
      if (!v21)
      {
LABEL_27:

        break;
      }
    }
  }

  return v5;
}

- (void)ipc_addPolicy:(id)policy
{
  policyCopy = policy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A1008;
  v10[3] = &unk_1000FD4D0;
  v10[4] = self;
  v5 = [policyCopy reducePolicyToObjectWithBlock:v10];
  _policy = [(BKTouchDeliveryPolicyServer *)self _policy];
  v7 = [_policy policyIncludingPolicy:policyCopy];
  [(BKTouchDeliveryPolicyServer *)self _queue_setPolicy:v7];

  v8 = BKLogTouchDeliveryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _policy2 = [(BKTouchDeliveryPolicyServer *)self _policy];
    *buf = 138543618;
    v12 = policyCopy;
    v13 = 2114;
    v14 = _policy2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TDPS server got new policy %{public}@, [self _policy] is now %{public}@", buf, 0x16u);
  }
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  connectionCopy = connection;
  invocationCopy = invocation;
  if (sel_isEqual([invocationCopy selector], "ipc_addPolicy:"))
  {
    v18 = 0;
    [invocationCopy getArgument:&v18 atIndex:2];
    v8 = v18;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000A1558;
    v16 = &unk_1000FD4D0;
    v9 = connectionCopy;
    v17 = v9;
    v10 = [v8 reducePolicyToObjectWithBlock:&v13];
    if ([v10 BOOLValue])
    {
      [invocationCopy invoke];
    }

    else
    {
      v11 = BKLogTouchDeliveryPolicy();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v9 processIdentifier];
        v12 = BSProcessDescriptionForPID();
        *buf = 138543362;
        v20 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "not allowing %{public}@ to include policies because it does not have appropriate permissions", buf, 0xCu);
      }
    }
  }

  else
  {
    [invocationCopy invoke];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = BKLogTouchDeliveryPolicy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [connectionCopy processIdentifier];
    v7 = BSProcessDescriptionForPID();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TDPS server connection from %{public}@", &v10, 0xCu);
  }

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BKSTouchDeliveryPolicyServerInterface];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [connectionCopy _setQueue:self->_queue];
  [connectionCopy setDelegate:self];
  [connectionCopy resume];

  return 1;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = BKTouchDeliveryPolicyServer;
  [(BKTouchDeliveryPolicyServer *)&v3 dealloc];
}

- (BKTouchDeliveryPolicyServer)init
{
  v13.receiver = self;
  v13.super_class = BKTouchDeliveryPolicyServer;
  v2 = [(BKTouchDeliveryPolicyServer *)&v13 init];
  if (v2)
  {
    v3 = [BKSTouchDeliveryPolicy policyByCombiningPolicies:&__NSArray0__struct];
    policy = v2->_policy;
    v2->_policy = v3;

    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v7 = objc_alloc_init(NSMutableSet);
    assertionConnections = v2->_assertionConnections;
    v2->_assertionConnections = v7;

    v9 = [NSXPCListener alloc];
    v10 = [v9 initWithMachServiceName:BKSTouchDeliveryPolicyServerMachServiceName];
    listener = v2->_listener;
    v2->_listener = v10;

    [(NSXPCListener *)v2->_listener _setQueue:v2->_queue];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

@end