@interface _Capability.AssertionObserver
- (_TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver)init;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
@end

@implementation _Capability.AssertionObserver

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate);
}

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__willInvalidate);
}

- (_TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end