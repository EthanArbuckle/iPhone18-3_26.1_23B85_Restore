@interface SBDosidoScaleAnimationSwitcherEventResponse
- (SBDosidoScaleAnimationSwitcherEventResponse)initWithAppLayout:(id)layout;
@end

@implementation SBDosidoScaleAnimationSwitcherEventResponse

- (SBDosidoScaleAnimationSwitcherEventResponse)initWithAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBDosidoScaleAnimationSwitcherEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, layout);
  }

  return v7;
}

@end