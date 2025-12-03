@interface _UIContextMenuScrollObservationInteraction
+ (id)interactionWithDelegate:(id)delegate;
- (BOOL)_descendentScrollView:(id)view shouldPreserveStartOffset:(CGPoint)offset;
- (CGPoint)_scrollView:(id)view adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)offset startOffset:(CGPoint)startOffset horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity animator:(id *)animator;
- (UIView)view;
- (_UIContextMenuScrollObservationInteractionDelegate)delegate;
- (void)_endInteractionWithTranslation:(CGPoint)translation location:(CGPoint)location;
@end

@implementation _UIContextMenuScrollObservationInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)interactionWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_opt_new();
  [v4 setDelegate:delegateCopy];

  return v4;
}

- (BOOL)_descendentScrollView:(id)view shouldPreserveStartOffset:(CGPoint)offset
{
  y = offset.y;
  v5 = offset.y < _scrollRange(view);
  return y > v6 || v5;
}

- (CGPoint)_scrollView:(id)view adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)offset startOffset:(CGPoint)startOffset horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity animator:(id *)animator
{
  y = startOffset.y;
  v9 = offset.y;
  viewCopy = view;
  panGestureRecognizer = [viewCopy panGestureRecognizer];
  view = [(_UIContextMenuScrollObservationInteraction *)self view];
  [panGestureRecognizer locationInView:view];
  self->_currentLocation.x = v14;
  self->_currentLocation.y = v15;

  if (self->_isActive)
  {
    v32 = 0u;
    v33 = 0u;
    v16 = y - v9;
    v31 = 0u;
    view2 = [(_UIContextMenuScrollObservationInteraction *)self view];
    _UIGetTransformBetweenViews(viewCopy, view2, 1, &v31);

    v18 = *&v33 + *&v31 * 0.0 + (y - v9) * *&v32;
    v19 = *(&v33 + 1) + *(&v31 + 1) * 0.0 + v16 * *(&v32 + 1);
    if (v9 < _scrollRange(viewCopy) || v9 > v20)
    {
      v19 = v19 - self->_consumedTranslation.y;
      delegate = [(_UIContextMenuScrollObservationInteraction *)self delegate];
      [delegate scrollObservationInteraction:self didUpdateWithTranslation:0 location:v18 ended:{v19, self->_currentLocation.x, self->_currentLocation.y}];

      v21 = 16;
      v22 = 8;
    }

    else
    {
      v21 = 32;
      v22 = 24;
    }

    *(&self->super.isa + v22) = v18;
    *(&self->super.isa + v21) = v19;
  }

  else
  {
    v23 = *MEMORY[0x1E695EFF8];
    self->_currentTranslation = *MEMORY[0x1E695EFF8];
    self->_consumedTranslation = v23;
    self->_isActive = 1;
    delegate2 = [(_UIContextMenuScrollObservationInteraction *)self delegate];
    [delegate2 scrollObservationInteraction:self willBeginAtLocation:{self->_currentLocation.x, self->_currentLocation.y}];
  }

  v26 = _scrollRange(viewCopy);
  v28 = fmax(v26, fmin(v9, v27));

  v29 = 0.0;
  v30 = v28;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)_endInteractionWithTranslation:(CGPoint)translation location:(CGPoint)location
{
  if (self->_isActive)
  {
    y = location.y;
    x = location.x;
    v7 = translation.y;
    v8 = translation.x;
    delegate = [(_UIContextMenuScrollObservationInteraction *)self delegate];
    [delegate scrollObservationInteraction:self didUpdateWithTranslation:1 location:v8 ended:{v7, x, y}];
  }

  self->_isActive = 0;
}

- (_UIContextMenuScrollObservationInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end