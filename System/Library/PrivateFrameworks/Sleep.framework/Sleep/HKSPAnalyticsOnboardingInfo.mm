@interface HKSPAnalyticsOnboardingInfo
- (HKSPAnalyticsOnboardingInfo)initWithStep:(unint64_t)step action:(unint64_t)action entryPoint:(unint64_t)point;
- (id)actionPayloadValue;
- (id)entryPointPayloadValue;
- (id)stepPayloadValue;
@end

@implementation HKSPAnalyticsOnboardingInfo

- (HKSPAnalyticsOnboardingInfo)initWithStep:(unint64_t)step action:(unint64_t)action entryPoint:(unint64_t)point
{
  v12.receiver = self;
  v12.super_class = HKSPAnalyticsOnboardingInfo;
  v8 = [(HKSPAnalyticsOnboardingInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_step = step;
    v8->_action = action;
    v8->_entryPoint = point;
    v10 = v8;
  }

  return v9;
}

- (id)stepPayloadValue
{
  step = [(HKSPAnalyticsOnboardingInfo *)self step];
  if (step > 6)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C75E88[step];
  }
}

- (id)actionPayloadValue
{
  step = [(HKSPAnalyticsOnboardingInfo *)self step];
  if (step - 3 < 2)
  {
    v4 = [(HKSPAnalyticsOnboardingInfo *)self action]- 2;
    if (v4 < 3)
    {
      v5 = off_279C75EC0;
      return v5[v4];
    }
  }

  else if (step == 1 || step == 5)
  {
    v4 = [(HKSPAnalyticsOnboardingInfo *)self action]- 2;
    if (v4 < 4)
    {
      v5 = off_279C75ED8;
      return v5[v4];
    }
  }

  return 0;
}

- (id)entryPointPayloadValue
{
  entryPoint = [(HKSPAnalyticsOnboardingInfo *)self entryPoint];
  v3 = &stru_287A719F0;
  if (entryPoint == 1)
  {
    v3 = @"TrackSleep";
  }

  if (entryPoint)
  {
    return v3;
  }

  else
  {
    return @"CompleteFlow";
  }
}

@end