@interface SXDebugLayoutOptionsProvider
- (SXDebugLayoutOptionsProvider)init;
- (int64_t)overrideBundleSubscriptionStatus:(int64_t)status;
- (int64_t)overrideChannelSubscriptionStatus:(int64_t)status;
- (int64_t)overrideNewsletterSubscriptionStatus:(unint64_t)status;
- (int64_t)overrideOfferUpsellScenario:(int64_t)scenario;
- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)eligibility;
- (unint64_t)overrideViewingLocation:(unint64_t)location;
- (void)addObserver:(id)observer;
- (void)notifyObservers;
- (void)removeObserver:(id)observer;
- (void)setBundleSubscriptionStatus:(int64_t)status;
- (void)setChannelSubscriptionStatus:(int64_t)status;
- (void)setNewsletterSubscriptionStatus:(unint64_t)status;
- (void)setOfferIdentifier:(id)identifier;
- (void)setOfferUpsellScenario:(int64_t)scenario;
- (void)setSubscriptionActivationEligibility:(int64_t)eligibility;
- (void)setViewingLocation:(unint64_t)location;
@end

@implementation SXDebugLayoutOptionsProvider

- (SXDebugLayoutOptionsProvider)init
{
  v8.receiver = self;
  v8.super_class = SXDebugLayoutOptionsProvider;
  v2 = [(SXDebugLayoutOptionsProvider *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(v2 + 8);
    *(v2 + 8) = weakObjectsHashTable;

    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v6 = vnegq_f64(v5);
    *(v2 + 8) = v6;
    *(v2 + 24) = v6;
    *(v2 + 40) = v6;
  }

  return v2;
}

- (unint64_t)overrideViewingLocation:(unint64_t)location
{
  if (self->_viewingLocation == 0x7FFFFFFFFFFFFFFFLL)
  {
    return location;
  }

  else
  {
    return self->_viewingLocation;
  }
}

- (int64_t)overrideBundleSubscriptionStatus:(int64_t)status
{
  if (self->_bundleSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return status;
  }

  else
  {
    return self->_bundleSubscriptionStatus;
  }
}

- (int64_t)overrideChannelSubscriptionStatus:(int64_t)status
{
  if (self->_channelSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return status;
  }

  else
  {
    return self->_channelSubscriptionStatus;
  }
}

- (int64_t)overrideNewsletterSubscriptionStatus:(unint64_t)status
{
  if (self->_newsletterSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return status;
  }

  else
  {
    return self->_newsletterSubscriptionStatus;
  }
}

- (int64_t)overrideOfferUpsellScenario:(int64_t)scenario
{
  if (self->_offerUpsellScenario == 0x7FFFFFFFFFFFFFFFLL)
  {
    return scenario;
  }

  else
  {
    return self->_offerUpsellScenario;
  }
}

- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)eligibility
{
  if (self->_subscriptionActivationEligibility == 0x7FFFFFFFFFFFFFFFLL)
  {
    return eligibility;
  }

  else
  {
    return self->_subscriptionActivationEligibility;
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXDebugLayoutOptionsProvider *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXDebugLayoutOptionsProvider *)self observers];
  [observers removeObject:observerCopy];
}

- (void)setViewingLocation:(unint64_t)location
{
  if (self->_viewingLocation != location)
  {
    self->_viewingLocation = location;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setBundleSubscriptionStatus:(int64_t)status
{
  if (self->_bundleSubscriptionStatus != status)
  {
    self->_bundleSubscriptionStatus = status;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setChannelSubscriptionStatus:(int64_t)status
{
  if (self->_channelSubscriptionStatus != status)
  {
    self->_channelSubscriptionStatus = status;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setNewsletterSubscriptionStatus:(unint64_t)status
{
  if (self->_newsletterSubscriptionStatus != status)
  {
    self->_newsletterSubscriptionStatus = status;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setOfferUpsellScenario:(int64_t)scenario
{
  if (self->_offerUpsellScenario != scenario)
  {
    self->_offerUpsellScenario = scenario;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setSubscriptionActivationEligibility:(int64_t)eligibility
{
  if (self->_subscriptionActivationEligibility != eligibility)
  {
    self->_subscriptionActivationEligibility = eligibility;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setOfferIdentifier:(id)identifier
{
  identifierCopy = identifier;
  p_offerIdentifier = &self->_offerIdentifier;
  if (self->_offerIdentifier != identifierCopy)
  {
    v7 = identifierCopy;
    objc_storeStrong(p_offerIdentifier, identifier);
    p_offerIdentifier = [(SXDebugLayoutOptionsProvider *)self notifyObservers];
    identifierCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_offerIdentifier, identifierCopy);
}

- (void)notifyObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(SXDebugLayoutOptionsProvider *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) debugLayoutOptionsDidChange:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end