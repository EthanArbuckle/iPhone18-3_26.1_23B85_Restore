@interface PLLoggingServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate)init;
@end

@implementation PLLoggingServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_268C417C0(connectionCopy);

  return v9 & 1;
}

- (_TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end