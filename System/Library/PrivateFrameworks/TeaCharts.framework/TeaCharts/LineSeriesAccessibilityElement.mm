@interface LineSeriesAccessibilityElement
- (AXChartDescriptor)accessibilityChartDescriptor;
- (CGRect)accessibilityFrame;
- (_TtC9TeaCharts30LineSeriesAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (id)tc_accessibilityDataSeriesValueDescriptionForPosition:(double)a3 axis:(int64_t)a4;
- (void)setAccessibilityChartDescriptor:(id)a3;
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
  v2 = self;
  sub_26D16BDF0();
  v4 = v3;

  return v4;
}

- (void)setAccessibilityChartDescriptor:(id)a3
{
  v5 = a3;
  v6 = self;
}

- (id)tc_accessibilityDataSeriesValueDescriptionForPosition:(double)a3 axis:(int64_t)a4
{
  v6 = self;
  sub_26D16C604(a4, a3);
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

- (_TtC9TeaCharts30LineSeriesAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  swift_unknownObjectRetain();
  sub_26D1744D4();
  swift_unknownObjectRelease();
  LineSeriesAccessibilityElement.init(accessibilityContainer:)();
}

@end