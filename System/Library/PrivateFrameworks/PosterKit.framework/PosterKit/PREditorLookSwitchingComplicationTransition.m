@interface PREditorLookSwitchingComplicationTransition
- (PREditorLookSwitchingComplicationTransition)initWithFromVibrancyConfiguration:(id)a3 toVibrancyConfiguration:(id)a4 viewController:(id)a5 cachingVibrancyTransitionProvider:(id)a6;
- (PREditorRootViewController)viewController;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation PREditorLookSwitchingComplicationTransition

- (PREditorLookSwitchingComplicationTransition)initWithFromVibrancyConfiguration:(id)a3 toVibrancyConfiguration:(id)a4 viewController:(id)a5 cachingVibrancyTransitionProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PREditorLookSwitchingComplicationTransition;
  v15 = [(PREditorLookSwitchingComplicationTransition *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromVibrancyConfiguration, a3);
    objc_storeStrong(&v16->_toVibrancyConfiguration, a4);
    objc_storeWeak(&v16->_viewController, v13);
    objc_storeStrong(&v16->_cachingVibrancyTransitionProvider, a6);
  }

  return v16;
}

- (void)updateInteractiveTransition:(double)a3
{
  v14 = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration color];
  v5 = [(BSUIVibrancyConfiguration *)self->_toVibrancyConfiguration color];
  if (v14)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 || [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration effectType]== 3)
  {
    cachingVibrancyTransitionProvider = self->_cachingVibrancyTransitionProvider;
    v8 = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration alternativeVibrancyEffectLUT];
    v9 = [(BSUIVibrancyConfiguration *)self->_toVibrancyConfiguration alternativeVibrancyEffectLUT];
    v10 = [v9 lutIdentifier];
    v11 = [(CSCachingVibrancyTransitionProvider *)cachingVibrancyTransitionProvider vibrancyLUTWithStartingLUT:v8 transitionProgress:v10 toIdentifier:a3];

    v12 = [(BSUIVibrancyConfiguration *)self->_fromVibrancyConfiguration copyWithBlendAmount:self->_toVibrancyConfiguration blendConfiguration:v11 alternativeVibrancyEffectLUT:a3];
    v13 = [(PREditorLookSwitchingComplicationTransition *)self viewController];
    [v13 _setVibrancyConfiguration:v12];
  }
}

- (void)finishInteractiveTransition
{
  v3 = [(PREditorLookSwitchingComplicationTransition *)self viewController];
  [v3 _setVibrancyConfiguration:self->_toVibrancyConfiguration];
}

- (void)cancelInteractiveTransition
{
  v3 = [(PREditorLookSwitchingComplicationTransition *)self viewController];
  [v3 _setVibrancyConfiguration:self->_fromVibrancyConfiguration];
}

- (PREditorRootViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end