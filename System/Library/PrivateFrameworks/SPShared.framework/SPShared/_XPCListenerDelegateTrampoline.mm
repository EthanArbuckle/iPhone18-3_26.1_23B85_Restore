@interface _XPCListenerDelegateTrampoline
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline)init;
@end

@implementation _XPCListenerDelegateTrampoline

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline_sessionManager);
  swift_unownedRetainStrong();
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(listener) = sub_2644B3484(connectionCopy);

  return listener & 1;
}

- (_TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end