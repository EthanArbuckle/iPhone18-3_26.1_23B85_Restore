@interface SXFormatInteractor
- (SXFormatInteractor)initWithLayoutCoordinator:(id)coordinator layoutOptionsFactory:(id)factory presentationAttributesProvider:(id)provider subscriptionStatusProvider:(id)statusProvider debugLayoutOptionsProvider:(id)optionsProvider newsletterSubscriptionStatusProvider:(id)subscriptionStatusProvider offerUpsellScenarioProvider:(id)scenarioProvider subscriptionActivationEligibilityProvider:(id)self0 offerIdentifierProvider:(id)self1 renderingConfigurationProvider:(id)self2 tagSubscriptionStatusProvider:(id)self3;
- (SXFormatInteractorDelegate)delegate;
- (SXPresentationEnvironment)presentationEnvironment;
- (void)bundleSubscriptionStatusDidChangeFromStatus:(int64_t)status;
- (void)channelSubscriptionStatusDidChangeFromStatus:(int64_t)status;
- (void)debugLayoutOptionsDidChange:(id)change;
- (void)layoutCoordinator:(id)coordinator cancelledLayoutWithOptions:(id)options;
- (void)layoutCoordinator:(id)coordinator didIntegrateBlueprint:(id)blueprint;
- (void)layoutCoordinator:(id)coordinator willIntegrateBlueprint:(id)blueprint;
- (void)layoutCoordinator:(id)coordinator willLayoutWithParameters:(id)parameters;
- (void)newsletterSubscriptionStatusDidChangeFromStatus:(unint64_t)status;
- (void)offerIdentifierDidChangeFromIdentifier:(id)identifier to:(id)to;
- (void)offerUpsellScenarioDidChangeFromScenario:(int64_t)scenario;
- (void)presentationAttributesDidChangeFrom:(id)from toAttributes:(id)attributes;
- (void)subscriptionActivationEligibilityDidChangeFromEligibility:(int64_t)eligibility to:(int64_t)to;
- (void)tagSubscriptionStatusChangedFromStatus:(id)status;
- (void)updateWithPresentationEnvironment:(id)environment;
@end

@implementation SXFormatInteractor

- (SXFormatInteractor)initWithLayoutCoordinator:(id)coordinator layoutOptionsFactory:(id)factory presentationAttributesProvider:(id)provider subscriptionStatusProvider:(id)statusProvider debugLayoutOptionsProvider:(id)optionsProvider newsletterSubscriptionStatusProvider:(id)subscriptionStatusProvider offerUpsellScenarioProvider:(id)scenarioProvider subscriptionActivationEligibilityProvider:(id)self0 offerIdentifierProvider:(id)self1 renderingConfigurationProvider:(id)self2 tagSubscriptionStatusProvider:(id)self3
{
  coordinatorCopy = coordinator;
  factoryCopy = factory;
  providerCopy = provider;
  providerCopy2 = provider;
  statusProviderCopy = statusProvider;
  optionsProviderCopy = optionsProvider;
  subscriptionStatusProviderCopy = subscriptionStatusProvider;
  subscriptionStatusProviderCopy2 = subscriptionStatusProvider;
  scenarioProviderCopy = scenarioProvider;
  eligibilityProviderCopy = eligibilityProvider;
  identifierProviderCopy = identifierProvider;
  configurationProviderCopy = configurationProvider;
  tagSubscriptionStatusProviderCopy = tagSubscriptionStatusProvider;
  v36.receiver = self;
  v36.super_class = SXFormatInteractor;
  v23 = [(SXFormatInteractor *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_layoutCoordinator, coordinator);
    objc_storeStrong(&v24->_layoutOptionsFactory, factory);
    objc_storeStrong(&v24->_presentationAttributesProvider, providerCopy);
    [(SXPresentationAttributesProvider *)v24->_presentationAttributesProvider addObserver:v24];
    objc_storeStrong(&v24->_subscriptionStatusProvider, statusProvider);
    [statusProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_debugLayoutOptionsProvider, optionsProvider);
    [optionsProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_newsletterSubscriptionStatusProvider, subscriptionStatusProviderCopy);
    [subscriptionStatusProviderCopy2 addObserver:v24];
    objc_storeStrong(&v24->_offerUpsellScenarioProvider, scenarioProvider);
    [scenarioProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_subscriptionActivationEligibilityProvider, eligibilityProvider);
    [eligibilityProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_offerIdentifierProvider, identifierProvider);
    [identifierProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_tagSubscriptionStatusProvider, tagSubscriptionStatusProvider);
    [tagSubscriptionStatusProviderCopy addObserver:v24];
    objc_storeStrong(&v24->_renderingConfigurationProvider, configurationProvider);
    [coordinatorCopy setDelegate:v24];
  }

  return v24;
}

