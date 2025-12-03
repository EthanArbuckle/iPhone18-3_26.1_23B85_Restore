@interface _UIContextMenuAvoidanceRect
- (CGRect)frame;
- (UICoordinateSpace)coordinateSpace;
- (_UIContextMenuAvoidanceRect)initWithEdge:(unint64_t)edge frame:(CGRect)frame coordinateSpace:(id)space;
@end

@implementation _UIContextMenuAvoidanceRect

- (_UIContextMenuAvoidanceRect)initWithEdge:(unint64_t)edge frame:(CGRect)frame coordinateSpace:(id)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spaceCopy = space;
  v15.receiver = self;
  v15.super_class = _UIContextMenuAvoidanceRect;
  v12 = [(_UIContextMenuAvoidanceRect *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_edge = edge;
    v12->_frame.origin.x = x;
    v12->_frame.origin.y = y;
    v12->_frame.size.width = width;
    v12->_frame.size.height = height;
    objc_storeWeak(&v12->_coordinateSpace, spaceCopy);
  }

  return v13;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

@end