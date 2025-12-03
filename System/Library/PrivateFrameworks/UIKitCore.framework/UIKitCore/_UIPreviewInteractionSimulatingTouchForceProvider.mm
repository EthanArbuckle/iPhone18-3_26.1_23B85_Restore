@interface _UIPreviewInteractionSimulatingTouchForceProvider
- (CGPoint)locationInCoordinateSpace:(id)space;
- (_UIPreviewInteractionSimulatingTouchForceProvider)initWithTouchForce:(double)force location:(CGPoint)location coordinateSpace:(id)space;
@end

@implementation _UIPreviewInteractionSimulatingTouchForceProvider

- (_UIPreviewInteractionSimulatingTouchForceProvider)initWithTouchForce:(double)force location:(CGPoint)location coordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  v14.receiver = self;
  v14.super_class = _UIPreviewInteractionSimulatingTouchForceProvider;
  v10 = [(_UIPreviewInteractionSimulatingTouchForceProvider *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = 1;
    v10->_targetTouchForce = force;
    v10->_location.x = x;
    v10->_location.y = y;
    objc_storeWeak(&v10->_coordinateSpace, spaceCopy);
    v12 = v11;
  }

  return v11;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:spaceCopy toCoordinateSpace:{self->_location.x, self->_location.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end