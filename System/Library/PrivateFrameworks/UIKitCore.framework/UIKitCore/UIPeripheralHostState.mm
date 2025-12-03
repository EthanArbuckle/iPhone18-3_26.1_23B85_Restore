@interface UIPeripheralHostState
+ (id)stateWithGeometry:(UIPeripheralAnimationGeometry *)geometry inPositionIsDestination:(BOOL)destination;
- (UIPeripheralAnimationGeometry)geometry;
- (void)dealloc;
- (void)setGeometry:(UIPeripheralAnimationGeometry *)geometry;
@end

@implementation UIPeripheralHostState

+ (id)stateWithGeometry:(UIPeripheralAnimationGeometry *)geometry inPositionIsDestination:(BOOL)destination
{
  destinationCopy = destination;
  v6 = objc_alloc_init(UIPeripheralHostState);
  v7 = *&geometry->transform.c;
  v11[4] = *&geometry->transform.a;
  v11[5] = v7;
  v11[6] = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  inPosition = geometry->inPosition;
  v11[0] = geometry->outPosition;
  v11[1] = inPosition;
  size = geometry->bounds.size;
  v11[2] = geometry->bounds.origin;
  v11[3] = size;
  [(UIPeripheralHostState *)v6 setGeometry:v11];
  [(UIPeripheralHostState *)v6 setInPositionIsDestination:destinationCopy];

  return v6;
}

- (void)dealloc
{
  [(UIPeripheralHostState *)self setScreenGeometry:0];
  v3.receiver = self;
  v3.super_class = UIPeripheralHostState;
  [(UIPeripheralHostState *)&v3 dealloc];
}

- (UIPeripheralAnimationGeometry)geometry
{
  v3 = *&self->transform.d;
  *&retstr->transform.a = *&self->transform.b;
  *&retstr->transform.c = v3;
  *&retstr->transform.tx = *&self->transform.ty;
  retstr->targetFrameHeightDelta = self[1].outPosition.x;
  v4 = *&self->inPosition.y;
  retstr->outPosition = *&self->outPosition.y;
  retstr->inPosition = v4;
  v5 = *&self->bounds.size.height;
  retstr->bounds.origin = *&self->bounds.origin.y;
  retstr->bounds.size = v5;
  return self;
}

- (void)setGeometry:(UIPeripheralAnimationGeometry *)geometry
{
  outPosition = geometry->outPosition;
  inPosition = geometry->inPosition;
  origin = geometry->bounds.origin;
  self->_geometry.bounds.size = geometry->bounds.size;
  self->_geometry.bounds.origin = origin;
  self->_geometry.inPosition = inPosition;
  self->_geometry.outPosition = outPosition;
  v6 = *&geometry->transform.a;
  v7 = *&geometry->transform.c;
  v8 = *&geometry->transform.tx;
  self->_geometry.targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  *&self->_geometry.transform.tx = v8;
  *&self->_geometry.transform.c = v7;
  *&self->_geometry.transform.a = v6;
}

@end