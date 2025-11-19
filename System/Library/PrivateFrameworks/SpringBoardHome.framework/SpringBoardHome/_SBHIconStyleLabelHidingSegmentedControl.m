@interface _SBHIconStyleLabelHidingSegmentedControl
- (CGSize)intrinsicContentSize;
- (_SBHIconStyleLabelHidingSegmentedControl)initWithFrame:(CGRect)a3;
@end

@implementation _SBHIconStyleLabelHidingSegmentedControl

- (_SBHIconStyleLabelHidingSegmentedControl)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _SBHIconStyleLabelHidingSegmentedControl;
  return [(_SBHIconStyleLabelHidingSegmentedControl *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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