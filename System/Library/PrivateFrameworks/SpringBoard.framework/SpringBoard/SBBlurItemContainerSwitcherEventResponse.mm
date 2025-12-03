@interface SBBlurItemContainerSwitcherEventResponse
- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)layout shouldBlur:(BOOL)blur animationUpdateMode:(int64_t)mode;
- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)layout shouldBlur:(BOOL)blur blurParameters:(id)parameters animationUpdateMode:(int64_t)mode;
- (id)description;
@end

@implementation SBBlurItemContainerSwitcherEventResponse

- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)layout shouldBlur:(BOOL)blur blurParameters:(id)parameters animationUpdateMode:(int64_t)mode
{
  layoutCopy = layout;
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = SBBlurItemContainerSwitcherEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_shouldBlur = blur;
    objc_storeStrong(&v13->_appLayout, layout);
    objc_storeStrong(&v14->_blurParameters, parameters);
    v14->_animationUpdateMode = mode;
  }

  return v14;
}

- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)layout shouldBlur:(BOOL)blur animationUpdateMode:(int64_t)mode
{
  blurCopy = blur;
  layoutCopy = layout;
  v9 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v10 = [(SBBlurItemContainerSwitcherEventResponse *)self initWithAppLayout:layoutCopy shouldBlur:blurCopy blurParameters:v9 animationUpdateMode:mode];

  return v10;
}

- (id)description
{
  succinctDescriptionBuilder = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  appendSuper = [succinctDescriptionBuilder appendSuper];
  [(SBBlurItemContainerSwitcherEventResponse *)self shouldBlur];
  v5 = NSStringFromBOOL();
  [succinctDescriptionBuilder appendString:v5 withName:@"blur"];

  build = [succinctDescriptionBuilder build];

  return build;
}

@end