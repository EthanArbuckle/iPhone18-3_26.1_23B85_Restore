@interface TUUIXPClientConnectionWeakWrapper
- (TUUIXPCClient)wrappedObject;
- (TUUIXPClientConnectionWeakWrapper)initWithWrappedObject:(id)object;
@end

@implementation TUUIXPClientConnectionWeakWrapper

- (TUUIXPClientConnectionWeakWrapper)initWithWrappedObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = TUUIXPClientConnectionWeakWrapper;
  v5 = [(TUUIXPClientConnectionWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrappedObject, objectCopy);
  }

  return v6;
}

- (TUUIXPCClient)wrappedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);

  return WeakRetained;
}

@end