@interface SBAnyTopAffordanceInteractionMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBAnyTopAffordanceInteractionMetric

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  v4 = event != 50 || self->_hasSentEvent;
  if (event == 50 && !self->_hasSentEvent)
  {
    v6 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.SpringBoard.multitasking.top-affordance.interaction" bundleID:@"com.apple.SpringBoard" context:0 userInfo:0];
    discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
    source = [discoverabilitySignal source];

    [source sendEvent:v6];
    self->_hasSentEvent = 1;
  }

  return !v4;
}

@end