@interface SCLMutableScheduleSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSchedule:(id)schedule;
@end

@implementation SCLMutableScheduleSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLScheduleSettings alloc];

  return [(SCLScheduleSettings *)v4 initWithSchoolModeScheduleSettings:self];
}

- (void)setSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (!scheduleCopy)
  {
    scheduleCopy = objc_alloc_init(SCLSchedule);
  }

  schedule = self->super._schedule;
  self->super._schedule = scheduleCopy;

  MEMORY[0x2821F96F8]();
}

@end