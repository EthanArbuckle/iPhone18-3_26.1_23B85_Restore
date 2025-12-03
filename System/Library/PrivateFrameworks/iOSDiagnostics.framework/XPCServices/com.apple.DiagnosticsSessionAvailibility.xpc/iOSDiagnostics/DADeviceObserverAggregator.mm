@interface DADeviceObserverAggregator
+ (id)aggregatorWithObserverClasses:(id)classes;
- (DADeviceObserverAggregator)init;
- (DADeviceObserverAggregator)initWithObserverClasses:(id)classes;
- (id)allDevices;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)_beginObserving;
- (void)_endObserving;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
- (void)observerDidChangeDevices:(id)devices;
@end

@implementation DADeviceObserverAggregator

+ (id)aggregatorWithObserverClasses:(id)classes
{
  classesCopy = classes;
  v5 = [[self alloc] initWithObserverClasses:classesCopy];

  return v5;
}

- (DADeviceObserverAggregator)init
{
  defaultObserverClasses = [objc_opt_class() defaultObserverClasses];
  v4 = [(DADeviceObserverAggregator *)self initWithObserverClasses:defaultObserverClasses];

  return v4;
}

- (DADeviceObserverAggregator)initWithObserverClasses:(id)classes
{
  classesCopy = classes;
  v27.receiver = self;
  v27.super_class = DADeviceObserverAggregator;
  v5 = [(DADeviceObserverAggregator *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    discoveryQueue = v5->_discoveryQueue;
    v5->_discoveryQueue = v6;

    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [classesCopy count]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = classesCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_opt_new();
          v16 = [DADeviceObserverEnclosure alloc];
          v17 = [(DADeviceObserverEnclosure *)v16 initWithObserver:v15 delegate:v5, v23];
          [v8 addObject:v17];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v18 = [v8 copy];
    observers = v5->_observers;
    v5->_observers = v18;

    v20 = +[NSMutableDictionary dictionary];
    handlers = v5->_handlers;
    v5->_handlers = v20;
  }

  return v5;
}

- (id)allDevices
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(DADeviceObserverAggregator *)self observers];
  v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(observers);
        }

        devices = [*(*(&v11 + 1) + 8 * i) devices];
        [v3 unionSet:devices];
      }

      v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSUUID UUID];
  handlers = [(DADeviceObserverAggregator *)self handlers];
  objc_sync_enter(handlers);
  v7 = [handlerCopy copy];
  v8 = objc_retainBlock(v7);
  handlers2 = [(DADeviceObserverAggregator *)self handlers];
  [handlers2 setObject:v8 forKeyedSubscript:v5];

  objc_sync_exit(handlers);
  [(DADeviceObserverAggregator *)self _beginObserving];

  return v5;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlers = [(DADeviceObserverAggregator *)self handlers];
  [handlers removeObjectForKey:identifierCopy];

  handlers2 = [(DADeviceObserverAggregator *)self handlers];
  v7 = [handlers2 count];

  if (!v7)
  {

    [(DADeviceObserverAggregator *)self _endObserving];
  }
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AEE0;
  v7[3] = &unk_1000144F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)observerDidChangeDevices:(id)devices
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    handlers = [(DADeviceObserverAggregator *)self handlers];
    *buf = 138412290;
    v24 = handlers;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handlers: %@", buf, 0xCu);
  }

  handlers2 = [(DADeviceObserverAggregator *)self handlers];
  v7 = [handlers2 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    *&v10 = 138412546;
    v18 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v8 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * v13), v18, v19}];
        if (v14)
        {
          allDevices = [(DADeviceObserverAggregator *)self allDevices];
          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_retainBlock(v14);
            *buf = v18;
            v24 = v17;
            v25 = 2112;
            v26 = allDevices;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling handler: %@ with devices: %@", buf, 0x16u);
          }

          (v14)[2](v14, allDevices);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }
}

- (void)_beginObserving
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  observers = [(DADeviceObserverAggregator *)self observers];
  v3 = [observers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v7 + 1) + 8 * v6) begin];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_endObserving
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  observers = [(DADeviceObserverAggregator *)self observers];
  v3 = [observers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v7 + 1) + 8 * v6) end];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end