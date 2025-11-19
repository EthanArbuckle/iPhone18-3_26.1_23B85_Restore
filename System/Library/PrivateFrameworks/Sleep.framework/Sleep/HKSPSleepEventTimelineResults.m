@interface HKSPSleepEventTimelineResults
- (HKSPSleepSchedule)validSleepSchedule;
@end

@implementation HKSPSleepEventTimelineResults

- (HKSPSleepSchedule)validSleepSchedule
{
  if (self->_sleepScheduleInvalid)
  {
    v2 = [(HKSPMutableSleepSchedule *)self->_mutableValidSleepSchedule copy];
  }

  else
  {
    v2 = self->_originalSleepSchedule;
  }

  return v2;
}

@end