@interface PLBackgroundTransferEvent
- (id)description;
@end

@implementation PLBackgroundTransferEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startDate = [(PLBackgroundTransferEvent *)self startDate];
  bundleID = [(PLBackgroundTransferEvent *)self bundleID];
  taskUUIDs = [(PLBackgroundTransferEvent *)self taskUUIDs];
  v7 = [v3 stringWithFormat:@"startDate=%@, bundleID=%@, taskUUIDs=%@", startDate, bundleID, taskUUIDs];

  return v7;
}

@end