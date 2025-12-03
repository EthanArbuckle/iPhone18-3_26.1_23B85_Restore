@interface PNPSyntheticWaitEvent
- (PNPSyntheticWaitEvent)initWithDelay:(double)delay;
- (void)serviceDestination:(id)destination fromSource:(id)source withCompletionBlock:(id)block;
@end

@implementation PNPSyntheticWaitEvent

- (PNPSyntheticWaitEvent)initWithDelay:(double)delay
{
  v5.receiver = self;
  v5.super_class = PNPSyntheticWaitEvent;
  result = [(PNPSyntheticWaitEvent *)&v5 init];
  result->_delay = delay;
  return result;
}

- (void)serviceDestination:(id)destination fromSource:(id)source withCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = dispatch_time(0, (self->_delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PNPSyntheticWaitEvent_serviceDestination_fromSource_withCompletionBlock___block_invoke;
  block[3] = &unk_279A0A128;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

@end