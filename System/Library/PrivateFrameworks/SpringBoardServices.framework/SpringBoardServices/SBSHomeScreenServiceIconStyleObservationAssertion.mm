@interface SBSHomeScreenServiceIconStyleObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceIconStyleObservationAssertion)initWithObserver:(id)a3 service:(id)a4;
- (SBSHomeScreenServiceIconStyleObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceIconStyleObservationAssertion

- (void)invalidate
{
  if (![(SBSHomeScreenServiceIconStyleObservationAssertion *)self isInvalidated])
  {
    v3 = [(SBSHomeScreenServiceIconStyleObservationAssertion *)self service];
    [v3 removeIconStyleObservationAssertion:self];
    [(SBSHomeScreenServiceIconStyleObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceIconStyleObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (SBSHomeScreenServiceIconStyleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)dealloc
{
  if (![(SBSHomeScreenServiceIconStyleObservationAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceIconStyleObservationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBSHomeScreenServiceIconStyleObservationAssertion;
  [(SBSHomeScreenServiceIconStyleObservationAssertion *)&v5 dealloc];
}

- (SBSHomeScreenServiceIconStyleObservationAssertion)initWithObserver:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceIconStyleObservationAssertion;
  v8 = [(SBSHomeScreenServiceIconStyleObservationAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeWeak(&v9->_service, v7);
  }

  return v9;
}

@end