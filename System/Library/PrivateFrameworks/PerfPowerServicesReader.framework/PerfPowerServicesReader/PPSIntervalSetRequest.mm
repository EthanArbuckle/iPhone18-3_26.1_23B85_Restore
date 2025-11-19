@interface PPSIntervalSetRequest
- (PPSIntervalSetRequest)initWithCoder:(id)a3;
- (PPSIntervalSetRequest)initWithMetrics:(id)a3 dimensions:(id)a4 predicate:(id)a5 timeFilter:(id)a6;
- (PPSIntervalSetRequest)initWithMetrics:(id)a3 predicate:(id)a4 timeFilter:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSIntervalSetRequest

- (PPSIntervalSetRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PPSIntervalSetRequest;
  return [(PPSDataRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PPSIntervalSetRequest;
  [(PPSDataRequest *)&v3 encodeWithCoder:a3];
}

- (PPSIntervalSetRequest)initWithMetrics:(id)a3 predicate:(id)a4 timeFilter:(id)a5
{
  v6.receiver = self;
  v6.super_class = PPSIntervalSetRequest;
  return [(PPSDataRequest *)&v6 initWithRequestType:2 metrics:a3 predicate:a4 timeFilter:a5];
}

- (PPSIntervalSetRequest)initWithMetrics:(id)a3 dimensions:(id)a4 predicate:(id)a5 timeFilter:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PPSIntervalSetRequest;
  v12 = [(PPSDataRequest *)&v15 initWithRequestType:2 metrics:a3 predicate:a5 timeFilter:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dimensions, a4);
  }

  return v13;
}

@end