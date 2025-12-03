@interface _UIFocusSpeedBumpRegion
- (BOOL)isEqual:(id)equal;
- (_UIFocusSpeedBumpRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space speedBumpEdges:(unint64_t)edges;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (unint64_t)_boundariesBlockingFocusMovementRequest:(id)request;
@end

@implementation _UIFocusSpeedBumpRegion

- (_UIFocusSpeedBumpRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space speedBumpEdges:(unint64_t)edges
{
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  result = [(_UIFocusRegion *)&v7 initWithFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_speedBumpEdges = edges;
  }

  return result;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  v5 = [(_UIFocusRegion *)&v7 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5[6] = self->_speedBumpEdges;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  if ([(_UIFocusRegion *)&v7 isEqual:equalCopy])
  {
    v5 = self->_speedBumpEdges == equalCopy[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_boundariesBlockingFocusMovementRequest:(id)request
{
  movementInfo = [request movementInfo];
  _isInitialMovement = [movementInfo _isInitialMovement];

  if (_isInitialMovement)
  {
    return 0;
  }

  return [(_UIFocusSpeedBumpRegion *)self speedBumpEdges];
}

@end