@interface _WBSDeallocationSentinel
- (WBSDeallocationSentinelObserver)observer;
- (_WBSDeallocationSentinel)initWithObserver:(id)observer context:(id)context;
- (void)dealloc;
@end

@implementation _WBSDeallocationSentinel

- (_WBSDeallocationSentinel)initWithObserver:(id)observer context:(id)context
{
  observerCopy = observer;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _WBSDeallocationSentinel;
  v8 = [(_WBSDeallocationSentinel *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_context, context);
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sentinelDidDeallocateWithContext:self->_context];
  }

  v5.receiver = self;
  v5.super_class = _WBSDeallocationSentinel;
  [(_WBSDeallocationSentinel *)&v5 dealloc];
}

- (WBSDeallocationSentinelObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end