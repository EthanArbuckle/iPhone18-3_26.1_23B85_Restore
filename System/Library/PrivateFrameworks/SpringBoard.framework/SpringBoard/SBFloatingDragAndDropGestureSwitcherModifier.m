@interface SBFloatingDragAndDropGestureSwitcherModifier
- (BOOL)_isPlatterPreviewIntersectingFloatingApplication;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBFloatingDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 floatingSwitcherVisible:(BOOL)a4 floatingConfiguration:(int64_t)a5 interfaceOrientation:(int64_t)a6;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
@end

@implementation SBFloatingDragAndDropGestureSwitcherModifier

- (SBFloatingDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 floatingSwitcherVisible:(BOOL)a4 floatingConfiguration:(int64_t)a5 interfaceOrientation:(int64_t)a6
{
  v10.receiver = self;
  v10.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  result = [(SBGestureSwitcherModifier *)&v10 initWithGestureID:a3];
  if (result)
  {
    result->_floatingSwitcherVisible = a4;
    result->_floatingConfiguration = a5;
    result->_interfaceOrientation = a6;
  }

  return result;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v17 handleGestureEvent:v4];
  if ([v4 type] == 4)
  {
    v6 = v4;
    self->_currentDropAction = [v6 dropAction];
    [v6 locationInContainerView];
    self->_location.x = v7;
    self->_location.y = v8;
    [v6 platterViewFrame];
    self->_platterFrame.origin.x = v9;
    self->_platterFrame.origin.y = v10;
    self->_platterFrame.size.width = v11;
    self->_platterFrame.size.height = v12;
    [v6 platterScale];
    self->_platterScale = v13;
    if ([v6 phase] == 3 && objc_msgSend(v6, "isCanceled"))
    {
      v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
      v15 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v14 toResponse:v5];

      v5 = v15;
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:v4];

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v7 frameForIndex:a3 + [(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication]];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v4 scaleForIndex:a3 + [(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication]];
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  [v5 setUpdateMode:3];
  v6 = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
  v7 = [v6 resizeAnimationSettings];
  [v5 setLayoutSettings:v7];

  return v5;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:a3 inAppLayout:a4];
  v6 = v5;
  if ([(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication])
  {
    v7 = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
    [v7 replacementDimmingAlpha];
    v6 = v6 + v8;
  }

  return v6;
}

- (CGRect)containerViewBounds
{
  v26.receiver = self;
  v26.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v26 containerViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication])
  {
    v11 = 1.0;
    if (self->_floatingConfiguration == 2)
    {
      v11 = -1.0;
    }

    v4 = v4 + v11;
  }

  v12 = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
  [v12 draggingPlatterSideActivationGutterPadding];
  SBLayoutDefaultSideLayoutElementWidth();
  [(SBFloatingDragAndDropGestureSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v14 = v13;
  floatingConfiguration = self->_floatingConfiguration;
  if (floatingConfiguration == 2)
  {
    x = self->_location.x;
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    if (x > CGRectGetMidX(v27))
    {
      currentDropAction = self->_currentDropAction;
      if (currentDropAction == 5 || currentDropAction == 3)
      {
        v4 = v4 - v14;
      }
    }

    floatingConfiguration = self->_floatingConfiguration;
  }

  if (floatingConfiguration == 1)
  {
    v19 = self->_location.x;
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    if (v19 < CGRectGetMidX(v28))
    {
      v20 = self->_currentDropAction;
      if (v20 == 4 || v20 == 2)
      {
        v4 = v14 + v4;
      }
    }
  }

  v22 = v4;
  v23 = v6;
  v24 = v8;
  v25 = v10;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)_isPlatterPreviewIntersectingFloatingApplication
{
  if (self->_floatingSwitcherVisible)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  if ((self->_currentDropAction & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v6 containerViewBounds];
  return CGRectIntersectsRect(v9, self->_platterFrame);
}

@end