@interface PPSGroupingDimension
- (PPSGroupingDimension)initWithCoder:(id)coder;
- (PPSGroupingDimension)initWithGroupBy:(id)by;
- (PPSGroupingDimension)initWithMetricName:(id)name groupBy:(id)by;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSGroupingDimension

- (PPSGroupingDimension)initWithMetricName:(id)name groupBy:(id)by
{
  nameCopy = name;
  byCopy = by;
  v12.receiver = self;
  v12.super_class = PPSGroupingDimension;
  v9 = [(PPSGroupingDimension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metricName, name);
    objc_storeStrong(&v10->_groupBy, by);
  }

  return v10;
}

- (PPSGroupingDimension)initWithGroupBy:(id)by
{
  byCopy = by;
  v10.receiver = self;
  v10.super_class = PPSGroupingDimension;
  v6 = [(PPSGroupingDimension *)&v10 init];
  v7 = v6;
  if (v6)
  {
    metricName = v6->_metricName;
    v6->_metricName = 0;

    objc_storeStrong(&v7->_groupBy, by);
  }

  return v7;
}

- (PPSGroupingDimension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PPSGroupingDimension;
  v5 = [(PPSGroupingDimension *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metric"];
    metricName = v5->_metricName;
    v5->_metricName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupBy"];
    groupBy = v5->_groupBy;
    v5->_groupBy = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_metricName forKey:@"metric"];
  [coderCopy encodeObject:self->_groupBy forKey:@"groupBy"];
}

@end