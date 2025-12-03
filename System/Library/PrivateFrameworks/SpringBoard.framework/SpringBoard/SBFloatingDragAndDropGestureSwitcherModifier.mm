@interface SBFloatingDragAndDropGestureSwitcherModifier
- (BOOL)_isPlatterPreviewIntersectingFloatingApplication;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBFloatingDragAndDropGestureSwitcherModifier)initWithGestureID:(id)d floatingSwitcherVisible:(BOOL)visible floatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBFloatingDragAndDropGestureSwitcherModifier

- (SBFloatingDragAndDropGestureSwitcherModifier)initWithGestureID:(id)d floatingSwitcherVisible:(BOOL)visible floatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  v10.receiver = self;
  v10.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  result = [(SBGestureSwitcherModifier *)&v10 initWithGestureID:d];
  if (result)
  {
    result->_floatingSwitcherVisible = visible;
    result->_floatingConfiguration = configuration;
    result->_interfaceOrientation = orientation;
  }

  return result;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v17 handleGestureEvent:eventCopy];
  if ([eventCopy type] == 4)
  {
    v6 = eventCopy;
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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v7 frameForIndex:index + [(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication]];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v4 scaleForIndex:index + [(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication]];
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  [v5 setUpdateMode:3];
  medusaSettings = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
  resizeAnimationSettings = [medusaSettings resizeAnimationSettings];
  [v5 setLayoutSettings:resizeAnimationSettings];

  return v5;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = SBFloatingDragAndDropGestureSwitcherModifier;
  [(SBFloatingDragAndDropGestureSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:role inAppLayout:layout];
  v6 = v5;
  if ([(SBFloatingDragAndDropGestureSwitcherModifier *)self _isPlatterPreviewIntersectingFloatingApplication])
  {
    medusaSettings = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
    [medusaSettings replacementDimmingAlpha];
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

  medusaSettings = [(SBFloatingDragAndDropGestureSwitcherModifier *)self medusaSettings];
  [medusaSettings draggingPlatterSideActivationGutterPadding];
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