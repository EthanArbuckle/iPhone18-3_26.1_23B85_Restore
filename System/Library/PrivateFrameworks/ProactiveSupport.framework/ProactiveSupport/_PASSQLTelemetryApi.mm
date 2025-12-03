@interface _PASSQLTelemetryApi
- (_PASSQLTelemetryApi)initWithTelemetryContext:(id)context;
- (void)sendTelemetry;
@end

@implementation _PASSQLTelemetryApi

- (void)sendTelemetry
{
  [(_PASSQLTelemetryContext *)self->_telemetryContext sendTelemetry:@"SqlEventLog"];
  telemetryContext = self->_telemetryContext;

  [(_PASSQLTelemetryContext *)telemetryContext resetLog];
}

- (_PASSQLTelemetryApi)initWithTelemetryContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = _PASSQLTelemetryApi;
  v6 = [(_PASSQLTelemetryApi *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_telemetryContext, context);
  }

  return v7;
}

@end