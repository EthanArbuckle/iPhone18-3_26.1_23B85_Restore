@interface TRMPortManager
- (BOOL)_startMatchingNotifications;
- (NSArray)ports;
- (NSString)description;
- (TRMPortManager)initWithMatchingDictionary:(id)a3 andDelegate:(id)a4;
- (TRMPortManagerDelegate)delegate;
- (void)_startMatchingNotifications;
- (void)_stopMatchingNotifications;
- (void)dealloc;
- (void)portDidTerminate:(id)a3;
- (void)portDidUpdate:(id)a3;
- (void)portDidUpdateAuthorizationState:(id)a3;
@end

@implementation TRMPortManager

- (TRMPortManager)initWithMatchingDictionary:(id)a3 andDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412802;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing %@... (matchingDictionary: %@, delegate: %@)", buf, 0x20u);
  }

  v21.receiver = self;
  v21.super_class = TRMPortManager;
  v11 = [(TRMPortManager *)&v21 init];
  v12 = v11;
  if (v11)
  {
    if (v7)
    {
      objc_storeWeak(&v11->_delegate, v8);
      objc_storeStrong(&v12->_ioMatchingDictionary, a3);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [NSString stringWithFormat:@"%@", v14];
      v16 = dispatch_queue_create([v15 UTF8String], 0);
      queue = v12->_queue;
      v12->_queue = v16;

      v18 = +[NSMutableDictionary dictionary];
      portsMutable = v12->_portsMutable;
      v12->_portsMutable = v18;

      [(TRMPortManager *)v12 _startMatchingNotifications];
    }

    else
    {

      v12 = 0;
    }
  }

  return v12;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = TRMPortManager;
  v2 = [(TRMPortManager *)&v4 description];

  return v2;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deallocating %@...", buf, 0xCu);
  }

  [(TRMPortManager *)self _stopMatchingNotifications];
  v5.receiver = self;
  v5.super_class = TRMPortManager;
  [(TRMPortManager *)&v5 dealloc];
}

- (NSArray)ports
{
  v2 = [(TRMPortManager *)self portsMutable];
  v3 = [v2 allValues];

  return v3;
}

- (BOOL)_startMatchingNotifications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(TRMPortManager *)self ioMatchingDictionary];
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Adding matching notifications... (ioMatchingDictionary: %@)", &v10, 0xCu);
  }

  if ([(TRMPortManager *)self matchingNotificationsStarted])
  {
    [(TRMPortManager *)self _stopMatchingNotifications];
  }

  [(TRMPortManager *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  v4 = [(TRMPortManager *)self ioNotificationPort];
  v5 = [(TRMPortManager *)self queue];
  IONotificationPortSetDispatchQueue(v4, v5);

  v6 = [(TRMPortManager *)self ioNotificationPort];
  v7 = [(TRMPortManager *)self ioMatchingDictionary];
  v8 = IOServiceAddMatchingNotification(v6, "IOServiceMatched", v7, _serviceAdded, self, &self->_ioServiceAddedIterator);

  if (v8)
  {
    [(TRMPortManager *)v8 _startMatchingNotifications];
  }

  else
  {
    _serviceAdded(self, [(TRMPortManager *)self ioServiceAddedIterator]);
    [(TRMPortManager *)self setMatchingNotificationsStarted:1];
  }

  return v8 == 0;
}

- (void)_stopMatchingNotifications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(TRMPortManager *)self ioMatchingDictionary];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing matching notifications... (ioMatchingDictionary: %@)", &v4, 0xCu);
  }

  if ([(TRMPortManager *)self ioServiceAddedIterator])
  {
    IOObjectRelease([(TRMPortManager *)self ioServiceAddedIterator]);
  }

  if ([(TRMPortManager *)self ioNotificationPort])
  {
    IONotificationPortDestroy([(TRMPortManager *)self ioNotificationPort]);
  }

  [(TRMPortManager *)self setMatchingNotificationsStarted:0];
}

- (void)portDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(TRMPortManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__TRMPortManager_portDidUpdate___block_invoke;
  v7[3] = &unk_59758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __32__TRMPortManager_portDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 portManager:*(a1 + 32) didUpdatePort:*(a1 + 40)];
  }
}

- (void)portDidUpdateAuthorizationState:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    *buf = 136315138;
    v11 = [v5 UTF8String];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "portDidUpdateAuthorizationState: %s\n", buf, 0xCu);
  }

  v6 = [(TRMPortManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __50__TRMPortManager_portDidUpdateAuthorizationState___block_invoke;
  v8[3] = &unk_59758;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __50__TRMPortManager_portDidUpdateAuthorizationState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 portManager:*(a1 + 32) didUpdateAuthorizationStateForPort:*(a1 + 40)];
  }
}

- (void)portDidTerminate:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    *buf = 136315138;
    v11 = [v5 UTF8String];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "portDidTerminate: %s\n", buf, 0xCu);
  }

  v6 = [(TRMPortManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __35__TRMPortManager_portDidTerminate___block_invoke;
  v8[3] = &unk_59758;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __35__TRMPortManager_portDidTerminate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) portsMutable];
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) registryEntryID]);
  [v2 removeObjectForKey:v3];

  v4 = [*(a1 + 32) delegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 portManager:*(a1 + 32) didRemovePort:*(a1 + 40)];
  }
}

- (TRMPortManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startMatchingNotifications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOServiceAddMatchingNotification failed: %08x", v2, 8u);
  }
}

- (void)_handleServiceAdded:(int)a1 .cold.1(int a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "IORegistryEntryGetRegistryEntryID failed: %08x", v4, 8u);
  }

  *a2 = 0;
}

- (void)_handleServiceAdded:(uint64_t *)a1 .cold.2(uint64_t *a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5 = 134217984;
    v6 = v4;
    _os_log_debug_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEBUG, "Port object already exists for service, ignoring... (registryEntryID: %llu)", &v5, 0xCu);
  }

  *a2 = 0;
}

@end