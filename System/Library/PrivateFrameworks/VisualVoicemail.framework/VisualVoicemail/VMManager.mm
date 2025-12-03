@interface VMManager
- (VMManager)init;
- (VMManager)initWithQueue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performAtomicDelegateBlock:(id)block;
- (void)removeDelegate:(id)delegate;
@end

@implementation VMManager

- (VMManager)init
{
  vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
  v4 = NSStringFromSelector("queue");
  v5 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v4];

  v6 = dispatch_queue_create([v5 UTF8String], 0);
  v7 = [(VMManager *)self initWithQueue:v6];

  return v7;
}

- (VMManager)initWithQueue:(id)queue
{
  queueCopy = queue;
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

    objc_storeStrong(&v7->_queue, queue);
  }

  return v7;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000248BC;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  queueCopy = queue;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = queueCopy;
  [(VMManager *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000249B4;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMManager *)selfCopy performAtomicDelegateBlock:v4];
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
    sub_10009C310(a2, self);
  }
}

- (void)performAtomicDelegateBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->_delegateLock);
  }

  else
  {
    sub_10009C38C(a2, self);
  }
}

@end