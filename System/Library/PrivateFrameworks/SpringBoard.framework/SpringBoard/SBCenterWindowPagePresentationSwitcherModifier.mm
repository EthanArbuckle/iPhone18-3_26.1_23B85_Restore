@interface SBCenterWindowPagePresentationSwitcherModifier
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBCenterWindowPagePresentationSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout isMorph:(BOOL)morph;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
@end

@implementation SBCenterWindowPagePresentationSwitcherModifier

- (SBCenterWindowPagePresentationSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout isMorph:(BOOL)morph
{
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_toAppLayout, layout);
    v11->_isInAppMorphAnimation = morph;
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    defaultCriticallyDampedSettings = v11->_defaultCriticallyDampedSettings;
    v11->_defaultCriticallyDampedSettings = initWithDefaultValues;

    [(SBFFluidBehaviorSettings *)v11->_defaultCriticallyDampedSettings setDefaultCriticallyDampedValues];
    v14 = v11->_defaultCriticallyDampedSettings;
    v17 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [(SBFFluidBehaviorSettings *)v14 setFrameRateRange:1114113 highFrameRateReason:*&v17.minimum, *&v17.maximum, *&v17.preferred];
  }

  return v11;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if ([(SBTransitionSwitcherModifier *)self isInterrupted])
  {
    v4 = objc_alloc_init(SBCancelWindowMorphingSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v4, transitionDidEnd);

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_toAppLayout] && self->_isInAppMorphAnimation)
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCenterWindowPagePresentationSwitcherModifier;
    v5 = [(SBTransitionSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBCenterWindowPagePresentationSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_toAppLayout] && -[SBTransitionSwitcherModifier isPreparingLayout](self, "isPreparingLayout"))
  {
    [(SBCenterWindowPagePresentationSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBCenterWindowPagePresentationSwitcherModifier;
    [(SBCenterWindowPagePresentationSwitcherModifier *)&v19 frameForIndex:index];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBCenterWindowPagePresentationSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![v6 isEqual:self->_toAppLayout] || (v7 = 1.0, !-[SBTransitionSwitcherModifier isPreparingLayout](self, "isPreparingLayout")))
  {
    v10.receiver = self;
    v10.super_class = SBCenterWindowPagePresentationSwitcherModifier;
    [(SBCenterWindowPagePresentationSwitcherModifier *)&v10 scaleForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v31.receiver = self;
  v31.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowPagePresentationSwitcherModifier *)&v31 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [layoutCopy isEqual:{self->_toAppLayout, v31.receiver, v31.super_class}];

  if (v20)
  {
    v21 = role == 4;
  }

  else
  {
    v21 = 0;
  }

  if (v21 && [(SBTransitionSwitcherModifier *)self isPreparingLayout]&& !self->_isInAppMorphAnimation)
  {
    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    v22 = CGRectGetHeight(v32);
    entityRemovalSettings = [(SBCenterWindowPagePresentationSwitcherModifier *)self entityRemovalSettings];
    dosidoDeclineIntentAnimationSettings = [entityRemovalSettings dosidoDeclineIntentAnimationSettings];
    [dosidoDeclineIntentAnimationSettings fromViewSlideOutHeightOffsetMultiplier];
    v26 = v22 * v25;

    v15 = v15 + v26;
  }

  v27 = v13;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v13.receiver = self;
  v13.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowPagePresentationSwitcherModifier *)&v13 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
  v10 = v9;
  LODWORD(index) = [layoutCopy isEqual:{self->_toAppLayout, v13.receiver, v13.super_class}];

  if (index)
  {
    v11 = role == 4;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && self->_isInAppMorphAnimation)
  {
    return 0.0;
  }

  return v10;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBCenterWindowPagePresentationSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_toAppLayout] && -[SBTransitionSwitcherModifier isPreparingLayout](self, "isPreparingLayout"))
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBCenterWindowPagePresentationSwitcherModifier;
    [(SBCenterWindowPagePresentationSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBCenterWindowPagePresentationSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = v4;
  if (!self->_isInAppMorphAnimation)
  {
    v6 = [v4 mutableCopy];
    [v6 setLayoutSettings:self->_defaultCriticallyDampedSettings];
    [v6 setPositionSettings:self->_defaultCriticallyDampedSettings];
    [v6 setScaleSettings:self->_defaultCriticallyDampedSettings];

    v5 = v6;
  }

  return v5;
}

@end