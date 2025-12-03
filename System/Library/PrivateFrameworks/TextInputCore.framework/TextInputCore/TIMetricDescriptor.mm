@interface TIMetricDescriptor
- (TIMetricDescriptor)initWithMetricName:(id)name;
@end

@implementation TIMetricDescriptor

- (TIMetricDescriptor)initWithMetricName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TIMetricDescriptor;
  v6 = [(TIMetricDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricName, name);
  }

  return v7;
}

@end