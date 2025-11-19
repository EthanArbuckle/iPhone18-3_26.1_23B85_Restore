@interface CSDClientManagerExportedObjectProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (CSDClientManager)clientManager;
- (CSDClientManagerExportedObjectProxy)initWithExportedObject:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation CSDClientManagerExportedObjectProxy

- (CSDClientManager)clientManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clientManager);

  return WeakRetained;
}

- (CSDClientManagerExportedObjectProxy)initWithExportedObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDClientManagerExportedObjectProxy;
  v6 = [(CSDClientManagerExportedObjectProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportedObject, a3);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(CSDClientManagerExportedObjectProxy *)self exportedObject];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(CSDClientManagerExportedObjectProxy *)self exportedObject];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManagerExportedObjectProxy *)self clientManager];
  [v5 handleInvocation:v4 synchronously:{-[CSDClientManagerExportedObjectProxy isSynchronous](self, "isSynchronous")}];
}

@end