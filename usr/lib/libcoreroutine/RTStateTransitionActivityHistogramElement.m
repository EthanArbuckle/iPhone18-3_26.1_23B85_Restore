@interface RTStateTransitionActivityHistogramElement
- (RTStateTransitionActivityHistogramElement)initWithActivity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RTStateTransitionActivityHistogramElement

- (RTStateTransitionActivityHistogramElement)initWithActivity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTStateTransitionActivityHistogramElement;
  v5 = [(RTStateTransitionActivityHistogramElement *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTStateTransitionActivityHistogramElement *)self activity];
  v6 = [v4 initWithActivity:v5];

  [(RTStateTransitionActivityHistogramElement *)self interval];
  [v6 setInterval:?];
  return v6;
}

@end