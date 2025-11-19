@interface UIKBStrokeSample
- (CGPoint)point;
- (UIKBStrokeSample)initWithPoint:(CGPoint)a3 timestamp:(double)a4;
@end

@implementation UIKBStrokeSample

- (UIKBStrokeSample)initWithPoint:(CGPoint)a3 timestamp:(double)a4
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = UIKBStrokeSample;
  v7 = [(UIKBStrokeSample *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UIKBStrokeSample *)v7 setPoint:x, y];
    [(UIKBStrokeSample *)v8 setTimestamp:a4];
  }

  return v8;
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