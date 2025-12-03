@interface AskToAirDropReceiverController
- (BOOL)hasPendingOrActiveConnections;
- (BOOL)hasSeenPrivacyPrompt;
- (BOOL)isLegacyMode;
- (BOOL)isNearbyDeviceClose;
- (NSArray)connectedNearbyDeviceNames;
- (_TtC7Sharing30AskToAirDropReceiverController)initWithQueue:(id)queue;
- (id)errorHandler;
- (int64_t)connectionState;
- (void)connectToAllNearbyDevices;
- (void)disconnectFromAllNearbyDevices;
- (void)setConnectedNearbyDeviceNames:(id)names;
- (void)setConnectionState:(int64_t)state;
- (void)setConnectionStateChangedHandler:(id)handler;
- (void)setErrorHandler:(id)handler;
- (void)setIsLegacyMode:(BOOL)mode;
- (void)setNearbyDeviceCloseChangedHandler:(id)handler;
- (void)setPendingOrActiveConnectionsChangedHandler:(id)handler;
- (void)setStateChangedHandler:(id)handler;
@end

@implementation AskToAirDropReceiverController

- (BOOL)isNearbyDeviceClose
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)hasPendingOrActiveConnections
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isLegacyMode
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLegacyMode:(BOOL)mode
{
  v5 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (int64_t)connectionState
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConnectionState:(int64_t)state
{
  selfCopy = self;
  sub_1A98A23F0(state);
}

- (void)setStateChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7);
}

- (void)setConnectionStateChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7);
}

- (void)setPendingOrActiveConnectionsChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7);
}

- (void)setNearbyDeviceCloseChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A9875F30;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7);
}

- (id)errorHandler
{
  v2 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A98A327C;
    aBlock[3] = &block_descriptor_83;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setErrorHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98A7824;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7);
}

- (BOOL)hasSeenPrivacyPrompt
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  initWithSuiteName_ = [v2 initWithSuiteName_];

  if (!initWithSuiteName_)
  {
    return 0;
  }

  v5 = sub_1A99767E0();
  bOOLForKey_ = [initWithSuiteName_ BOOLForKey_];

  return bOOLForKey_;
}

- (NSArray)connectedNearbyDeviceNames
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1A9976AB0();

  return v5;
}

- (void)setConnectedNearbyDeviceNames:(id)names
{
  v4 = sub_1A9976AC0();
  v5 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC7Sharing30AskToAirDropReceiverController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_1A98A717C(queueCopy);

  return v4;
}

- (void)connectToAllNearbyDevices
{
  selfCopy = self;
  AskToAirDropReceiverController.connectToAllNearbyDevices()();
}

- (void)disconnectFromAllNearbyDevices
{
  selfCopy = self;
  AskToAirDropReceiverController.disconnectFromAllNearbyDevices()();
}

@end