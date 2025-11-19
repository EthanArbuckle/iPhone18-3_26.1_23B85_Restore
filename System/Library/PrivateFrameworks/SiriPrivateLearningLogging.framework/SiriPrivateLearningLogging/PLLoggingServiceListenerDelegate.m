@interface PLLoggingServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate)init;
@end

@implementation PLLoggingServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_268C417C0(v7);

  return v9 & 1;
}

- (_TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end