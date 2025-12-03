@interface LineSeriesAccessibilityElement
- (AXChartDescriptor)accessibilityChartDescriptor;
- (CGRect)accessibilityFrame;
- (_TtC9TeaCharts30LineSeriesAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (id)tc_accessibilityDataSeriesValueDescriptionForPosition:(double)position axis:(int64_t)axis;
- (void)setAccessibilityChartDescriptor:(id)descriptor;
@end

@implementation LineSeriesAccessibilityElement

- (CGRect)accessibilityFrame
{
  sub_26D16BB0C(self, a2, sub_26D16BB58);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (AXChartDescriptor)accessibilityChartDescriptor
{
  selfCopy = self;
  sub_26D16BDF0();
  v4 = v3;

  return v4;
}

- (void)setAccessibilityChartDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  selfCopy = self;
}

- (id)tc_accessibilityDataSeriesValueDescriptionForPosition:(double)position axis:(int64_t)axis
{
  selfCopy = self;
  sub_26D16C604(axis, position);
  v8 = v7;

  if (v8)
  {
    v9 = sub_26D174204();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC9TeaCharts30LineSeriesAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  swift_unknownObjectRetain();
  sub_26D1744D4();
  swift_unknownObjectRelease();
  LineSeriesAccessibilityElement.init(accessibilityContainer:)();
}

@end