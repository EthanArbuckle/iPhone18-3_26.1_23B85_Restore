@interface SBPhoneSceneSnapshotRequestStrategy
- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
@end

@implementation SBPhoneSceneSnapshotRequestStrategy

- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  v12[1] = *MEMORY[0x277D85DE8];
  lastAppearanceChangeTimestamp = [context lastAppearanceChangeTimestamp];
  if (lastAppearanceChangeTimestamp)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:lastAppearanceChangeTimestamp];
    v8 = v7 < 604800.0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [[SBSceneSnapshotRequest alloc] initWithSize:0 orientation:0 userInterfaceStyle:v8];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v10;
}

@end