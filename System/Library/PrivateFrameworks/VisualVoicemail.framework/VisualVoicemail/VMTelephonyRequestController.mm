@interface VMTelephonyRequestController
- (VMTelephonyRequest)pendingRequest;
- (VMTelephonyRequestController)init;
- (VMTelephonyRequestController)initWithQueue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addRequest:(id)request;
- (void)execute;
- (void)executeRequest:(id)request;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performAtomicDelegateBlock:(id)block;
- (void)postResponse:(id)response forRequest:(id)request;
- (void)removeDelegate:(id)delegate;
- (void)removeRequest:(id)request;
- (void)setPendingRequest:(id)request;
@end

@implementation VMTelephonyRequestController

- (VMTelephonyRequestController)init
{
  vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
  v4 = NSStringFromSelector("queue");
  v5 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v4];

  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_create([v5 UTF8String], v6);
  v8 = [(VMTelephonyRequestController *)self initWithQueue:v7];

  return v8;
}

- (VMTelephonyRequestController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = VMTelephonyRequestController;
  v6 = [(VMTelephonyRequestController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_accessorLock._os_unfair_lock_opaque = 0;
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v7->_delegateToQueue;
    v7->_delegateToQueue = v8;

    objc_storeStrong(&v7->_queue, queue);
    v10 = objc_alloc_init(NSMutableOrderedSet);
    requests = v7->_requests;
    v7->_requests = v10;
  }

  return v7;
}

- (VMTelephonyRequest)pendingRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100004EA4;
  v9 = sub_100004EB4;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004EBC;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMTelephonyRequestController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setPendingRequest:(id)request
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004F64;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  [(VMTelephonyRequestController *)selfCopy performAtomicAccessorBlock:v4];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005048;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  queueCopy = queue;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = queueCopy;
  [(VMTelephonyRequestController *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005140;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMTelephonyRequestController *)selfCopy performAtomicDelegateBlock:v4];
}

- (void)addRequest:(id)request
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005288;
  v5[3] = &unk_1000ED4A0;
  selfCopy = self;
  requestCopy = request;
  v7 = requestCopy;
  v8 = &v9;
  [(VMTelephonyRequestController *)selfCopy performAtomicAccessorBlock:v5];
  if (*(v10 + 24) == 1)
  {
    [(VMTelephonyRequestController *)self execute];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)removeRequest:(id)request
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005368;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  [(VMTelephonyRequestController *)selfCopy performAtomicAccessorBlock:v4];
}

- (void)execute
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100004EA4;
  v8 = sub_100004EB4;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005468;
  v3[3] = &unk_1000ED4C8;
  v3[4] = self;
  v3[5] = &v4;
  [(VMTelephonyRequestController *)self performAtomicAccessorBlock:v3];
  if (v5[5])
  {
    [(VMTelephonyRequestController *)self executeRequest:?];
  }

  _Block_object_dispose(&v4, 8);
}

- (void)executeRequest:(id)request
{
  requestCopy = request;
  v5 = [VMTelephonyResponse alloc];
  subscription = [requestCopy subscription];
  v7 = [(VMTelephonyResponse *)v5 initWithSubscription:subscription error:0];

  [(VMTelephonyRequestController *)self postResponse:v7 forRequest:requestCopy];
}

- (void)postResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000056C8;
  v13[3] = &unk_1000ED450;
  v13[4] = self;
  requestCopy = request;
  v14 = requestCopy;
  [(VMTelephonyRequestController *)self performAtomicAccessorBlock:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005720;
  v10[3] = &unk_1000ED478;
  v10[4] = self;
  v11 = responseCopy;
  v12 = requestCopy;
  v8 = requestCopy;
  v9 = responseCopy;
  [(VMTelephonyRequestController *)self performAtomicDelegateBlock:v10];
  [(VMTelephonyRequestController *)self execute];
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
    sub_10009B2A8(a2, self);
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
    sub_10009B324(a2, self);
  }
}

@end