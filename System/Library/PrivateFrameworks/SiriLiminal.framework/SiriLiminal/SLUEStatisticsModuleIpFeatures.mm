@interface SLUEStatisticsModuleIpFeatures
- (SLUEStatisticsModuleIpFeatures)initWithDefaults;
@end

@implementation SLUEStatisticsModuleIpFeatures

- (SLUEStatisticsModuleIpFeatures)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = SLUEStatisticsModuleIpFeatures;
  result = [(SLUEStatisticsModuleIpFeatures *)&v3 init];
  if (result)
  {
    *&result->_buttonPressIntendedRatio = 0;
    result->_cohortType = &stru_2878A3BF0;
    *&result->_intendedRatio = 0;
    *&result->_voiceTriggerIntendedRatio = 0;
    *&result->_requestCount = 0u;
    *&result->_unintendedCount = 0u;
    *&result->_voiceTriggerCount = 0u;
    result->_voiceTriggerUnintendedCount = 0;
  }

  return result;
}

@end