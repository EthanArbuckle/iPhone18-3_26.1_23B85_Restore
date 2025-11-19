@interface VUIMetricsRecorderFactoryObjC
+ (id)makePlayerMetricRecorder;
+ (id)makeViewMetricsRecorder;
@end

@implementation VUIMetricsRecorderFactoryObjC

+ (id)makePlayerMetricRecorder
{
  v2 = static MetricsRecorderFactoryObjC.makePlayerMetricRecorder()();

  return v2;
}

+ (id)makeViewMetricsRecorder
{
  v2 = static MetricsRecorderFactoryObjC.makeViewMetricsRecorder()();

  return v2;
}

@end