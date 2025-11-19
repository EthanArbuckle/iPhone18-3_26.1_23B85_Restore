@interface SCLMutableSimpleSchedule
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEndTime:(id)a3;
- (void)setStartTime:(id)a3;
@end

@implementation SCLMutableSimpleSchedule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCLSimpleSchedule alloc];

  return [(SCLSimpleSchedule *)v4 initWithSimpleSchedule:self];
}

- (void)setStartTime:(id)a3
{
  v4 = [a3 copy];
  startTime = self->super._startTime;
  self->super._startTime = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setEndTime:(id)a3
{
  v4 = [a3 copy];
  endTime = self->super._endTime;
  self->super._endTime = v4;

  MEMORY[0x2821F96F8]();
}

@end