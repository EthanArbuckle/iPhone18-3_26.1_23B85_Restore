@interface VMManager
- (VMManager)init;
- (VMManager)initWithQueue:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performAtomicDelegateBlock:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation VMManager

- (VMManager)init
{
  v3 = [objc_opt_class() vm_classIdentifier];
  v4 = NSStringFromSelector("queue");
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  v6 = dispatch_queue_create([v5 UTF8String], 0);
  v7 = [(VMManager *)self initWithQueue:v6];

  return v7;
}

- (VMManager)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VMManager;
  v6 = [(VMManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_accessorLock._os_unfair_lock_opaque = 0;
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v7->_delegateToQueue;
    v7->_delegateToQueue = v8;

    objc_storeStrong(&v7->_queue, a3);
  }

  return v7;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000248BC;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(VMManager *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000249B4;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMManager *)v5 performAtomicDelegateBlock:v4];
}

- (void)performAtomicAccessorBlock:(id)a3
{
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    sub_10009C310(a2, self);
  }
}

- (void)performAtomicDelegateBlock:(id)a3
{
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->_delegateLock);
  }

  else
  {
    sub_10009C38C(a2, self);
  }
}

@end