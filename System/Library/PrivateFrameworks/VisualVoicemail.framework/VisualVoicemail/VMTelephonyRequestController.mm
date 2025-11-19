@interface VMTelephonyRequestController
- (VMTelephonyRequest)pendingRequest;
- (VMTelephonyRequestController)init;
- (VMTelephonyRequestController)initWithQueue:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addRequest:(id)a3;
- (void)execute;
- (void)executeRequest:(id)a3;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performAtomicDelegateBlock:(id)a3;
- (void)postResponse:(id)a3 forRequest:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)removeRequest:(id)a3;
- (void)setPendingRequest:(id)a3;
@end

@implementation VMTelephonyRequestController

- (VMTelephonyRequestController)init
{
  v3 = [objc_opt_class() vm_classIdentifier];
  v4 = NSStringFromSelector("queue");
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_create([v5 UTF8String], v6);
  v8 = [(VMTelephonyRequestController *)self initWithQueue:v7];

  return v8;
}

- (VMTelephonyRequestController)initWithQueue:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_queue, a3);
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

- (void)setPendingRequest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004F64;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMTelephonyRequestController *)v5 performAtomicAccessorBlock:v4];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005048;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(VMTelephonyRequestController *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005140;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMTelephonyRequestController *)v5 performAtomicDelegateBlock:v4];
}

- (void)addRequest:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005288;
  v5[3] = &unk_1000ED4A0;
  v6 = self;
  v4 = a3;
  v7 = v4;
  v8 = &v9;
  [(VMTelephonyRequestController *)v6 performAtomicAccessorBlock:v5];
  if (*(v10 + 24) == 1)
  {
    [(VMTelephonyRequestController *)self execute];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)removeRequest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005368;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMTelephonyRequestController *)v5 performAtomicAccessorBlock:v4];
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

- (void)executeRequest:(id)a3
{
  v4 = a3;
  v5 = [VMTelephonyResponse alloc];
  v6 = [v4 subscription];
  v7 = [(VMTelephonyResponse *)v5 initWithSubscription:v6 error:0];

  [(VMTelephonyRequestController *)self postResponse:v7 forRequest:v4];
}

- (void)postResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000056C8;
  v13[3] = &unk_1000ED450;
  v13[4] = self;
  v7 = a4;
  v14 = v7;
  [(VMTelephonyRequestController *)self performAtomicAccessorBlock:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005720;
  v10[3] = &unk_1000ED478;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(VMTelephonyRequestController *)self performAtomicDelegateBlock:v10];
  [(VMTelephonyRequestController *)self execute];
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
    sub_10009B2A8(a2, self);
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
    sub_10009B324(a2, self);
  }
}

@end