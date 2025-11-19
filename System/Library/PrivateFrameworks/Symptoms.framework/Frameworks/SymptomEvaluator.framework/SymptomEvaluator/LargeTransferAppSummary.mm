@interface LargeTransferAppSummary
- (double)recentTotalThroughput;
@end

@implementation LargeTransferAppSummary

- (double)recentTotalThroughput
{
  [(LargeTransferAppSummary *)self recentTotalRxThroughput];
  v4 = v3;
  [(LargeTransferAppSummary *)self recentTotalTxThroughput];
  return v4 + v5;
}

@end