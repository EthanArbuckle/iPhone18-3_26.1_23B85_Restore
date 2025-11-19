@interface TUSegmentedColorView
- (UIColor)endColor;
- (UIColor)startColor;
- (void)drawRect:(CGRect)a3;
- (void)setDirection:(int64_t)a3;
- (void)setEndColor:(id)a3;
- (void)setNumberOfSegments:(int64_t)a3;
- (void)setStartColor:(id)a3;
@end

@implementation TUSegmentedColorView

- (UIColor)startColor
{
  v2 = SegmentedColorView.startColor.getter();

  return v2;
}

- (void)setStartColor:(id)a3
{
  v4 = a3;
  v5 = self;
  SegmentedColorView.startColor.setter(v4);
}

- (UIColor)endColor
{
  v2 = SegmentedColorView.endColor.getter();

  return v2;
}

- (void)setEndColor:(id)a3
{
  v4 = a3;
  v5 = self;
  SegmentedColorView.endColor.setter(v4);
}

- (void)setNumberOfSegments:(int64_t)a3
{
  v4 = self;
  SegmentedColorView.numberOfSegments.setter(a3);
}

- (void)setDirection:(int64_t)a3
{
  v4 = self;
  SegmentedColorView.direction.setter(a3);
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  SegmentedColorView.draw(_:)(v9);
}

@end