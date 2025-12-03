@interface RPTResizeInteraction
- (CGPoint)dragPoint;
- (CGSize)finalSize;
- (CGSize)initialSize;
- (CGVector)delta;
- (RPTResizeInteraction)initWithDragPoint:(CGPoint)point delta:(CGVector)delta sourceSize:(CGSize)size;
- (RPTResizeInteraction)initWithDragPoint:(CGPoint)point sourceSize:(CGSize)size destinationSize:(CGSize)destinationSize;
- (RPTResizeInteraction)initWithWindow:(id)window destinationSize:(CGSize)size;
- (id)interactionByScalingBy:(double)by;
- (id)reversedInteraction;
- (void)invokeWithComposer:(id)composer duration:(double)duration;
@end

@implementation RPTResizeInteraction

- (RPTResizeInteraction)initWithDragPoint:(CGPoint)point sourceSize:(CGSize)size destinationSize:(CGSize)destinationSize
{
  height = destinationSize.height;
  width = destinationSize.width;
  v7 = size.height;
  v8 = size.width;
  y = point.y;
  x = point.x;
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

- (RPTResizeInteraction)initWithDragPoint:(CGPoint)point delta:(CGVector)delta sourceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dy = delta.dy;
  dx = delta.dx;
  y = point.y;
  x = point.x;
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

- (RPTResizeInteraction)initWithWindow:(id)window destinationSize:(CGSize)size
{
  windowCopy = window;
  [windowCopy bounds];
  v7 = v6;
  v9 = v8;
  [windowCopy bounds];
  v10 = CGRectGetMaxX(v23) + -5.0;
  [windowCopy bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v19 = CGRectGetMaxY(v24) + -5.0;

  return [(RPTResizeInteraction *)self initWithDragPoint:v10 sourceSize:v19 destinationSize:v7, v9, size.width, size.height];
}

- (void)invokeWithComposer:(id)composer duration:(double)duration
{
  composerCopy = composer;
  conversion = [(RPTResizeInteraction *)self conversion];
  [conversion convertPoint:{self->_dragPoint.x, self->_dragPoint.y}];
  [composerCopy pointerMoveToPointIfApplicable:?];

  if (self->_shouldPress)
  {
    conversion2 = [(RPTResizeInteraction *)self conversion];
    [conversion2 convertPoint:{self->_dragPoint.x, self->_dragPoint.y}];
    [composerCopy pointerOrFingerTapDown:?];
  }

  v7 = [(RPTResizeInteraction *)self conversion:vaddq_f64(self->_delta];
  [v7 convertPoint:?];
  [composerCopy pointerOrFingerMoveToPoint:? duration:?];

  if (self->_shouldLift)
  {
    conversion3 = [(RPTResizeInteraction *)self conversion];
    [conversion3 convertPoint:{v9, v10}];
    [composerCopy pointerOrFingerTapUp:?];
  }
}

- (id)reversedInteraction
{
  v3 = [[RPTResizeInteraction alloc] initWithDragPoint:vaddq_f64(self->_delta sourceSize:self->_dragPoint) destinationSize:self->_finalSize.width, self->_finalSize.height, self->_initialSize.width, self->_initialSize.height];
  [(RPTResizeInteraction *)v3 setConversion:self->_conversion];

  return v3;
}

- (id)interactionByScalingBy:(double)by
{
  v4 = [[RPTResizeInteraction alloc] initWithDragPoint:self->_dragPoint.x delta:self->_dragPoint.y sourceSize:self->_delta.dx * by, self->_delta.dy * by, self->_initialSize.width, self->_initialSize.height];
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