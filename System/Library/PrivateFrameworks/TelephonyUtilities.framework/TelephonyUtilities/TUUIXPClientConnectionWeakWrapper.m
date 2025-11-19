@interface TUUIXPClientConnectionWeakWrapper
- (TUUIXPCClient)wrappedObject;
- (TUUIXPClientConnectionWeakWrapper)initWithWrappedObject:(id)a3;
@end

@implementation TUUIXPClientConnectionWeakWrapper

- (TUUIXPClientConnectionWeakWrapper)initWithWrappedObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUUIXPClientConnectionWeakWrapper;
  v5 = [(TUUIXPClientConnectionWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrappedObject, v4);
  }

  return v6;
}

- (TUUIXPCClient)wrappedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);

  return WeakRetained;
}

@end