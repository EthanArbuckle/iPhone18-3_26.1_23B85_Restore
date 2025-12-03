@interface RTObserverRecord
- (RTObserverRecord)initWithObserver:(id)observer selector:(SEL)selector;
- (SEL)selector;
- (id)observer;
- (void)setSelector:(SEL)selector;
@end

@implementation RTObserverRecord

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (RTObserverRecord)initWithObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = RTObserverRecord;
  v7 = [(RTObserverRecord *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, observerCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end