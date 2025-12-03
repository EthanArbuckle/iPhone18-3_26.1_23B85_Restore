@interface SiriCoreMetricsPlugin
- (SiriCoreMetricsPlugin)init;
- (id)performTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation SiriCoreMetricsPlugin

- (id)performTask:(id)task outError:(id *)error
{
  taskCopy = task;
  selfCopy = self;
  v7 = SiriCoreMetricsPlugin.perform(_:)(taskCopy);

  return v7;
}

- (void)stop
{
  selfCopy = self;
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