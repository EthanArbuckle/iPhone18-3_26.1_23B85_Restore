@interface SMSessionManagerStatus
@end

@implementation SMSessionManagerStatus

void __84__SMSessionManagerStatus_RTCoreDataTransformable__createWithSessionManagerStatusMO___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D4ABB0];
  v3 = [*(a1 + 32) state];
  v11 = [v2 createWithManagedObject:v3];

  v4 = objc_alloc(MEMORY[0x277D4ABB8]);
  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) stateQueryDate];
  v7 = [*(a1 + 32) lastSessionIDDuringMagnetBreak];
  v8 = [v4 initWithIdentifier:v5 stateQueryDate:v6 lastSessionIDDuringMagnetBreak:v7 state:v11];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end