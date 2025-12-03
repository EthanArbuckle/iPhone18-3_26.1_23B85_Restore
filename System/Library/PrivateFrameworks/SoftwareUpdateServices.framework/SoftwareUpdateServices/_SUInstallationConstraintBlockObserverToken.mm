@interface _SUInstallationConstraintBlockObserverToken
- (_SUInstallationConstraintBlockObserverToken)initWithObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SUInstallationConstraintBlockObserverToken

- (_SUInstallationConstraintBlockObserverToken)initWithObserver:(id)observer
{
  observerCopy = observer;
  v15.receiver = self;
  v15.super_class = _SUInstallationConstraintBlockObserverToken;
  v5 = [(_SUInstallationConstraintBlockObserverToken *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
    v7 = SULogInstallConstraints();
    SULogDebugForSubsystem(v7, @"[Token] Create: %@", v8, v9, v10, v11, v12, v13, v6);
  }

  return v6;
}

- (void)dealloc
{
  v3 = SULogInstallConstraints();
  SULogDebugForSubsystem(v3, @"[Token] Dealloc: %@", v4, v5, v6, v7, v8, v9, self);

  [(_SUInstallationConstraintBlockObserverToken *)self invalidate];
  v10.receiver = self;
  v10.super_class = _SUInstallationConstraintBlockObserverToken;
  [(_SUInstallationConstraintBlockObserverToken *)&v10 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v4 = SULogInstallConstraints();
    SULogDebugForSubsystem(v4, @"[Token] Invalidate: %@", v5, v6, v7, v8, v9, v10, self);

    self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained _removeToken:self];
  }
}

@end