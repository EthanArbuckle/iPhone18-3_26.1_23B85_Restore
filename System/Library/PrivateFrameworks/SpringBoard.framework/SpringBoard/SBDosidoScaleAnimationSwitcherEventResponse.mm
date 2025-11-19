@interface SBDosidoScaleAnimationSwitcherEventResponse
- (SBDosidoScaleAnimationSwitcherEventResponse)initWithAppLayout:(id)a3;
@end

@implementation SBDosidoScaleAnimationSwitcherEventResponse

- (SBDosidoScaleAnimationSwitcherEventResponse)initWithAppLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDosidoScaleAnimationSwitcherEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, a3);
  }

  return v7;
}

@end