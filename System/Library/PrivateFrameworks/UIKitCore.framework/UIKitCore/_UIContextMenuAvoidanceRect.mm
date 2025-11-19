@interface _UIContextMenuAvoidanceRect
- (CGRect)frame;
- (UICoordinateSpace)coordinateSpace;
- (_UIContextMenuAvoidanceRect)initWithEdge:(unint64_t)a3 frame:(CGRect)a4 coordinateSpace:(id)a5;
@end

@implementation _UIContextMenuAvoidanceRect

- (_UIContextMenuAvoidanceRect)initWithEdge:(unint64_t)a3 frame:(CGRect)a4 coordinateSpace:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIContextMenuAvoidanceRect;
  v12 = [(_UIContextMenuAvoidanceRect *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_edge = a3;
    v12->_frame.origin.x = x;
    v12->_frame.origin.y = y;
    v12->_frame.size.width = width;
    v12->_frame.size.height = height;
    objc_storeWeak(&v12->_coordinateSpace, v11);
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