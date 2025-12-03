@interface SBArcSwipeFloatingSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBArcSwipeFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration direction:(unint64_t)direction needsOvershoot:(BOOL)overshoot;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)scaleForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToResignActive;
- (id)handleTimerEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBArcSwipeFloatingSwitcherModifier

- (SBArcSwipeFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration direction:(unint64_t)direction needsOvershoot:(BOOL)overshoot
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v21.receiver = self;
  v21.super_class = SBArcSwipeFloatingSwitcherModifier;
  v17 = [(SBTransitionSwitcherModifier *)&v21 initWithTransitionID:d];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fromAppLayout, layout);
    objc_storeStrong(&v18->_toAppLayout, appLayout);
    v18->_floatingConfiguration = configuration;
    v18->_direction = direction;
    v19 = !overshoot;
    if (layoutCopy == appLayoutCopy)
    {
      v19 = 1;
    }

    v18->_hasReshuffledZOrder = v19;
  }

  return v18;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBArcSwipeFloatingSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBArcSwipeFloatingSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBArcSwipeFloatingSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (id)transitionWillUpdate
{
  v22.receiver = self;
  v22.super_class = SBArcSwipeFloatingSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v22 transitionWillUpdate];
  if (!self->_hasReshuffledZOrder)
  {
    v4 = self->_floatingConfiguration != 2;
    direction = self->_direction;
    switcherSettings = [(SBArcSwipeFloatingSwitcherModifier *)self switcherSettings];
    floatingSwitcherSettings = [switcherSettings floatingSwitcherSettings];

    if (direction == v4)
    {
      [floatingSwitcherSettings overshootPullbackDelayOffscreen];
    }

    else
    {
      [floatingSwitcherSettings overshootPullbackDelayOnscreen];
    }

    v9 = v8;
    UIAnimationDragCoefficient();
    v11 = v10;
    objc_initWeak(&location, self);
    v12 = [SBTimerEventSwitcherEventResponse alloc];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __58__SBArcSwipeFloatingSwitcherModifier_transitionWillUpdate__block_invoke;
    v19 = &unk_2783AD4A0;
    objc_copyWeak(&v20, &location);
    v13 = [(SBTimerEventSwitcherEventResponse *)v12 initWithDelay:&v16 validator:@"kSBArcSwipeFloatingSwitcherModifierReshuffleReason" reason:v9 * v11];
    v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:transitionWillUpdate, v16, v17, v18, v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    transitionWillUpdate = v14;
  }

  return transitionWillUpdate;
}

BOOL __58__SBArcSwipeFloatingSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBArcSwipeFloatingSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"kSBArcSwipeFloatingSwitcherModifierReshuffleReason"];
  if (eventCopy)
  {
    self->_hasReshuffledZOrder = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v25.receiver = self;
  v25.super_class = SBArcSwipeFloatingSwitcherModifier;
  [(SBArcSwipeFloatingSwitcherModifier *)&v25 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBArcSwipeFloatingSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  direction = self->_direction;
  if (direction)
  {
    if (direction != 1 || [(SBAppLayout *)self->_toAppLayout isEqual:v14])
    {
      goto LABEL_12;
    }
  }

  else if (![(SBAppLayout *)self->_fromAppLayout isEqual:v14])
  {
    goto LABEL_12;
  }

  if (!self->_hasReshuffledZOrder)
  {
    isRTLEnabled = [(SBArcSwipeFloatingSwitcherModifier *)self isRTLEnabled];
    [(SBArcSwipeFloatingSwitcherModifier *)self containerViewBounds];
    v18 = 1.2;
    if (isRTLEnabled)
    {
      v18 = -1.2;
    }

    v19 = v17 * v18;
    v20 = -(v17 * v18);
    if (self->_direction != 1)
    {
      v20 = v19;
    }

    v6 = v6 + v20;
  }

LABEL_12:

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v12.receiver = self;
  v12.super_class = SBArcSwipeFloatingSwitcherModifier;
  [(SBArcSwipeFloatingSwitcherModifier *)&v12 scaleForIndex:?];
  v6 = v5;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    appLayouts = [(SBArcSwipeFloatingSwitcherModifier *)self appLayouts];
    v8 = index - [appLayouts indexOfObject:self->_fromAppLayout];
    if (v8 < 0)
    {
      v8 += [appLayouts count];
    }

    v11.receiver = self;
    v11.super_class = SBArcSwipeFloatingSwitcherModifier;
    [(SBArcSwipeFloatingSwitcherModifier *)&v11 scaleForIndex:v8];
    v6 = v9;
  }

  return v6;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBArcSwipeFloatingSwitcherModifier;
  topMostLayoutElements = [(SBArcSwipeFloatingSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = topMostLayoutElements;
  if (!self->_hasReshuffledZOrder)
  {
    direction = self->_direction;
    if (direction == 1)
    {
      v6 = [topMostLayoutElements mutableCopy];
      [v6 removeObject:self->_toAppLayout];
      [v6 addObject:self->_toAppLayout];
    }

    else
    {
      if (direction)
      {
        goto LABEL_7;
      }

      v6 = [topMostLayoutElements mutableCopy];
      [v6 removeObject:self->_fromAppLayout];
      [v6 insertObject:self->_fromAppLayout atIndex:0];
    }

    v4 = v6;
  }

LABEL_7:

  return v4;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = v3;
  if (self->_toAppLayout)
  {
    [v3 addObject:?];
  }

  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBArcSwipeFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBArcSwipeFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBArcSwipeFloatingSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (([(SBArcSwipeFloatingSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
  {
    [animationSettings reduceMotionArcSwipeSettings];
  }

  else
  {
    [animationSettings arcSwipeSettings];
  }
  v5 = ;

  return v5;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index
{
  toAppLayout = self->_toAppLayout;
  if (!toAppLayout)
  {
    return 0;
  }

  appLayouts = [(SBArcSwipeFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];
  v7 = [(SBAppLayout *)toAppLayout isEqual:v6];

  return v7;
}

- (id)appLayoutsToResignActive
{
  if ([(SBAppLayout *)self->_fromAppLayout isEqual:self->_toAppLayout])
  {
    appLayoutsToResignActive = MEMORY[0x277CBEC10];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBArcSwipeFloatingSwitcherModifier;
    appLayoutsToResignActive = [(SBTransitionSwitcherModifier *)&v5 appLayoutsToResignActive];
  }

  return appLayoutsToResignActive;
}

- (id)keyboardSuppressionMode
{
  if ([(SBAppLayout *)self->_fromAppLayout isEqual:self->_toAppLayout])
  {
    keyboardSuppressionMode = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBArcSwipeFloatingSwitcherModifier;
    keyboardSuppressionMode = [(SBTransitionSwitcherModifier *)&v5 keyboardSuppressionMode];
  }

  return keyboardSuppressionMode;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = SBArcSwipeFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v7 asyncRenderingAttributesForAppLayout:layout];
  if (self->_fromAppLayout == self->_toAppLayout)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return (v5 | v4 & 0xFF00);
}

@end