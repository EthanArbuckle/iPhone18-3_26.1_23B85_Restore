@interface PPSGroupingDimension
- (PPSGroupingDimension)initWithCoder:(id)a3;
- (PPSGroupingDimension)initWithGroupBy:(id)a3;
- (PPSGroupingDimension)initWithMetricName:(id)a3 groupBy:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSGroupingDimension

- (PPSGroupingDimension)initWithMetricName:(id)a3 groupBy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPSGroupingDimension;
  v9 = [(PPSGroupingDimension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metricName, a3);
    objc_storeStrong(&v10->_groupBy, a4);
  }

  return v10;
}

- (PPSGroupingDimension)initWithGroupBy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PPSGroupingDimension;
  v6 = [(PPSGroupingDimension *)&v10 init];
  v7 = v6;
  if (v6)
  {
    metricName = v6->_metricName;
    v6->_metricName = 0;

    objc_storeStrong(&v7->_groupBy, a3);
  }

  return v7;
}

- (PPSGroupingDimension)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PPSGroupingDimension;
  v5 = [(PPSGroupingDimension *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metric"];
    metricName = v5->_metricName;
    v5->_metricName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupBy"];
    groupBy = v5->_groupBy;
    v5->_groupBy = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_metricName forKey:@"metric"];
  [v4 encodeObject:self->_groupBy forKey:@"groupBy"];
}

@end