@interface WiFiP2PXPCExportedObjectProxy
- (id)exportedObject;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
- (void)setExportedObject:(id)a3;
@end

@implementation WiFiP2PXPCExportedObjectProxy

- (id)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)setExportedObject:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_exportedObject, v4);
  v5 = objc_opt_class();

  self->_exportedObjectClass = v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(WiFiP2PXPCExportedObjectProxy *)self exportedObject];
  v6 = [v5 methodSignatureForSelector:a3];

  if (!v6)
  {
    v6 = [(objc_class *)self->_exportedObjectClass instanceMethodSignatureForSelector:a3];
  }

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(WiFiP2PXPCExportedObjectProxy *)self exportedObject];
  if (v4)
  {
    [v5 invokeWithTarget:v4];
  }
}

@end