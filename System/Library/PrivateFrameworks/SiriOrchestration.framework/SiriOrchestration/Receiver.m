@interface Receiver
- (Receiver)initWithWrappedObject:(id)a3;
- (id)wrappedObject;
@end

@implementation Receiver

- (Receiver)initWithWrappedObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = Receiver;
  v5 = [(Receiver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrappedObject, v4);
  }

  return v6;
}

- (id)wrappedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);

  return WeakRetained;
}

@end