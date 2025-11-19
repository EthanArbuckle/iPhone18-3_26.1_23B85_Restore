@interface _SBSPhysicalButtonTargetMonitorObserver
- (id)observationHandler;
@end

@implementation _SBSPhysicalButtonTargetMonitorObserver

- (id)observationHandler
{
  if (self->_observationHandler)
  {
    observationHandler = self->_observationHandler;
  }

  else
  {
    observationHandler = &__block_literal_global_10;
  }

  v3 = MEMORY[0x193AFFB30](observationHandler, a2);

  return v3;
}

@end