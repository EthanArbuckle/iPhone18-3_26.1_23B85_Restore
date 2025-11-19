@interface AAXPCEventPublisherDaemon
+ (id)sharedAAXPCEventPublisherDaemon;
- (AAXPCEventPublisherDaemon)init;
- (void)_activate;
- (void)_deviceDiscoveryEnsureStarted;
- (void)_deviceDiscoveryEnsureStopped;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)_ensureEventPublisherCreated;
- (void)_fireEventIfNeededForDevice:(id)a3 subscription:(id)a4;
- (void)_handleEventPublisherAction:(unsigned int)a3 withToken:(unint64_t)a4 descriptor:(id)a5;
- (void)_invalidate;
- (void)_subscriptionAddedWithToken:(unint64_t)a3 descriptor:(id)a4;
- (void)_subscriptionRemovedForToken:(unint64_t)a3;
- (void)activate;
- (void)invalidate;
@end

@implementation AAXPCEventPublisherDaemon

+ (id)sharedAAXPCEventPublisherDaemon
{
  if (qword_1002FA208 != -1)
  {
    sub_1001F9984();
  }

  v3 = qword_1002FA200;

  return v3;
}

- (AAXPCEventPublisherDaemon)init
{
  v8.receiver = self;
  v8.super_class = AAXPCEventPublisherDaemon;
  v2 = [(AAXPCEventPublisherDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAXPCEventPublisherDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1980;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    v7 = v2;
    self->_activateCalled = 1;
    if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9998();
    }

    [(AAXPCEventPublisherDaemon *)self _deviceDiscoveryEnsureStarted:v3];

    [(AAXPCEventPublisherDaemon *)self _ensureEventPublisherCreated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1A80;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F99B4();
  }

  [(AAXPCEventPublisherDaemon *)self _deviceDiscoveryEnsureStopped];
  [(NSMutableDictionary *)self->_subscriptionMap removeAllObjects];
  subscriptionMap = self->_subscriptionMap;
  self->_subscriptionMap = 0;

  xpcEventPublisher = self->_xpcEventPublisher;
  self->_xpcEventPublisher = 0;

  self->_activateCalled = 0;
}

- (void)_ensureEventPublisherCreated
{
  if (!self->_xpcEventPublisher)
  {
    if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F99D0();
    }

    dispatchQueue = self->_dispatchQueue;
    v4 = xpc_event_publisher_create();
    xpcEventPublisher = self->_xpcEventPublisher;
    self->_xpcEventPublisher = v4;

    v6 = self->_xpcEventPublisher;
    xpc_event_publisher_set_handler();
    v7 = self->_xpcEventPublisher;
    xpc_event_publisher_set_error_handler();
    v8 = self->_xpcEventPublisher;
    xpc_event_publisher_activate();
  }
}

- (void)_handleEventPublisherAction:(unsigned int)a3 withToken:(unint64_t)a4 descriptor:(id)a5
{
  v8 = a5;
  if (a3 == 2)
  {
    if (dword_1002F7310 <= 30)
    {
      if (dword_1002F7310 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        v8 = sub_1001F9A2C();
      }
    }
  }

  else if (a3 == 1)
  {
    v8 = [(AAXPCEventPublisherDaemon *)self _subscriptionRemovedForToken:a4];
  }

  else if (a3)
  {
    if (dword_1002F7310 <= 90)
    {
      if (dword_1002F7310 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        v8 = sub_1001F9A48();
      }
    }
  }

  else
  {
    v8 = [(AAXPCEventPublisherDaemon *)self _subscriptionAddedWithToken:a4 descriptor:?];
  }

  _objc_release_x3(v8);
}

- (void)_fireEventIfNeededForDevice:(id)a3 subscription:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 needsToFireEventForDeviceFound:v9])
  {
    if (dword_1002F7310 <= 40 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9A88(v6, v9);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpcEventPublisher = self->_xpcEventPublisher;
    [v6 token];
    xpc_event_publisher_fire();
  }
}

- (void)_deviceDiscoveryEnsureStarted
{
  p_deviceManager = &self->_deviceManager;
  if (!self->_deviceManager)
  {
    v4 = objc_alloc_init(AADeviceManager);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v5 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D1FD0;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [v4 setDeviceFoundHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D1FDC;
    v9[3] = &unk_1002B7820;
    v9[4] = self;
    [v4 setDeviceLostHandler:v9];
    objc_storeStrong(p_deviceManager, v4);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D1FE8;
    v7[3] = &unk_1002B68A8;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [v6 activateWithCompletion:v7];
  }
}

- (void)_subscriptionAddedWithToken:(unint64_t)a3 descriptor:(id)a4
{
  v6 = a4;
  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    CUPrintXPC();
    v18 = v17 = a3;
    LogPrintF_safe();
  }

  v7 = [AAXPCEventSubscription subscriptionWithToken:a3 descriptor:v6, v17, v18];
  if (v7)
  {
    subscriptionMap = self->_subscriptionMap;
    if (!subscriptionMap)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_subscriptionMap;
      self->_subscriptionMap = v9;

      subscriptionMap = self->_subscriptionMap;
    }

    v11 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)subscriptionMap setObject:v7 forKeyedSubscript:v11];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(AADeviceManager *)self->_deviceManager discoveredDevices];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(AAXPCEventPublisherDaemon *)self _fireEventIfNeededForDevice:*(*(&v19 + 1) + 8 * i) subscription:v7];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_subscriptionRemovedForToken:(unint64_t)a3
{
  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)subscriptionMap setObject:0 forKeyedSubscript:v6];

    if (![(NSMutableDictionary *)self->_subscriptionMap count])
    {
      v7 = self->_subscriptionMap;
      self->_subscriptionMap = 0;
    }
  }
}

- (void)_deviceDiscoveryEnsureStopped
{
  if (self->_deviceManager)
  {
    if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    [(AADeviceManager *)self->_deviceManager invalidate];
    deviceManager = self->_deviceManager;
    self->_deviceManager = 0;
  }
}

- (void)_deviceFound:(id)a3
{
  v4 = a3;
  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    v6 = [(NSMutableDictionary *)subscriptionMap allValues];
    sub_1000D211C();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v6);
          }

          [(AAXPCEventPublisherDaemon *)self _fireEventIfNeededForDevice:v4 subscription:*(8 * i)];
        }

        sub_1000D211C();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

- (void)_deviceLost:(id)a3
{
  v4 = a3;
  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    v6 = [(NSMutableDictionary *)subscriptionMap allValues];
    sub_1000D211C();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(8 * i) deviceLost:v4];
        }

        sub_1000D211C();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

@end