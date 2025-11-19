@interface SBMoveGestureFloatingSwitcherModifier
- (CGPoint)translation;
- (CGRect)containerViewBounds;
- (SBMoveGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 initialFloatingConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_updateForGestureDidBeginWithEvent:(id)a3;
- (id)_updateForGestureDidChangeWithEvent:(id)a3;
- (id)_updateForGestureDidEndWithEvent:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutToAttachSlideOverTongue;
- (id)appLayoutsToCacheSnapshots;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleAppLayouts;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
@end

@implementation SBMoveGestureFloatingSwitcherModifier

- (SBMoveGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 initialFloatingConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = SBMoveGestureFloatingSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:a3];
  if (v7)
  {
    IsValid = SBFloatingConfigurationIsValid(a4);
    v9 = 4;
    if (IsValid)
    {
      v9 = a4;
    }

    v7->_initialFloatingConfiguration = v9;
    v7->_interfaceOrientation = a5;
  }

  return v7;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMoveGestureFloatingSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBMoveGestureFloatingSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBMoveGestureFloatingSwitcherModifier.m" lineNumber:64 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBMoveGestureFloatingSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
  }

  v8 = v9;
LABEL_11:
  v11 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v6];

  return v11;
}

- (id)_updateForGestureDidBeginWithEvent:(id)a3
{
  self->_translation = *MEMORY[0x277CBF348];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:10 updateMode:2];

  return v3;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  p_translation = &self->_translation;
  [a3 translationInContainerView];
  p_translation->x = v4;
  p_translation->y = v5;
  return 0;
}

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v4 = a3;
  [v4 velocityInContainerView];
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
  v24 = [(SBMoveGestureFloatingSwitcherModifier *)self medusaSettings];
  v25 = SBFloatingConfigurationForMovingFloatingApplication(initialFloatingConfiguration, v24, v34, v16, v18, v20, v33, Width, MidX);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 indirectPanEndReason] == 4)
  {
    v26 = self->_initialFloatingConfiguration - 1;
    if (v26 <= 3)
    {
      v25 = qword_21F8A8338[v26];
    }
  }

  if ([v4 touchType] == 1 && (self->_initialFloatingConfiguration == 4 ? (v27 = v25 == 1) : (v27 = 0), v27))
  {
    v25 = 1;
  }

  else
  {
    [v4 touchType];
  }

  v28 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  if (!SBFloatingConfigurationIsStashed(v25))
  {
    v29 = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    v30 = [v29 firstObject];
    [(SBSwitcherTransitionRequest *)v28 setAppLayout:v30];
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
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    if ([v4 count])
    {
      if ([v4 count] == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      v6 = [v4 subarrayWithRange:{0, v5}];
      [v3 addObjectsFromArray:v6];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBMoveGestureFloatingSwitcherModifier;
    v3 = [(SBMoveGestureFloatingSwitcherModifier *)&v8 visibleAppLayouts];
  }

  return v3;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBMoveGestureFloatingSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBMoveGestureFloatingSwitcherModifier *)self medusaSettings];
  v7 = [v6 medusaAnimationSettings];
  [v5 setLayoutSettings:v7];

  return v5;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  [(SBMoveGestureFloatingSwitcherModifier *)self containerViewBounds];
  MidX = CGRectGetMidX(v17);
  v7 = [(SBMoveGestureFloatingSwitcherModifier *)self isRTLEnabled];
  [(SBMoveGestureFloatingSwitcherModifier *)self switcherViewBounds];
  v8 = MidX > CGRectGetMidX(v18);
  if (v7 != v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v8)
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
  if (a4)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 1.0;
  }

  if ([(SBGestureSwitcherModifier *)self gesturePhase]>= 2 || a4 == 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.0;
  }

  return v12 * v15;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
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
    v3 = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
    v10.length = [v3 count];
    v9.location = 0;
    v9.length = 1;
    v10.location = 0;
    v4 = NSIntersectionRange(v9, v10);
    v5 = [v3 subarrayWithRange:{v4.location, v4.length}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMoveGestureFloatingSwitcherModifier;
    v5 = [(SBMoveGestureFloatingSwitcherModifier *)&v7 appLayoutsToCacheSnapshots];
  }

  return v5;
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
  v2 = [(SBMoveGestureFloatingSwitcherModifier *)self appLayouts];
  v3 = [v2 firstObject];

  return v3;
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
    v10.super_class = SBMoveGestureFloatingSwitcherModifier;
    v7 = [(SBMoveGestureFloatingSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:v4];
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