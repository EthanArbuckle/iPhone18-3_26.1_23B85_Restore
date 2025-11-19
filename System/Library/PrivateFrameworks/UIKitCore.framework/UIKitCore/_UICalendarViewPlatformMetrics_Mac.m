@interface _UICalendarViewPlatformMetrics_Mac
- (_UICalendarViewPlatformMetrics_Mac)init;
@end

@implementation _UICalendarViewPlatformMetrics_Mac

- (_UICalendarViewPlatformMetrics_Mac)init
{
  v5.receiver = self;
  v5.super_class = _UICalendarViewPlatformMetrics_Mac;
  v2 = [(_UICalendarViewPlatformMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UICalendarViewPlatformMetrics *)v2 setDateViewCellBackgroundSize:32.0];
  }

  return v3;
}

@end