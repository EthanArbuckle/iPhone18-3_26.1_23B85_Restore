@interface STExceptionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15ScreenTimeAgent19STExceptionListener)init;
- (void)appExceptionsDidUpdate;
@end

@implementation STExceptionListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000B8B18(v7);

  return v9 & 1;
}

- (void)appExceptionsDidUpdate
{
  v2 = self;
  STExceptionListener.appExceptionsDidUpdate()();
}

- (_TtC15ScreenTimeAgent19STExceptionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end