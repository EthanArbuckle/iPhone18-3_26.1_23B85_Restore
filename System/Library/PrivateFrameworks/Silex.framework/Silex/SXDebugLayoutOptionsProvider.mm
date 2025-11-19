@interface SXDebugLayoutOptionsProvider
- (SXDebugLayoutOptionsProvider)init;
- (int64_t)overrideBundleSubscriptionStatus:(int64_t)a3;
- (int64_t)overrideChannelSubscriptionStatus:(int64_t)a3;
- (int64_t)overrideNewsletterSubscriptionStatus:(unint64_t)a3;
- (int64_t)overrideOfferUpsellScenario:(int64_t)a3;
- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)a3;
- (unint64_t)overrideViewingLocation:(unint64_t)a3;
- (void)addObserver:(id)a3;
- (void)notifyObservers;
- (void)removeObserver:(id)a3;
- (void)setBundleSubscriptionStatus:(int64_t)a3;
- (void)setChannelSubscriptionStatus:(int64_t)a3;
- (void)setNewsletterSubscriptionStatus:(unint64_t)a3;
- (void)setOfferIdentifier:(id)a3;
- (void)setOfferUpsellScenario:(int64_t)a3;
- (void)setSubscriptionActivationEligibility:(int64_t)a3;
- (void)setViewingLocation:(unint64_t)a3;
@end

@implementation SXDebugLayoutOptionsProvider

- (SXDebugLayoutOptionsProvider)init
{
  v8.receiver = self;
  v8.super_class = SXDebugLayoutOptionsProvider;
  v2 = [(SXDebugLayoutOptionsProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(v2 + 8);
    *(v2 + 8) = v3;

    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v6 = vnegq_f64(v5);
    *(v2 + 8) = v6;
    *(v2 + 24) = v6;
    *(v2 + 40) = v6;
  }

  return v2;
}

- (unint64_t)overrideViewingLocation:(unint64_t)a3
{
  if (self->_viewingLocation == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_viewingLocation;
  }
}

- (int64_t)overrideBundleSubscriptionStatus:(int64_t)a3
{
  if (self->_bundleSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_bundleSubscriptionStatus;
  }
}

- (int64_t)overrideChannelSubscriptionStatus:(int64_t)a3
{
  if (self->_channelSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_channelSubscriptionStatus;
  }
}

- (int64_t)overrideNewsletterSubscriptionStatus:(unint64_t)a3
{
  if (self->_newsletterSubscriptionStatus == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_newsletterSubscriptionStatus;
  }
}

- (int64_t)overrideOfferUpsellScenario:(int64_t)a3
{
  if (self->_offerUpsellScenario == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_offerUpsellScenario;
  }
}

- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)a3
{
  if (self->_subscriptionActivationEligibility == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return self->_subscriptionActivationEligibility;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SXDebugLayoutOptionsProvider *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SXDebugLayoutOptionsProvider *)self observers];
  [v5 removeObject:v4];
}

- (void)setViewingLocation:(unint64_t)a3
{
  if (self->_viewingLocation != a3)
  {
    self->_viewingLocation = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setBundleSubscriptionStatus:(int64_t)a3
{
  if (self->_bundleSubscriptionStatus != a3)
  {
    self->_bundleSubscriptionStatus = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setChannelSubscriptionStatus:(int64_t)a3
{
  if (self->_channelSubscriptionStatus != a3)
  {
    self->_channelSubscriptionStatus = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setNewsletterSubscriptionStatus:(unint64_t)a3
{
  if (self->_newsletterSubscriptionStatus != a3)
  {
    self->_newsletterSubscriptionStatus = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setOfferUpsellScenario:(int64_t)a3
{
  if (self->_offerUpsellScenario != a3)
  {
    self->_offerUpsellScenario = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setSubscriptionActivationEligibility:(int64_t)a3
{
  if (self->_subscriptionActivationEligibility != a3)
  {
    self->_subscriptionActivationEligibility = a3;
    [(SXDebugLayoutOptionsProvider *)self notifyObservers];
  }
}

- (void)setOfferIdentifier:(id)a3
{
  v5 = a3;
  p_offerIdentifier = &self->_offerIdentifier;
  if (self->_offerIdentifier != v5)
  {
    v7 = v5;
    objc_storeStrong(p_offerIdentifier, a3);
    p_offerIdentifier = [(SXDebugLayoutOptionsProvider *)self notifyObservers];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_offerIdentifier, v5);
}

- (void)notifyObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SXDebugLayoutOptionsProvider *)self observers];
  v4 = [v3 copy];

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