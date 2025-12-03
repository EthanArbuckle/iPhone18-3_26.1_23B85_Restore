@interface STExceptionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15ScreenTimeAgent19STExceptionListener)init;
- (void)appExceptionsDidUpdate;
@end

@implementation STExceptionListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000B8B18(connectionCopy);

  return v9 & 1;
}

- (void)appExceptionsDidUpdate
{
  selfCopy = self;
  STExceptionListener.appExceptionsDidUpdate()();
}

- (_TtC15ScreenTimeAgent19STExceptionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end