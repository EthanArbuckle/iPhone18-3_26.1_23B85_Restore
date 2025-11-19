@interface SBSHomeScreenServiceIconBadgeValueObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceIconBadgeValueObservationAssertion)initWithObserver:(id)a3 service:(id)a4;
- (SBSHomeScreenServiceIconBadgeValueObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceIconBadgeValueObservationAssertion

- (SBSHomeScreenServiceIconBadgeValueObservationAssertion)initWithObserver:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceIconBadgeValueObservationAssertion;
  v8 = [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)&v11 init];
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
  if (![(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBSHomeScreenServiceIconBadgeValueObservationAssertion;
  [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self isInvalidated])
  {
    v3 = [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self service];
    [v3 removeIconBadgeValueObservationAssertion:self];
    [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceIconBadgeValueObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceIconBadgeValueObserver)observer
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