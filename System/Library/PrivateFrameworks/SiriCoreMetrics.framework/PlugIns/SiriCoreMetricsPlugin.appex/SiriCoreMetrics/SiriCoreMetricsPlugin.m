@interface SiriCoreMetricsPlugin
- (SiriCoreMetricsPlugin)init;
- (id)performTask:(id)a3 outError:(id *)a4;
- (void)stop;
@end

@implementation SiriCoreMetricsPlugin

- (id)performTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = SiriCoreMetricsPlugin.perform(_:)(v5);

  return v7;
}

- (void)stop
{
  v2 = self;
  SiriCoreMetricsPlugin.stop()();
}

- (SiriCoreMetricsPlugin)init
{
  Logger.init(subsystem:category:)();
  *(&self->super.isa + OBJC_IVAR___SiriCoreMetricsPlugin_processor) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriCoreMetricsPlugin();
  return [(SiriCoreMetricsPlugin *)&v4 init];
}

@end