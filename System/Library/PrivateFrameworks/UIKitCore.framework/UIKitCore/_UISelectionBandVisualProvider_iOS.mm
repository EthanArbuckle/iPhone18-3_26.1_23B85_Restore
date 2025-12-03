@interface _UISelectionBandVisualProvider_iOS
- (BOOL)enabled;
- (CGPoint)initialPoint;
- (UIView)view;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)beginAtPoint:(CGPoint)point;
- (void)endAtPoint:(CGPoint)point;
- (void)setEnabled:(BOOL)enabled;
- (void)setView:(id)view;
@end

@implementation _UISelectionBandVisualProvider_iOS

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:1.79769313e308, 1.79769313e308];
    ptrInteraction = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
    view = [ptrInteraction view];
    ptrInteraction2 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
    [view removeInteraction:ptrInteraction2];

    v9 = objc_storeWeak(&self->_view, obj);
    v5 = obj;
    if (obj)
    {
      ptrInteraction3 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];

      if (!ptrInteraction3)
      {
        v11 = [[UIPointerInteraction alloc] initWithDelegate:self];
        [(_UISelectionBandVisualProvider_iOS *)self setPtrInteraction:v11];
      }

      v12 = objc_loadWeakRetained(&self->_view);
      ptrInteraction4 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
      [v12 addInteraction:ptrInteraction4];

      v5 = obj;
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  ptrInteraction = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [ptrInteraction setEnabled:enabledCopy];
}

- (BOOL)enabled
{
  ptrInteraction = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  isEnabled = [ptrInteraction isEnabled];

  return isEnabled;
}

- (void)beginAtPoint:(CGPoint)point
{
  [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:point.x, point.y];
  ptrInteraction = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [ptrInteraction invalidate];
}

- (void)endAtPoint:(CGPoint)point
{
  [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:1.79769313e308, 1.79769313e308];
  ptrInteraction = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [ptrInteraction invalidate];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  if ([(_UISelectionBandVisualProvider_iOS *)self _isActive])
  {
    view = [interactionCopy view];
    [view bounds];
    v8 = [UIPointerRegion regionWithRect:@"UIBandSelectionInteraction.band" identifier:?];

    [v8 setLatchingAxes:3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  [(_UISelectionBandVisualProvider_iOS *)self initialPoint:interaction];
  v4 = [UIPointerShape _elasticRectShapePinnedAtPoint:?];
  v5 = [UIPointerStyle styleWithShape:v4 constrainedAxes:0];

  return v5;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGPoint)initialPoint
{
  x = self->_initialPoint.x;
  y = self->_initialPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end