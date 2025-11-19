@interface HKSPSleepScheduleRange
- (HKSPSleepScheduleRange)initWithLatestWakeUpComponents:(id)a3 latestBedtimeComponents:(id)a4 earliestWakeUpComponents:(id)a5 earliestBedtimeComponents:(id)a6 earliestBedtimeIsOnPreviousDay:(BOOL)a7;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPSleepScheduleRange

- (HKSPSleepScheduleRange)initWithLatestWakeUpComponents:(id)a3 latestBedtimeComponents:(id)a4 earliestWakeUpComponents:(id)a5 earliestBedtimeComponents:(id)a6 earliestBedtimeIsOnPreviousDay:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = HKSPSleepScheduleRange;
  v16 = [(HKSPSleepScheduleRange *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    latestWakeUpComponents = v16->_latestWakeUpComponents;
    v16->_latestWakeUpComponents = v17;

    v19 = [v13 copy];
    latestBedtimeComponents = v16->_latestBedtimeComponents;
    v16->_latestBedtimeComponents = v19;

    v21 = [v14 copy];
    earliestWakeUpComponents = v16->_earliestWakeUpComponents;
    v16->_earliestWakeUpComponents = v21;

    v23 = [v15 copy];
    earliestBedtimeComponents = v16->_earliestBedtimeComponents;
    v16->_earliestBedtimeComponents = v23;

    v16->_earliestBedtimeIsOnPreviousDay = a7;
    v25 = v16;
  }

  return v16;
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepScheduleRange *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v15 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HKSPSleepScheduleRange *)self earliestBedtimeComponents];
  v5 = [v4 hksp_description];
  if ([(HKSPSleepScheduleRange *)self earliestBedtimeIsOnPreviousDay])
  {
    v6 = @"(-1)";
  }

  else
  {
    v6 = &stru_287A719F0;
  }

  v7 = [(HKSPSleepScheduleRange *)self earliestWakeUpComponents];
  v8 = [v7 hksp_description];
  v9 = [(HKSPSleepScheduleRange *)self latestBedtimeComponents];
  v10 = [v9 hksp_description];
  v11 = [(HKSPSleepScheduleRange *)self latestWakeUpComponents];
  v12 = [v11 hksp_description];
  v13 = [v3 stringWithFormat:@"[%@%@ - %@] - [%@ - %@]", v5, v6, v8, v10, v12];
  [v15 appendString:v13 withName:@"range"];

  return v15;
}

@end