@interface RemoteAlertInvalidationHandler
- (_TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation RemoteAlertInvalidationHandler

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2612F60DC(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_2612F6360(v6, a4);
}

- (_TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end