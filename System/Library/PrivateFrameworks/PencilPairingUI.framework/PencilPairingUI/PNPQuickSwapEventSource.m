@interface PNPQuickSwapEventSource
- (id)playlist;
@end

@implementation PNPQuickSwapEventSource

- (id)playlist
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [[PNPSyntheticWaitEvent alloc] initWithDelay:1.0];
  v3 = objc_alloc_init(PNPSyntheticDoubleTapEvent);
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

@end