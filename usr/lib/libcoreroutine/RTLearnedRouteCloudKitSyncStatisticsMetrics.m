@interface RTLearnedRouteCloudKitSyncStatisticsMetrics
- (RTLearnedRouteCloudKitSyncStatisticsMetrics)init;
- (id)initForDefaultMetric;
@end

@implementation RTLearnedRouteCloudKitSyncStatisticsMetrics

- (id)initForDefaultMetric
{
  v3.receiver = self;
  v3.super_class = RTLearnedRouteCloudKitSyncStatisticsMetrics;
  result = [(RTLearnedRouteCloudKitSyncStatisticsMetrics *)&v3 init];
  if (result)
  {
    *(result + 2) = -1;
    *(result + 3) = -1;
    *(result + 1) = -1;
  }

  return result;
}

- (RTLearnedRouteCloudKitSyncStatisticsMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTLearnedRouteCloudKitSyncStatisticsMetrics;
  result = [(RTLearnedRouteCloudKitSyncStatisticsMetrics *)&v3 init];
  if (result)
  {
    *&result->_numEntriesTripClusterMO = 0;
    *&result->_numEntriesTripClusterRoadTransitionsMO = 0;
    *&result->_numEntriesTripClusterScheduleMO = 0;
  }

  return result;
}

@end