@interface SBWakeEvent
- (SBWakeEvent)initWithTimestamp:(unint64_t)timestamp;
@end

@implementation SBWakeEvent

- (SBWakeEvent)initWithTimestamp:(unint64_t)timestamp
{
  [(SBWakeEvent *)self setEventAbsTimestamp:timestamp];
  [(SBWakeEvent *)self setEventRecvContTimestamp:mach_continuous_time()];
  return self;
}

@end