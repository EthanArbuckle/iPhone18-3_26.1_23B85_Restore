@interface RTTripClusterMetricsCollector
- (RTTripClusterMetricsCollector)init;
@end

@implementation RTTripClusterMetricsCollector

- (RTTripClusterMetricsCollector)init
{
  v3.receiver = self;
  v3.super_class = RTTripClusterMetricsCollector;
  result = [(RTTripClusterMetricsCollector *)&v3 init];
  if (result)
  {
    *&result->_clusterOrderAfterDrive_totalNumberOfRoutes = 0u;
    *&result->_clusterOrderDefault_totalNumberOfRoutes = 0u;
  }

  return result;
}

@end