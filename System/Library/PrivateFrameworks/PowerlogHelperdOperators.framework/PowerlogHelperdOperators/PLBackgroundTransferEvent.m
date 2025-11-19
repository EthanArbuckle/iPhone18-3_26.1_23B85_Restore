@interface PLBackgroundTransferEvent
- (id)description;
@end

@implementation PLBackgroundTransferEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLBackgroundTransferEvent *)self startDate];
  v5 = [(PLBackgroundTransferEvent *)self bundleID];
  v6 = [(PLBackgroundTransferEvent *)self taskUUIDs];
  v7 = [v3 stringWithFormat:@"startDate=%@, bundleID=%@, taskUUIDs=%@", v4, v5, v6];

  return v7;
}

@end