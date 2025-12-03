@interface VMDCarrierGreetingDataSource
- (NSOperationQueue)delegateQueue;
- (VMDCarrierGreetingDataSource)init;
- (VMDCarrierGreetingDataSource)initWithServicesController:(id)controller telephonyClient:(id)client;
- (VMGreetingDataSourceDelegate)delegate;
- (id)greetingForUUID:(id)d;
- (void)_handleGreetingChangedByCarrier:(id)carrier;
- (void)notifyDelegateGreetingDidChangeByCarrierForAccountUUID:(id)d;
- (void)notifyDelegateGreetingDidChangeForAccountUUID:(id)d;
- (void)notifyDelegateGreetingWillChangeForAccountUUID:(id)d;
- (void)performAtomicAccessorBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setDelegateQueue:(id)queue;
- (void)setGreeting:(id)greeting forUUID:(id)d;
@end

@implementation VMDCarrierGreetingDataSource

- (VMDCarrierGreetingDataSource)init
{
  [(VMDCarrierGreetingDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMDCarrierGreetingDataSource)initWithServicesController:(id)controller telephonyClient:(id)client
{
  controllerCopy = controller;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = VMDCarrierGreetingDataSource;
  v8 = [(VMDCarrierGreetingDataSource *)&v18 init];
  if (v8)
  {
    vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
    v10 = NSStringFromSelector("queue");
    v11 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v10];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v12;

    v8->_accessorLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(NSMutableDictionary);
    greetingsByUUID = v8->_greetingsByUUID;
    v8->_greetingsByUUID = v14;

    [(VMDCarrierGreetingDataSource *)v8 setCarrierServicesController:controllerCopy];
    [(VMDCarrierGreetingDataSource *)v8 setTelephonyClient:clientCopy];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v8 selector:"_handleGreetingChangedByCarrier:" name:@"VVServiceGreetingChangedByCarrierNotification" object:0];
  }

  return v8;
}

- (void)_handleGreetingChangedByCarrier:(id)carrier
{
  carrierCopy = carrier;
  v5 = carrierCopy;
  if (carrierCopy)
  {
    userInfo = [carrierCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [v5 userInfo];
      v8 = [userInfo2 valueForKey:@"accountUUID"];

      if (v8)
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10001B354;
        v9[3] = &unk_1000ED450;
        v9[4] = self;
        v10 = v8;
        [(VMDCarrierGreetingDataSource *)self performAtomicAccessorBlock:v9];
      }
    }
  }
}

- (VMGreetingDataSourceDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001B460;
  v9 = sub_10001B470;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B478;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierGreetingDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B558;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMDCarrierGreetingDataSource *)selfCopy performAtomicAccessorBlock:v4];
}

- (NSOperationQueue)delegateQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001B460;
  v9 = sub_10001B470;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B6C8;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierGreetingDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegateQueue:(id)queue
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B7A8;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  queueCopy = queue;
  v3 = queueCopy;
  [(VMDCarrierGreetingDataSource *)selfCopy performAtomicAccessorBlock:v4];
}

- (id)greetingForUUID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10001B460;
  v14 = sub_10001B470;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B940;
  v6[3] = &unk_1000EDDA0;
  v9 = &v10;
  selfCopy = self;
  dCopy = d;
  v8 = dCopy;
  [(VMDCarrierGreetingDataSource *)selfCopy performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)setGreeting:(id)greeting forUUID:(id)d
{
  greetingCopy = greeting;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001BA54;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  dCopy = d;
  v11 = greetingCopy;
  v7 = greetingCopy;
  v8 = dCopy;
  [(VMDCarrierGreetingDataSource *)self performAtomicAccessorBlock:v9];
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    sub_10009C104(a2, self);
  }
}

- (void)notifyDelegateGreetingWillChangeForAccountUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_delegateQueue);
  underlyingQueue = [v6 underlyingQueue];

  if (!underlyingQueue)
  {
    underlyingQueue = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BD1C;
    block[3] = &unk_1000ED478;
    v10 = WeakRetained;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(underlyingQueue, block);
  }
}

- (void)notifyDelegateGreetingDidChangeForAccountUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_delegateQueue);
  underlyingQueue = [v6 underlyingQueue];

  if (!underlyingQueue)
  {
    underlyingQueue = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BE34;
    block[3] = &unk_1000ED478;
    v10 = WeakRetained;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(underlyingQueue, block);
  }
}

- (void)notifyDelegateGreetingDidChangeByCarrierForAccountUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_delegateQueue);
  underlyingQueue = [v6 underlyingQueue];

  if (!underlyingQueue)
  {
    underlyingQueue = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  if (objc_opt_respondsToSelector())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001BF44;
    v9[3] = &unk_1000ED450;
    v10 = WeakRetained;
    v11 = dCopy;
    dispatch_async(underlyingQueue, v9);
  }
}

@end