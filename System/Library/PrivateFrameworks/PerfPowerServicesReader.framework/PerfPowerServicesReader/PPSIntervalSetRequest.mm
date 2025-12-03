@interface PPSIntervalSetRequest
- (PPSIntervalSetRequest)initWithCoder:(id)coder;
- (PPSIntervalSetRequest)initWithMetrics:(id)metrics dimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter;
- (PPSIntervalSetRequest)initWithMetrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSIntervalSetRequest

- (PPSIntervalSetRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PPSIntervalSetRequest;
  return [(PPSDataRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PPSIntervalSetRequest;
  [(PPSDataRequest *)&v3 encodeWithCoder:coder];
}

- (PPSIntervalSetRequest)initWithMetrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter
{
  v6.receiver = self;
  v6.super_class = PPSIntervalSetRequest;
  return [(PPSDataRequest *)&v6 initWithRequestType:2 metrics:metrics predicate:predicate timeFilter:filter];
}

- (PPSIntervalSetRequest)initWithMetrics:(id)metrics dimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter
{
  dimensionsCopy = dimensions;
  v15.receiver = self;
  v15.super_class = PPSIntervalSetRequest;
  v12 = [(PPSDataRequest *)&v15 initWithRequestType:2 metrics:metrics predicate:predicate timeFilter:filter];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dimensions, dimensions);
  }

  return v13;
}

@end