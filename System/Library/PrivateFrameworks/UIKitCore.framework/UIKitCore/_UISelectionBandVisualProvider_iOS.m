@interface _UISelectionBandVisualProvider_iOS
- (BOOL)enabled;
- (CGPoint)initialPoint;
- (UIView)view;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)beginAtPoint:(CGPoint)a3;
- (void)endAtPoint:(CGPoint)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setView:(id)a3;
@end

@implementation _UISelectionBandVisualProvider_iOS

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:1.79769313e308, 1.79769313e308];
    v6 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
    v7 = [v6 view];
    v8 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
    [v7 removeInteraction:v8];

    v9 = objc_storeWeak(&self->_view, obj);
    v5 = obj;
    if (obj)
    {
      v10 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];

      if (!v10)
      {
        v11 = [[UIPointerInteraction alloc] initWithDelegate:self];
        [(_UISelectionBandVisualProvider_iOS *)self setPtrInteraction:v11];
      }

      v12 = objc_loadWeakRetained(&self->_view);
      v13 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
      [v12 addInteraction:v13];

      v5 = obj;
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [v4 setEnabled:v3];
}

- (BOOL)enabled
{
  v2 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)beginAtPoint:(CGPoint)a3
{
  [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:a3.x, a3.y];
  v4 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [v4 invalidate];
}

- (void)endAtPoint:(CGPoint)a3
{
  [(_UISelectionBandVisualProvider_iOS *)self setInitialPoint:1.79769313e308, 1.79769313e308];
  v4 = [(_UISelectionBandVisualProvider_iOS *)self ptrInteraction];
  [v4 invalidate];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a3;
  if ([(_UISelectionBandVisualProvider_iOS *)self _isActive])
  {
    v7 = [v6 view];
    [v7 bounds];
    v8 = [UIPointerRegion regionWithRect:@"UIBandSelectionInteraction.band" identifier:?];

    [v8 setLatchingAxes:3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  [(_UISelectionBandVisualProvider_iOS *)self initialPoint:a3];
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