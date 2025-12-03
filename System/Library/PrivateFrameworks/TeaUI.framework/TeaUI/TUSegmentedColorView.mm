@interface TUSegmentedColorView
- (UIColor)endColor;
- (UIColor)startColor;
- (void)drawRect:(CGRect)rect;
- (void)setDirection:(int64_t)direction;
- (void)setEndColor:(id)color;
- (void)setNumberOfSegments:(int64_t)segments;
- (void)setStartColor:(id)color;
@end

@implementation TUSegmentedColorView

- (UIColor)startColor
{
  v2 = SegmentedColorView.startColor.getter();

  return v2;
}

- (void)setStartColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  SegmentedColorView.startColor.setter(colorCopy);
}

- (UIColor)endColor
{
  v2 = SegmentedColorView.endColor.getter();

  return v2;
}

- (void)setEndColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  SegmentedColorView.endColor.setter(colorCopy);
}

- (void)setNumberOfSegments:(int64_t)segments
{
  selfCopy = self;
  SegmentedColorView.numberOfSegments.setter(segments);
}

- (void)setDirection:(int64_t)direction
{
  selfCopy = self;
  SegmentedColorView.direction.setter(direction);
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  SegmentedColorView.draw(_:)(v9);
}

@end