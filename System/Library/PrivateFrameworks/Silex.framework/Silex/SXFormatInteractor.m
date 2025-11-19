@interface SXFormatInteractor
- (SXFormatInteractor)initWithLayoutCoordinator:(id)a3 layoutOptionsFactory:(id)a4 presentationAttributesProvider:(id)a5 subscriptionStatusProvider:(id)a6 debugLayoutOptionsProvider:(id)a7 newsletterSubscriptionStatusProvider:(id)a8 offerUpsellScenarioProvider:(id)a9 subscriptionActivationEligibilityProvider:(id)a10 offerIdentifierProvider:(id)a11 renderingConfigurationProvider:(id)a12 tagSubscriptionStatusProvider:(id)a13;
- (SXFormatInteractorDelegate)delegate;
- (SXPresentationEnvironment)presentationEnvironment;
- (void)bundleSubscriptionStatusDidChangeFromStatus:(int64_t)a3;
- (void)channelSubscriptionStatusDidChangeFromStatus:(int64_t)a3;
- (void)debugLayoutOptionsDidChange:(id)a3;
- (void)layoutCoordinator:(id)a3 cancelledLayoutWithOptions:(id)a4;
- (void)layoutCoordinator:(id)a3 didIntegrateBlueprint:(id)a4;
- (void)layoutCoordinator:(id)a3 willIntegrateBlueprint:(id)a4;
- (void)layoutCoordinator:(id)a3 willLayoutWithParameters:(id)a4;
- (void)newsletterSubscriptionStatusDidChangeFromStatus:(unint64_t)a3;
- (void)offerIdentifierDidChangeFromIdentifier:(id)a3 to:(id)a4;
- (void)offerUpsellScenarioDidChangeFromScenario:(int64_t)a3;
- (void)presentationAttributesDidChangeFrom:(id)a3 toAttributes:(id)a4;
- (void)subscriptionActivationEligibilityDidChangeFromEligibility:(int64_t)a3 to:(int64_t)a4;
- (void)tagSubscriptionStatusChangedFromStatus:(id)a3;
- (void)updateWithPresentationEnvironment:(id)a3;
@end

@implementation SXFormatInteractor

- (SXFormatInteractor)initWithLayoutCoordinator:(id)a3 layoutOptionsFactory:(id)a4 presentationAttributesProvider:(id)a5 subscriptionStatusProvider:(id)a6 debugLayoutOptionsProvider:(id)a7 newsletterSubscriptionStatusProvider:(id)a8 offerUpsellScenarioProvider:(id)a9 subscriptionActivationEligibilityProvider:(id)a10 offerIdentifierProvider:(id)a11 renderingConfigurationProvider:(id)a12 tagSubscriptionStatusProvider:(id)a13
{
  v35 = a3;
  v31 = a4;
  v27 = a5;
  v30 = a5;
  v34 = a6;
  v33 = a7;
  v28 = a8;
  v32 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v36.receiver = self;
  v36.super_class = SXFormatInteractor;
  v23 = [(SXFormatInteractor *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_layoutCoordinator, a3);
    objc_storeStrong(&v24->_layoutOptionsFactory, a4);
    objc_storeStrong(&v24->_presentationAttributesProvider, v27);
    [(SXPresentationAttributesProvider *)v24->_presentationAttributesProvider addObserver:v24];
    objc_storeStrong(&v24->_subscriptionStatusProvider, a6);
    [v34 addObserver:v24];
    objc_storeStrong(&v24->_debugLayoutOptionsProvider, a7);
    [v33 addObserver:v24];
    objc_storeStrong(&v24->_newsletterSubscriptionStatusProvider, v28);
    [v32 addObserver:v24];
    objc_storeStrong(&v24->_offerUpsellScenarioProvider, a9);
    [v18 addObserver:v24];
    objc_storeStrong(&v24->_subscriptionActivationEligibilityProvider, a10);
    [v19 addObserver:v24];
    objc_storeStrong(&v24->_offerIdentifierProvider, a11);
    [v20 addObserver:v24];
    objc_storeStrong(&v24->_tagSubscriptionStatusProvider, a13);
    [v22 addObserver:v24];
    objc_storeStrong(&v24->_renderingConfigurationProvider, a12);
    [v35 setDelegate:v24];
  }

  return v24;
}

