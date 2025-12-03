@interface _SBHIconStyleLabelHidingSegmentedControl
- (CGSize)intrinsicContentSize;
- (_SBHIconStyleLabelHidingSegmentedControl)initWithFrame:(CGRect)frame;
@end

@implementation _SBHIconStyleLabelHidingSegmentedControl

- (_SBHIconStyleLabelHidingSegmentedControl)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _SBHIconStyleLabelHidingSegmentedControl;
  return [(_SBHIconStyleLabelHidingSegmentedControl *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = _SBHIconStyleLabelHidingSegmentedControl;
  [(_SBHIconStyleLabelHidingSegmentedControl *)&v5 intrinsicContentSize];
  v4 = v3 + 60.0;
  result.height = v2;
  result.width = v4;
  return result;
}

@end