- (void)updateWithPresentationEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeWeak(&self->_presentationEnvironment, environmentCopy);
  presentationAttributesProvider = [(SXFormatInteractor *)self presentationAttributesProvider];
  presentationAttributes = [presentationAttributesProvider presentationAttributes];

  debugLayoutOptionsProvider = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [environmentCopy viewportSize];
  [debugLayoutOptionsProvider overrideViewportSize:?];
  v9 = v8;
  v11 = v10;

  debugLayoutOptionsProvider2 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  contentSizeCategory = [presentationAttributes contentSizeCategory];
  v58 = [debugLayoutOptionsProvider2 overrideContentSizeCategory:contentSizeCategory];

  debugLayoutOptionsProvider3 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [presentationAttributes contentScaleFactor];
  [debugLayoutOptionsProvider3 overrideContentScaleFactor:?];
  v16 = v15;

  debugLayoutOptionsProvider4 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [debugLayoutOptionsProvider4 overrideViewingLocation:{objc_msgSend(environmentCopy, "viewingLocation")}];

  debugLayoutOptionsProvider5 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  subscriptionStatusProvider = [(SXFormatInteractor *)self subscriptionStatusProvider];
  v61 = [debugLayoutOptionsProvider5 overrideBundleSubscriptionStatus:{objc_msgSend(subscriptionStatusProvider, "bundleSubscriptionStatus")}];

  debugLayoutOptionsProvider6 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  subscriptionStatusProvider2 = [(SXFormatInteractor *)self subscriptionStatusProvider];
  v60 = [debugLayoutOptionsProvider6 overrideChannelSubscriptionStatus:{objc_msgSend(subscriptionStatusProvider2, "channelSubscriptionStatus")}];

  debugLayoutOptionsProvider7 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  newsletterSubscriptionStatusProvider = [(SXFormatInteractor *)self newsletterSubscriptionStatusProvider];
  v57 = [debugLayoutOptionsProvider7 overrideNewsletterSubscriptionStatus:{objc_msgSend(newsletterSubscriptionStatusProvider, "newsletterSubscriptionStatus")}];

  debugLayoutOptionsProvider8 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  offerUpsellScenarioProvider = [(SXFormatInteractor *)self offerUpsellScenarioProvider];
  v56 = [debugLayoutOptionsProvider8 overrideOfferUpsellScenario:{objc_msgSend(offerUpsellScenarioProvider, "offerUpsellScenario")}];

  debugLayoutOptionsProvider9 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  subscriptionActivationEligibilityProvider = [(SXFormatInteractor *)self subscriptionActivationEligibilityProvider];
  v55 = [debugLayoutOptionsProvider9 overrideSubscriptionActivationEligibility:{objc_msgSend(subscriptionActivationEligibilityProvider, "eligibility")}];

  debugLayoutOptionsProvider10 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  offerIdentifierProvider = [(SXFormatInteractor *)self offerIdentifierProvider];
  offerIdentifier = [offerIdentifierProvider offerIdentifier];
  v31 = [debugLayoutOptionsProvider10 overrideOfferIdentifier:offerIdentifier];

  debugLayoutOptionsProvider11 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  renderingConfigurationProvider = [(SXFormatInteractor *)self renderingConfigurationProvider];
  configuration = [renderingConfigurationProvider configuration];
  conditionKeys = [configuration conditionKeys];
  v36 = [debugLayoutOptionsProvider11 overrideConditionKeys:conditionKeys];

  debugLayoutOptionsProvider12 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  tagSubscriptionStatusProvider = [(SXFormatInteractor *)self tagSubscriptionStatusProvider];
  tagSubscriptionStatus = [tagSubscriptionStatusProvider tagSubscriptionStatus];
  v40 = [debugLayoutOptionsProvider12 overrideTagSubscriptionStatus:tagSubscriptionStatus];

  layoutOptionsFactory = [(SXFormatInteractor *)self layoutOptionsFactory];
  [environmentCopy safeAreaInsets];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  presentationTraitCollection = [environmentCopy presentationTraitCollection];
  v59 = presentationAttributes;
  [presentationAttributes testingConditionEnabled];
  LOBYTE(presentationAttributes) = [environmentCopy smartInvertColorsEnabled];

  LOBYTE(v54) = presentationAttributes;
  v51 = [layoutOptionsFactory createLayoutOptionsWithViewportSize:presentationTraitCollection safeAreaInsets:v61 traitCollection:v60 bundleSubscriptionStatus:v9 channelSubscriptionStatus:v11 contentSizeCategory:v43 testing:v45 viewingLocation:v47 contentScaleFactor:v49 newsletterSubscriptionStatus:v16 offerUpsellScenario:v57 subscriptionActivationEligibility:v56 offerIdentifier:v55 smartInvertColorsEnabled:v31 conditionKeys:v54 tagSubscriptionStatus:{v36, v40}];

  if (v51)
  {
    layoutCoordinator = [(SXFormatInteractor *)self layoutCoordinator];
    [layoutCoordinator layoutWithOptions:v51];
  }

  else
  {
    v53 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D825C000, v53, OS_LOG_TYPE_DEFAULT, "Unable to start layout, no layout valid layout options", buf, 2u);
    }
  }
}

