@interface SCLMutableSimpleSchedule
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndTime:(id)time;
- (void)setStartTime:(id)time;
@end

@implementation SCLMutableSimpleSchedule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLSimpleSchedule alloc];

  return [(SCLSimpleSchedule *)v4 initWithSimpleSchedule:self];
}

- (void)setStartTime:(id)time
{
  v4 = [time copy];
  startTime = self->super._startTime;
  self->super._startTime = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setEndTime:(id)time
{
  v4 = [time copy];
  endTime = self->super._endTime;
  self->super._endTime = v4;

  MEMORY[0x2821F96F8]();
}

@end