@interface EmptyBridgeConnectionListener
- (_TtC21SiriRequestDispatcher29EmptyBridgeConnectionListener)initWithBridgeName:(id)a3 machService:(id)a4 withServiceInterface:(id)a5 withDelegateInterface:(id)a6;
- (void)notifyClientWithBlock:(id)a3;
- (void)resumeConnectionWithBridgeProxy:(id)a3;
@end

@implementation EmptyBridgeConnectionListener

- (_TtC21SiriRequestDispatcher29EmptyBridgeConnectionListener)initWithBridgeName:(id)a3 machService:(id)a4 withServiceInterface:(id)a5 withDelegateInterface:(id)a6
{
  sub_222E3FCB4();
  sub_222E3FCB4();
  v8 = a5;
  v9 = a6;
  return sub_222E29C80();
}

- (void)resumeConnectionWithBridgeProxy:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_222E400E4();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)notifyClientWithBlock:(id)a3
{
  v3 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v3;
}

@end