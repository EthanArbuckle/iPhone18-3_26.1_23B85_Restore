@interface SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion)initWithObserver:(id)a3 service:(id)a4;
- (SBSHomeScreenServiceHomeScreenApplicationsObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion

- (SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion)initWithObserver:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion;
  v8 = [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)&v11 init];
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
  if (![(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion;
  [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self isInvalidated])
  {
    v3 = [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self service];
    [v3 removeHomeScreenApplicationsObservationAssertion:self];
    [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceHomeScreenApplicationsObserver)observer
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