@interface MetricEventsTracker
- (void)sendAnalyticsEventFor:(int64_t)a3 interval:(double)a4 networkType:(unint64_t)a5 placementType:(unint64_t)a6 failed:(BOOL)a7;
@end

@implementation MetricEventsTracker

- (void)sendAnalyticsEventFor:(int64_t)a3 interval:(double)a4 networkType:(unint64_t)a5 placementType:(unint64_t)a6 failed:(BOOL)a7
{

  sub_1C1AF2D2C(a3, a5, a6, a7, a4);
}

@end