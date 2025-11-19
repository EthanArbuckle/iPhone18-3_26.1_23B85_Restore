@interface HKSPAnalyticsOnboardingInfo
- (HKSPAnalyticsOnboardingInfo)initWithStep:(unint64_t)a3 action:(unint64_t)a4 entryPoint:(unint64_t)a5;
- (id)actionPayloadValue;
- (id)entryPointPayloadValue;
- (id)stepPayloadValue;
@end

@implementation HKSPAnalyticsOnboardingInfo

- (HKSPAnalyticsOnboardingInfo)initWithStep:(unint64_t)a3 action:(unint64_t)a4 entryPoint:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = HKSPAnalyticsOnboardingInfo;
  v8 = [(HKSPAnalyticsOnboardingInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_step = a3;
    v8->_action = a4;
    v8->_entryPoint = a5;
    v10 = v8;
  }

  return v9;
}

- (id)stepPayloadValue
{
  v2 = [(HKSPAnalyticsOnboardingInfo *)self step];
  if (v2 > 6)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C75E88[v2];
  }
}

- (id)actionPayloadValue
{
  v3 = [(HKSPAnalyticsOnboardingInfo *)self step];
  if (v3 - 3 < 2)
  {
    v4 = [(HKSPAnalyticsOnboardingInfo *)self action]- 2;
    if (v4 < 3)
    {
      v5 = off_279C75EC0;
      return v5[v4];
    }
  }

  else if (v3 == 1 || v3 == 5)
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
  v2 = [(HKSPAnalyticsOnboardingInfo *)self entryPoint];
  v3 = &stru_287A719F0;
  if (v2 == 1)
  {
    v3 = @"TrackSleep";
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return @"CompleteFlow";
  }
}

@end