@interface SBMoveFloatingConfigurationFloatingSwitcherModifier
- (SBMoveFloatingConfigurationFloatingSwitcherModifier)initWithTransitionID:(id)d fromFloatingConfiguration:(int64_t)configuration toFloatingConfiguration:(int64_t)floatingConfiguration;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBMoveFloatingConfigurationFloatingSwitcherModifier

- (SBMoveFloatingConfigurationFloatingSwitcherModifier)initWithTransitionID:(id)d fromFloatingConfiguration:(int64_t)configuration toFloatingConfiguration:(int64_t)floatingConfiguration
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v8 initWithTransitionID:d];
  if (result)
  {
    result->_fromFloatingConfiguration = configuration;
    result->_toFloatingConfiguration = floatingConfiguration;
  }

  return result;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  visibleAppLayouts = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)&v8 visibleAppLayouts];
  appLayouts = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self appLayouts];
  firstObject = [appLayouts firstObject];

  if (firstObject)
  {
    v6 = [visibleAppLayouts setByAddingObject:firstObject];

    visibleAppLayouts = v6;
  }

  return visibleAppLayouts;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  medusaSettings = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)self medusaSettings];
  medusaAnimationSettings = [medusaSettings medusaAnimationSettings];

  return medusaAnimationSettings;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
  [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)&v7 opacityForLayoutRole:role inAppLayout:layout atIndex:?];
  if (!index)
  {
    return 1.0;
  }

  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sbf_isLowEndForSlideOverMoveGesture = [currentDevice sbf_isLowEndForSlideOverMoveGesture];

  if (sbf_isLowEndForSlideOverMoveGesture)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(1u, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBMoveFloatingConfigurationFloatingSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

@end