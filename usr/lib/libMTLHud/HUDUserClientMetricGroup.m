@interface HUDUserClientMetricGroup
- (HUDUserClientMetricGroup)initWithCategory:(unsigned int)a3;
@end

@implementation HUDUserClientMetricGroup

- (HUDUserClientMetricGroup)initWithCategory:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = HUDUserClientMetricGroup;
  v4 = [(HUDUserClientMetricGroup *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_category = a3;
    v6 = objc_opt_new();
    metrics = v5->_metrics;
    v5->_metrics = v6;

    v5->_enabled = 1;
  }

  return v5;
}

@end