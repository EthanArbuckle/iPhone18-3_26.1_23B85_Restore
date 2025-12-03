@interface _UIHitTestContext
+ (id)contextWithPoint:(CGPoint)point radius:(double)radius;
+ (id)contextWithPoint:(CGPoint)point radius:(double)radius event:(id)event;
- (CGPoint)point;
- (_UIHitTestContext)initWithPoint:(CGPoint)point radius:(double)radius event:(id)event;
@end

@implementation _UIHitTestContext

- (_UIHitTestContext)initWithPoint:(CGPoint)point radius:(double)radius event:(id)event
{
  y = point.y;
  x = point.x;
  v12.receiver = self;
  v12.super_class = _UIHitTestContext;
  v9 = [(_UIHitTestContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_point.x = x;
    v9->_point.y = y;
    v9->_radius = radius;
    objc_storeStrong(&v9->_event, event);
  }

  return v10;
}

+ (id)contextWithPoint:(CGPoint)point radius:(double)radius
{
  v4 = [[self alloc] initWithPoint:0 radius:point.x event:{point.y, radius}];

  return v4;
}

+ (id)contextWithPoint:(CGPoint)point radius:(double)radius event:(id)event
{
  v5 = [[self alloc] initWithPoint:event radius:point.x event:{point.y, radius}];

  return v5;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end