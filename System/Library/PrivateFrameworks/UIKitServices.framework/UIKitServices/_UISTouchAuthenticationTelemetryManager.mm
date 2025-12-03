@interface _UISTouchAuthenticationTelemetryManager
- (_UISTouchAuthenticationTelemetryManager)initWithQueue:(id)queue;
@end

@implementation _UISTouchAuthenticationTelemetryManager

- (_UISTouchAuthenticationTelemetryManager)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = _UISTouchAuthenticationTelemetryManager;
  return [(_UISTouchAuthenticationTelemetryManager *)&v4 init];
}

@end