- (void)layoutCoordinator:(id)coordinator willLayoutWithParameters:(id)parameters
{
  parametersCopy = parameters;
  delegate = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SXFormatInteractor *)self delegate];
    layoutOptions = [parametersCopy layoutOptions];
    [delegate2 interactor:self willLayoutWithOptions:layoutOptions];
  }

  requestedContentHiding = [(SXFormatInteractor *)self requestedContentHiding];
  v10 = parametersCopy;
  if ((requestedContentHiding & 1) == 0)
  {
    requestedContentHiding = [parametersCopy layoutType];
    v10 = parametersCopy;
    if (requestedContentHiding == 1)
    {
      requestedContentHiding = [parametersCopy expectedDuration];
      v10 = parametersCopy;
      if (v11 != -1.0)
      {
        requestedContentHiding = [parametersCopy expectedDuration];
        v10 = parametersCopy;
        if (v12 > 0.175)
        {
          delegate3 = [(SXFormatInteractor *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            delegate4 = [(SXFormatInteractor *)self delegate];
            [delegate4 hideContentsForLayoutWithInteractor:self];
          }

          requestedContentHiding = [(SXFormatInteractor *)self setRequestedContentHiding:1];
          v10 = parametersCopy;
        }
      }
    }
  }

  MEMORY[0x1EEE66BB8](requestedContentHiding, v10);
}

- (void)layoutCoordinator:(id)coordinator cancelledLayoutWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SXFormatInteractor *)self delegate];
    [delegate2 interactor:self cancelledLayoutWithOptions:optionsCopy];
  }

  if ([(SXFormatInteractor *)self requestedContentHiding])
  {
    delegate3 = [(SXFormatInteractor *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate4 = [(SXFormatInteractor *)self delegate];
      [delegate4 displayContentsAfterLayoutWithInteractor:self];
    }

    [(SXFormatInteractor *)self setRequestedContentHiding:0];
  }
}

- (void)layoutCoordinator:(id)coordinator willIntegrateBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  delegate = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SXFormatInteractor *)self delegate];
    [delegate2 interactor:self willIntegrateBlueprint:blueprintCopy];
  }
}

- (void)layoutCoordinator:(id)coordinator didIntegrateBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  delegate = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SXFormatInteractor *)self delegate];
    [delegate2 interactor:self didIntegrateBlueprint:blueprintCopy];
  }

  if ([(SXFormatInteractor *)self requestedContentHiding])
  {
    delegate3 = [(SXFormatInteractor *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate4 = [(SXFormatInteractor *)self delegate];
      [delegate4 displayContentsAfterLayoutWithInteractor:self];
    }

    [(SXFormatInteractor *)self setRequestedContentHiding:0];
  }
}

- (void)presentationAttributesDidChangeFrom:(id)from toAttributes:(id)attributes
{
  v5 = [(SXFormatInteractor *)self presentationEnvironment:from];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)bundleSubscriptionStatusDidChangeFromStatus:(int64_t)status
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in bundle subscription status", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)channelSubscriptionStatusDidChangeFromStatus:(int64_t)status
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in channel subscription status", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)debugLayoutOptionsDidChange:(id)change
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in debug layout options", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)newsletterSubscriptionStatusDidChangeFromStatus:(unint64_t)status
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in newsletter subscription status", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)offerUpsellScenarioDidChangeFromScenario:(int64_t)scenario
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in offer upsell scenario", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)subscriptionActivationEligibilityDidChangeFromEligibility:(int64_t)eligibility to:(int64_t)to
{
  v5 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in subscription activation eligibility", v7, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)offerIdentifierDidChangeFromIdentifier:(id)identifier to:(id)to
{
  v5 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in offer identifier", v7, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (void)tagSubscriptionStatusChangedFromStatus:(id)status
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in tag subscription status", v6, 2u);
  }

  presentationEnvironment = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:presentationEnvironment];
}

- (SXFormatInteractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXPresentationEnvironment)presentationEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationEnvironment);

  return WeakRetained;
}

@end