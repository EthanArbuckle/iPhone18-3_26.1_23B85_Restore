@interface PLOSMetricsUtilities
+ (id)createCounter:(id)counter withLabel:(id)label;
+ (id)createCounter:(id)counter withLabel:(id)label withDimensions:(id)dimensions withFlags:(unsigned __int8)flags;
+ (id)createDimensions:(unsigned __int8)dimensions;
+ (id)createGauge:(id)gauge withLabel:(id)label;
+ (id)createGauge:(id)gauge withLabel:(id)label withDimensions:(id)dimensions withLevel:(unsigned __int8)level withFlags:(unsigned __int8)flags;
+ (id)createHistogram:(id)histogram withLabel:(id)label withBins:(unsigned __int8)bins withInterval:(unsigned int)interval;
+ (id)createHistogram:(id)histogram withLabel:(id)label withDimensions:(id)dimensions withLevel:(unsigned __int8)level withBins:(unsigned __int8)bins withInterval:(unsigned int)interval withFlags:(unsigned __int8)flags;
+ (id)createMetricGroup:(id)group withDimensions:(id)dimensions;
+ (void)addDimensions:(id)dimensions withKey:(id)key withValue:(id)value;
@end

@implementation PLOSMetricsUtilities

+ (id)createMetricGroup:(id)group withDimensions:(id)dimensions
{
  groupCopy = group;
  dimensionsCopy = dimensions;
  [group UTF8String];
  v8 = os_metric_group_create();

  return v8;
}

+ (id)createDimensions:(unsigned __int8)dimensions
{
  v3 = os_metric_dimensions_create();

  return v3;
}

+ (void)addDimensions:(id)dimensions withKey:(id)key withValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  dimensionsCopy = dimensions;
  [key UTF8String];
  [valueCopy UTF8String];

  LOBYTE(valueCopy) = os_metric_dimensions_add();
  if ((valueCopy & 1) == 0)
  {
    v11 = PLLogOSMetrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLOSMetricsUtilities addDimensions:v11 withKey:? withValue:?];
    }
  }
}

+ (id)createCounter:(id)counter withLabel:(id)label withDimensions:(id)dimensions withFlags:(unsigned __int8)flags
{
  counterCopy = counter;
  dimensionsCopy = dimensions;
  [label UTF8String];
  impl = _os_metric_uint64_create_impl();

  return impl;
}

+ (id)createCounter:(id)counter withLabel:(id)label
{
  counterCopy = counter;
  [label UTF8String];
  impl = _os_metric_uint64_create_impl();

  return impl;
}

+ (id)createGauge:(id)gauge withLabel:(id)label withDimensions:(id)dimensions withLevel:(unsigned __int8)level withFlags:(unsigned __int8)flags
{
  gaugeCopy = gauge;
  dimensionsCopy = dimensions;
  [label UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createGauge:(id)gauge withLabel:(id)label
{
  gaugeCopy = gauge;
  [label UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createHistogram:(id)histogram withLabel:(id)label withDimensions:(id)dimensions withLevel:(unsigned __int8)level withBins:(unsigned __int8)bins withInterval:(unsigned int)interval withFlags:(unsigned __int8)flags
{
  histogramCopy = histogram;
  dimensionsCopy = dimensions;
  [label UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

+ (id)createHistogram:(id)histogram withLabel:(id)label withBins:(unsigned __int8)bins withInterval:(unsigned int)interval
{
  histogramCopy = histogram;
  [label UTF8String];
  impl = _os_metric_double_create_impl();

  return impl;
}

@end