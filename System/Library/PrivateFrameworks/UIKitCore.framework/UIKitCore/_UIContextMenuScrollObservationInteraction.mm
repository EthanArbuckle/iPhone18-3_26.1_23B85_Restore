@interface _UIContextMenuScrollObservationInteraction
+ (id)interactionWithDelegate:(id)a3;
- (BOOL)_descendentScrollView:(id)a3 shouldPreserveStartOffset:(CGPoint)a4;
- (CGPoint)_scrollView:(id)a3 adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)a4 startOffset:(CGPoint)a5 horizontalVelocity:(double *)a6 verticalVelocity:(double *)a7 animator:(id *)a8;
- (UIView)view;
- (_UIContextMenuScrollObservationInteractionDelegate)delegate;
- (void)_endInteractionWithTranslation:(CGPoint)a3 location:(CGPoint)a4;
@end

@implementation _UIContextMenuScrollObservationInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)interactionWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDelegate:v3];

  return v4;
}

- (BOOL)_descendentScrollView:(id)a3 shouldPreserveStartOffset:(CGPoint)a4
{
  y = a4.y;
  v5 = a4.y < _scrollRange(a3);
  return y > v6 || v5;
}

- (CGPoint)_scrollView:(id)a3 adjustedUnconstrainedOffsetForUnconstrainedOffset:(CGPoint)a4 startOffset:(CGPoint)a5 horizontalVelocity:(double *)a6 verticalVelocity:(double *)a7 animator:(id *)a8
{
  y = a5.y;
  v9 = a4.y;
  v11 = a3;
  v12 = [v11 panGestureRecognizer];
  v13 = [(_UIContextMenuScrollObservationInteraction *)self view];
  [v12 locationInView:v13];
  self->_currentLocation.x = v14;
  self->_currentLocation.y = v15;

  if (self->_isActive)
  {
    v32 = 0u;
    v33 = 0u;
    v16 = y - v9;
    v31 = 0u;
    v17 = [(_UIContextMenuScrollObservationInteraction *)self view];
    _UIGetTransformBetweenViews(v11, v17, 1, &v31);

    v18 = *&v33 + *&v31 * 0.0 + (y - v9) * *&v32;
    v19 = *(&v33 + 1) + *(&v31 + 1) * 0.0 + v16 * *(&v32 + 1);
    if (v9 < _scrollRange(v11) || v9 > v20)
    {
      v19 = v19 - self->_consumedTranslation.y;
      v25 = [(_UIContextMenuScrollObservationInteraction *)self delegate];
      [v25 scrollObservationInteraction:self didUpdateWithTranslation:0 location:v18 ended:{v19, self->_currentLocation.x, self->_currentLocation.y}];

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
    v24 = [(_UIContextMenuScrollObservationInteraction *)self delegate];
    [v24 scrollObservationInteraction:self willBeginAtLocation:{self->_currentLocation.x, self->_currentLocation.y}];
  }

  v26 = _scrollRange(v11);
  v28 = fmax(v26, fmin(v9, v27));

  v29 = 0.0;
  v30 = v28;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)_endInteractionWithTranslation:(CGPoint)a3 location:(CGPoint)a4
{
  if (self->_isActive)
  {
    y = a4.y;
    x = a4.x;
    v7 = a3.y;
    v8 = a3.x;
    v9 = [(_UIContextMenuScrollObservationInteraction *)self delegate];
    [v9 scrollObservationInteraction:self didUpdateWithTranslation:1 location:v8 ended:{v7, x, y}];
  }

  self->_isActive = 0;
}

- (_UIContextMenuScrollObservationInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end