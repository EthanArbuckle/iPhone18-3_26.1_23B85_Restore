@interface RMETelemetry
+ (void)emitTelemetryForExecName:(id)a3 bundleID:(id)a4 exceptionType:(int64_t)a5 footprint:(unint64_t)a6 footprintPeak:(unint64_t)a7 jetsamLimit:(unint64_t)a8 memgraphAttempted:(BOOL)a9 memgraphSkippedReason:(int64_t)a10 memgraphSucceeded:(BOOL)a11 memgraphFailedReason:(int64_t)a12 diagFilePath:(id)a13 isMSLEnabled:(BOOL)a14 isGcoreCapture:(BOOL)a15;
@end

@implementation RMETelemetry

+ (void)emitTelemetryForExecName:(id)a3 bundleID:(id)a4 exceptionType:(int64_t)a5 footprint:(unint64_t)a6 footprintPeak:(unint64_t)a7 jetsamLimit:(unint64_t)a8 memgraphAttempted:(BOOL)a9 memgraphSkippedReason:(int64_t)a10 memgraphSucceeded:(BOOL)a11 memgraphFailedReason:(int64_t)a12 diagFilePath:(id)a13 isMSLEnabled:(BOOL)a14 isGcoreCapture:(BOOL)a15
{
  v16 = a3;
  v17 = a4;
  v21 = a13;
  v18 = v17;
  v19 = v16;
  v20 = v21;
  AnalyticsSendEventLazy();
}

@end