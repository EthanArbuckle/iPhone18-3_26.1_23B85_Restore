@interface _MFContentProtectionObserverWrapper
- (MFContentProtectionObserver)observer;
- (_MFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue;
- (void)dealloc;
@end

@implementation _MFContentProtectionObserverWrapper

- (_MFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = _MFContentProtectionObserverWrapper;
  v8 = [(_MFContentProtectionObserverWrapper *)&v12 init];
  if (v8)
  {
    v9 = [VFWeakReferenceHolder weakReferenceWithObject:observerCopy];
    observerReference = v8->_observerReference;
    v8->_observerReference = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

- (MFContentProtectionObserver)observer
{
  retainedReference = [(VFWeakReferenceHolder *)self->_observerReference retainedReference];

  return retainedReference;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFContentProtectionObserverWrapper;
  [(_MFContentProtectionObserverWrapper *)&v2 dealloc];
}

@end