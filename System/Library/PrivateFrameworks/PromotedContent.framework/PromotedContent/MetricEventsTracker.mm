@interface MetricEventsTracker
- (void)sendAnalyticsEventFor:(int64_t)for interval:(double)interval networkType:(unint64_t)type placementType:(unint64_t)placementType failed:(BOOL)failed;
@end

@implementation MetricEventsTracker

- (void)sendAnalyticsEventFor:(int64_t)for interval:(double)interval networkType:(unint64_t)type placementType:(unint64_t)placementType failed:(BOOL)failed
{

  sub_1C1AF2D2C(for, type, placementType, failed, interval);
}

@end