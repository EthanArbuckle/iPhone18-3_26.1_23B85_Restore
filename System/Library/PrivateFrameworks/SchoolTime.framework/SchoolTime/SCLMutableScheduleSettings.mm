@interface SCLMutableScheduleSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSchedule:(id)a3;
@end

@implementation SCLMutableScheduleSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCLScheduleSettings alloc];

  return [(SCLScheduleSettings *)v4 initWithSchoolModeScheduleSettings:self];
}

- (void)setSchedule:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(SCLSchedule);
  }

  schedule = self->super._schedule;
  self->super._schedule = v4;

  MEMORY[0x2821F96F8]();
}

@end