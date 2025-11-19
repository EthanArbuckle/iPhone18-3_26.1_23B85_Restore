@interface SBWakeEvent
- (SBWakeEvent)initWithTimestamp:(unint64_t)a3;
@end

@implementation SBWakeEvent

- (SBWakeEvent)initWithTimestamp:(unint64_t)a3
{
  [(SBWakeEvent *)self setEventAbsTimestamp:a3];
  [(SBWakeEvent *)self setEventRecvContTimestamp:mach_continuous_time()];
  return self;
}

@end