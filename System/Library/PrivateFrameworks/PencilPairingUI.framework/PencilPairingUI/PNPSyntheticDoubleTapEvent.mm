@interface PNPSyntheticDoubleTapEvent
- (void)serviceDestination:(id)destination fromSource:(id)source withCompletionBlock:(id)block;
@end

@implementation PNPSyntheticDoubleTapEvent

- (void)serviceDestination:(id)destination fromSource:(id)source withCompletionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__PNPSyntheticDoubleTapEvent_serviceDestination_fromSource_withCompletionBlock___block_invoke;
  v9[3] = &unk_279A0A128;
  v10 = blockCopy;
  v8 = blockCopy;
  [destination eventSource:source hadPencilDoubleTapped:v9];
}

@end