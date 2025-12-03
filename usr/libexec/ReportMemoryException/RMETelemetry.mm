@interface RMETelemetry
+ (void)emitTelemetryForExecName:(id)name bundleID:(id)d exceptionType:(int64_t)type footprint:(unint64_t)footprint footprintPeak:(unint64_t)peak jetsamLimit:(unint64_t)limit memgraphAttempted:(BOOL)attempted memgraphSkippedReason:(int64_t)self0 memgraphSucceeded:(BOOL)self1 memgraphFailedReason:(int64_t)self2 diagFilePath:(id)self3 isMSLEnabled:(BOOL)self4 isGcoreCapture:(BOOL)self5;
@end

@implementation RMETelemetry

+ (void)emitTelemetryForExecName:(id)name bundleID:(id)d exceptionType:(int64_t)type footprint:(unint64_t)footprint footprintPeak:(unint64_t)peak jetsamLimit:(unint64_t)limit memgraphAttempted:(BOOL)attempted memgraphSkippedReason:(int64_t)self0 memgraphSucceeded:(BOOL)self1 memgraphFailedReason:(int64_t)self2 diagFilePath:(id)self3 isMSLEnabled:(BOOL)self4 isGcoreCapture:(BOOL)self5
{
  nameCopy = name;
  dCopy = d;
  pathCopy = path;
  v18 = dCopy;
  v19 = nameCopy;
  v20 = pathCopy;
  AnalyticsSendEventLazy();
}

@end