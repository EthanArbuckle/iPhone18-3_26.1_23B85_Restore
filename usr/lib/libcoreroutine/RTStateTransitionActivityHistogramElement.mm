@interface RTStateTransitionActivityHistogramElement
- (RTStateTransitionActivityHistogramElement)initWithActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RTStateTransitionActivityHistogramElement

- (RTStateTransitionActivityHistogramElement)initWithActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = RTStateTransitionActivityHistogramElement;
  v5 = [(RTStateTransitionActivityHistogramElement *)&v9 init];
  if (v5)
  {
    v6 = [activityCopy copy];
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  activity = [(RTStateTransitionActivityHistogramElement *)self activity];
  v6 = [v4 initWithActivity:activity];

  [(RTStateTransitionActivityHistogramElement *)self interval];
  [v6 setInterval:?];
  return v6;
}

@end