@interface SFAuthenticationStateChangesObserver
- (SFAuthenticationStateChangesObserver)initWithObserver:(id)a3 queue:(id)a4;
- (void)stateDidChange;
@end

@implementation SFAuthenticationStateChangesObserver

- (SFAuthenticationStateChangesObserver)initWithObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SFAuthenticationStateChangesObserver;
  v8 = [(SFAuthenticationStateChangesObserver *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    observer = v8->_observer;
    v8->_observer = v9;

    objc_storeStrong(&v8->_queue, a4);
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (void)stateDidChange
{
  v3 = [(SFAuthenticationStateChangesObserver *)self observer];

  if (v3)
  {
    queue = [(SFAuthenticationStateChangesObserver *)self queue];
    v4 = [(SFAuthenticationStateChangesObserver *)self observer];
    dispatch_async(queue, v4);
  }
}

@end