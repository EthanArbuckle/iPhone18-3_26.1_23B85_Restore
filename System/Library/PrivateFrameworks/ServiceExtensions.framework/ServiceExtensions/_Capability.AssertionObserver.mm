@interface _Capability.AssertionObserver
- (_TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver)init;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
@end

@implementation _Capability.AssertionObserver

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate);
}

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__willInvalidate);
}

- (_TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end