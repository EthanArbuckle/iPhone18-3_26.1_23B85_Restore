@interface RPPairingReceiverController
- (BOOL)pairingValueUIVisible;
- (OS_dispatch_queue)queue;
- (_TtC7Rapport27RPPairingReceiverController)init;
- (_TtC7Rapport27RPPairingReceiverController)initWithCoder:(id)a3;
- (_TtC7Rapport27RPPairingReceiverController)initWithQueue:(id)a3;
- (id)pairingValueUpdatedHandler;
- (void)pairingValueUpdated:(id)a3;
- (void)setPairingValueUIVisible:(BOOL)a3;
- (void)setPairingValueUpdatedHandler:(id)a3;
- (void)setQueue:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation RPPairingReceiverController

- (OS_dispatch_queue)queue
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQueue:(id)a3
{
  v5 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (id)pairingValueUpdatedHandler
{
  v2 = (self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B6F13B94;
    aBlock[3] = &block_descriptor_15;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPairingValueUpdatedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B6F15AF0;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1B6F13D8C(v7);
}

- (BOOL)pairingValueUIVisible
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPairingValueUIVisible:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1B6F1415C();
}

- (_TtC7Rapport27RPPairingReceiverController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  *v6 = 0;
  v6[1] = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible) = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
  sub_1B6F14B44();
  v7 = a3;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue) = sub_1B6F22AD8();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(RPPairingReceiverController *)&v10 init];

  return v8;
}

- (_TtC7Rapport27RPPairingReceiverController)init
{
  v2 = (self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible) = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
  result = sub_1B6F22B78();
  __break(1u);
  return result;
}

- (_TtC7Rapport27RPPairingReceiverController)initWithQueue:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  *v6 = 0;
  v6[1] = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible) = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
  *(self + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue) = a3;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
  return [(RPPairingReceiverController *)&v9 init];
}

- (void)start
{
  v2 = self;
  RPPairingReceiverController.start()();
}

- (void)stop
{
  v2 = self;
  RPPairingReceiverController.stop()();
}

- (void)pairingValueUpdated:(id)a3
{
  if (a3)
  {
    v4 = sub_1B6F22A08();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1B6F157F8(v4, v6);
}

@end