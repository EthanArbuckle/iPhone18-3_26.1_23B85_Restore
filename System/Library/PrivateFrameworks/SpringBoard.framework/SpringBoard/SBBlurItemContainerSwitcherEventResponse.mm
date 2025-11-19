@interface SBBlurItemContainerSwitcherEventResponse
- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)a3 shouldBlur:(BOOL)a4 animationUpdateMode:(int64_t)a5;
- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)a3 shouldBlur:(BOOL)a4 blurParameters:(id)a5 animationUpdateMode:(int64_t)a6;
- (id)description;
@end

@implementation SBBlurItemContainerSwitcherEventResponse

- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)a3 shouldBlur:(BOOL)a4 blurParameters:(id)a5 animationUpdateMode:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SBBlurItemContainerSwitcherEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_shouldBlur = a4;
    objc_storeStrong(&v13->_appLayout, a3);
    objc_storeStrong(&v14->_blurParameters, a5);
    v14->_animationUpdateMode = a6;
  }

  return v14;
}

- (SBBlurItemContainerSwitcherEventResponse)initWithAppLayout:(id)a3 shouldBlur:(BOOL)a4 animationUpdateMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v10 = [(SBBlurItemContainerSwitcherEventResponse *)self initWithAppLayout:v8 shouldBlur:v6 blurParameters:v9 animationUpdateMode:a5];

  return v10;
}

- (id)description
{
  v3 = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  v4 = [v3 appendSuper];
  [(SBBlurItemContainerSwitcherEventResponse *)self shouldBlur];
  v5 = NSStringFromBOOL();
  [v3 appendString:v5 withName:@"blur"];

  v6 = [v3 build];

  return v6;
}

@end