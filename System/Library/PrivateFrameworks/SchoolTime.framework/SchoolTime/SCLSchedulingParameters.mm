@interface SCLSchedulingParameters
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SCLSchedulingParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCLSchedulingParameters);
  calendar = [(SCLSchedulingParameters *)self calendar];
  [(SCLSchedulingParameters *)v4 setCalendar:calendar];

  evaluationDate = [(SCLSchedulingParameters *)self evaluationDate];
  [(SCLSchedulingParameters *)v4 setEvaluationDate:evaluationDate];

  scheduleSettings = [(SCLSchedulingParameters *)self scheduleSettings];
  [(SCLSchedulingParameters *)v4 setScheduleSettings:scheduleSettings];

  [(SCLSchedulingParameters *)v4 setActivationSetting:[(SCLSchedulingParameters *)self activationSetting]];
  [(SCLSchedulingParameters *)v4 setSuppressed:[(SCLSchedulingParameters *)self isSuppressed]];
  return v4;
}

@end