@interface PNPSyntheticDoubleTapEvent
- (void)serviceDestination:(id)a3 fromSource:(id)a4 withCompletionBlock:(id)a5;
@end

@implementation PNPSyntheticDoubleTapEvent

- (void)serviceDestination:(id)a3 fromSource:(id)a4 withCompletionBlock:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__PNPSyntheticDoubleTapEvent_serviceDestination_fromSource_withCompletionBlock___block_invoke;
  v9[3] = &unk_279A0A128;
  v10 = v7;
  v8 = v7;
  [a3 eventSource:a4 hadPencilDoubleTapped:v9];
}

@end