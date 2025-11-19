@interface SBSHomeScreenServiceHomeScreenLayoutObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceHomeScreenLayoutObservationAssertion)initWithObserver:(id)a3 service:(id)a4;
- (SBSHomeScreenServiceLayoutObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceHomeScreenLayoutObservationAssertion

- (SBSHomeScreenServiceHomeScreenLayoutObservationAssertion)initWithObserver:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceHomeScreenLayoutObservationAssertion;
  v8 = [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeWeak(&v9->_service, v7);
  }

  return v9;
}

- (void)dealloc
{
  if (![(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBSHomeScreenServiceHomeScreenLayoutObservationAssertion;
  [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self isInvalidated])
  {
    v3 = [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self service];
    [v3 removeHomeScreenLayoutObservationAssertion:self];
    [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceHomeScreenLayoutObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceLayoutObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SBSHomeScreenService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end