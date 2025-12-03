@interface SBMoveGestureFloatingSwitcherModifier
- (CGPoint)translation;
- (CGRect)containerViewBounds;
- (SBMoveGestureFloatingSwitcherModifier)initWithGestureID:(id)d initialFloatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)shadowOffsetForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_updateForGestureDidBeginWithEvent:(id)event;
- (id)_updateForGestureDidChangeWithEvent:(id)event;
- (id)_updateForGestureDidEndWithEvent:(id)event;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutToAttachSlideOverTongue;
- (id)appLayoutsToCacheSnapshots;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)visibleAppLayouts;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
@end

@implementation SBMoveGestureFloatingSwitcherModifier

- (SBMoveGestureFloatingSwitcherModifier)initWithGestureID:(id)d initialFloatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  v11.receiver = self;
  v11.super_class = SBMoveGestureFloatingSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:d];
  if (v7)
  {
    IsValid = SBFloatingConfigurationIsValid(configuration);
    configurationCopy = 4;
    if (IsValid)
    {
      configurationCopy = configuration;
    }

    v7->_initialFloatingConfiguration = configurationCopy;
    v7->_interfaceOrientation = orientation;
  }

  return v7;
}

- (id)handleTransitionEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBMoveGestureFloatingSwitcherModifier;
  eventCopy = event;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SBMoveGestureFloatingSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:eventCopy];
  phase = [eventCopy phase];
  v8 = 0;
  if (phase > 1)
  {
    if (phase == 2)
    {
      v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidChangeWithEvent:eventCopy];
    }

    else
    {
      if (phase != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidEndWithEvent:eventCopy];
    }
  }

  else
  {
    if (!phase)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBMoveGestureFloatingSwitcherModifier.m" lineNumber:64 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (phase != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidBeginWithEvent:eventCopy];
  }

  v8 = v9;
LABEL_11:
  v11 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v6];

  return v11;
}

- (id)_updateForGestureDidBeginWithEvent:(id)event
{
  self->_translation = *MEMORY[0x277CBF348];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:10 updateMode:2];

  return v3;
}

- (id)_updateForGestureDidChangeWithEvent:(id)event
{
  p_translation = &self->_translation;
  [event translationInContainerView];
  p_translation->x = v4;
  p_translation->y = v5;
  return 0;
}

- (id)_updateForGestureDidEndWithEvent:(id)event
{
  eventCopy = event;
  [eventCopy velocityInContainerView];
  v34 = v5;
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  initialFloatingConfiguration = self->_initialFloatingConfiguration;
  [(SBMoveGestureFloatingSwitcherModifier *)self switcherViewBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v33 = v21;
  v36.origin.x = v7;
  v36.origin.y = v9;
  v36.size.width = v11;
  v36.size.height = v13;
  Width = CGRectGetWidth(v36);
  v37.origin.x = v7;
  v37.origin.y = v9;
  v37.size.width = v11;
  v37.size.height = v13;
  MidX = CGRectGetMidX(v37);
  medusaSettings = [(SBMoveGestureFloatingSwitcherModifier *)self medusaSettings];
  v25 = SBFloatingConfigurationForMovingFloatingApplication(initialFloatingConfiguration, medusaSettings, v34, v16, v18, v20, v33, Width, MidX);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [eventCopy indirectPanEndReason] == 4)
  {
    v26 = self->_initialFloatingConfiguration - 1;
    if (v26 <= 3)
    {
      v25 = qword_21F8A8338[v26];
    }
  }

  if ([eventCopy touchType] == 1 && (self->_initialFloatingConfiguration == 4 ? (v27 = v25 == 1) : (v27 = 0), v27))
  {
    v25 = 1;
  }

  else
  {
    [eventCopy touchType];
  }

  v28 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  if (!SBFloatingConfigurationIsStashed(v25))
  {
    appLayouts = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    firstObject = [appLayouts firstObject];
    [(SBSwitcherTransitionRequest *)v28 setAppLayout:firstObject];
  }

  [(SBSwitcherTransitionRequest *)v28 setFloatingConfiguration:v25];
  [(SBSwitcherTransitionRequest *)v28 setPreferredInterfaceOrientation:[(SBMoveGestureFloatingSwitcherModifier *)self switcherInterfaceOrientation]];
  v31 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v28 gestureInitiated:1];

  return v31;
}