- (void)updateWithPresentationEnvironment:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_presentationEnvironment, v4);
  v5 = [(SXFormatInteractor *)self presentationAttributesProvider];
  v6 = [v5 presentationAttributes];

  v7 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [v4 viewportSize];
  [v7 overrideViewportSize:?];
  v9 = v8;
  v11 = v10;

  v12 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v13 = [v6 contentSizeCategory];
  v58 = [v12 overrideContentSizeCategory:v13];

  v14 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [v6 contentScaleFactor];
  [v14 overrideContentScaleFactor:?];
  v16 = v15;

  v17 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  [v17 overrideViewingLocation:{objc_msgSend(v4, "viewingLocation")}];

  v18 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v19 = [(SXFormatInteractor *)self subscriptionStatusProvider];
  v61 = [v18 overrideBundleSubscriptionStatus:{objc_msgSend(v19, "bundleSubscriptionStatus")}];

  v20 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v21 = [(SXFormatInteractor *)self subscriptionStatusProvider];
  v60 = [v20 overrideChannelSubscriptionStatus:{objc_msgSend(v21, "channelSubscriptionStatus")}];

  v22 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v23 = [(SXFormatInteractor *)self newsletterSubscriptionStatusProvider];
  v57 = [v22 overrideNewsletterSubscriptionStatus:{objc_msgSend(v23, "newsletterSubscriptionStatus")}];

  v24 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v25 = [(SXFormatInteractor *)self offerUpsellScenarioProvider];
  v56 = [v24 overrideOfferUpsellScenario:{objc_msgSend(v25, "offerUpsellScenario")}];

  v26 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v27 = [(SXFormatInteractor *)self subscriptionActivationEligibilityProvider];
  v55 = [v26 overrideSubscriptionActivationEligibility:{objc_msgSend(v27, "eligibility")}];

  v28 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v29 = [(SXFormatInteractor *)self offerIdentifierProvider];
  v30 = [v29 offerIdentifier];
  v31 = [v28 overrideOfferIdentifier:v30];

  v32 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v33 = [(SXFormatInteractor *)self renderingConfigurationProvider];
  v34 = [v33 configuration];
  v35 = [v34 conditionKeys];
  v36 = [v32 overrideConditionKeys:v35];

  v37 = [(SXFormatInteractor *)self debugLayoutOptionsProvider];
  v38 = [(SXFormatInteractor *)self tagSubscriptionStatusProvider];
  v39 = [v38 tagSubscriptionStatus];
  v40 = [v37 overrideTagSubscriptionStatus:v39];

  v41 = [(SXFormatInteractor *)self layoutOptionsFactory];
  [v4 safeAreaInsets];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [v4 presentationTraitCollection];
  v59 = v6;
  [v6 testingConditionEnabled];
  LOBYTE(v6) = [v4 smartInvertColorsEnabled];

  LOBYTE(v54) = v6;
  v51 = [v41 createLayoutOptionsWithViewportSize:v50 safeAreaInsets:v61 traitCollection:v60 bundleSubscriptionStatus:v9 channelSubscriptionStatus:v11 contentSizeCategory:v43 testing:v45 viewingLocation:v47 contentScaleFactor:v49 newsletterSubscriptionStatus:v16 offerUpsellScenario:v57 subscriptionActivationEligibility:v56 offerIdentifier:v55 smartInvertColorsEnabled:v31 conditionKeys:v54 tagSubscriptionStatus:{v36, v40}];

  if (v51)
  {
    v52 = [(SXFormatInteractor *)self layoutCoordinator];
    [v52 layoutWithOptions:v51];
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

- (void)layoutCoordinator:(id)a3 willLayoutWithParameters:(id)a4
{
  v16 = a4;
  v5 = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SXFormatInteractor *)self delegate];
    v8 = [v16 layoutOptions];
    [v7 interactor:self willLayoutWithOptions:v8];
  }

  v9 = [(SXFormatInteractor *)self requestedContentHiding];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    v9 = [v16 layoutType];
    v10 = v16;
    if (v9 == 1)
    {
      v9 = [v16 expectedDuration];
      v10 = v16;
      if (v11 != -1.0)
      {
        v9 = [v16 expectedDuration];
        v10 = v16;
        if (v12 > 0.175)
        {
          v13 = [(SXFormatInteractor *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = [(SXFormatInteractor *)self delegate];
            [v15 hideContentsForLayoutWithInteractor:self];
          }

          v9 = [(SXFormatInteractor *)self setRequestedContentHiding:1];
          v10 = v16;
        }
      }
    }
  }

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (void)layoutCoordinator:(id)a3 cancelledLayoutWithOptions:(id)a4
{
  v11 = a4;
  v5 = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SXFormatInteractor *)self delegate];
    [v7 interactor:self cancelledLayoutWithOptions:v11];
  }

  if ([(SXFormatInteractor *)self requestedContentHiding])
  {
    v8 = [(SXFormatInteractor *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SXFormatInteractor *)self delegate];
      [v10 displayContentsAfterLayoutWithInteractor:self];
    }

    [(SXFormatInteractor *)self setRequestedContentHiding:0];
  }
}

