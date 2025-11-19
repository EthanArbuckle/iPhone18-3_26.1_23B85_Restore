@interface _UIHitTestContext
+ (id)contextWithPoint:(CGPoint)a3 radius:(double)a4;
+ (id)contextWithPoint:(CGPoint)a3 radius:(double)a4 event:(id)a5;
- (CGPoint)point;
- (_UIHitTestContext)initWithPoint:(CGPoint)a3 radius:(double)a4 event:(id)a5;
@end

@implementation _UIHitTestContext

- (_UIHitTestContext)initWithPoint:(CGPoint)a3 radius:(double)a4 event:(id)a5
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = _UIHitTestContext;
  v9 = [(_UIHitTestContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_point.x = x;
    v9->_point.y = y;
    v9->_radius = a4;
    objc_storeStrong(&v9->_event, a5);
  }

  return v10;
}

+ (id)contextWithPoint:(CGPoint)a3 radius:(double)a4
{
  v4 = [[a1 alloc] initWithPoint:0 radius:a3.x event:{a3.y, a4}];

  return v4;
}

+ (id)contextWithPoint:(CGPoint)a3 radius:(double)a4 event:(id)a5
{
  v5 = [[a1 alloc] initWithPoint:a5 radius:a3.x event:{a3.y, a4}];

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