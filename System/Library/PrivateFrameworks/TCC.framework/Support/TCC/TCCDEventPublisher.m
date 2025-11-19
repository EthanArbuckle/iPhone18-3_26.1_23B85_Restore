@interface TCCDEventPublisher
+ (id)sharedPublisher;
- (TCCDEventPublisher)init;
- (void)_addPendingEvent:(id)a3;
- (void)_addSubscriber:(unint64_t)a3 withFilterCriteria:(id)a4;
- (void)_handleError:(int)a3;
- (void)_handleEventWithAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5;
- (void)_publishPendingEvents;
- (void)_removeSubscriber:(unint64_t)a3;
- (void)checkEntitlementForSubscriber:(id)a3 completionHandler:(id)a4;
- (void)publish:(id)a3;
- (void)sendEvent:(id)a3 toSubscriber:(id)a4;
@end

@implementation TCCDEventPublisher

+ (id)sharedPublisher
{
  if (qword_1000C12D8 != -1)
  {
    sub_100058958();
  }

  v3 = qword_1000C12D0;

  return v3;
}

- (TCCDEventPublisher)init
{
  v16.receiver = self;
  v16.super_class = TCCDEventPublisher;
  v2 = [(TCCDEventPublisher *)&v16 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = +[NSMutableArray array];
    pendingEvents = v2->_pendingEvents;
    v2->_pendingEvents = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TCCDEventPublisherQueue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = xpc_event_publisher_create();
    publisher = v2->_publisher;
    v2->_publisher = v10;

    objc_initWeak(&location, v2);
    v13[1] = _NSConcreteStackBlock;
    v13[2] = 3221225472;
    v13[3] = sub_100057A4C;
    v13[4] = &unk_1000A6B90;
    objc_copyWeak(&v14, &location);
    xpc_event_publisher_set_handler();
    objc_copyWeak(v13, &location);
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
    objc_destroyWeak(v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_handleError:(int)a3
{
  v3 = *&a3;
  v4 = tcc_events_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10005896C(v3, v4);
  }
}

- (void)_handleEventWithAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = xpc_copy_description(v8);
    v11 = tcc_events_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = "Add";
      if (a3 == 1)
      {
        v13 = "Remove";
      }

      v14 = 136446722;
      if (a3 == 2)
      {
        v13 = "Initial Barrier";
      }

      v15 = v13;
      v16 = 2048;
      v17 = a4;
      v18 = 2082;
      v19 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Received event: action=%{public}s, token=%llu, descriptor=%{public}s", &v14, 0x20u);
    }

    free(v10);
  }

  else
  {
    v12 = tcc_events_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000589F8(a3, a4, v12);
    }
  }

  switch(a3)
  {
    case 2u:
      self->_receivedInitialBarrier = 1;
      [(TCCDEventPublisher *)self _publishPendingEvents];
      break;
    case 1u:
      [(TCCDEventPublisher *)self _removeSubscriber:a4];
      break;
    case 0u:
      [(TCCDEventPublisher *)self _addSubscriber:a4 withFilterCriteria:v9];
      break;
  }
}

- (void)_addSubscriber:(unint64_t)a3 withFilterCriteria:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057DA4;
  block[3] = &unk_1000A5658;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)checkEntitlementForSubscriber:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 token];
  v9 = v6;
  v7 = v6;
  v8 = v5;
  xpc_event_publisher_fire_with_reply();
}

- (void)_removeSubscriber:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005827C;
  v4[3] = &unk_1000A6C08;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)_addPendingEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_pendingEvents addObject:v4];
  v5 = tcc_events_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100058B34(v4, v5);
  }

  if ([(NSMutableArray *)self->_pendingEvents count]>= 0x21)
  {
    [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
    v6 = tcc_events_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100058BAC(self, v6);
    }
  }
}

- (void)_publishPendingEvents
{
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_pendingEvents;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TCCDEventPublisher *)self publish:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendingEvents removeAllObjects];
}

- (void)sendEvent:(id)a3 toSubscriber:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 token];
  v7 = [v5 xpcObject];
  v8 = xpc_event_publisher_fire();

  if (v8)
  {
    v9 = tcc_events_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2082;
      v15 = xpc_strerror();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Sending %{public}@ to %{public}@ failed with error: %{public}s", &v10, 0x20u);
    }
  }
}

- (void)publish:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005870C;
  v7[3] = &unk_1000A50C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end