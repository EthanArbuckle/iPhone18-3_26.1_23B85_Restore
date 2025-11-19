@interface SMInitiatorLocation
@end

@implementation SMInitiatorLocation

void __69__SMInitiatorLocation_RTCoreDataTransformable__createWithLocationMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AAF8]);
  v17 = [*(a1 + 32) identifier];
  [*(a1 + 32) latitude];
  v4 = v3;
  [*(a1 + 32) longitude];
  v6 = v5;
  [*(a1 + 32) hunc];
  v8 = v7;
  [*(a1 + 32) altitude];
  v10 = v9;
  [*(a1 + 32) vunc];
  v12 = v11;
  v13 = [*(a1 + 32) date];
  v14 = [v2 initWithIdentifier:v17 latitude:v13 longitude:v4 hunc:v6 altitude:v8 vunc:v10 date:v12];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

@end