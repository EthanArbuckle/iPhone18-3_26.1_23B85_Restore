@interface UIPeripheralHostState
+ (id)stateWithGeometry:(UIPeripheralAnimationGeometry *)a3 inPositionIsDestination:(BOOL)a4;
- (UIPeripheralAnimationGeometry)geometry;
- (void)dealloc;
- (void)setGeometry:(UIPeripheralAnimationGeometry *)a3;
@end

@implementation UIPeripheralHostState

+ (id)stateWithGeometry:(UIPeripheralAnimationGeometry *)a3 inPositionIsDestination:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(UIPeripheralHostState);
  v7 = *&a3->transform.c;
  v11[4] = *&a3->transform.a;
  v11[5] = v7;
  v11[6] = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  inPosition = a3->inPosition;
  v11[0] = a3->outPosition;
  v11[1] = inPosition;
  size = a3->bounds.size;
  v11[2] = a3->bounds.origin;
  v11[3] = size;
  [(UIPeripheralHostState *)v6 setGeometry:v11];
  [(UIPeripheralHostState *)v6 setInPositionIsDestination:v4];

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

- (void)setGeometry:(UIPeripheralAnimationGeometry *)a3
{
  outPosition = a3->outPosition;
  inPosition = a3->inPosition;
  origin = a3->bounds.origin;
  self->_geometry.bounds.size = a3->bounds.size;
  self->_geometry.bounds.origin = origin;
  self->_geometry.inPosition = inPosition;
  self->_geometry.outPosition = outPosition;
  v6 = *&a3->transform.a;
  v7 = *&a3->transform.c;
  v8 = *&a3->transform.tx;
  self->_geometry.targetFrameHeightDelta = a3->targetFrameHeightDelta;
  *&self->_geometry.transform.tx = v8;
  *&self->_geometry.transform.c = v7;
  *&self->_geometry.transform.a = v6;
}

@end