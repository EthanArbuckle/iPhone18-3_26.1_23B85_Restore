@interface SFAuthenticationStateChangesObserver
- (SFAuthenticationStateChangesObserver)initWithObserver:(id)observer queue:(id)queue;
- (void)stateDidChange;
@end

@implementation SFAuthenticationStateChangesObserver

- (SFAuthenticationStateChangesObserver)initWithObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = SFAuthenticationStateChangesObserver;
  v8 = [(SFAuthenticationStateChangesObserver *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(observerCopy);
    observer = v8->_observer;
    v8->_observer = v9;

    objc_storeStrong(&v8->_queue, queue);
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (void)stateDidChange
{
  observer = [(SFAuthenticationStateChangesObserver *)self observer];

  if (observer)
  {
    queue = [(SFAuthenticationStateChangesObserver *)self queue];
    observer2 = [(SFAuthenticationStateChangesObserver *)self observer];
    dispatch_async(queue, observer2);
  }
}

@end