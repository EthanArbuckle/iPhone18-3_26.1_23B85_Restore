@interface PLOSMetricsUtilities
+ (id)createCounter:(id)a3 withLabel:(id)a4;
+ (id)createCounter:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withFlags:(unsigned __int8)a6;
+ (id)createDimensions:(unsigned __int8)a3;
+ (id)createGauge:(id)a3 withLabel:(id)a4;
+ (id)createGauge:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withLevel:(unsigned __int8)a6 withFlags:(unsigned __int8)a7;
+ (id)createHistogram:(id)a3 withLabel:(id)a4 withBins:(unsigned __int8)a5 withInterval:(unsigned int)a6;
+ (id)createHistogram:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withLevel:(unsigned __int8)a6 withBins:(unsigned __int8)a7 withInterval:(unsigned int)a8 withFlags:(unsigned __int8)a9;
+ (id)createMetricGroup:(id)a3 withDimensions:(id)a4;
+ (void)addDimensions:(id)a3 withKey:(id)a4 withValue:(id)a5;
@end

@implementation PLOSMetricsUtilities

+ (id)createMetricGroup:(id)a3 withDimensions:(id)a4
{
  v6 = a3;
  v7 = a4;
  [a3 UTF8String];
  v8 = os_metric_group_create();

  return v8;
}

+ (id)createDimensions:(unsigned __int8)a3
{
  v3 = os_metric_dimensions_create();

  return v3;
}

+ (void)addDimensions:(id)a3 withKey:(id)a4 withValue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [a4 UTF8String];
  [v9 UTF8String];

  LOBYTE(v9) = os_metric_dimensions_add();
  if ((v9 & 1) == 0)
  {
    v11 = PLLogOSMetrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLOSMetricsUtilities addDimensions:v11 withKey:? withValue:?];
    }
  }
}

+ (id)createCounter:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withFlags:(unsigned __int8)a6
{
  v8 = a3;
  v9 = a5;
  [a4 UTF8String];
  impl = _os_metric_uint64_create_impl();

  return impl;
}

+ (id)createCounter:(id)a3 withLabel:(id)a4
{
  v5 = a3;
  [a4 UTF8String];
  impl = _os_metric_uint64_create_impl();

  return impl;
}

+ (id)createGauge:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withLevel:(unsigned __int8)a6 withFlags:(unsigned __int8)a7
{
  v9 = a3;
  v10 = a5;
  [a4 UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createGauge:(id)a3 withLabel:(id)a4
{
  v5 = a3;
  [a4 UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createHistogram:(id)a3 withLabel:(id)a4 withDimensions:(id)a5 withLevel:(unsigned __int8)a6 withBins:(unsigned __int8)a7 withInterval:(unsigned int)a8 withFlags:(unsigned __int8)a9
{
  v11 = a3;
  v12 = a5;
  [a4 UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createHistogram:(id)a3 withLabel:(id)a4 withBins:(unsigned __int8)a5 withInterval:(unsigned int)a6
{
  v7 = a3;
  [a4 UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

@end