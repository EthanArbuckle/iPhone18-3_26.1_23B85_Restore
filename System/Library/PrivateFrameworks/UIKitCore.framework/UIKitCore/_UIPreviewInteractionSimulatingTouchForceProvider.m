@interface _UIPreviewInteractionSimulatingTouchForceProvider
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (_UIPreviewInteractionSimulatingTouchForceProvider)initWithTouchForce:(double)a3 location:(CGPoint)a4 coordinateSpace:(id)a5;
@end

@implementation _UIPreviewInteractionSimulatingTouchForceProvider

- (_UIPreviewInteractionSimulatingTouchForceProvider)initWithTouchForce:(double)a3 location:(CGPoint)a4 coordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = _UIPreviewInteractionSimulatingTouchForceProvider;
  v10 = [(_UIPreviewInteractionSimulatingTouchForceProvider *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = 1;
    v10->_targetTouchForce = a3;
    v10->_location.x = x;
    v10->_location.y = y;
    objc_storeWeak(&v10->_coordinateSpace, v9);
    v12 = v11;
  }

  return v11;
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:v4 toCoordinateSpace:{self->_location.x, self->_location.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end