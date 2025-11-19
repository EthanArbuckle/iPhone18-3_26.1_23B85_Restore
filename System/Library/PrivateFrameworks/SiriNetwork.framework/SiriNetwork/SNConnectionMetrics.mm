@interface SNConnectionMetrics
- (id)getConnectionMetricsDescription;
@end

@implementation SNConnectionMetrics

- (id)getConnectionMetricsDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SNConnectionMetrics *)self connectionMethod];
  v5 = [(SNConnectionMetrics *)self connectionEdgeID];
  v6 = [(SNConnectionMetrics *)self tcpInfoMetricsByInterfaceName];
  v7 = [v3 stringWithFormat:@"ConnectionMethod: %@ on Edge: %@ TCP_INFO: %@", v4, v5, v6];

  return v7;
}

@end