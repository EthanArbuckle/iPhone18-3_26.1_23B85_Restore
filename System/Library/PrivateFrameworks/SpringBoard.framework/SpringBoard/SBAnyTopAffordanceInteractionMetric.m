@interface SBAnyTopAffordanceInteractionMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBAnyTopAffordanceInteractionMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  v4 = a3 != 50 || self->_hasSentEvent;
  if (a3 == 50 && !self->_hasSentEvent)
  {
    v6 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.SpringBoard.multitasking.top-affordance.interaction" bundleID:@"com.apple.SpringBoard" context:0 userInfo:0];
    v7 = [MEMORY[0x277CF1B58] discoverabilitySignal];
    v8 = [v7 source];

    [v8 sendEvent:v6];
    self->_hasSentEvent = 1;
  }

  return !v4;
}

@end