- (void)layoutCoordinator:(id)a3 willIntegrateBlueprint:(id)a4
{
  v8 = a4;
  v5 = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SXFormatInteractor *)self delegate];
    [v7 interactor:self willIntegrateBlueprint:v8];
  }
}

- (void)layoutCoordinator:(id)a3 didIntegrateBlueprint:(id)a4
{
  v11 = a4;
  v5 = [(SXFormatInteractor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SXFormatInteractor *)self delegate];
    [v7 interactor:self didIntegrateBlueprint:v11];
  }

  if ([(SXFormatInteractor *)self requestedContentHiding])
  {
    v8 = [(SXFormatInteractor *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SXFormatInteractor *)self delegate];
      [v10 displayContentsAfterLayoutWithInteractor:self];
    }

    [(SXFormatInteractor *)self setRequestedContentHiding:0];
  }
}

- (void)presentationAttributesDidChangeFrom:(id)a3 toAttributes:(id)a4
{
  v5 = [(SXFormatInteractor *)self presentationEnvironment:a3];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)bundleSubscriptionStatusDidChangeFromStatus:(int64_t)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in bundle subscription status", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)channelSubscriptionStatusDidChangeFromStatus:(int64_t)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in channel subscription status", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)debugLayoutOptionsDidChange:(id)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in debug layout options", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)newsletterSubscriptionStatusDidChangeFromStatus:(unint64_t)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in newsletter subscription status", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)offerUpsellScenarioDidChangeFromScenario:(int64_t)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in offer upsell scenario", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
}

- (void)subscriptionActivationEligibilityDidChangeFromEligibility:(int64_t)a3 to:(int64_t)a4
{
  v5 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in subscription activation eligibility", v7, 2u);
  }

  v6 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v6];
}

- (void)offerIdentifierDidChangeFromIdentifier:(id)a3 to:(id)a4
{
  v5 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in offer identifier", v7, 2u);
  }

  v6 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v6];
}

- (void)tagSubscriptionStatusChangedFromStatus:(id)a3
{
  v4 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Received callback in response to change in tag subscription status", v6, 2u);
  }

  v5 = [(SXFormatInteractor *)self presentationEnvironment];
  [(SXFormatInteractor *)self updateWithPresentationEnvironment:v5];
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