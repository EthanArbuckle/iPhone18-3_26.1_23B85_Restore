@interface CSDClientManagerExportedObjectProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (CSDClientManager)clientManager;
- (CSDClientManagerExportedObjectProxy)initWithExportedObject:(id)object;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CSDClientManagerExportedObjectProxy

- (CSDClientManager)clientManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clientManager);

  return WeakRetained;
}

- (CSDClientManagerExportedObjectProxy)initWithExportedObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = CSDClientManagerExportedObjectProxy;
  v6 = [(CSDClientManagerExportedObjectProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportedObject, object);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  exportedObject = [(CSDClientManagerExportedObjectProxy *)self exportedObject];
  v5 = [exportedObject methodSignatureForSelector:selector];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  exportedObject = [(CSDClientManagerExportedObjectProxy *)self exportedObject];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  clientManager = [(CSDClientManagerExportedObjectProxy *)self clientManager];
  [clientManager handleInvocation:invocationCopy synchronously:{-[CSDClientManagerExportedObjectProxy isSynchronous](self, "isSynchronous")}];
}

@end