@interface _MFContentProtectionObserverWrapper
- (MFContentProtectionObserver)observer;
- (_MFContentProtectionObserverWrapper)initWithObserver:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation _MFContentProtectionObserverWrapper

- (_MFContentProtectionObserverWrapper)initWithObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MFContentProtectionObserverWrapper;
  v8 = [(_MFContentProtectionObserverWrapper *)&v12 init];
  if (v8)
  {
    v9 = [VFWeakReferenceHolder weakReferenceWithObject:v6];
    observerReference = v8->_observerReference;
    v8->_observerReference = v9;

    objc_storeStrong(&v8->_queue, a4);
  }

  return v8;
}

- (MFContentProtectionObserver)observer
{
  v2 = [(VFWeakReferenceHolder *)self->_observerReference retainedReference];

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFContentProtectionObserverWrapper;
  [(_MFContentProtectionObserverWrapper *)&v2 dealloc];
}

@end