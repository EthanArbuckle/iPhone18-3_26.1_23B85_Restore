@interface RemoteAlertInvalidationHandler
- (_TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteAlertInvalidationHandler

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_2612F60DC(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_2612F6360(handleCopy, error);
}

- (_TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end