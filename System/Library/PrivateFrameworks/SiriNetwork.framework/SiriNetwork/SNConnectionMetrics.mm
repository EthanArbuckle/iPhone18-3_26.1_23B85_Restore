@interface SNConnectionMetrics
- (id)getConnectionMetricsDescription;
@end

@implementation SNConnectionMetrics

- (id)getConnectionMetricsDescription
{
  v3 = MEMORY[0x277CCACA8];
  connectionMethod = [(SNConnectionMetrics *)self connectionMethod];
  connectionEdgeID = [(SNConnectionMetrics *)self connectionEdgeID];
  tcpInfoMetricsByInterfaceName = [(SNConnectionMetrics *)self tcpInfoMetricsByInterfaceName];
  v7 = [v3 stringWithFormat:@"ConnectionMethod: %@ on Edge: %@ TCP_INFO: %@", connectionMethod, connectionEdgeID, tcpInfoMetricsByInterfaceName];

  return v7;
}

@end