- (CGRect)containerViewBounds
{
  v18.receiver = self;
  v18.super_class = SBMoveGestureFloatingSwitcherModifier;
  [(SBMoveGestureFloatingSwitcherModifier *)&v18 containerViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = fmin(v3, 0.0);
  [(SBMoveGestureFloatingSwitcherModifier *)self switcherViewBounds];
  MaxX = CGRectGetMaxX(v19);
  if ([(SBMoveGestureFloatingSwitcherModifier *)self isRTLEnabled])
  {
    v11 = v11 - v8;
    if (self->_initialFloatingConfiguration == 4)
    {
      MaxX = MaxX - v8;
    }
  }

  if (v11 >= v4)
  {
    v13 = v11;
  }

  else
  {
    v13 = v4;
  }

  if (MaxX <= v13)
  {
    v13 = MaxX;
  }

  v14 = v13 + self->_translation.x;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)visibleAppLayouts
{
  if (SBFloatingConfigurationIsStashed(self->_initialFloatingConfiguration))
  {
    visibleAppLayouts = objc_alloc_init(MEMORY[0x277CBEB58]);
    appLayouts = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    if ([appLayouts count])
    {
      if ([appLayouts count] == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      v6 = [appLayouts subarrayWithRange:{0, v5}];
      [visibleAppLayouts addObjectsFromArray:v6];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBMoveGestureFloatingSwitcherModifier;
    visibleAppLayouts = [(SBMoveGestureFloatingSwitcherModifier *)&v8 visibleAppLayouts];
  }

  return visibleAppLayouts;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBMoveGestureFloatingSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBMoveGestureFloatingSwitcherModifier *)self medusaSettings];
  medusaAnimationSettings = [medusaSettings medusaAnimationSettings];
  [v5 setLayoutSettings:medusaAnimationSettings];

  return v5;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  MidX = CGRectGetMidX(v17);
  isRTLEnabled = [(SBMoveGestureFloatingSwitcherModifier *)self isRTLEnabled];
  [(SBMoveGestureFloatingSwitcherModifier *)self switcherViewBounds];
  v8 = MidX > CGRectGetMidX(v18);
  if (isRTLEnabled != v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (isRTLEnabled != v8)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:v9];
  v11 = CGRectGetMidX(v19);
  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:v10];
  v12 = fmin(fmax(1.0 - (MidX - v11) / (CGRectGetMidX(v20) - v11), 0.0), 1.0);
  if (index)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 1.0;
  }

  if ([(SBGestureSwitcherModifier *)self gesturePhase]>= 2 || index == 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.0;
  }

  return v12 * v15;
}

- (double)shadowOffsetForIndex:(unint64_t)index
{
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  MidX = CGRectGetMidX(v7);
  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:1];
  v5 = CGRectGetMidX(v8);
  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:2];
  return fmin(fmax((MidX - v5 + MidX - v5) / (CGRectGetMidX(v9) - v5) + -1.0, -1.0), 1.0);
}

- (id)appLayoutsToCacheSnapshots
{
  if (SBFloatingConfigurationIsStashed(self->_initialFloatingConfiguration))
  {
    appLayouts = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    v10.length = [appLayouts count];
    v9.location = 0;
    v9.length = 1;
    v10.location = 0;
    v4 = NSIntersectionRange(v9, v10);
    appLayoutsToCacheSnapshots = [appLayouts subarrayWithRange:{v4.location, v4.length}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMoveGestureFloatingSwitcherModifier;
    appLayoutsToCacheSnapshots = [(SBMoveGestureFloatingSwitcherModifier *)&v7 appLayoutsToCacheSnapshots];
  }

  return appLayoutsToCacheSnapshots;
}

- (unint64_t)slideOverTongueState
{
  if (!SBFloatingConfigurationIsStashed(self->_initialFloatingConfiguration) || self->_hideSlideOverTongueForDragFromStashedConfiguration)
  {
    return 0;
  }

  if (self->_initialFloatingConfiguration == 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (self->_initialFloatingConfiguration == 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:v5];
  CGRectGetMidX(v7);
  [(SBMoveGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:v4];
  CGRectGetMidX(v8);
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  CGRectGetMidX(v9);
  v6 = self->_hideSlideOverTongueForDragFromStashedConfiguration | BSFloatIsOne();
  self->_hideSlideOverTongueForDragFromStashedConfiguration = v6;
  return v6 ^ 1;
}

- (unint64_t)slideOverTongueDirection
{
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  UIRectGetCenter();
  v4 = v3;
  [(SBMoveGestureFloatingSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  if (([(SBMoveGestureFloatingSwitcherModifier *)self isRTLEnabled]& 1) != 0)
  {
    if (v4 <= v6 * 0.5)
    {
      return 1;
    }
  }

  else if (v4 > v6 * 0.5)
  {
    return 1;
  }

  return 2;
}

- (id)appLayoutToAttachSlideOverTongue
{
  appLayouts = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
  firstObject = [appLayouts firstObject];

  return firstObject;
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
    v10.super_class = SBMoveGestureFloatingSwitcherModifier;
    v7 = [(SBMoveGestureFloatingSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end