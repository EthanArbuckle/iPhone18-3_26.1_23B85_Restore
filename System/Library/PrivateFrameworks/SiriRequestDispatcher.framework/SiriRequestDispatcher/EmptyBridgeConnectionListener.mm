@interface EmptyBridgeConnectionListener
- (_TtC21SiriRequestDispatcher29EmptyBridgeConnectionListener)initWithBridgeName:(id)name machService:(id)service withServiceInterface:(id)interface withDelegateInterface:(id)delegateInterface;
- (void)notifyClientWithBlock:(id)block;
- (void)resumeConnectionWithBridgeProxy:(id)proxy;
@end

@implementation EmptyBridgeConnectionListener

- (_TtC21SiriRequestDispatcher29EmptyBridgeConnectionListener)initWithBridgeName:(id)name machService:(id)service withServiceInterface:(id)interface withDelegateInterface:(id)delegateInterface
{
  sub_222E3FCB4();
  sub_222E3FCB4();
  interfaceCopy = interface;
  delegateInterfaceCopy = delegateInterface;
  return sub_222E29C80();
}

- (void)resumeConnectionWithBridgeProxy:(id)proxy
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_222E400E4();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)notifyClientWithBlock:(id)block
{
  v3 = _Block_copy(block);
  *(swift_allocObject() + 16) = v3;
}

@end