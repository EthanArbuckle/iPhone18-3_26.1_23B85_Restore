@interface SCLSchedulingParameters
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SCLSchedulingParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCLSchedulingParameters);
  v5 = [(SCLSchedulingParameters *)self calendar];
  [(SCLSchedulingParameters *)v4 setCalendar:v5];

  v6 = [(SCLSchedulingParameters *)self evaluationDate];
  [(SCLSchedulingParameters *)v4 setEvaluationDate:v6];

  v7 = [(SCLSchedulingParameters *)self scheduleSettings];
  [(SCLSchedulingParameters *)v4 setScheduleSettings:v7];

  [(SCLSchedulingParameters *)v4 setActivationSetting:[(SCLSchedulingParameters *)self activationSetting]];
  [(SCLSchedulingParameters *)v4 setSuppressed:[(SCLSchedulingParameters *)self isSuppressed]];
  return v4;
}

@end