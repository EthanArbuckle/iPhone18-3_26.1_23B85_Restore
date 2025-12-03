@interface WiFiP2PXPCExportedObjectProxy
- (id)exportedObject;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)setExportedObject:(id)object;
@end

@implementation WiFiP2PXPCExportedObjectProxy

- (id)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  objc_storeWeak(&self->_exportedObject, objectCopy);
  v5 = objc_opt_class();

  self->_exportedObjectClass = v5;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  exportedObject = [(WiFiP2PXPCExportedObjectProxy *)self exportedObject];
  v6 = [exportedObject methodSignatureForSelector:selector];

  if (!v6)
  {
    v6 = [(objc_class *)self->_exportedObjectClass instanceMethodSignatureForSelector:selector];
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  exportedObject = [(WiFiP2PXPCExportedObjectProxy *)self exportedObject];
  if (exportedObject)
  {
    [invocationCopy invokeWithTarget:exportedObject];
  }
}

@end