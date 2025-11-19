@interface TIMetricDescriptor
- (TIMetricDescriptor)initWithMetricName:(id)a3;
@end

@implementation TIMetricDescriptor

- (TIMetricDescriptor)initWithMetricName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIMetricDescriptor;
  v6 = [(TIMetricDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricName, a3);
  }

  return v7;
}

@end