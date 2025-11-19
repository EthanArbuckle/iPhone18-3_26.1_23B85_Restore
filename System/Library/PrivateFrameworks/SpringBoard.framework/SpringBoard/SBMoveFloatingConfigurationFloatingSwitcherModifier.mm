@interface SBMoveFloatingConfigurationFloatingSwitcherModifier
- (SBMoveFloatingConfigurationFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromFloatingConfiguration:(int64_t)a4 toFloatingConfiguration:(int64_t)a5;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBMoveFloatingConfigurationFloatingSwitcherModifier

- (SBMoveFloatingConfigurationFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromFloatingConfiguration:(int64_t)a4 toFloatingConfiguration:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v8 initWithTransitionID:a3];
  if (result)
  {
    result->_fromFloatingConfiguration = a4;
    result->_toFloatingConfiguration = a5;
  }

  return result;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  v3 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)&v8 visibleAppLayouts];
  v4 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self appLayouts];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v3 setByAddingObject:v5];

    v3 = v6;
  }

  return v3;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self medusaSettings];
  v3 = [v2 medusaAnimationSettings];

  return v3;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)&v7 opacityForLayoutRole:a3 inAppLayout:a4 atIndex:?];
  if (!a5)
  {
    return 1.0;
  }

  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sbf_isLowEndForSlideOverMoveGesture];

  if (v6)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(1u, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:v4];
  }

  v8 = v7;

  return v8;
}

@end