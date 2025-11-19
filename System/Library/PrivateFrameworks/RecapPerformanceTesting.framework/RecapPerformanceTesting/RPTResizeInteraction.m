@interface RPTResizeInteraction
- (CGPoint)dragPoint;
- (CGSize)finalSize;
- (CGSize)initialSize;
- (CGVector)delta;
- (RPTResizeInteraction)initWithDragPoint:(CGPoint)a3 delta:(CGVector)a4 sourceSize:(CGSize)a5;
- (RPTResizeInteraction)initWithDragPoint:(CGPoint)a3 sourceSize:(CGSize)a4 destinationSize:(CGSize)a5;
- (RPTResizeInteraction)initWithWindow:(id)a3 destinationSize:(CGSize)a4;
- (id)interactionByScalingBy:(double)a3;
- (id)reversedInteraction;
- (void)invokeWithComposer:(id)a3 duration:(double)a4;
@end

@implementation RPTResizeInteraction

- (RPTResizeInteraction)initWithDragPoint:(CGPoint)a3 sourceSize:(CGSize)a4 destinationSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = RPTResizeInteraction;
  v11 = [(RPTResizeInteraction *)&v15 init];
  if (v11)
  {
    v12 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v11->_conversion;
    v11->_conversion = v12;

    v11->_dragPoint.x = x;
    v11->_dragPoint.y = y;
    v11->_initialSize.width = v8;
    v11->_initialSize.height = v7;
    v11->_finalSize.width = width;
    v11->_finalSize.height = height;
    v11->_delta.dx = width - v8;
    v11->_delta.dy = height - v7;
    *&v11->_shouldLift = 257;
  }

  return v11;
}

- (RPTResizeInteraction)initWithDragPoint:(CGPoint)a3 delta:(CGVector)a4 sourceSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  dy = a4.dy;
  dx = a4.dx;
  y = a3.y;
  x = a3.x;
  v16.receiver = self;
  v16.super_class = RPTResizeInteraction;
  v11 = [(RPTResizeInteraction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_dragPoint.x = x;
    v11->_dragPoint.y = y;
    v11->_initialSize.width = width;
    v11->_initialSize.height = height;
    v13 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v12->_conversion;
    v12->_conversion = v13;

    v12->_finalSize.width = dx + width;
    v12->_finalSize.height = dy + height;
    v12->_delta.dx = dx;
    v12->_delta.dy = dy;
    *&v12->_shouldLift = 257;
  }

  return v12;
}

- (RPTResizeInteraction)initWithWindow:(id)a3 destinationSize:(CGSize)a4
{
  v5 = a3;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  [v5 bounds];
  v10 = CGRectGetMaxX(v23) + -5.0;
  [v5 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v19 = CGRectGetMaxY(v24) + -5.0;

  return [(RPTResizeInteraction *)self initWithDragPoint:v10 sourceSize:v19 destinationSize:v7, v9, a4.width, a4.height];
}

- (void)invokeWithComposer:(id)a3 duration:(double)a4
{
  v11 = a3;
  v5 = [(RPTResizeInteraction *)self conversion];
  [v5 convertPoint:{self->_dragPoint.x, self->_dragPoint.y}];
  [v11 pointerMoveToPointIfApplicable:?];

  if (self->_shouldPress)
  {
    v6 = [(RPTResizeInteraction *)self conversion];
    [v6 convertPoint:{self->_dragPoint.x, self->_dragPoint.y}];
    [v11 pointerOrFingerTapDown:?];
  }

  v7 = [(RPTResizeInteraction *)self conversion:vaddq_f64(self->_delta];
  [v7 convertPoint:?];
  [v11 pointerOrFingerMoveToPoint:? duration:?];

  if (self->_shouldLift)
  {
    v8 = [(RPTResizeInteraction *)self conversion];
    [v8 convertPoint:{v9, v10}];
    [v11 pointerOrFingerTapUp:?];
  }
}

- (id)reversedInteraction
{
  v3 = [[RPTResizeInteraction alloc] initWithDragPoint:vaddq_f64(self->_delta sourceSize:self->_dragPoint) destinationSize:self->_finalSize.width, self->_finalSize.height, self->_initialSize.width, self->_initialSize.height];
  [(RPTResizeInteraction *)v3 setConversion:self->_conversion];

  return v3;
}

- (id)interactionByScalingBy:(double)a3
{
  v4 = [[RPTResizeInteraction alloc] initWithDragPoint:self->_dragPoint.x delta:self->_dragPoint.y sourceSize:self->_delta.dx * a3, self->_delta.dy * a3, self->_initialSize.width, self->_initialSize.height];
  [(RPTResizeInteraction *)v4 setConversion:self->_conversion];

  return v4;
}

- (CGPoint)dragPoint
{
  x = self->_dragPoint.x;
  y = self->_dragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGVector)delta
{
  dx = self->_delta.dx;
  dy = self->_delta.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGSize)initialSize
{
  width = self->_initialSize.width;
  height = self->_initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)finalSize
{
  width = self->_finalSize.width;
  height = self->_finalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end