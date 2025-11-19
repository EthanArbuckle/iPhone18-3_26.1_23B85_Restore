@interface _XPCListenerDelegateTrampoline
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline)init;
@end

@implementation _XPCListenerDelegateTrampoline

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline_sessionManager);
  swift_unownedRetainStrong();
  v8 = a3;
  v9 = a4;
  v10 = self;
  LOBYTE(a3) = sub_2644B3484(v9);

  return a3 & 1;
}

- (_TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end