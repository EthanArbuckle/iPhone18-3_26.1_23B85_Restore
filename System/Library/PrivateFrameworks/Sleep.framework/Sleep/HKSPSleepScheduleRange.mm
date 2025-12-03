@interface HKSPSleepScheduleRange
- (HKSPSleepScheduleRange)initWithLatestWakeUpComponents:(id)components latestBedtimeComponents:(id)bedtimeComponents earliestWakeUpComponents:(id)upComponents earliestBedtimeComponents:(id)earliestBedtimeComponents earliestBedtimeIsOnPreviousDay:(BOOL)day;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPSleepScheduleRange

- (HKSPSleepScheduleRange)initWithLatestWakeUpComponents:(id)components latestBedtimeComponents:(id)bedtimeComponents earliestWakeUpComponents:(id)upComponents earliestBedtimeComponents:(id)earliestBedtimeComponents earliestBedtimeIsOnPreviousDay:(BOOL)day
{
  componentsCopy = components;
  bedtimeComponentsCopy = bedtimeComponents;
  upComponentsCopy = upComponents;
  earliestBedtimeComponentsCopy = earliestBedtimeComponents;
  v27.receiver = self;
  v27.super_class = HKSPSleepScheduleRange;
  v16 = [(HKSPSleepScheduleRange *)&v27 init];
  if (v16)
  {
    v17 = [componentsCopy copy];
    latestWakeUpComponents = v16->_latestWakeUpComponents;
    v16->_latestWakeUpComponents = v17;

    v19 = [bedtimeComponentsCopy copy];
    latestBedtimeComponents = v16->_latestBedtimeComponents;
    v16->_latestBedtimeComponents = v19;

    v21 = [upComponentsCopy copy];
    earliestWakeUpComponents = v16->_earliestWakeUpComponents;
    v16->_earliestWakeUpComponents = v21;

    v23 = [earliestBedtimeComponentsCopy copy];
    earliestBedtimeComponents = v16->_earliestBedtimeComponents;
    v16->_earliestBedtimeComponents = v23;

    v16->_earliestBedtimeIsOnPreviousDay = day;
    v25 = v16;
  }

  return v16;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepScheduleRange *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v15 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = MEMORY[0x277CCACA8];
  earliestBedtimeComponents = [(HKSPSleepScheduleRange *)self earliestBedtimeComponents];
  hksp_description = [earliestBedtimeComponents hksp_description];
  if ([(HKSPSleepScheduleRange *)self earliestBedtimeIsOnPreviousDay])
  {
    v6 = @"(-1)";
  }

  else
  {
    v6 = &stru_287A719F0;
  }

  earliestWakeUpComponents = [(HKSPSleepScheduleRange *)self earliestWakeUpComponents];
  hksp_description2 = [earliestWakeUpComponents hksp_description];
  latestBedtimeComponents = [(HKSPSleepScheduleRange *)self latestBedtimeComponents];
  hksp_description3 = [latestBedtimeComponents hksp_description];
  latestWakeUpComponents = [(HKSPSleepScheduleRange *)self latestWakeUpComponents];
  hksp_description4 = [latestWakeUpComponents hksp_description];
  v13 = [v3 stringWithFormat:@"[%@%@ - %@] - [%@ - %@]", hksp_description, v6, hksp_description2, hksp_description3, hksp_description4];
  [v15 appendString:v13 withName:@"range"];

  return v15;
}

@end