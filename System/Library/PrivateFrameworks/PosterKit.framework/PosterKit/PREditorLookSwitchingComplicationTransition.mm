@interface PREditorLookSwitchingComplicationTransition
- (PREditorLookSwitchingComplicationTransition)initWithFromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration viewController:(id)controller cachingVibrancyTransitionProvider:(id)provider;
- (PREditorRootViewController)viewController;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation PREditorLookSwitchingComplicationTransition

- (PREditorLookSwitchingComplicationTransition)initWithFromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration viewController:(id)controller cachingVibrancyTransitionProvider:(id)provider
{
  configurationCopy = configuration;
  vibrancyConfigurationCopy = vibrancyConfiguration;
  controllerCopy = controller;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = PREditorLookSwitchingComplicationTransition;
  v15 = [(PREditorLookSwitchingComplicationTransition *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromVibrancyConfiguration, configuration);
    objc_storeStrong(&v16->_toVibrancyConfiguration, vibrancyConfiguration);
    objc_storeWeak(&v16->_viewController, controllerCopy);
    objc_storeStrong(&v16->_cachingVibrancyTransitionProvider, provider);
  }

  return v16;
}

- (void)updateInteractiveTransition:(double)transition
{
  color = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration color];
  color2 = [(BSUIVibrancyConfiguration *)self->_toVibrancyConfiguration color];
  if (color)
  {
    v6 = color2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 || [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration effectType]== 3)
  {
    cachingVibrancyTransitionProvider = self->_cachingVibrancyTransitionProvider;
    alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration alternativeVibrancyEffectLUT];
    alternativeVibrancyEffectLUT2 = [(BSUIVibrancyConfiguration *)self->_toVibrancyConfiguration alternativeVibrancyEffectLUT];
    lutIdentifier = [alternativeVibrancyEffectLUT2 lutIdentifier];
    v11 = [(CSCachingVibrancyTransitionProvider *)cachingVibrancyTransitionProvider vibrancyLUTWithStartingLUT:alternativeVibrancyEffectLUT transitionProgress:lutIdentifier toIdentifier:transition];

    v12 = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration copyWithBlendAmount:self->_toVibrancyConfiguration blendConfiguration:v11 alternativeVibrancyEffectLUT:transition];
    viewController = [(PREditorLookSwitchingComplicationTransition *)self viewController];
    [viewController _setVibrancyConfiguration:v12];
  }
}

- (void)finishInteractiveTransition
{
  viewController = [(PREditorLookSwitchingComplicationTransition *)self viewController];
  [viewController _setVibrancyConfiguration:self->_toVibrancyConfiguration];
}

- (void)cancelInteractiveTransition
{
  viewController = [(PREditorLookSwitchingComplicationTransition *)self viewController];
  [viewController _setVibrancyConfiguration:self->_fromVibrancyConfiguration];
}

- (PREditorRootViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end