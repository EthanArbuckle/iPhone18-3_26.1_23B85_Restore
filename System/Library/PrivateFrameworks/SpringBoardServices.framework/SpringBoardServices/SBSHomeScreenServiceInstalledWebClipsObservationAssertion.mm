@interface SBSHomeScreenServiceInstalledWebClipsObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceInstalledWebClipsObservationAssertion)initWithObserver:(id)observer service:(id)service;
- (SBSHomeScreenServiceInstalledWebClipsObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceInstalledWebClipsObservationAssertion

- (SBSHomeScreenServiceInstalledWebClipsObservationAssertion)initWithObserver:(id)observer service:(id)service
{
  observerCopy = observer;
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceInstalledWebClipsObservationAssertion;
  v8 = [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeWeak(&v9->_service, serviceCopy);
  }

  return v9;
}

- (void)dealloc
{
  if (![(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBSHomeScreenServiceInstalledWebClipsObservationAssertion;
  [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self isInvalidated])
  {
    service = [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self service];
    [service removeInstalledWebClipsObservationAssertion:self];
    [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceInstalledWebClipsObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceInstalledWebClipsObserver)observer
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