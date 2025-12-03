@interface RPTDragInteraction
- (CGPoint)destinationLocation;
- (CGPoint)sourceLocation;
- (id)_andThenDragBy:(CGVector)by;
- (id)initByDraggingWindow:(id)window byDelta:(CGVector)delta;
- (id)initFromSourceLocation:(CGPoint)location toDestinationLocation:(CGPoint)destinationLocation;
- (id)interactionByScalingBy:(double)by;
- (id)reversedInteraction;
- (void)invokeWithComposer:(id)composer duration:(double)duration;
@end

@implementation RPTDragInteraction

- (id)initByDraggingWindow:(id)window byDelta:(CGVector)delta
{
  dy = delta.dy;
  dx = delta.dx;
  windowCopy = window;
  [windowCopy rpt_accessibilityActivationPointAttribute];
  v9 = v8;
  v11 = v10;
  v19.receiver = self;
  v19.super_class = RPTDragInteraction;
  v12 = [(RPTDragInteraction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_sourceLocation.x = v9;
    v12->_sourceLocation.y = v11;
    v14 = [RPTCoordinateSpaceConverter converterFromWindow:windowCopy];
    conversion = v13->_conversion;
    v13->_conversion = v14;

    [(RPTCoordinateSpaceConverter *)v13->_conversion convertVector:dx, dy];
    v17.f64[1] = v16;
    v13->_destinationLocation = vaddq_f64(v17, v13->_sourceLocation);
    v13->__locationsAreAlreadyScreenSpace = 1;
  }

  return v13;
}

- (id)initFromSourceLocation:(CGPoint)location toDestinationLocation:(CGPoint)destinationLocation
{
  y = destinationLocation.y;
  x = destinationLocation.x;
  v6 = location.y;
  v7 = location.x;
  v13.receiver = self;
  v13.super_class = RPTDragInteraction;
  v8 = [(RPTDragInteraction *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_sourceLocation.x = v7;
    v8->_sourceLocation.y = v6;
    v8->_destinationLocation.x = x;
    v8->_destinationLocation.y = y;
    v10 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v9->_conversion;
    v9->_conversion = v10;

    v9->__locationsAreAlreadyScreenSpace = 0;
  }

  return v9;
}

- (void)invokeWithComposer:(id)composer duration:(double)duration
{
  composerCopy = composer;
  if ([(RPTDragInteraction *)self _locationsAreAlreadyScreenSpace])
  {
    x = self->_sourceLocation.x;
    y = self->_sourceLocation.y;
  }

  else
  {
    conversion = [(RPTDragInteraction *)self conversion];
    [conversion convertPoint:{self->_sourceLocation.x, self->_sourceLocation.y}];
    x = v9;
    y = v10;
  }

  if ([(RPTDragInteraction *)self _locationsAreAlreadyScreenSpace])
  {
    v11 = self->_destinationLocation.x;
    v12 = self->_destinationLocation.y;
  }

  else
  {
    conversion2 = [(RPTDragInteraction *)self conversion];
    [conversion2 convertPoint:{self->_destinationLocation.x, self->_destinationLocation.y}];
    v11 = v14;
    v12 = v15;
  }

  [composerCopy pointerMoveToPointIfApplicable:{x, y}];
  [composerCopy pointerOrFingerTapDown:{x, y}];
  [composerCopy pointerOrFingerMoveToPoint:v11 duration:{v12, duration}];
  [composerCopy pointerOrFingerTapUp:{v11, v12}];
}

- (id)reversedInteraction
{
  v3 = [[RPTDragInteraction alloc] initFromSourceLocation:self->_destinationLocation.x toDestinationLocation:self->_destinationLocation.y, self->_sourceLocation.x, self->_sourceLocation.y];
  [v3 set_locationsAreAlreadyScreenSpace:{-[RPTDragInteraction _locationsAreAlreadyScreenSpace](self, "_locationsAreAlreadyScreenSpace")}];
  [v3 setConversion:self->_conversion];

  return v3;
}

- (id)interactionByScalingBy:(double)by
{
  v4 = [[RPTDragInteraction alloc] initFromSourceLocation:self->_sourceLocation.x toDestinationLocation:self->_sourceLocation.y, vaddq_f64(self->_sourceLocation, vmulq_n_f64(vsubq_f64(self->_destinationLocation, self->_sourceLocation), by))];
  [v4 set_locationsAreAlreadyScreenSpace:{-[RPTDragInteraction _locationsAreAlreadyScreenSpace](self, "_locationsAreAlreadyScreenSpace")}];
  [v4 setConversion:self->_conversion];

  return v4;
}

- (id)_andThenDragBy:(CGVector)by
{
  dy = by.dy;
  dx = by.dx;
  conversion = [(RPTDragInteraction *)self conversion];
  [conversion convertVector:{dx, dy}];
  v8 = v7;
  v10 = v9;

  v11 = [[RPTDragInteraction alloc] initFromSourceLocation:self->_destinationLocation.x toDestinationLocation:self->_destinationLocation.y, v8 + self->_destinationLocation.x, v10 + self->_destinationLocation.y];
  [v11 set_locationsAreAlreadyScreenSpace:{-[RPTDragInteraction _locationsAreAlreadyScreenSpace](self, "_locationsAreAlreadyScreenSpace")}];
  [v11 setConversion:self->_conversion];

  return v11;
}

- (CGPoint)sourceLocation
{
  x = self->_sourceLocation.x;
  y = self->_sourceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)destinationLocation
{
  x = self->_destinationLocation.x;
  y = self->_destinationLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end